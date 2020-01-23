{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar' is a widget that displays a list of frequently-used places in the
-- file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
-- This widget is used as a sidebar in t'GI.Gtk.Interfaces.FileChooser.FileChooser' and may be used by file managers
-- and similar programs.
-- 
-- The places sidebar displays drives and volumes, and will automatically mount
-- or unmount them when the user selects them.
-- 
-- Applications can hook to various signals in the places sidebar to customize
-- its behavior.  For example, they can add extra commands to the context menu
-- of the sidebar.
-- 
-- While bookmarks are completely in control of the user, the places sidebar also
-- allows individual applications to provide extra shortcut folders that are unique
-- to each application.  For example, a Paint program may want to add a shortcut
-- for a Clipart folder.  You can do this with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarAddShortcut'.
-- 
-- To make use of the places sidebar, an application at least needs to connect
-- to the [openLocation]("GI.Gtk.Objects.PlacesSidebar#signal:openLocation") signal.  This is emitted when the
-- user selects in the sidebar a location to open.  The application should also
-- call 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetLocation' when it changes the currently-viewed
-- location.
-- 
-- = CSS nodes
-- 
-- GtkPlacesSidebar uses a single CSS node with name placessidebar and style
-- class .sidebar.
-- 
-- Among the children of the places sidebar, the following style classes can
-- be used:
-- 
-- * .sidebar-new-bookmark-row for the \'Add new bookmark\' row
-- * .sidebar-placeholder-row for a row that is a placeholder
-- * .has-open-popup when a popup is open for a row
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.PlacesSidebar
    ( 

-- * Exported types
    PlacesSidebar(..)                       ,
    IsPlacesSidebar                         ,
    toPlacesSidebar                         ,
    noPlacesSidebar                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePlacesSidebarMethod              ,
#endif


-- ** addShortcut #method:addShortcut#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarAddShortcutMethodInfo      ,
#endif
    placesSidebarAddShortcut                ,


-- ** getLocalOnly #method:getLocalOnly#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetLocalOnlyMethodInfo     ,
#endif
    placesSidebarGetLocalOnly               ,


-- ** getLocation #method:getLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetLocationMethodInfo      ,
#endif
    placesSidebarGetLocation                ,


-- ** getNthBookmark #method:getNthBookmark#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetNthBookmarkMethodInfo   ,
#endif
    placesSidebarGetNthBookmark             ,


-- ** getOpenFlags #method:getOpenFlags#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetOpenFlagsMethodInfo     ,
#endif
    placesSidebarGetOpenFlags               ,


-- ** getShowConnectToServer #method:getShowConnectToServer#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowConnectToServerMethodInfo,
#endif
    placesSidebarGetShowConnectToServer     ,


-- ** getShowDesktop #method:getShowDesktop#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowDesktopMethodInfo   ,
#endif
    placesSidebarGetShowDesktop             ,


-- ** getShowEnterLocation #method:getShowEnterLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowEnterLocationMethodInfo,
#endif
    placesSidebarGetShowEnterLocation       ,


-- ** getShowOtherLocations #method:getShowOtherLocations#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowOtherLocationsMethodInfo,
#endif
    placesSidebarGetShowOtherLocations      ,


-- ** getShowRecent #method:getShowRecent#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowRecentMethodInfo    ,
#endif
    placesSidebarGetShowRecent              ,


-- ** getShowStarredLocation #method:getShowStarredLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowStarredLocationMethodInfo,
#endif
    placesSidebarGetShowStarredLocation     ,


-- ** getShowTrash #method:getShowTrash#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarGetShowTrashMethodInfo     ,
#endif
    placesSidebarGetShowTrash               ,


-- ** listShortcuts #method:listShortcuts#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarListShortcutsMethodInfo    ,
#endif
    placesSidebarListShortcuts              ,


-- ** new #method:new#

    placesSidebarNew                        ,


-- ** removeShortcut #method:removeShortcut#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarRemoveShortcutMethodInfo   ,
#endif
    placesSidebarRemoveShortcut             ,


-- ** setDropTargetsVisible #method:setDropTargetsVisible#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetDropTargetsVisibleMethodInfo,
#endif
    placesSidebarSetDropTargetsVisible      ,


-- ** setLocalOnly #method:setLocalOnly#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetLocalOnlyMethodInfo     ,
#endif
    placesSidebarSetLocalOnly               ,


-- ** setLocation #method:setLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetLocationMethodInfo      ,
#endif
    placesSidebarSetLocation                ,


-- ** setOpenFlags #method:setOpenFlags#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetOpenFlagsMethodInfo     ,
#endif
    placesSidebarSetOpenFlags               ,


-- ** setShowConnectToServer #method:setShowConnectToServer#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowConnectToServerMethodInfo,
#endif
    placesSidebarSetShowConnectToServer     ,


-- ** setShowDesktop #method:setShowDesktop#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowDesktopMethodInfo   ,
#endif
    placesSidebarSetShowDesktop             ,


-- ** setShowEnterLocation #method:setShowEnterLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowEnterLocationMethodInfo,
#endif
    placesSidebarSetShowEnterLocation       ,


-- ** setShowOtherLocations #method:setShowOtherLocations#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowOtherLocationsMethodInfo,
#endif
    placesSidebarSetShowOtherLocations      ,


-- ** setShowRecent #method:setShowRecent#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowRecentMethodInfo    ,
#endif
    placesSidebarSetShowRecent              ,


-- ** setShowStarredLocation #method:setShowStarredLocation#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowStarredLocationMethodInfo,
#endif
    placesSidebarSetShowStarredLocation     ,


-- ** setShowTrash #method:setShowTrash#

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarSetShowTrashMethodInfo     ,
#endif
    placesSidebarSetShowTrash               ,




 -- * Properties
-- ** localOnly #attr:localOnly#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarLocalOnlyPropertyInfo      ,
#endif
    constructPlacesSidebarLocalOnly         ,
    getPlacesSidebarLocalOnly               ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarLocalOnly                  ,
#endif
    setPlacesSidebarLocalOnly               ,


-- ** location #attr:location#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarLocationPropertyInfo       ,
#endif
    clearPlacesSidebarLocation              ,
    constructPlacesSidebarLocation          ,
    getPlacesSidebarLocation                ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarLocation                   ,
#endif
    setPlacesSidebarLocation                ,


-- ** openFlags #attr:openFlags#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarOpenFlagsPropertyInfo      ,
#endif
    constructPlacesSidebarOpenFlags         ,
    getPlacesSidebarOpenFlags               ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarOpenFlags                  ,
#endif
    setPlacesSidebarOpenFlags               ,


-- ** populateAll #attr:populateAll#
-- | If :populate-all is 'P.True', the [populatePopup]("GI.Gtk.Objects.PlacesSidebar#signal:populatePopup") signal
-- is also emitted for popovers.
-- 
-- /Since: 3.18/

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarPopulateAllPropertyInfo    ,
#endif
    constructPlacesSidebarPopulateAll       ,
    getPlacesSidebarPopulateAll             ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarPopulateAll                ,
#endif
    setPlacesSidebarPopulateAll             ,


-- ** showConnectToServer #attr:showConnectToServer#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowConnectToServerPropertyInfo,
#endif
    constructPlacesSidebarShowConnectToServer,
    getPlacesSidebarShowConnectToServer     ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowConnectToServer        ,
#endif
    setPlacesSidebarShowConnectToServer     ,


-- ** showDesktop #attr:showDesktop#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowDesktopPropertyInfo    ,
#endif
    constructPlacesSidebarShowDesktop       ,
    getPlacesSidebarShowDesktop             ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowDesktop                ,
#endif
    setPlacesSidebarShowDesktop             ,


-- ** showEnterLocation #attr:showEnterLocation#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowEnterLocationPropertyInfo,
#endif
    constructPlacesSidebarShowEnterLocation ,
    getPlacesSidebarShowEnterLocation       ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowEnterLocation          ,
#endif
    setPlacesSidebarShowEnterLocation       ,


-- ** showOtherLocations #attr:showOtherLocations#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowOtherLocationsPropertyInfo,
#endif
    constructPlacesSidebarShowOtherLocations,
    getPlacesSidebarShowOtherLocations      ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowOtherLocations         ,
#endif
    setPlacesSidebarShowOtherLocations      ,


-- ** showRecent #attr:showRecent#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowRecentPropertyInfo     ,
#endif
    constructPlacesSidebarShowRecent        ,
    getPlacesSidebarShowRecent              ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowRecent                 ,
#endif
    setPlacesSidebarShowRecent              ,


-- ** showStarredLocation #attr:showStarredLocation#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowStarredLocationPropertyInfo,
#endif
    constructPlacesSidebarShowStarredLocation,
    getPlacesSidebarShowStarredLocation     ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowStarredLocation        ,
#endif
    setPlacesSidebarShowStarredLocation     ,


-- ** showTrash #attr:showTrash#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowTrashPropertyInfo      ,
#endif
    constructPlacesSidebarShowTrash         ,
    getPlacesSidebarShowTrash               ,
#if defined(ENABLE_OVERLOADING)
    placesSidebarShowTrash                  ,
#endif
    setPlacesSidebarShowTrash               ,




 -- * Signals
-- ** dragActionAsk #signal:dragActionAsk#

    C_PlacesSidebarDragActionAskCallback    ,
    PlacesSidebarDragActionAskCallback      ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarDragActionAskSignalInfo    ,
#endif
    afterPlacesSidebarDragActionAsk         ,
    genClosure_PlacesSidebarDragActionAsk   ,
    mk_PlacesSidebarDragActionAskCallback   ,
    noPlacesSidebarDragActionAskCallback    ,
    onPlacesSidebarDragActionAsk            ,
    wrap_PlacesSidebarDragActionAskCallback ,


-- ** dragActionRequested #signal:dragActionRequested#

    C_PlacesSidebarDragActionRequestedCallback,
    PlacesSidebarDragActionRequestedCallback,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarDragActionRequestedSignalInfo,
#endif
    afterPlacesSidebarDragActionRequested   ,
    genClosure_PlacesSidebarDragActionRequested,
    mk_PlacesSidebarDragActionRequestedCallback,
    noPlacesSidebarDragActionRequestedCallback,
    onPlacesSidebarDragActionRequested      ,
    wrap_PlacesSidebarDragActionRequestedCallback,


-- ** dragPerformDrop #signal:dragPerformDrop#

    C_PlacesSidebarDragPerformDropCallback  ,
    PlacesSidebarDragPerformDropCallback    ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarDragPerformDropSignalInfo  ,
#endif
    afterPlacesSidebarDragPerformDrop       ,
    genClosure_PlacesSidebarDragPerformDrop ,
    mk_PlacesSidebarDragPerformDropCallback ,
    noPlacesSidebarDragPerformDropCallback  ,
    onPlacesSidebarDragPerformDrop          ,
    wrap_PlacesSidebarDragPerformDropCallback,


-- ** mount #signal:mount#

    C_PlacesSidebarMountCallback            ,
    PlacesSidebarMountCallback              ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarMountSignalInfo            ,
#endif
    afterPlacesSidebarMount                 ,
    genClosure_PlacesSidebarMount           ,
    mk_PlacesSidebarMountCallback           ,
    noPlacesSidebarMountCallback            ,
    onPlacesSidebarMount                    ,
    wrap_PlacesSidebarMountCallback         ,


-- ** openLocation #signal:openLocation#

    C_PlacesSidebarOpenLocationCallback     ,
    PlacesSidebarOpenLocationCallback       ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarOpenLocationSignalInfo     ,
#endif
    afterPlacesSidebarOpenLocation          ,
    genClosure_PlacesSidebarOpenLocation    ,
    mk_PlacesSidebarOpenLocationCallback    ,
    noPlacesSidebarOpenLocationCallback     ,
    onPlacesSidebarOpenLocation             ,
    wrap_PlacesSidebarOpenLocationCallback  ,


-- ** populatePopup #signal:populatePopup#

    C_PlacesSidebarPopulatePopupCallback    ,
    PlacesSidebarPopulatePopupCallback      ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarPopulatePopupSignalInfo    ,
#endif
    afterPlacesSidebarPopulatePopup         ,
    genClosure_PlacesSidebarPopulatePopup   ,
    mk_PlacesSidebarPopulatePopupCallback   ,
    noPlacesSidebarPopulatePopupCallback    ,
    onPlacesSidebarPopulatePopup            ,
    wrap_PlacesSidebarPopulatePopupCallback ,


-- ** showConnectToServer #signal:showConnectToServer#

    C_PlacesSidebarShowConnectToServerCallback,
    PlacesSidebarShowConnectToServerCallback,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowConnectToServerSignalInfo,
#endif
    afterPlacesSidebarShowConnectToServer   ,
    genClosure_PlacesSidebarShowConnectToServer,
    mk_PlacesSidebarShowConnectToServerCallback,
    noPlacesSidebarShowConnectToServerCallback,
    onPlacesSidebarShowConnectToServer      ,
    wrap_PlacesSidebarShowConnectToServerCallback,


-- ** showEnterLocation #signal:showEnterLocation#

    C_PlacesSidebarShowEnterLocationCallback,
    PlacesSidebarShowEnterLocationCallback  ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowEnterLocationSignalInfo,
#endif
    afterPlacesSidebarShowEnterLocation     ,
    genClosure_PlacesSidebarShowEnterLocation,
    mk_PlacesSidebarShowEnterLocationCallback,
    noPlacesSidebarShowEnterLocationCallback,
    onPlacesSidebarShowEnterLocation        ,
    wrap_PlacesSidebarShowEnterLocationCallback,


-- ** showErrorMessage #signal:showErrorMessage#

    C_PlacesSidebarShowErrorMessageCallback ,
    PlacesSidebarShowErrorMessageCallback   ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowErrorMessageSignalInfo ,
#endif
    afterPlacesSidebarShowErrorMessage      ,
    genClosure_PlacesSidebarShowErrorMessage,
    mk_PlacesSidebarShowErrorMessageCallback,
    noPlacesSidebarShowErrorMessageCallback ,
    onPlacesSidebarShowErrorMessage         ,
    wrap_PlacesSidebarShowErrorMessageCallback,


-- ** showOtherLocations #signal:showOtherLocations#

    C_PlacesSidebarShowOtherLocationsCallback,
    PlacesSidebarShowOtherLocationsCallback ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowOtherLocationsSignalInfo,
#endif
    afterPlacesSidebarShowOtherLocations    ,
    genClosure_PlacesSidebarShowOtherLocations,
    mk_PlacesSidebarShowOtherLocationsCallback,
    noPlacesSidebarShowOtherLocationsCallback,
    onPlacesSidebarShowOtherLocations       ,
    wrap_PlacesSidebarShowOtherLocationsCallback,


-- ** showOtherLocationsWithFlags #signal:showOtherLocationsWithFlags#

    C_PlacesSidebarShowOtherLocationsWithFlagsCallback,
    PlacesSidebarShowOtherLocationsWithFlagsCallback,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowOtherLocationsWithFlagsSignalInfo,
#endif
    afterPlacesSidebarShowOtherLocationsWithFlags,
    genClosure_PlacesSidebarShowOtherLocationsWithFlags,
    mk_PlacesSidebarShowOtherLocationsWithFlagsCallback,
    noPlacesSidebarShowOtherLocationsWithFlagsCallback,
    onPlacesSidebarShowOtherLocationsWithFlags,
    wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback,


-- ** showStarredLocation #signal:showStarredLocation#

    C_PlacesSidebarShowStarredLocationCallback,
    PlacesSidebarShowStarredLocationCallback,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarShowStarredLocationSignalInfo,
#endif
    afterPlacesSidebarShowStarredLocation   ,
    genClosure_PlacesSidebarShowStarredLocation,
    mk_PlacesSidebarShowStarredLocationCallback,
    noPlacesSidebarShowStarredLocationCallback,
    onPlacesSidebarShowStarredLocation      ,
    wrap_PlacesSidebarShowStarredLocationCallback,


-- ** unmount #signal:unmount#

    C_PlacesSidebarUnmountCallback          ,
    PlacesSidebarUnmountCallback            ,
#if defined(ENABLE_OVERLOADING)
    PlacesSidebarUnmountSignalInfo          ,
#endif
    afterPlacesSidebarUnmount               ,
    genClosure_PlacesSidebarUnmount         ,
    mk_PlacesSidebarUnmountCallback         ,
    noPlacesSidebarUnmountCallback          ,
    onPlacesSidebarUnmount                  ,
    wrap_PlacesSidebarUnmountCallback       ,




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
import qualified GI.Gdk.Objects.DragContext as Gdk.DragContext
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Interfaces.Volume as Gio.Volume
import qualified GI.Gio.Objects.MountOperation as Gio.MountOperation
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ScrolledWindow as Gtk.ScrolledWindow
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype PlacesSidebar = PlacesSidebar (ManagedPtr PlacesSidebar)
    deriving (Eq)
foreign import ccall "gtk_places_sidebar_get_type"
    c_gtk_places_sidebar_get_type :: IO GType

instance GObject PlacesSidebar where
    gobjectType = c_gtk_places_sidebar_get_type
    

-- | Convert 'PlacesSidebar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue PlacesSidebar where
    toGValue o = do
        gtype <- c_gtk_places_sidebar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr PlacesSidebar)
        B.ManagedPtr.newObject PlacesSidebar ptr
        
    

-- | Type class for types which can be safely cast to `PlacesSidebar`, for instance with `toPlacesSidebar`.
class (GObject o, O.IsDescendantOf PlacesSidebar o) => IsPlacesSidebar o
instance (GObject o, O.IsDescendantOf PlacesSidebar o) => IsPlacesSidebar o

instance O.HasParentTypes PlacesSidebar
type instance O.ParentTypes PlacesSidebar = '[Gtk.ScrolledWindow.ScrolledWindow, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `PlacesSidebar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPlacesSidebar :: (MonadIO m, IsPlacesSidebar o) => o -> m PlacesSidebar
toPlacesSidebar = liftIO . unsafeCastTo PlacesSidebar

-- | A convenience alias for `Nothing` :: `Maybe` `PlacesSidebar`.
noPlacesSidebar :: Maybe PlacesSidebar
noPlacesSidebar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolvePlacesSidebarMethod (t :: Symbol) (o :: *) :: * where
    ResolvePlacesSidebarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolvePlacesSidebarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolvePlacesSidebarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolvePlacesSidebarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolvePlacesSidebarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolvePlacesSidebarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolvePlacesSidebarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolvePlacesSidebarMethod "addShortcut" o = PlacesSidebarAddShortcutMethodInfo
    ResolvePlacesSidebarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolvePlacesSidebarMethod "addWithViewport" o = Gtk.ScrolledWindow.ScrolledWindowAddWithViewportMethodInfo
    ResolvePlacesSidebarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePlacesSidebarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePlacesSidebarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolvePlacesSidebarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolvePlacesSidebarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolvePlacesSidebarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolvePlacesSidebarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolvePlacesSidebarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolvePlacesSidebarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolvePlacesSidebarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolvePlacesSidebarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolvePlacesSidebarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolvePlacesSidebarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolvePlacesSidebarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolvePlacesSidebarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolvePlacesSidebarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolvePlacesSidebarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolvePlacesSidebarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolvePlacesSidebarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolvePlacesSidebarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolvePlacesSidebarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolvePlacesSidebarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolvePlacesSidebarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolvePlacesSidebarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolvePlacesSidebarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolvePlacesSidebarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolvePlacesSidebarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolvePlacesSidebarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolvePlacesSidebarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolvePlacesSidebarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolvePlacesSidebarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolvePlacesSidebarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolvePlacesSidebarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolvePlacesSidebarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolvePlacesSidebarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolvePlacesSidebarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolvePlacesSidebarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolvePlacesSidebarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolvePlacesSidebarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolvePlacesSidebarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolvePlacesSidebarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolvePlacesSidebarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolvePlacesSidebarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolvePlacesSidebarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolvePlacesSidebarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePlacesSidebarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolvePlacesSidebarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolvePlacesSidebarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePlacesSidebarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePlacesSidebarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolvePlacesSidebarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolvePlacesSidebarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolvePlacesSidebarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolvePlacesSidebarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolvePlacesSidebarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolvePlacesSidebarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolvePlacesSidebarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolvePlacesSidebarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolvePlacesSidebarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolvePlacesSidebarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolvePlacesSidebarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolvePlacesSidebarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolvePlacesSidebarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolvePlacesSidebarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolvePlacesSidebarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolvePlacesSidebarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolvePlacesSidebarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolvePlacesSidebarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolvePlacesSidebarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolvePlacesSidebarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePlacesSidebarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolvePlacesSidebarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolvePlacesSidebarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolvePlacesSidebarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolvePlacesSidebarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolvePlacesSidebarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolvePlacesSidebarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolvePlacesSidebarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolvePlacesSidebarMethod "listShortcuts" o = PlacesSidebarListShortcutsMethodInfo
    ResolvePlacesSidebarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolvePlacesSidebarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolvePlacesSidebarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolvePlacesSidebarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolvePlacesSidebarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolvePlacesSidebarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolvePlacesSidebarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolvePlacesSidebarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolvePlacesSidebarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolvePlacesSidebarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePlacesSidebarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePlacesSidebarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolvePlacesSidebarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolvePlacesSidebarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolvePlacesSidebarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolvePlacesSidebarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolvePlacesSidebarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolvePlacesSidebarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolvePlacesSidebarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolvePlacesSidebarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolvePlacesSidebarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolvePlacesSidebarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolvePlacesSidebarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolvePlacesSidebarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolvePlacesSidebarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolvePlacesSidebarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolvePlacesSidebarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolvePlacesSidebarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePlacesSidebarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePlacesSidebarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolvePlacesSidebarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolvePlacesSidebarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolvePlacesSidebarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolvePlacesSidebarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolvePlacesSidebarMethod "removeShortcut" o = PlacesSidebarRemoveShortcutMethodInfo
    ResolvePlacesSidebarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolvePlacesSidebarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolvePlacesSidebarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolvePlacesSidebarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolvePlacesSidebarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolvePlacesSidebarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolvePlacesSidebarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolvePlacesSidebarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePlacesSidebarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolvePlacesSidebarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolvePlacesSidebarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolvePlacesSidebarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolvePlacesSidebarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolvePlacesSidebarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolvePlacesSidebarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolvePlacesSidebarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolvePlacesSidebarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolvePlacesSidebarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePlacesSidebarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePlacesSidebarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolvePlacesSidebarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolvePlacesSidebarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolvePlacesSidebarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePlacesSidebarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolvePlacesSidebarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolvePlacesSidebarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolvePlacesSidebarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolvePlacesSidebarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolvePlacesSidebarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePlacesSidebarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolvePlacesSidebarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolvePlacesSidebarMethod "unsetPlacement" o = Gtk.ScrolledWindow.ScrolledWindowUnsetPlacementMethodInfo
    ResolvePlacesSidebarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolvePlacesSidebarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePlacesSidebarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolvePlacesSidebarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolvePlacesSidebarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolvePlacesSidebarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolvePlacesSidebarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolvePlacesSidebarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolvePlacesSidebarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolvePlacesSidebarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolvePlacesSidebarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolvePlacesSidebarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolvePlacesSidebarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolvePlacesSidebarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolvePlacesSidebarMethod "getCaptureButtonPress" o = Gtk.ScrolledWindow.ScrolledWindowGetCaptureButtonPressMethodInfo
    ResolvePlacesSidebarMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolvePlacesSidebarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolvePlacesSidebarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolvePlacesSidebarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolvePlacesSidebarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolvePlacesSidebarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolvePlacesSidebarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolvePlacesSidebarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePlacesSidebarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolvePlacesSidebarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolvePlacesSidebarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolvePlacesSidebarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolvePlacesSidebarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolvePlacesSidebarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolvePlacesSidebarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolvePlacesSidebarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolvePlacesSidebarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolvePlacesSidebarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolvePlacesSidebarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolvePlacesSidebarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolvePlacesSidebarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolvePlacesSidebarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolvePlacesSidebarMethod "getHadjustment" o = Gtk.ScrolledWindow.ScrolledWindowGetHadjustmentMethodInfo
    ResolvePlacesSidebarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolvePlacesSidebarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolvePlacesSidebarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolvePlacesSidebarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolvePlacesSidebarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolvePlacesSidebarMethod "getHscrollbar" o = Gtk.ScrolledWindow.ScrolledWindowGetHscrollbarMethodInfo
    ResolvePlacesSidebarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolvePlacesSidebarMethod "getKineticScrolling" o = Gtk.ScrolledWindow.ScrolledWindowGetKineticScrollingMethodInfo
    ResolvePlacesSidebarMethod "getLocalOnly" o = PlacesSidebarGetLocalOnlyMethodInfo
    ResolvePlacesSidebarMethod "getLocation" o = PlacesSidebarGetLocationMethodInfo
    ResolvePlacesSidebarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolvePlacesSidebarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolvePlacesSidebarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolvePlacesSidebarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolvePlacesSidebarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolvePlacesSidebarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolvePlacesSidebarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolvePlacesSidebarMethod "getMaxContentHeight" o = Gtk.ScrolledWindow.ScrolledWindowGetMaxContentHeightMethodInfo
    ResolvePlacesSidebarMethod "getMaxContentWidth" o = Gtk.ScrolledWindow.ScrolledWindowGetMaxContentWidthMethodInfo
    ResolvePlacesSidebarMethod "getMinContentHeight" o = Gtk.ScrolledWindow.ScrolledWindowGetMinContentHeightMethodInfo
    ResolvePlacesSidebarMethod "getMinContentWidth" o = Gtk.ScrolledWindow.ScrolledWindowGetMinContentWidthMethodInfo
    ResolvePlacesSidebarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolvePlacesSidebarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolvePlacesSidebarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolvePlacesSidebarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolvePlacesSidebarMethod "getNthBookmark" o = PlacesSidebarGetNthBookmarkMethodInfo
    ResolvePlacesSidebarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolvePlacesSidebarMethod "getOpenFlags" o = PlacesSidebarGetOpenFlagsMethodInfo
    ResolvePlacesSidebarMethod "getOverlayScrolling" o = Gtk.ScrolledWindow.ScrolledWindowGetOverlayScrollingMethodInfo
    ResolvePlacesSidebarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolvePlacesSidebarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolvePlacesSidebarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolvePlacesSidebarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolvePlacesSidebarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolvePlacesSidebarMethod "getPlacement" o = Gtk.ScrolledWindow.ScrolledWindowGetPlacementMethodInfo
    ResolvePlacesSidebarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolvePlacesSidebarMethod "getPolicy" o = Gtk.ScrolledWindow.ScrolledWindowGetPolicyMethodInfo
    ResolvePlacesSidebarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolvePlacesSidebarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolvePlacesSidebarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolvePlacesSidebarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolvePlacesSidebarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolvePlacesSidebarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolvePlacesSidebarMethod "getPropagateNaturalHeight" o = Gtk.ScrolledWindow.ScrolledWindowGetPropagateNaturalHeightMethodInfo
    ResolvePlacesSidebarMethod "getPropagateNaturalWidth" o = Gtk.ScrolledWindow.ScrolledWindowGetPropagateNaturalWidthMethodInfo
    ResolvePlacesSidebarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePlacesSidebarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePlacesSidebarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolvePlacesSidebarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolvePlacesSidebarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolvePlacesSidebarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolvePlacesSidebarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolvePlacesSidebarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolvePlacesSidebarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolvePlacesSidebarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolvePlacesSidebarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolvePlacesSidebarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolvePlacesSidebarMethod "getShadowType" o = Gtk.ScrolledWindow.ScrolledWindowGetShadowTypeMethodInfo
    ResolvePlacesSidebarMethod "getShowConnectToServer" o = PlacesSidebarGetShowConnectToServerMethodInfo
    ResolvePlacesSidebarMethod "getShowDesktop" o = PlacesSidebarGetShowDesktopMethodInfo
    ResolvePlacesSidebarMethod "getShowEnterLocation" o = PlacesSidebarGetShowEnterLocationMethodInfo
    ResolvePlacesSidebarMethod "getShowOtherLocations" o = PlacesSidebarGetShowOtherLocationsMethodInfo
    ResolvePlacesSidebarMethod "getShowRecent" o = PlacesSidebarGetShowRecentMethodInfo
    ResolvePlacesSidebarMethod "getShowStarredLocation" o = PlacesSidebarGetShowStarredLocationMethodInfo
    ResolvePlacesSidebarMethod "getShowTrash" o = PlacesSidebarGetShowTrashMethodInfo
    ResolvePlacesSidebarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolvePlacesSidebarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolvePlacesSidebarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolvePlacesSidebarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolvePlacesSidebarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolvePlacesSidebarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolvePlacesSidebarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolvePlacesSidebarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolvePlacesSidebarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolvePlacesSidebarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolvePlacesSidebarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolvePlacesSidebarMethod "getVadjustment" o = Gtk.ScrolledWindow.ScrolledWindowGetVadjustmentMethodInfo
    ResolvePlacesSidebarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolvePlacesSidebarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolvePlacesSidebarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolvePlacesSidebarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolvePlacesSidebarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolvePlacesSidebarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolvePlacesSidebarMethod "getVscrollbar" o = Gtk.ScrolledWindow.ScrolledWindowGetVscrollbarMethodInfo
    ResolvePlacesSidebarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolvePlacesSidebarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolvePlacesSidebarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolvePlacesSidebarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolvePlacesSidebarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolvePlacesSidebarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolvePlacesSidebarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolvePlacesSidebarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolvePlacesSidebarMethod "setCaptureButtonPress" o = Gtk.ScrolledWindow.ScrolledWindowSetCaptureButtonPressMethodInfo
    ResolvePlacesSidebarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolvePlacesSidebarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolvePlacesSidebarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolvePlacesSidebarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePlacesSidebarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePlacesSidebarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolvePlacesSidebarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolvePlacesSidebarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolvePlacesSidebarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolvePlacesSidebarMethod "setDropTargetsVisible" o = PlacesSidebarSetDropTargetsVisibleMethodInfo
    ResolvePlacesSidebarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolvePlacesSidebarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolvePlacesSidebarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolvePlacesSidebarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolvePlacesSidebarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolvePlacesSidebarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolvePlacesSidebarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolvePlacesSidebarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolvePlacesSidebarMethod "setHadjustment" o = Gtk.ScrolledWindow.ScrolledWindowSetHadjustmentMethodInfo
    ResolvePlacesSidebarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolvePlacesSidebarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolvePlacesSidebarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolvePlacesSidebarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolvePlacesSidebarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolvePlacesSidebarMethod "setKineticScrolling" o = Gtk.ScrolledWindow.ScrolledWindowSetKineticScrollingMethodInfo
    ResolvePlacesSidebarMethod "setLocalOnly" o = PlacesSidebarSetLocalOnlyMethodInfo
    ResolvePlacesSidebarMethod "setLocation" o = PlacesSidebarSetLocationMethodInfo
    ResolvePlacesSidebarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolvePlacesSidebarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolvePlacesSidebarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolvePlacesSidebarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolvePlacesSidebarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolvePlacesSidebarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolvePlacesSidebarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolvePlacesSidebarMethod "setMaxContentHeight" o = Gtk.ScrolledWindow.ScrolledWindowSetMaxContentHeightMethodInfo
    ResolvePlacesSidebarMethod "setMaxContentWidth" o = Gtk.ScrolledWindow.ScrolledWindowSetMaxContentWidthMethodInfo
    ResolvePlacesSidebarMethod "setMinContentHeight" o = Gtk.ScrolledWindow.ScrolledWindowSetMinContentHeightMethodInfo
    ResolvePlacesSidebarMethod "setMinContentWidth" o = Gtk.ScrolledWindow.ScrolledWindowSetMinContentWidthMethodInfo
    ResolvePlacesSidebarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolvePlacesSidebarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolvePlacesSidebarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolvePlacesSidebarMethod "setOpenFlags" o = PlacesSidebarSetOpenFlagsMethodInfo
    ResolvePlacesSidebarMethod "setOverlayScrolling" o = Gtk.ScrolledWindow.ScrolledWindowSetOverlayScrollingMethodInfo
    ResolvePlacesSidebarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolvePlacesSidebarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolvePlacesSidebarMethod "setPlacement" o = Gtk.ScrolledWindow.ScrolledWindowSetPlacementMethodInfo
    ResolvePlacesSidebarMethod "setPolicy" o = Gtk.ScrolledWindow.ScrolledWindowSetPolicyMethodInfo
    ResolvePlacesSidebarMethod "setPropagateNaturalHeight" o = Gtk.ScrolledWindow.ScrolledWindowSetPropagateNaturalHeightMethodInfo
    ResolvePlacesSidebarMethod "setPropagateNaturalWidth" o = Gtk.ScrolledWindow.ScrolledWindowSetPropagateNaturalWidthMethodInfo
    ResolvePlacesSidebarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePlacesSidebarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolvePlacesSidebarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolvePlacesSidebarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolvePlacesSidebarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolvePlacesSidebarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolvePlacesSidebarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolvePlacesSidebarMethod "setShadowType" o = Gtk.ScrolledWindow.ScrolledWindowSetShadowTypeMethodInfo
    ResolvePlacesSidebarMethod "setShowConnectToServer" o = PlacesSidebarSetShowConnectToServerMethodInfo
    ResolvePlacesSidebarMethod "setShowDesktop" o = PlacesSidebarSetShowDesktopMethodInfo
    ResolvePlacesSidebarMethod "setShowEnterLocation" o = PlacesSidebarSetShowEnterLocationMethodInfo
    ResolvePlacesSidebarMethod "setShowOtherLocations" o = PlacesSidebarSetShowOtherLocationsMethodInfo
    ResolvePlacesSidebarMethod "setShowRecent" o = PlacesSidebarSetShowRecentMethodInfo
    ResolvePlacesSidebarMethod "setShowStarredLocation" o = PlacesSidebarSetShowStarredLocationMethodInfo
    ResolvePlacesSidebarMethod "setShowTrash" o = PlacesSidebarSetShowTrashMethodInfo
    ResolvePlacesSidebarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolvePlacesSidebarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolvePlacesSidebarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolvePlacesSidebarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolvePlacesSidebarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolvePlacesSidebarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolvePlacesSidebarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolvePlacesSidebarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolvePlacesSidebarMethod "setVadjustment" o = Gtk.ScrolledWindow.ScrolledWindowSetVadjustmentMethodInfo
    ResolvePlacesSidebarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolvePlacesSidebarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolvePlacesSidebarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolvePlacesSidebarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolvePlacesSidebarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolvePlacesSidebarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolvePlacesSidebarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePlacesSidebarMethod t PlacesSidebar, O.MethodInfo info PlacesSidebar p) => OL.IsLabel t (PlacesSidebar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal PlacesSidebar::drag-action-ask
-- | The places sidebar emits this signal when it needs to ask the application
-- to pop up a menu to ask the user for which drag action to perform.
-- 
-- /Since: 3.10/
type PlacesSidebarDragActionAskCallback =
    Int32
    -- ^ /@actions@/: Possible drag actions that need to be asked for.
    -> IO Int32
    -- ^ __Returns:__ the final drag action that the sidebar should pass to the drag side
    -- of the drag-and-drop operation.

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarDragActionAskCallback`@.
noPlacesSidebarDragActionAskCallback :: Maybe PlacesSidebarDragActionAskCallback
noPlacesSidebarDragActionAskCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarDragActionAskCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO Int32

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarDragActionAskCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarDragActionAskCallback :: C_PlacesSidebarDragActionAskCallback -> IO (FunPtr C_PlacesSidebarDragActionAskCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarDragActionAsk :: MonadIO m => PlacesSidebarDragActionAskCallback -> m (GClosure C_PlacesSidebarDragActionAskCallback)
genClosure_PlacesSidebarDragActionAsk cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionAskCallback cb
    mk_PlacesSidebarDragActionAskCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarDragActionAskCallback` into a `C_PlacesSidebarDragActionAskCallback`.
wrap_PlacesSidebarDragActionAskCallback ::
    PlacesSidebarDragActionAskCallback ->
    C_PlacesSidebarDragActionAskCallback
wrap_PlacesSidebarDragActionAskCallback _cb _ actions _ = do
    result <- _cb  actions
    return result


-- | Connect a signal handler for the [dragActionAsk](#signal:dragActionAsk) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #dragActionAsk callback
-- @
-- 
-- 
onPlacesSidebarDragActionAsk :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragActionAskCallback -> m SignalHandlerId
onPlacesSidebarDragActionAsk obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionAskCallback cb
    cb'' <- mk_PlacesSidebarDragActionAskCallback cb'
    connectSignalFunPtr obj "drag-action-ask" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragActionAsk](#signal:dragActionAsk) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #dragActionAsk callback
-- @
-- 
-- 
afterPlacesSidebarDragActionAsk :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragActionAskCallback -> m SignalHandlerId
afterPlacesSidebarDragActionAsk obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionAskCallback cb
    cb'' <- mk_PlacesSidebarDragActionAskCallback cb'
    connectSignalFunPtr obj "drag-action-ask" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarDragActionAskSignalInfo
instance SignalInfo PlacesSidebarDragActionAskSignalInfo where
    type HaskellCallbackType PlacesSidebarDragActionAskSignalInfo = PlacesSidebarDragActionAskCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarDragActionAskCallback cb
        cb'' <- mk_PlacesSidebarDragActionAskCallback cb'
        connectSignalFunPtr obj "drag-action-ask" cb'' connectMode detail

#endif

-- signal PlacesSidebar::drag-action-requested
-- | When the user starts a drag-and-drop operation and the sidebar needs
-- to ask the application for which drag action to perform, then the
-- sidebar will emit this signal.
-- 
-- The application can evaluate the /@context@/ for customary actions, or
-- it can check the type of the files indicated by /@sourceFileList@/ against the
-- possible actions for the destination /@destFile@/.
-- 
-- The drag action to use must be the return value of the signal handler.
-- 
-- /Since: 3.10/
type PlacesSidebarDragActionRequestedCallback =
    Gdk.DragContext.DragContext
    -- ^ /@context@/: t'GI.Gdk.Objects.DragContext.DragContext' with information about the drag operation
    -> Gio.File.File
    -- ^ /@destFile@/: t'GI.Gio.Interfaces.File.File' with the tentative location that is being hovered for a drop
    -> [Gio.File.File]
    -- ^ /@sourceFileList@/: 
    --   List of t'GI.Gio.Interfaces.File.File' that are being dragged
    -> IO Int32
    -- ^ __Returns:__ The drag action to use, for example, @/GDK_ACTION_COPY/@
    -- or @/GDK_ACTION_MOVE/@, or 0 if no action is allowed here (i.e. drops
    -- are not allowed in the specified /@destFile@/).

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarDragActionRequestedCallback`@.
noPlacesSidebarDragActionRequestedCallback :: Maybe PlacesSidebarDragActionRequestedCallback
noPlacesSidebarDragActionRequestedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarDragActionRequestedCallback =
    Ptr () ->                               -- object
    Ptr Gdk.DragContext.DragContext ->
    Ptr Gio.File.File ->
    Ptr (GList (Ptr Gio.File.File)) ->
    Ptr () ->                               -- user_data
    IO Int32

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarDragActionRequestedCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarDragActionRequestedCallback :: C_PlacesSidebarDragActionRequestedCallback -> IO (FunPtr C_PlacesSidebarDragActionRequestedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarDragActionRequested :: MonadIO m => PlacesSidebarDragActionRequestedCallback -> m (GClosure C_PlacesSidebarDragActionRequestedCallback)
genClosure_PlacesSidebarDragActionRequested cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionRequestedCallback cb
    mk_PlacesSidebarDragActionRequestedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarDragActionRequestedCallback` into a `C_PlacesSidebarDragActionRequestedCallback`.
wrap_PlacesSidebarDragActionRequestedCallback ::
    PlacesSidebarDragActionRequestedCallback ->
    C_PlacesSidebarDragActionRequestedCallback
wrap_PlacesSidebarDragActionRequestedCallback _cb _ context destFile sourceFileList _ = do
    context' <- (newObject Gdk.DragContext.DragContext) context
    destFile' <- (newObject Gio.File.File) destFile
    sourceFileList' <- unpackGList sourceFileList
    sourceFileList'' <- mapM (newObject Gio.File.File) sourceFileList'
    result <- _cb  context' destFile' sourceFileList''
    return result


-- | Connect a signal handler for the [dragActionRequested](#signal:dragActionRequested) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #dragActionRequested callback
-- @
-- 
-- 
onPlacesSidebarDragActionRequested :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragActionRequestedCallback -> m SignalHandlerId
onPlacesSidebarDragActionRequested obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionRequestedCallback cb
    cb'' <- mk_PlacesSidebarDragActionRequestedCallback cb'
    connectSignalFunPtr obj "drag-action-requested" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragActionRequested](#signal:dragActionRequested) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #dragActionRequested callback
-- @
-- 
-- 
afterPlacesSidebarDragActionRequested :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragActionRequestedCallback -> m SignalHandlerId
afterPlacesSidebarDragActionRequested obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragActionRequestedCallback cb
    cb'' <- mk_PlacesSidebarDragActionRequestedCallback cb'
    connectSignalFunPtr obj "drag-action-requested" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarDragActionRequestedSignalInfo
instance SignalInfo PlacesSidebarDragActionRequestedSignalInfo where
    type HaskellCallbackType PlacesSidebarDragActionRequestedSignalInfo = PlacesSidebarDragActionRequestedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarDragActionRequestedCallback cb
        cb'' <- mk_PlacesSidebarDragActionRequestedCallback cb'
        connectSignalFunPtr obj "drag-action-requested" cb'' connectMode detail

#endif

-- signal PlacesSidebar::drag-perform-drop
-- | The places sidebar emits this signal when the user completes a
-- drag-and-drop operation and one of the sidebar\'s items is the
-- destination.  This item is in the /@destFile@/, and the
-- /@sourceFileList@/ has the list of files that are dropped into it and
-- which should be copied\/moved\/etc. based on the specified /@action@/.
-- 
-- /Since: 3.10/
type PlacesSidebarDragPerformDropCallback =
    Gio.File.File
    -- ^ /@destFile@/: Destination t'GI.Gio.Interfaces.File.File'.
    -> [Gio.File.File]
    -- ^ /@sourceFileList@/: 
    --   t'GI.GLib.Structs.List.List' of t'GI.Gio.Interfaces.File.File' that got dropped.
    -> Int32
    -- ^ /@action@/: Drop action to perform.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarDragPerformDropCallback`@.
noPlacesSidebarDragPerformDropCallback :: Maybe PlacesSidebarDragPerformDropCallback
noPlacesSidebarDragPerformDropCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarDragPerformDropCallback =
    Ptr () ->                               -- object
    Ptr Gio.File.File ->
    Ptr (GList (Ptr Gio.File.File)) ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarDragPerformDropCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarDragPerformDropCallback :: C_PlacesSidebarDragPerformDropCallback -> IO (FunPtr C_PlacesSidebarDragPerformDropCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarDragPerformDrop :: MonadIO m => PlacesSidebarDragPerformDropCallback -> m (GClosure C_PlacesSidebarDragPerformDropCallback)
genClosure_PlacesSidebarDragPerformDrop cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragPerformDropCallback cb
    mk_PlacesSidebarDragPerformDropCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarDragPerformDropCallback` into a `C_PlacesSidebarDragPerformDropCallback`.
wrap_PlacesSidebarDragPerformDropCallback ::
    PlacesSidebarDragPerformDropCallback ->
    C_PlacesSidebarDragPerformDropCallback
wrap_PlacesSidebarDragPerformDropCallback _cb _ destFile sourceFileList action _ = do
    destFile' <- (newObject Gio.File.File) destFile
    sourceFileList' <- unpackGList sourceFileList
    sourceFileList'' <- mapM (newObject Gio.File.File) sourceFileList'
    _cb  destFile' sourceFileList'' action


-- | Connect a signal handler for the [dragPerformDrop](#signal:dragPerformDrop) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #dragPerformDrop callback
-- @
-- 
-- 
onPlacesSidebarDragPerformDrop :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragPerformDropCallback -> m SignalHandlerId
onPlacesSidebarDragPerformDrop obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragPerformDropCallback cb
    cb'' <- mk_PlacesSidebarDragPerformDropCallback cb'
    connectSignalFunPtr obj "drag-perform-drop" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragPerformDrop](#signal:dragPerformDrop) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #dragPerformDrop callback
-- @
-- 
-- 
afterPlacesSidebarDragPerformDrop :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarDragPerformDropCallback -> m SignalHandlerId
afterPlacesSidebarDragPerformDrop obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarDragPerformDropCallback cb
    cb'' <- mk_PlacesSidebarDragPerformDropCallback cb'
    connectSignalFunPtr obj "drag-perform-drop" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarDragPerformDropSignalInfo
instance SignalInfo PlacesSidebarDragPerformDropSignalInfo where
    type HaskellCallbackType PlacesSidebarDragPerformDropSignalInfo = PlacesSidebarDragPerformDropCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarDragPerformDropCallback cb
        cb'' <- mk_PlacesSidebarDragPerformDropCallback cb'
        connectSignalFunPtr obj "drag-perform-drop" cb'' connectMode detail

#endif

-- signal PlacesSidebar::mount
-- | The places sidebar emits this signal when it starts a new operation
-- because the user clicked on some location that needs mounting.
-- In this way the application using the t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar' can track the
-- progress of the operation and, for example, show a notification.
-- 
-- /Since: 3.20/
type PlacesSidebarMountCallback =
    Gio.MountOperation.MountOperation
    -- ^ /@mountOperation@/: the t'GI.Gio.Objects.MountOperation.MountOperation' that is going to start.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarMountCallback`@.
noPlacesSidebarMountCallback :: Maybe PlacesSidebarMountCallback
noPlacesSidebarMountCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarMountCallback =
    Ptr () ->                               -- object
    Ptr Gio.MountOperation.MountOperation ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarMountCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarMountCallback :: C_PlacesSidebarMountCallback -> IO (FunPtr C_PlacesSidebarMountCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarMount :: MonadIO m => PlacesSidebarMountCallback -> m (GClosure C_PlacesSidebarMountCallback)
genClosure_PlacesSidebarMount cb = liftIO $ do
    let cb' = wrap_PlacesSidebarMountCallback cb
    mk_PlacesSidebarMountCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarMountCallback` into a `C_PlacesSidebarMountCallback`.
wrap_PlacesSidebarMountCallback ::
    PlacesSidebarMountCallback ->
    C_PlacesSidebarMountCallback
wrap_PlacesSidebarMountCallback _cb _ mountOperation _ = do
    mountOperation' <- (newObject Gio.MountOperation.MountOperation) mountOperation
    _cb  mountOperation'


-- | Connect a signal handler for the [mount](#signal:mount) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #mount callback
-- @
-- 
-- 
onPlacesSidebarMount :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarMountCallback -> m SignalHandlerId
onPlacesSidebarMount obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarMountCallback cb
    cb'' <- mk_PlacesSidebarMountCallback cb'
    connectSignalFunPtr obj "mount" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [mount](#signal:mount) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #mount callback
-- @
-- 
-- 
afterPlacesSidebarMount :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarMountCallback -> m SignalHandlerId
afterPlacesSidebarMount obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarMountCallback cb
    cb'' <- mk_PlacesSidebarMountCallback cb'
    connectSignalFunPtr obj "mount" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarMountSignalInfo
instance SignalInfo PlacesSidebarMountSignalInfo where
    type HaskellCallbackType PlacesSidebarMountSignalInfo = PlacesSidebarMountCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarMountCallback cb
        cb'' <- mk_PlacesSidebarMountCallback cb'
        connectSignalFunPtr obj "mount" cb'' connectMode detail

#endif

-- signal PlacesSidebar::open-location
-- | The places sidebar emits this signal when the user selects a location
-- in it.  The calling application should display the contents of that
-- location; for example, a file manager should show a list of files in
-- the specified location.
-- 
-- /Since: 3.10/
type PlacesSidebarOpenLocationCallback =
    Gio.File.File
    -- ^ /@location@/: t'GI.Gio.Interfaces.File.File' to which the caller should switch.
    -> [Gtk.Flags.PlacesOpenFlags]
    -- ^ /@openFlags@/: a single value from t'GI.Gtk.Flags.PlacesOpenFlags' specifying how the /@location@/ should be opened.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarOpenLocationCallback`@.
noPlacesSidebarOpenLocationCallback :: Maybe PlacesSidebarOpenLocationCallback
noPlacesSidebarOpenLocationCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarOpenLocationCallback =
    Ptr () ->                               -- object
    Ptr Gio.File.File ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarOpenLocationCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarOpenLocationCallback :: C_PlacesSidebarOpenLocationCallback -> IO (FunPtr C_PlacesSidebarOpenLocationCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarOpenLocation :: MonadIO m => PlacesSidebarOpenLocationCallback -> m (GClosure C_PlacesSidebarOpenLocationCallback)
genClosure_PlacesSidebarOpenLocation cb = liftIO $ do
    let cb' = wrap_PlacesSidebarOpenLocationCallback cb
    mk_PlacesSidebarOpenLocationCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarOpenLocationCallback` into a `C_PlacesSidebarOpenLocationCallback`.
wrap_PlacesSidebarOpenLocationCallback ::
    PlacesSidebarOpenLocationCallback ->
    C_PlacesSidebarOpenLocationCallback
wrap_PlacesSidebarOpenLocationCallback _cb _ location openFlags _ = do
    location' <- (newObject Gio.File.File) location
    let openFlags' = wordToGFlags openFlags
    _cb  location' openFlags'


-- | Connect a signal handler for the [openLocation](#signal:openLocation) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #openLocation callback
-- @
-- 
-- 
onPlacesSidebarOpenLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarOpenLocationCallback -> m SignalHandlerId
onPlacesSidebarOpenLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarOpenLocationCallback cb
    cb'' <- mk_PlacesSidebarOpenLocationCallback cb'
    connectSignalFunPtr obj "open-location" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [openLocation](#signal:openLocation) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #openLocation callback
-- @
-- 
-- 
afterPlacesSidebarOpenLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarOpenLocationCallback -> m SignalHandlerId
afterPlacesSidebarOpenLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarOpenLocationCallback cb
    cb'' <- mk_PlacesSidebarOpenLocationCallback cb'
    connectSignalFunPtr obj "open-location" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarOpenLocationSignalInfo
instance SignalInfo PlacesSidebarOpenLocationSignalInfo where
    type HaskellCallbackType PlacesSidebarOpenLocationSignalInfo = PlacesSidebarOpenLocationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarOpenLocationCallback cb
        cb'' <- mk_PlacesSidebarOpenLocationCallback cb'
        connectSignalFunPtr obj "open-location" cb'' connectMode detail

#endif

-- signal PlacesSidebar::populate-popup
-- | The places sidebar emits this signal when the user invokes a contextual
-- popup on one of its items. In the signal handler, the application may
-- add extra items to the menu as appropriate. For example, a file manager
-- may want to add a \"Properties\" command to the menu.
-- 
-- It is not necessary to store the /@selectedItem@/ for each menu item;
-- during their callbacks, the application can use 'GI.Gtk.Objects.PlacesSidebar.placesSidebarGetLocation'
-- to get the file to which the item refers.
-- 
-- The /@selectedItem@/ argument may be 'P.Nothing' in case the selection refers to
-- a volume. In this case, /@selectedVolume@/ will be non-'P.Nothing'. In this case,
-- the calling application will have to 'GI.GObject.Objects.Object.objectRef' the /@selectedVolume@/ and
-- keep it around to use it in the callback.
-- 
-- The /@container@/ and all its contents are destroyed after the user
-- dismisses the popup. The popup is re-created (and thus, this signal is
-- emitted) every time the user activates the contextual menu.
-- 
-- Before 3.18, the /@container@/ always was a t'GI.Gtk.Objects.Menu.Menu', and you were expected
-- to add your items as @/GtkMenuItems/@. Since 3.18, the popup may be implemented
-- as a t'GI.Gtk.Objects.Popover.Popover', in which case /@container@/ will be something else, e.g. a
-- t'GI.Gtk.Objects.Box.Box', to which you may add @/GtkModelButtons/@ or other widgets, such as
-- @/GtkEntries/@, @/GtkSpinButtons/@, etc. If your application can deal with this
-- situation, you can set t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar'::@/populate-all/@ to 'P.True' to request
-- that this signal is emitted for populating popovers as well.
-- 
-- /Since: 3.10/
type PlacesSidebarPopulatePopupCallback =
    Gtk.Widget.Widget
    -- ^ /@container@/: a t'GI.Gtk.Objects.Menu.Menu' or another t'GI.Gtk.Objects.Container.Container'
    -> Maybe Gio.File.File
    -- ^ /@selectedItem@/: t'GI.Gio.Interfaces.File.File' with the item to which
    --     the popup should refer, or 'P.Nothing' in the case of a /@selectedVolume@/.
    -> Maybe Gio.Volume.Volume
    -- ^ /@selectedVolume@/: t'GI.Gio.Interfaces.Volume.Volume' if the selected
    --     item is a volume, or 'P.Nothing' if it is a file.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarPopulatePopupCallback`@.
noPlacesSidebarPopulatePopupCallback :: Maybe PlacesSidebarPopulatePopupCallback
noPlacesSidebarPopulatePopupCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarPopulatePopupCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr Gio.File.File ->
    Ptr Gio.Volume.Volume ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarPopulatePopupCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarPopulatePopupCallback :: C_PlacesSidebarPopulatePopupCallback -> IO (FunPtr C_PlacesSidebarPopulatePopupCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarPopulatePopup :: MonadIO m => PlacesSidebarPopulatePopupCallback -> m (GClosure C_PlacesSidebarPopulatePopupCallback)
genClosure_PlacesSidebarPopulatePopup cb = liftIO $ do
    let cb' = wrap_PlacesSidebarPopulatePopupCallback cb
    mk_PlacesSidebarPopulatePopupCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarPopulatePopupCallback` into a `C_PlacesSidebarPopulatePopupCallback`.
wrap_PlacesSidebarPopulatePopupCallback ::
    PlacesSidebarPopulatePopupCallback ->
    C_PlacesSidebarPopulatePopupCallback
wrap_PlacesSidebarPopulatePopupCallback _cb _ container selectedItem selectedVolume _ = do
    container' <- (newObject Gtk.Widget.Widget) container
    maybeSelectedItem <-
        if selectedItem == nullPtr
        then return Nothing
        else do
            selectedItem' <- (newObject Gio.File.File) selectedItem
            return $ Just selectedItem'
    maybeSelectedVolume <-
        if selectedVolume == nullPtr
        then return Nothing
        else do
            selectedVolume' <- (newObject Gio.Volume.Volume) selectedVolume
            return $ Just selectedVolume'
    _cb  container' maybeSelectedItem maybeSelectedVolume


-- | Connect a signal handler for the [populatePopup](#signal:populatePopup) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #populatePopup callback
-- @
-- 
-- 
onPlacesSidebarPopulatePopup :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarPopulatePopupCallback -> m SignalHandlerId
onPlacesSidebarPopulatePopup obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarPopulatePopupCallback cb
    cb'' <- mk_PlacesSidebarPopulatePopupCallback cb'
    connectSignalFunPtr obj "populate-popup" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [populatePopup](#signal:populatePopup) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #populatePopup callback
-- @
-- 
-- 
afterPlacesSidebarPopulatePopup :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarPopulatePopupCallback -> m SignalHandlerId
afterPlacesSidebarPopulatePopup obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarPopulatePopupCallback cb
    cb'' <- mk_PlacesSidebarPopulatePopupCallback cb'
    connectSignalFunPtr obj "populate-popup" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarPopulatePopupSignalInfo
instance SignalInfo PlacesSidebarPopulatePopupSignalInfo where
    type HaskellCallbackType PlacesSidebarPopulatePopupSignalInfo = PlacesSidebarPopulatePopupCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarPopulatePopupCallback cb
        cb'' <- mk_PlacesSidebarPopulatePopupCallback cb'
        connectSignalFunPtr obj "populate-popup" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-connect-to-server
{-# DEPRECATED PlacesSidebarShowConnectToServerCallback ["(Since version 3.18)","use the [showOtherLocations](\"GI.Gtk.Objects.PlacesSidebar#signal:showOtherLocations\") signal","    to connect to network servers."] #-}
-- | The places sidebar emits this signal when it needs the calling
-- application to present an way to connect directly to a network server.
-- For example, the application may bring up a dialog box asking for
-- a URL like \"sftp:\/\/ftp.example.com\".  It is up to the application to create
-- the corresponding mount by using, for example, 'GI.Gio.Interfaces.File.fileMountEnclosingVolume'.
type PlacesSidebarShowConnectToServerCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowConnectToServerCallback`@.
noPlacesSidebarShowConnectToServerCallback :: Maybe PlacesSidebarShowConnectToServerCallback
noPlacesSidebarShowConnectToServerCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowConnectToServerCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowConnectToServerCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowConnectToServerCallback :: C_PlacesSidebarShowConnectToServerCallback -> IO (FunPtr C_PlacesSidebarShowConnectToServerCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowConnectToServer :: MonadIO m => PlacesSidebarShowConnectToServerCallback -> m (GClosure C_PlacesSidebarShowConnectToServerCallback)
genClosure_PlacesSidebarShowConnectToServer cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowConnectToServerCallback cb
    mk_PlacesSidebarShowConnectToServerCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowConnectToServerCallback` into a `C_PlacesSidebarShowConnectToServerCallback`.
wrap_PlacesSidebarShowConnectToServerCallback ::
    PlacesSidebarShowConnectToServerCallback ->
    C_PlacesSidebarShowConnectToServerCallback
wrap_PlacesSidebarShowConnectToServerCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [showConnectToServer](#signal:showConnectToServer) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showConnectToServer callback
-- @
-- 
-- 
onPlacesSidebarShowConnectToServer :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowConnectToServerCallback -> m SignalHandlerId
onPlacesSidebarShowConnectToServer obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowConnectToServerCallback cb
    cb'' <- mk_PlacesSidebarShowConnectToServerCallback cb'
    connectSignalFunPtr obj "show-connect-to-server" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showConnectToServer](#signal:showConnectToServer) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showConnectToServer callback
-- @
-- 
-- 
afterPlacesSidebarShowConnectToServer :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowConnectToServerCallback -> m SignalHandlerId
afterPlacesSidebarShowConnectToServer obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowConnectToServerCallback cb
    cb'' <- mk_PlacesSidebarShowConnectToServerCallback cb'
    connectSignalFunPtr obj "show-connect-to-server" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowConnectToServerSignalInfo
instance SignalInfo PlacesSidebarShowConnectToServerSignalInfo where
    type HaskellCallbackType PlacesSidebarShowConnectToServerSignalInfo = PlacesSidebarShowConnectToServerCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowConnectToServerCallback cb
        cb'' <- mk_PlacesSidebarShowConnectToServerCallback cb'
        connectSignalFunPtr obj "show-connect-to-server" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-enter-location
-- | The places sidebar emits this signal when it needs the calling
-- application to present an way to directly enter a location.
-- For example, the application may bring up a dialog box asking for
-- a URL like \"http:\/\/http.example.com\".
-- 
-- /Since: 3.14/
type PlacesSidebarShowEnterLocationCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowEnterLocationCallback`@.
noPlacesSidebarShowEnterLocationCallback :: Maybe PlacesSidebarShowEnterLocationCallback
noPlacesSidebarShowEnterLocationCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowEnterLocationCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowEnterLocationCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowEnterLocationCallback :: C_PlacesSidebarShowEnterLocationCallback -> IO (FunPtr C_PlacesSidebarShowEnterLocationCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowEnterLocation :: MonadIO m => PlacesSidebarShowEnterLocationCallback -> m (GClosure C_PlacesSidebarShowEnterLocationCallback)
genClosure_PlacesSidebarShowEnterLocation cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowEnterLocationCallback cb
    mk_PlacesSidebarShowEnterLocationCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowEnterLocationCallback` into a `C_PlacesSidebarShowEnterLocationCallback`.
wrap_PlacesSidebarShowEnterLocationCallback ::
    PlacesSidebarShowEnterLocationCallback ->
    C_PlacesSidebarShowEnterLocationCallback
wrap_PlacesSidebarShowEnterLocationCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [showEnterLocation](#signal:showEnterLocation) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showEnterLocation callback
-- @
-- 
-- 
onPlacesSidebarShowEnterLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowEnterLocationCallback -> m SignalHandlerId
onPlacesSidebarShowEnterLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowEnterLocationCallback cb
    cb'' <- mk_PlacesSidebarShowEnterLocationCallback cb'
    connectSignalFunPtr obj "show-enter-location" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showEnterLocation](#signal:showEnterLocation) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showEnterLocation callback
-- @
-- 
-- 
afterPlacesSidebarShowEnterLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowEnterLocationCallback -> m SignalHandlerId
afterPlacesSidebarShowEnterLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowEnterLocationCallback cb
    cb'' <- mk_PlacesSidebarShowEnterLocationCallback cb'
    connectSignalFunPtr obj "show-enter-location" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowEnterLocationSignalInfo
instance SignalInfo PlacesSidebarShowEnterLocationSignalInfo where
    type HaskellCallbackType PlacesSidebarShowEnterLocationSignalInfo = PlacesSidebarShowEnterLocationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowEnterLocationCallback cb
        cb'' <- mk_PlacesSidebarShowEnterLocationCallback cb'
        connectSignalFunPtr obj "show-enter-location" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-error-message
-- | The places sidebar emits this signal when it needs the calling
-- application to present an error message.  Most of these messages
-- refer to mounting or unmounting media, for example, when a drive
-- cannot be started for some reason.
-- 
-- /Since: 3.10/
type PlacesSidebarShowErrorMessageCallback =
    T.Text
    -- ^ /@primary@/: primary message with a summary of the error to show.
    -> T.Text
    -- ^ /@secondary@/: secondary message with details of the error to show.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowErrorMessageCallback`@.
noPlacesSidebarShowErrorMessageCallback :: Maybe PlacesSidebarShowErrorMessageCallback
noPlacesSidebarShowErrorMessageCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowErrorMessageCallback =
    Ptr () ->                               -- object
    CString ->
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowErrorMessageCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowErrorMessageCallback :: C_PlacesSidebarShowErrorMessageCallback -> IO (FunPtr C_PlacesSidebarShowErrorMessageCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowErrorMessage :: MonadIO m => PlacesSidebarShowErrorMessageCallback -> m (GClosure C_PlacesSidebarShowErrorMessageCallback)
genClosure_PlacesSidebarShowErrorMessage cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowErrorMessageCallback cb
    mk_PlacesSidebarShowErrorMessageCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowErrorMessageCallback` into a `C_PlacesSidebarShowErrorMessageCallback`.
wrap_PlacesSidebarShowErrorMessageCallback ::
    PlacesSidebarShowErrorMessageCallback ->
    C_PlacesSidebarShowErrorMessageCallback
wrap_PlacesSidebarShowErrorMessageCallback _cb _ primary secondary _ = do
    primary' <- cstringToText primary
    secondary' <- cstringToText secondary
    _cb  primary' secondary'


-- | Connect a signal handler for the [showErrorMessage](#signal:showErrorMessage) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showErrorMessage callback
-- @
-- 
-- 
onPlacesSidebarShowErrorMessage :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowErrorMessageCallback -> m SignalHandlerId
onPlacesSidebarShowErrorMessage obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowErrorMessageCallback cb
    cb'' <- mk_PlacesSidebarShowErrorMessageCallback cb'
    connectSignalFunPtr obj "show-error-message" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showErrorMessage](#signal:showErrorMessage) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showErrorMessage callback
-- @
-- 
-- 
afterPlacesSidebarShowErrorMessage :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowErrorMessageCallback -> m SignalHandlerId
afterPlacesSidebarShowErrorMessage obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowErrorMessageCallback cb
    cb'' <- mk_PlacesSidebarShowErrorMessageCallback cb'
    connectSignalFunPtr obj "show-error-message" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowErrorMessageSignalInfo
instance SignalInfo PlacesSidebarShowErrorMessageSignalInfo where
    type HaskellCallbackType PlacesSidebarShowErrorMessageSignalInfo = PlacesSidebarShowErrorMessageCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowErrorMessageCallback cb
        cb'' <- mk_PlacesSidebarShowErrorMessageCallback cb'
        connectSignalFunPtr obj "show-error-message" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-other-locations
{-# DEPRECATED PlacesSidebarShowOtherLocationsCallback ["(Since version 3.20)","use the [showOtherLocationsWithFlags](\"GI.Gtk.Objects.PlacesSidebar#signal:showOtherLocationsWithFlags\")","which includes the open flags in order to allow the user to specify to open","in a new tab or window, in a similar way than [openLocation](\"GI.Gtk.Objects.PlacesSidebar#signal:openLocation\")"] #-}
-- | The places sidebar emits this signal when it needs the calling
-- application to present a way to show other locations e.g. drives
-- and network access points.
-- For example, the application may bring up a page showing persistent
-- volumes and discovered network addresses.
-- 
-- /Since: 3.18/
type PlacesSidebarShowOtherLocationsCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowOtherLocationsCallback`@.
noPlacesSidebarShowOtherLocationsCallback :: Maybe PlacesSidebarShowOtherLocationsCallback
noPlacesSidebarShowOtherLocationsCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowOtherLocationsCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowOtherLocationsCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowOtherLocationsCallback :: C_PlacesSidebarShowOtherLocationsCallback -> IO (FunPtr C_PlacesSidebarShowOtherLocationsCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowOtherLocations :: MonadIO m => PlacesSidebarShowOtherLocationsCallback -> m (GClosure C_PlacesSidebarShowOtherLocationsCallback)
genClosure_PlacesSidebarShowOtherLocations cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsCallback cb
    mk_PlacesSidebarShowOtherLocationsCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowOtherLocationsCallback` into a `C_PlacesSidebarShowOtherLocationsCallback`.
wrap_PlacesSidebarShowOtherLocationsCallback ::
    PlacesSidebarShowOtherLocationsCallback ->
    C_PlacesSidebarShowOtherLocationsCallback
wrap_PlacesSidebarShowOtherLocationsCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [showOtherLocations](#signal:showOtherLocations) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showOtherLocations callback
-- @
-- 
-- 
onPlacesSidebarShowOtherLocations :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowOtherLocationsCallback -> m SignalHandlerId
onPlacesSidebarShowOtherLocations obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsCallback cb
    cb'' <- mk_PlacesSidebarShowOtherLocationsCallback cb'
    connectSignalFunPtr obj "show-other-locations" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showOtherLocations](#signal:showOtherLocations) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showOtherLocations callback
-- @
-- 
-- 
afterPlacesSidebarShowOtherLocations :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowOtherLocationsCallback -> m SignalHandlerId
afterPlacesSidebarShowOtherLocations obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsCallback cb
    cb'' <- mk_PlacesSidebarShowOtherLocationsCallback cb'
    connectSignalFunPtr obj "show-other-locations" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowOtherLocationsSignalInfo
instance SignalInfo PlacesSidebarShowOtherLocationsSignalInfo where
    type HaskellCallbackType PlacesSidebarShowOtherLocationsSignalInfo = PlacesSidebarShowOtherLocationsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowOtherLocationsCallback cb
        cb'' <- mk_PlacesSidebarShowOtherLocationsCallback cb'
        connectSignalFunPtr obj "show-other-locations" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-other-locations-with-flags
-- | The places sidebar emits this signal when it needs the calling
-- application to present a way to show other locations e.g. drives
-- and network access points.
-- For example, the application may bring up a page showing persistent
-- volumes and discovered network addresses.
-- 
-- /Since: 3.20/
type PlacesSidebarShowOtherLocationsWithFlagsCallback =
    [Gtk.Flags.PlacesOpenFlags]
    -- ^ /@openFlags@/: a single value from t'GI.Gtk.Flags.PlacesOpenFlags' specifying how it should be opened.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowOtherLocationsWithFlagsCallback`@.
noPlacesSidebarShowOtherLocationsWithFlagsCallback :: Maybe PlacesSidebarShowOtherLocationsWithFlagsCallback
noPlacesSidebarShowOtherLocationsWithFlagsCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowOtherLocationsWithFlagsCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowOtherLocationsWithFlagsCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowOtherLocationsWithFlagsCallback :: C_PlacesSidebarShowOtherLocationsWithFlagsCallback -> IO (FunPtr C_PlacesSidebarShowOtherLocationsWithFlagsCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowOtherLocationsWithFlags :: MonadIO m => PlacesSidebarShowOtherLocationsWithFlagsCallback -> m (GClosure C_PlacesSidebarShowOtherLocationsWithFlagsCallback)
genClosure_PlacesSidebarShowOtherLocationsWithFlags cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback cb
    mk_PlacesSidebarShowOtherLocationsWithFlagsCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowOtherLocationsWithFlagsCallback` into a `C_PlacesSidebarShowOtherLocationsWithFlagsCallback`.
wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback ::
    PlacesSidebarShowOtherLocationsWithFlagsCallback ->
    C_PlacesSidebarShowOtherLocationsWithFlagsCallback
wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback _cb _ openFlags _ = do
    let openFlags' = wordToGFlags openFlags
    _cb  openFlags'


-- | Connect a signal handler for the [showOtherLocationsWithFlags](#signal:showOtherLocationsWithFlags) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showOtherLocationsWithFlags callback
-- @
-- 
-- 
onPlacesSidebarShowOtherLocationsWithFlags :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowOtherLocationsWithFlagsCallback -> m SignalHandlerId
onPlacesSidebarShowOtherLocationsWithFlags obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback cb
    cb'' <- mk_PlacesSidebarShowOtherLocationsWithFlagsCallback cb'
    connectSignalFunPtr obj "show-other-locations-with-flags" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showOtherLocationsWithFlags](#signal:showOtherLocationsWithFlags) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showOtherLocationsWithFlags callback
-- @
-- 
-- 
afterPlacesSidebarShowOtherLocationsWithFlags :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowOtherLocationsWithFlagsCallback -> m SignalHandlerId
afterPlacesSidebarShowOtherLocationsWithFlags obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback cb
    cb'' <- mk_PlacesSidebarShowOtherLocationsWithFlagsCallback cb'
    connectSignalFunPtr obj "show-other-locations-with-flags" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowOtherLocationsWithFlagsSignalInfo
instance SignalInfo PlacesSidebarShowOtherLocationsWithFlagsSignalInfo where
    type HaskellCallbackType PlacesSidebarShowOtherLocationsWithFlagsSignalInfo = PlacesSidebarShowOtherLocationsWithFlagsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowOtherLocationsWithFlagsCallback cb
        cb'' <- mk_PlacesSidebarShowOtherLocationsWithFlagsCallback cb'
        connectSignalFunPtr obj "show-other-locations-with-flags" cb'' connectMode detail

#endif

-- signal PlacesSidebar::show-starred-location
-- | The places sidebar emits this signal when it needs the calling
-- application to present a way to show the starred files. In GNOME,
-- starred files are implemented by setting the nao:predefined-tag-favorite
-- tag in the tracker database.
-- 
-- /Since: 3.22.26/
type PlacesSidebarShowStarredLocationCallback =
    [Gtk.Flags.PlacesOpenFlags]
    -- ^ /@openFlags@/: a single value from t'GI.Gtk.Flags.PlacesOpenFlags' specifying how the
    --   starred file should be opened.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarShowStarredLocationCallback`@.
noPlacesSidebarShowStarredLocationCallback :: Maybe PlacesSidebarShowStarredLocationCallback
noPlacesSidebarShowStarredLocationCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarShowStarredLocationCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarShowStarredLocationCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarShowStarredLocationCallback :: C_PlacesSidebarShowStarredLocationCallback -> IO (FunPtr C_PlacesSidebarShowStarredLocationCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarShowStarredLocation :: MonadIO m => PlacesSidebarShowStarredLocationCallback -> m (GClosure C_PlacesSidebarShowStarredLocationCallback)
genClosure_PlacesSidebarShowStarredLocation cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowStarredLocationCallback cb
    mk_PlacesSidebarShowStarredLocationCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarShowStarredLocationCallback` into a `C_PlacesSidebarShowStarredLocationCallback`.
wrap_PlacesSidebarShowStarredLocationCallback ::
    PlacesSidebarShowStarredLocationCallback ->
    C_PlacesSidebarShowStarredLocationCallback
wrap_PlacesSidebarShowStarredLocationCallback _cb _ openFlags _ = do
    let openFlags' = wordToGFlags openFlags
    _cb  openFlags'


-- | Connect a signal handler for the [showStarredLocation](#signal:showStarredLocation) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #showStarredLocation callback
-- @
-- 
-- 
onPlacesSidebarShowStarredLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowStarredLocationCallback -> m SignalHandlerId
onPlacesSidebarShowStarredLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowStarredLocationCallback cb
    cb'' <- mk_PlacesSidebarShowStarredLocationCallback cb'
    connectSignalFunPtr obj "show-starred-location" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showStarredLocation](#signal:showStarredLocation) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #showStarredLocation callback
-- @
-- 
-- 
afterPlacesSidebarShowStarredLocation :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarShowStarredLocationCallback -> m SignalHandlerId
afterPlacesSidebarShowStarredLocation obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarShowStarredLocationCallback cb
    cb'' <- mk_PlacesSidebarShowStarredLocationCallback cb'
    connectSignalFunPtr obj "show-starred-location" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowStarredLocationSignalInfo
instance SignalInfo PlacesSidebarShowStarredLocationSignalInfo where
    type HaskellCallbackType PlacesSidebarShowStarredLocationSignalInfo = PlacesSidebarShowStarredLocationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarShowStarredLocationCallback cb
        cb'' <- mk_PlacesSidebarShowStarredLocationCallback cb'
        connectSignalFunPtr obj "show-starred-location" cb'' connectMode detail

#endif

-- signal PlacesSidebar::unmount
-- | The places sidebar emits this signal when it starts a new operation
-- because the user for example ejected some drive or unmounted a mount.
-- In this way the application using the t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar' can track the
-- progress of the operation and, for example, show a notification.
-- 
-- /Since: 3.20/
type PlacesSidebarUnmountCallback =
    Gio.MountOperation.MountOperation
    -- ^ /@mountOperation@/: the t'GI.Gio.Objects.MountOperation.MountOperation' that is going to start.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PlacesSidebarUnmountCallback`@.
noPlacesSidebarUnmountCallback :: Maybe PlacesSidebarUnmountCallback
noPlacesSidebarUnmountCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PlacesSidebarUnmountCallback =
    Ptr () ->                               -- object
    Ptr Gio.MountOperation.MountOperation ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PlacesSidebarUnmountCallback`.
foreign import ccall "wrapper"
    mk_PlacesSidebarUnmountCallback :: C_PlacesSidebarUnmountCallback -> IO (FunPtr C_PlacesSidebarUnmountCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PlacesSidebarUnmount :: MonadIO m => PlacesSidebarUnmountCallback -> m (GClosure C_PlacesSidebarUnmountCallback)
genClosure_PlacesSidebarUnmount cb = liftIO $ do
    let cb' = wrap_PlacesSidebarUnmountCallback cb
    mk_PlacesSidebarUnmountCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PlacesSidebarUnmountCallback` into a `C_PlacesSidebarUnmountCallback`.
wrap_PlacesSidebarUnmountCallback ::
    PlacesSidebarUnmountCallback ->
    C_PlacesSidebarUnmountCallback
wrap_PlacesSidebarUnmountCallback _cb _ mountOperation _ = do
    mountOperation' <- (newObject Gio.MountOperation.MountOperation) mountOperation
    _cb  mountOperation'


-- | Connect a signal handler for the [unmount](#signal:unmount) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' placesSidebar #unmount callback
-- @
-- 
-- 
onPlacesSidebarUnmount :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarUnmountCallback -> m SignalHandlerId
onPlacesSidebarUnmount obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarUnmountCallback cb
    cb'' <- mk_PlacesSidebarUnmountCallback cb'
    connectSignalFunPtr obj "unmount" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [unmount](#signal:unmount) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' placesSidebar #unmount callback
-- @
-- 
-- 
afterPlacesSidebarUnmount :: (IsPlacesSidebar a, MonadIO m) => a -> PlacesSidebarUnmountCallback -> m SignalHandlerId
afterPlacesSidebarUnmount obj cb = liftIO $ do
    let cb' = wrap_PlacesSidebarUnmountCallback cb
    cb'' <- mk_PlacesSidebarUnmountCallback cb'
    connectSignalFunPtr obj "unmount" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PlacesSidebarUnmountSignalInfo
instance SignalInfo PlacesSidebarUnmountSignalInfo where
    type HaskellCallbackType PlacesSidebarUnmountSignalInfo = PlacesSidebarUnmountCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PlacesSidebarUnmountCallback cb
        cb'' <- mk_PlacesSidebarUnmountCallback cb'
        connectSignalFunPtr obj "unmount" cb'' connectMode detail

#endif

-- VVV Prop "local-only"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@local-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #localOnly
-- @
getPlacesSidebarLocalOnly :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarLocalOnly obj = liftIO $ B.Properties.getObjectPropertyBool obj "local-only"

-- | Set the value of the “@local-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #localOnly 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarLocalOnly :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarLocalOnly obj val = liftIO $ B.Properties.setObjectPropertyBool obj "local-only" val

-- | Construct a `GValueConstruct` with valid value for the “@local-only@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarLocalOnly :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarLocalOnly val = B.Properties.constructObjectPropertyBool "local-only" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarLocalOnlyPropertyInfo
instance AttrInfo PlacesSidebarLocalOnlyPropertyInfo where
    type AttrAllowedOps PlacesSidebarLocalOnlyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarLocalOnlyPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarLocalOnlyPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarLocalOnlyPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarLocalOnlyPropertyInfo = Bool
    type AttrGetType PlacesSidebarLocalOnlyPropertyInfo = Bool
    type AttrLabel PlacesSidebarLocalOnlyPropertyInfo = "local-only"
    type AttrOrigin PlacesSidebarLocalOnlyPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarLocalOnly
    attrSet = setPlacesSidebarLocalOnly
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarLocalOnly
    attrClear = undefined
#endif

-- VVV Prop "location"
   -- Type: TInterface (Name {namespace = "Gio", name = "File"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just True)

-- | Get the value of the “@location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #location
-- @
getPlacesSidebarLocation :: (MonadIO m, IsPlacesSidebar o) => o -> m (Maybe Gio.File.File)
getPlacesSidebarLocation obj = liftIO $ B.Properties.getObjectPropertyObject obj "location" Gio.File.File

-- | Set the value of the “@location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #location 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarLocation :: (MonadIO m, IsPlacesSidebar o, Gio.File.IsFile a) => o -> a -> m ()
setPlacesSidebarLocation obj val = liftIO $ B.Properties.setObjectPropertyObject obj "location" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@location@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarLocation :: (IsPlacesSidebar o, Gio.File.IsFile a) => a -> IO (GValueConstruct o)
constructPlacesSidebarLocation val = B.Properties.constructObjectPropertyObject "location" (Just val)

-- | Set the value of the “@location@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #location
-- @
clearPlacesSidebarLocation :: (MonadIO m, IsPlacesSidebar o) => o -> m ()
clearPlacesSidebarLocation obj = liftIO $ B.Properties.setObjectPropertyObject obj "location" (Nothing :: Maybe Gio.File.File)

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarLocationPropertyInfo
instance AttrInfo PlacesSidebarLocationPropertyInfo where
    type AttrAllowedOps PlacesSidebarLocationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint PlacesSidebarLocationPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarLocationPropertyInfo = Gio.File.IsFile
    type AttrTransferTypeConstraint PlacesSidebarLocationPropertyInfo = Gio.File.IsFile
    type AttrTransferType PlacesSidebarLocationPropertyInfo = Gio.File.File
    type AttrGetType PlacesSidebarLocationPropertyInfo = (Maybe Gio.File.File)
    type AttrLabel PlacesSidebarLocationPropertyInfo = "location"
    type AttrOrigin PlacesSidebarLocationPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarLocation
    attrSet = setPlacesSidebarLocation
    attrTransfer _ v = do
        unsafeCastTo Gio.File.File v
    attrConstruct = constructPlacesSidebarLocation
    attrClear = clearPlacesSidebarLocation
#endif

-- VVV Prop "open-flags"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PlacesOpenFlags"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@open-flags@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #openFlags
-- @
getPlacesSidebarOpenFlags :: (MonadIO m, IsPlacesSidebar o) => o -> m [Gtk.Flags.PlacesOpenFlags]
getPlacesSidebarOpenFlags obj = liftIO $ B.Properties.getObjectPropertyFlags obj "open-flags"

-- | Set the value of the “@open-flags@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #openFlags 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarOpenFlags :: (MonadIO m, IsPlacesSidebar o) => o -> [Gtk.Flags.PlacesOpenFlags] -> m ()
setPlacesSidebarOpenFlags obj val = liftIO $ B.Properties.setObjectPropertyFlags obj "open-flags" val

-- | Construct a `GValueConstruct` with valid value for the “@open-flags@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarOpenFlags :: (IsPlacesSidebar o) => [Gtk.Flags.PlacesOpenFlags] -> IO (GValueConstruct o)
constructPlacesSidebarOpenFlags val = B.Properties.constructObjectPropertyFlags "open-flags" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarOpenFlagsPropertyInfo
instance AttrInfo PlacesSidebarOpenFlagsPropertyInfo where
    type AttrAllowedOps PlacesSidebarOpenFlagsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarOpenFlagsPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarOpenFlagsPropertyInfo = (~) [Gtk.Flags.PlacesOpenFlags]
    type AttrTransferTypeConstraint PlacesSidebarOpenFlagsPropertyInfo = (~) [Gtk.Flags.PlacesOpenFlags]
    type AttrTransferType PlacesSidebarOpenFlagsPropertyInfo = [Gtk.Flags.PlacesOpenFlags]
    type AttrGetType PlacesSidebarOpenFlagsPropertyInfo = [Gtk.Flags.PlacesOpenFlags]
    type AttrLabel PlacesSidebarOpenFlagsPropertyInfo = "open-flags"
    type AttrOrigin PlacesSidebarOpenFlagsPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarOpenFlags
    attrSet = setPlacesSidebarOpenFlags
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarOpenFlags
    attrClear = undefined
#endif

-- VVV Prop "populate-all"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@populate-all@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #populateAll
-- @
getPlacesSidebarPopulateAll :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarPopulateAll obj = liftIO $ B.Properties.getObjectPropertyBool obj "populate-all"

-- | Set the value of the “@populate-all@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #populateAll 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarPopulateAll :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarPopulateAll obj val = liftIO $ B.Properties.setObjectPropertyBool obj "populate-all" val

-- | Construct a `GValueConstruct` with valid value for the “@populate-all@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarPopulateAll :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarPopulateAll val = B.Properties.constructObjectPropertyBool "populate-all" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarPopulateAllPropertyInfo
instance AttrInfo PlacesSidebarPopulateAllPropertyInfo where
    type AttrAllowedOps PlacesSidebarPopulateAllPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarPopulateAllPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarPopulateAllPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarPopulateAllPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarPopulateAllPropertyInfo = Bool
    type AttrGetType PlacesSidebarPopulateAllPropertyInfo = Bool
    type AttrLabel PlacesSidebarPopulateAllPropertyInfo = "populate-all"
    type AttrOrigin PlacesSidebarPopulateAllPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarPopulateAll
    attrSet = setPlacesSidebarPopulateAll
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarPopulateAll
    attrClear = undefined
#endif

-- VVV Prop "show-connect-to-server"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-connect-to-server@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showConnectToServer
-- @
getPlacesSidebarShowConnectToServer :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowConnectToServer obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-connect-to-server"

-- | Set the value of the “@show-connect-to-server@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showConnectToServer 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowConnectToServer :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowConnectToServer obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-connect-to-server" val

-- | Construct a `GValueConstruct` with valid value for the “@show-connect-to-server@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowConnectToServer :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowConnectToServer val = B.Properties.constructObjectPropertyBool "show-connect-to-server" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowConnectToServerPropertyInfo
instance AttrInfo PlacesSidebarShowConnectToServerPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowConnectToServerPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowConnectToServerPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowConnectToServerPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowConnectToServerPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowConnectToServerPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowConnectToServerPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowConnectToServerPropertyInfo = "show-connect-to-server"
    type AttrOrigin PlacesSidebarShowConnectToServerPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowConnectToServer
    attrSet = setPlacesSidebarShowConnectToServer
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowConnectToServer
    attrClear = undefined
#endif

-- VVV Prop "show-desktop"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-desktop@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showDesktop
-- @
getPlacesSidebarShowDesktop :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowDesktop obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-desktop"

-- | Set the value of the “@show-desktop@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showDesktop 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowDesktop :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowDesktop obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-desktop" val

-- | Construct a `GValueConstruct` with valid value for the “@show-desktop@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowDesktop :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowDesktop val = B.Properties.constructObjectPropertyBool "show-desktop" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowDesktopPropertyInfo
instance AttrInfo PlacesSidebarShowDesktopPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowDesktopPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowDesktopPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowDesktopPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowDesktopPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowDesktopPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowDesktopPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowDesktopPropertyInfo = "show-desktop"
    type AttrOrigin PlacesSidebarShowDesktopPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowDesktop
    attrSet = setPlacesSidebarShowDesktop
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowDesktop
    attrClear = undefined
#endif

-- VVV Prop "show-enter-location"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-enter-location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showEnterLocation
-- @
getPlacesSidebarShowEnterLocation :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowEnterLocation obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-enter-location"

-- | Set the value of the “@show-enter-location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showEnterLocation 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowEnterLocation :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowEnterLocation obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-enter-location" val

-- | Construct a `GValueConstruct` with valid value for the “@show-enter-location@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowEnterLocation :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowEnterLocation val = B.Properties.constructObjectPropertyBool "show-enter-location" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowEnterLocationPropertyInfo
instance AttrInfo PlacesSidebarShowEnterLocationPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowEnterLocationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowEnterLocationPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowEnterLocationPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowEnterLocationPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowEnterLocationPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowEnterLocationPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowEnterLocationPropertyInfo = "show-enter-location"
    type AttrOrigin PlacesSidebarShowEnterLocationPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowEnterLocation
    attrSet = setPlacesSidebarShowEnterLocation
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowEnterLocation
    attrClear = undefined
#endif

-- VVV Prop "show-other-locations"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-other-locations@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showOtherLocations
-- @
getPlacesSidebarShowOtherLocations :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowOtherLocations obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-other-locations"

-- | Set the value of the “@show-other-locations@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showOtherLocations 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowOtherLocations :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowOtherLocations obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-other-locations" val

-- | Construct a `GValueConstruct` with valid value for the “@show-other-locations@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowOtherLocations :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowOtherLocations val = B.Properties.constructObjectPropertyBool "show-other-locations" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowOtherLocationsPropertyInfo
instance AttrInfo PlacesSidebarShowOtherLocationsPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowOtherLocationsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowOtherLocationsPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowOtherLocationsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowOtherLocationsPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowOtherLocationsPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowOtherLocationsPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowOtherLocationsPropertyInfo = "show-other-locations"
    type AttrOrigin PlacesSidebarShowOtherLocationsPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowOtherLocations
    attrSet = setPlacesSidebarShowOtherLocations
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowOtherLocations
    attrClear = undefined
#endif

-- VVV Prop "show-recent"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-recent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showRecent
-- @
getPlacesSidebarShowRecent :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowRecent obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-recent"

-- | Set the value of the “@show-recent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showRecent 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowRecent :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowRecent obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-recent" val

-- | Construct a `GValueConstruct` with valid value for the “@show-recent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowRecent :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowRecent val = B.Properties.constructObjectPropertyBool "show-recent" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowRecentPropertyInfo
instance AttrInfo PlacesSidebarShowRecentPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowRecentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowRecentPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowRecentPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowRecentPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowRecentPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowRecentPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowRecentPropertyInfo = "show-recent"
    type AttrOrigin PlacesSidebarShowRecentPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowRecent
    attrSet = setPlacesSidebarShowRecent
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowRecent
    attrClear = undefined
#endif

-- VVV Prop "show-starred-location"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-starred-location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showStarredLocation
-- @
getPlacesSidebarShowStarredLocation :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowStarredLocation obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-starred-location"

-- | Set the value of the “@show-starred-location@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showStarredLocation 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowStarredLocation :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowStarredLocation obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-starred-location" val

-- | Construct a `GValueConstruct` with valid value for the “@show-starred-location@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowStarredLocation :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowStarredLocation val = B.Properties.constructObjectPropertyBool "show-starred-location" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowStarredLocationPropertyInfo
instance AttrInfo PlacesSidebarShowStarredLocationPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowStarredLocationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowStarredLocationPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowStarredLocationPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowStarredLocationPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowStarredLocationPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowStarredLocationPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowStarredLocationPropertyInfo = "show-starred-location"
    type AttrOrigin PlacesSidebarShowStarredLocationPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowStarredLocation
    attrSet = setPlacesSidebarShowStarredLocation
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowStarredLocation
    attrClear = undefined
#endif

-- VVV Prop "show-trash"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-trash@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' placesSidebar #showTrash
-- @
getPlacesSidebarShowTrash :: (MonadIO m, IsPlacesSidebar o) => o -> m Bool
getPlacesSidebarShowTrash obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-trash"

-- | Set the value of the “@show-trash@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' placesSidebar [ #showTrash 'Data.GI.Base.Attributes.:=' value ]
-- @
setPlacesSidebarShowTrash :: (MonadIO m, IsPlacesSidebar o) => o -> Bool -> m ()
setPlacesSidebarShowTrash obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-trash" val

-- | Construct a `GValueConstruct` with valid value for the “@show-trash@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPlacesSidebarShowTrash :: (IsPlacesSidebar o) => Bool -> IO (GValueConstruct o)
constructPlacesSidebarShowTrash val = B.Properties.constructObjectPropertyBool "show-trash" val

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarShowTrashPropertyInfo
instance AttrInfo PlacesSidebarShowTrashPropertyInfo where
    type AttrAllowedOps PlacesSidebarShowTrashPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PlacesSidebarShowTrashPropertyInfo = IsPlacesSidebar
    type AttrSetTypeConstraint PlacesSidebarShowTrashPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PlacesSidebarShowTrashPropertyInfo = (~) Bool
    type AttrTransferType PlacesSidebarShowTrashPropertyInfo = Bool
    type AttrGetType PlacesSidebarShowTrashPropertyInfo = Bool
    type AttrLabel PlacesSidebarShowTrashPropertyInfo = "show-trash"
    type AttrOrigin PlacesSidebarShowTrashPropertyInfo = PlacesSidebar
    attrGet = getPlacesSidebarShowTrash
    attrSet = setPlacesSidebarShowTrash
    attrTransfer _ v = do
        return v
    attrConstruct = constructPlacesSidebarShowTrash
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PlacesSidebar
type instance O.AttributeList PlacesSidebar = PlacesSidebarAttributeList
type PlacesSidebarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("hadjustment", Gtk.ScrolledWindow.ScrolledWindowHadjustmentPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hscrollbarPolicy", Gtk.ScrolledWindow.ScrolledWindowHscrollbarPolicyPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("kineticScrolling", Gtk.ScrolledWindow.ScrolledWindowKineticScrollingPropertyInfo), '("localOnly", PlacesSidebarLocalOnlyPropertyInfo), '("location", PlacesSidebarLocationPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxContentHeight", Gtk.ScrolledWindow.ScrolledWindowMaxContentHeightPropertyInfo), '("maxContentWidth", Gtk.ScrolledWindow.ScrolledWindowMaxContentWidthPropertyInfo), '("minContentHeight", Gtk.ScrolledWindow.ScrolledWindowMinContentHeightPropertyInfo), '("minContentWidth", Gtk.ScrolledWindow.ScrolledWindowMinContentWidthPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("openFlags", PlacesSidebarOpenFlagsPropertyInfo), '("overlayScrolling", Gtk.ScrolledWindow.ScrolledWindowOverlayScrollingPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("populateAll", PlacesSidebarPopulateAllPropertyInfo), '("propagateNaturalHeight", Gtk.ScrolledWindow.ScrolledWindowPropagateNaturalHeightPropertyInfo), '("propagateNaturalWidth", Gtk.ScrolledWindow.ScrolledWindowPropagateNaturalWidthPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", Gtk.ScrolledWindow.ScrolledWindowShadowTypePropertyInfo), '("showConnectToServer", PlacesSidebarShowConnectToServerPropertyInfo), '("showDesktop", PlacesSidebarShowDesktopPropertyInfo), '("showEnterLocation", PlacesSidebarShowEnterLocationPropertyInfo), '("showOtherLocations", PlacesSidebarShowOtherLocationsPropertyInfo), '("showRecent", PlacesSidebarShowRecentPropertyInfo), '("showStarredLocation", PlacesSidebarShowStarredLocationPropertyInfo), '("showTrash", PlacesSidebarShowTrashPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("vadjustment", Gtk.ScrolledWindow.ScrolledWindowVadjustmentPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("vscrollbarPolicy", Gtk.ScrolledWindow.ScrolledWindowVscrollbarPolicyPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPlacement", Gtk.ScrolledWindow.ScrolledWindowWindowPlacementPropertyInfo), '("windowPlacementSet", Gtk.ScrolledWindow.ScrolledWindowWindowPlacementSetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
placesSidebarLocalOnly :: AttrLabelProxy "localOnly"
placesSidebarLocalOnly = AttrLabelProxy

placesSidebarLocation :: AttrLabelProxy "location"
placesSidebarLocation = AttrLabelProxy

placesSidebarOpenFlags :: AttrLabelProxy "openFlags"
placesSidebarOpenFlags = AttrLabelProxy

placesSidebarPopulateAll :: AttrLabelProxy "populateAll"
placesSidebarPopulateAll = AttrLabelProxy

placesSidebarShowConnectToServer :: AttrLabelProxy "showConnectToServer"
placesSidebarShowConnectToServer = AttrLabelProxy

placesSidebarShowDesktop :: AttrLabelProxy "showDesktop"
placesSidebarShowDesktop = AttrLabelProxy

placesSidebarShowEnterLocation :: AttrLabelProxy "showEnterLocation"
placesSidebarShowEnterLocation = AttrLabelProxy

placesSidebarShowOtherLocations :: AttrLabelProxy "showOtherLocations"
placesSidebarShowOtherLocations = AttrLabelProxy

placesSidebarShowRecent :: AttrLabelProxy "showRecent"
placesSidebarShowRecent = AttrLabelProxy

placesSidebarShowStarredLocation :: AttrLabelProxy "showStarredLocation"
placesSidebarShowStarredLocation = AttrLabelProxy

placesSidebarShowTrash :: AttrLabelProxy "showTrash"
placesSidebarShowTrash = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PlacesSidebar = PlacesSidebarSignalList
type PlacesSidebarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragActionAsk", PlacesSidebarDragActionAskSignalInfo), '("dragActionRequested", PlacesSidebarDragActionRequestedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("dragPerformDrop", PlacesSidebarDragPerformDropSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("edgeOvershot", Gtk.ScrolledWindow.ScrolledWindowEdgeOvershotSignalInfo), '("edgeReached", Gtk.ScrolledWindow.ScrolledWindowEdgeReachedSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("mount", PlacesSidebarMountSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveFocusOut", Gtk.ScrolledWindow.ScrolledWindowMoveFocusOutSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("openLocation", PlacesSidebarOpenLocationSignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("populatePopup", PlacesSidebarPopulatePopupSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollChild", Gtk.ScrolledWindow.ScrolledWindowScrollChildSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showConnectToServer", PlacesSidebarShowConnectToServerSignalInfo), '("showEnterLocation", PlacesSidebarShowEnterLocationSignalInfo), '("showErrorMessage", PlacesSidebarShowErrorMessageSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("showOtherLocations", PlacesSidebarShowOtherLocationsSignalInfo), '("showOtherLocationsWithFlags", PlacesSidebarShowOtherLocationsWithFlagsSignalInfo), '("showStarredLocation", PlacesSidebarShowStarredLocationSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unmount", PlacesSidebarUnmountSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method PlacesSidebar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_places_sidebar_new" gtk_places_sidebar_new :: 
    IO (Ptr PlacesSidebar)

-- | Creates a new t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar' widget.
-- 
-- The application should connect to at least the
-- [openLocation]("GI.Gtk.Objects.PlacesSidebar#signal:openLocation") signal to be notified
-- when the user makes a selection in the sidebar.
-- 
-- /Since: 3.10/
placesSidebarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m PlacesSidebar
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar'
placesSidebarNew  = liftIO $ do
    result <- gtk_places_sidebar_new
    checkUnexpectedReturnNULL "placesSidebarNew" result
    result' <- (newObject PlacesSidebar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PlacesSidebar::add_shortcut
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "location"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to add as an application-specific shortcut"
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

foreign import ccall "gtk_places_sidebar_add_shortcut" gtk_places_sidebar_add_shortcut :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    Ptr Gio.File.File ->                    -- location : TInterface (Name {namespace = "Gio", name = "File"})
    IO ()

-- | Applications may want to present some folders in the places sidebar if
-- they could be immediately useful to users.  For example, a drawing
-- program could add a “\/usr\/share\/clipart” location when the sidebar is
-- being used in an “Insert Clipart” dialog box.
-- 
-- This function adds the specified /@location@/ to a special place for immutable
-- shortcuts.  The shortcuts are application-specific; they are not shared
-- across applications, and they are not persistent.  If this function
-- is called multiple times with different locations, then they are added
-- to the sidebar’s list in the same order as the function is called.
-- 
-- /Since: 3.10/
placesSidebarAddShortcut ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> b
    -- ^ /@location@/: location to add as an application-specific shortcut
    -> m ()
placesSidebarAddShortcut sidebar location = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    location' <- unsafeManagedPtrCastPtr location
    gtk_places_sidebar_add_shortcut sidebar' location'
    touchManagedPtr sidebar
    touchManagedPtr location
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarAddShortcutMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) => O.MethodInfo PlacesSidebarAddShortcutMethodInfo a signature where
    overloadedMethod = placesSidebarAddShortcut

#endif

-- method PlacesSidebar::get_local_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_local_only" gtk_places_sidebar_get_local_only :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetLocalOnly'.
-- 
-- /Since: 3.12/
placesSidebarGetLocalOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will only show local files.
placesSidebarGetLocalOnly sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_local_only sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetLocalOnlyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetLocalOnlyMethodInfo a signature where
    overloadedMethod = placesSidebarGetLocalOnly

#endif

-- method PlacesSidebar::get_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "File" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_places_sidebar_get_location" gtk_places_sidebar_get_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO (Ptr Gio.File.File)

-- | Gets the currently selected location in the /@sidebar@/. This can be 'P.Nothing' when
-- nothing is selected, for example, when 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetLocation' has
-- been called with a location that is not among the sidebar’s list of places to
-- show.
-- 
-- You can use this function to get the selection in the /@sidebar@/.  Also, if you
-- connect to the [populatePopup]("GI.Gtk.Objects.PlacesSidebar#signal:populatePopup") signal, you can use this
-- function to get the location that is being referred to during the callbacks
-- for your menu items.
-- 
-- /Since: 3.10/
placesSidebarGetLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m (Maybe Gio.File.File)
    -- ^ __Returns:__ a t'GI.Gio.Interfaces.File.File' with the selected location, or
    -- 'P.Nothing' if nothing is visually selected.
placesSidebarGetLocation sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_location sidebar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Gio.File.File) result'
        return result''
    touchManagedPtr sidebar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetLocationMethodInfo
instance (signature ~ (m (Maybe Gio.File.File)), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetLocationMethodInfo a signature where
    overloadedMethod = placesSidebarGetLocation

#endif

-- method PlacesSidebar::get_nth_bookmark
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "index of the bookmark to query"
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
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "File" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_places_sidebar_get_nth_bookmark" gtk_places_sidebar_get_nth_bookmark :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    Int32 ->                                -- n : TBasicType TInt
    IO (Ptr Gio.File.File)

-- | This function queries the bookmarks added by the user to the places sidebar,
-- and returns one of them.  This function is used by t'GI.Gtk.Interfaces.FileChooser.FileChooser' to implement
-- the “Alt-1”, “Alt-2”, etc. shortcuts, which activate the cooresponding bookmark.
-- 
-- /Since: 3.10/
placesSidebarGetNthBookmark ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Int32
    -- ^ /@n@/: index of the bookmark to query
    -> m (Maybe Gio.File.File)
    -- ^ __Returns:__ The bookmark specified by the index /@n@/, or
    -- 'P.Nothing' if no such index exist.  Note that the indices start at 0, even though
    -- the file chooser starts them with the keyboard shortcut \"Alt-1\".
placesSidebarGetNthBookmark sidebar n = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_nth_bookmark sidebar' n
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Gio.File.File) result'
        return result''
    touchManagedPtr sidebar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetNthBookmarkMethodInfo
instance (signature ~ (Int32 -> m (Maybe Gio.File.File)), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetNthBookmarkMethodInfo a signature where
    overloadedMethod = placesSidebarGetNthBookmark

#endif

-- method PlacesSidebar::get_open_flags
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPlacesSidebar"
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
--               (TInterface Name { namespace = "Gtk" , name = "PlacesOpenFlags" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_places_sidebar_get_open_flags" gtk_places_sidebar_get_open_flags :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CUInt

-- | Gets the open flags.
-- 
-- /Since: 3.10/
placesSidebarGetOpenFlags ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a t'GI.Gtk.Objects.PlacesSidebar.PlacesSidebar'
    -> m [Gtk.Flags.PlacesOpenFlags]
    -- ^ __Returns:__ the t'GI.Gtk.Flags.PlacesOpenFlags' of /@sidebar@/
placesSidebarGetOpenFlags sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_open_flags sidebar'
    let result' = wordToGFlags result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetOpenFlagsMethodInfo
instance (signature ~ (m [Gtk.Flags.PlacesOpenFlags]), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetOpenFlagsMethodInfo a signature where
    overloadedMethod = placesSidebarGetOpenFlags

#endif

-- method PlacesSidebar::get_show_connect_to_server
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_connect_to_server" gtk_places_sidebar_get_show_connect_to_server :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

{-# DEPRECATED placesSidebarGetShowConnectToServer ["(Since version 3.18)","It is recommended to group this functionality with the drives","    and network location under the new \\'Other Location\\' item"] #-}
-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowConnectToServer'
placesSidebarGetShowConnectToServer ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display a “Connect to Server” item.
placesSidebarGetShowConnectToServer sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_connect_to_server sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowConnectToServerMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowConnectToServerMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowConnectToServer

#endif

-- method PlacesSidebar::get_show_desktop
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_desktop" gtk_places_sidebar_get_show_desktop :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowDesktop'
-- 
-- /Since: 3.10/
placesSidebarGetShowDesktop ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display a builtin shortcut to the desktop folder.
placesSidebarGetShowDesktop sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_desktop sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowDesktopMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowDesktopMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowDesktop

#endif

-- method PlacesSidebar::get_show_enter_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_enter_location" gtk_places_sidebar_get_show_enter_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowEnterLocation'
-- 
-- /Since: 3.14/
placesSidebarGetShowEnterLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display an “Enter Location” item.
placesSidebarGetShowEnterLocation sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_enter_location sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowEnterLocationMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowEnterLocationMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowEnterLocation

#endif

-- method PlacesSidebar::get_show_other_locations
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_other_locations" gtk_places_sidebar_get_show_other_locations :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowOtherLocations'
-- 
-- /Since: 3.18/
placesSidebarGetShowOtherLocations ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display an “Other Locations” item.
placesSidebarGetShowOtherLocations sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_other_locations sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowOtherLocationsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowOtherLocationsMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowOtherLocations

#endif

-- method PlacesSidebar::get_show_recent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_recent" gtk_places_sidebar_get_show_recent :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowRecent'
-- 
-- /Since: 3.18/
placesSidebarGetShowRecent ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display a builtin shortcut for recent files
placesSidebarGetShowRecent sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_recent sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowRecentMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowRecentMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowRecent

#endif

-- method PlacesSidebar::get_show_starred_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_starred_location" gtk_places_sidebar_get_show_starred_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowStarredLocation'
-- 
-- /Since: 3.22.26/
placesSidebarGetShowStarredLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display a Starred item.
placesSidebarGetShowStarredLocation sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_starred_location sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowStarredLocationMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowStarredLocationMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowStarredLocation

#endif

-- method PlacesSidebar::get_show_trash
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_get_show_trash" gtk_places_sidebar_get_show_trash :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO CInt

-- | Returns the value previously set with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetShowTrash'
-- 
-- /Since: 3.18/
placesSidebarGetShowTrash ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the sidebar will display a “Trash” item.
placesSidebarGetShowTrash sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_get_show_trash sidebar'
    let result' = (/= 0) result
    touchManagedPtr sidebar
    return result'

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarGetShowTrashMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarGetShowTrashMethodInfo a signature where
    overloadedMethod = placesSidebarGetShowTrash

#endif

-- method PlacesSidebar::list_shortcuts
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TGSList (TInterface Name { namespace = "Gio" , name = "File" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_places_sidebar_list_shortcuts" gtk_places_sidebar_list_shortcuts :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    IO (Ptr (GSList (Ptr Gio.File.File)))

-- | Gets the list of shortcuts.
-- 
-- /Since: 3.10/
placesSidebarListShortcuts ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> m [Gio.File.File]
    -- ^ __Returns:__ 
    --     A t'GI.GLib.Structs.SList.SList' of t'GI.Gio.Interfaces.File.File' of the locations that have been added as
    --     application-specific shortcuts with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarAddShortcut'.
    --     To free this list, you can use
    -- 
    -- === /C code/
    -- >
    -- >g_slist_free_full (list, (GDestroyNotify) g_object_unref);
placesSidebarListShortcuts sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_places_sidebar_list_shortcuts sidebar'
    result' <- unpackGSList result
    result'' <- mapM (wrapObject Gio.File.File) result'
    g_slist_free result
    touchManagedPtr sidebar
    return result''

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarListShortcutsMethodInfo
instance (signature ~ (m [Gio.File.File]), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarListShortcutsMethodInfo a signature where
    overloadedMethod = placesSidebarListShortcuts

#endif

-- method PlacesSidebar::remove_shortcut
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "location"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to remove" , sinceVersion = Nothing }
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

foreign import ccall "gtk_places_sidebar_remove_shortcut" gtk_places_sidebar_remove_shortcut :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    Ptr Gio.File.File ->                    -- location : TInterface (Name {namespace = "Gio", name = "File"})
    IO ()

-- | Removes an application-specific shortcut that has been previously been
-- inserted with 'GI.Gtk.Objects.PlacesSidebar.placesSidebarAddShortcut'.  If the /@location@/ is not a
-- shortcut in the sidebar, then nothing is done.
-- 
-- /Since: 3.10/
placesSidebarRemoveShortcut ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> b
    -- ^ /@location@/: location to remove
    -> m ()
placesSidebarRemoveShortcut sidebar location = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    location' <- unsafeManagedPtrCastPtr location
    gtk_places_sidebar_remove_shortcut sidebar' location'
    touchManagedPtr sidebar
    touchManagedPtr location
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarRemoveShortcutMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) => O.MethodInfo PlacesSidebarRemoveShortcutMethodInfo a signature where
    overloadedMethod = placesSidebarRemoveShortcut

#endif

-- method PlacesSidebar::set_drop_targets_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show the valid targets or not."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "DragContext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "drag context used to ask the source about the action that wants to\n    perform, so hints are more accurate."
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

foreign import ccall "gtk_places_sidebar_set_drop_targets_visible" gtk_places_sidebar_set_drop_targets_visible :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- visible : TBasicType TBoolean
    Ptr Gdk.DragContext.DragContext ->      -- context : TInterface (Name {namespace = "Gdk", name = "DragContext"})
    IO ()

-- | Make the GtkPlacesSidebar show drop targets, so it can show the available
-- drop targets and a \"new bookmark\" row. This improves the Drag-and-Drop
-- experience of the user and allows applications to show all available
-- drop targets at once.
-- 
-- This needs to be called when the application is aware of an ongoing drag
-- that might target the sidebar. The drop-targets-visible state will be unset
-- automatically if the drag finishes in the GtkPlacesSidebar. You only need
-- to unset the state when the drag ends on some other widget on your application.
-- 
-- /Since: 3.18/
placesSidebarSetDropTargetsVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a, Gdk.DragContext.IsDragContext b) =>
    a
    -- ^ /@sidebar@/: a places sidebar.
    -> Bool
    -- ^ /@visible@/: whether to show the valid targets or not.
    -> b
    -- ^ /@context@/: drag context used to ask the source about the action that wants to
    --     perform, so hints are more accurate.
    -> m ()
placesSidebarSetDropTargetsVisible sidebar visible context = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let visible' = (fromIntegral . fromEnum) visible
    context' <- unsafeManagedPtrCastPtr context
    gtk_places_sidebar_set_drop_targets_visible sidebar' visible' context'
    touchManagedPtr sidebar
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetDropTargetsVisibleMethodInfo
instance (signature ~ (Bool -> b -> m ()), MonadIO m, IsPlacesSidebar a, Gdk.DragContext.IsDragContext b) => O.MethodInfo PlacesSidebarSetDropTargetsVisibleMethodInfo a signature where
    overloadedMethod = placesSidebarSetDropTargetsVisible

#endif

-- method PlacesSidebar::set_local_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "local_only"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show only local files"
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

foreign import ccall "gtk_places_sidebar_set_local_only" gtk_places_sidebar_set_local_only :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- local_only : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should only show local files.
-- 
-- /Since: 3.12/
placesSidebarSetLocalOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@localOnly@/: whether to show only local files
    -> m ()
placesSidebarSetLocalOnly sidebar localOnly = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let localOnly' = (fromIntegral . fromEnum) localOnly
    gtk_places_sidebar_set_local_only sidebar' localOnly'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetLocalOnlyMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetLocalOnlyMethodInfo a signature where
    overloadedMethod = placesSidebarSetLocalOnly

#endif

-- method PlacesSidebar::set_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "location"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to select, or %NULL for no current path"
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

foreign import ccall "gtk_places_sidebar_set_location" gtk_places_sidebar_set_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    Ptr Gio.File.File ->                    -- location : TInterface (Name {namespace = "Gio", name = "File"})
    IO ()

-- | Sets the location that is being shown in the widgets surrounding the
-- /@sidebar@/, for example, in a folder view in a file manager.  In turn, the
-- /@sidebar@/ will highlight that location if it is being shown in the list of
-- places, or it will unhighlight everything if the /@location@/ is not among the
-- places in the list.
-- 
-- /Since: 3.10/
placesSidebarSetLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Maybe (b)
    -- ^ /@location@/: location to select, or 'P.Nothing' for no current path
    -> m ()
placesSidebarSetLocation sidebar location = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    maybeLocation <- case location of
        Nothing -> return nullPtr
        Just jLocation -> do
            jLocation' <- unsafeManagedPtrCastPtr jLocation
            return jLocation'
    gtk_places_sidebar_set_location sidebar' maybeLocation
    touchManagedPtr sidebar
    whenJust location touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetLocationMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsPlacesSidebar a, Gio.File.IsFile b) => O.MethodInfo PlacesSidebarSetLocationMethodInfo a signature where
    overloadedMethod = placesSidebarSetLocation

#endif

-- method PlacesSidebar::set_open_flags
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "flags"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesOpenFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Bitmask of modes in which the calling application can open locations"
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

foreign import ccall "gtk_places_sidebar_set_open_flags" gtk_places_sidebar_set_open_flags :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CUInt ->                                -- flags : TInterface (Name {namespace = "Gtk", name = "PlacesOpenFlags"})
    IO ()

-- | Sets the way in which the calling application can open new locations from
-- the places sidebar.  For example, some applications only open locations
-- “directly” into their main view, while others may support opening locations
-- in a new notebook tab or a new window.
-- 
-- This function is used to tell the places /@sidebar@/ about the ways in which the
-- application can open new locations, so that the sidebar can display (or not)
-- the “Open in new tab” and “Open in new window” menu items as appropriate.
-- 
-- When the [openLocation]("GI.Gtk.Objects.PlacesSidebar#signal:openLocation") signal is emitted, its flags
-- argument will be set to one of the /@flags@/ that was passed in
-- 'GI.Gtk.Objects.PlacesSidebar.placesSidebarSetOpenFlags'.
-- 
-- Passing 0 for /@flags@/ will cause @/GTK_PLACES_OPEN_NORMAL/@ to always be sent
-- to callbacks for the “open-location” signal.
-- 
-- /Since: 3.10/
placesSidebarSetOpenFlags ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> [Gtk.Flags.PlacesOpenFlags]
    -- ^ /@flags@/: Bitmask of modes in which the calling application can open locations
    -> m ()
placesSidebarSetOpenFlags sidebar flags = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let flags' = gflagsToWord flags
    gtk_places_sidebar_set_open_flags sidebar' flags'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetOpenFlagsMethodInfo
instance (signature ~ ([Gtk.Flags.PlacesOpenFlags] -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetOpenFlagsMethodInfo a signature where
    overloadedMethod = placesSidebarSetOpenFlags

#endif

-- method PlacesSidebar::set_show_connect_to_server
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_connect_to_server"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to show an item for the Connect to Server command"
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

foreign import ccall "gtk_places_sidebar_set_show_connect_to_server" gtk_places_sidebar_set_show_connect_to_server :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_connect_to_server : TBasicType TBoolean
    IO ()

{-# DEPRECATED placesSidebarSetShowConnectToServer ["(Since version 3.18)","It is recommended to group this functionality with the drives","    and network location under the new \\'Other Location\\' item"] #-}
-- | Sets whether the /@sidebar@/ should show an item for connecting to a network server;
-- this is off by default. An application may want to turn this on if it implements
-- a way for the user to connect to network servers directly.
-- 
-- If you enable this, you should connect to the
-- [showConnectToServer]("GI.Gtk.Objects.PlacesSidebar#signal:showConnectToServer") signal.
-- 
-- /Since: 3.10/
placesSidebarSetShowConnectToServer ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showConnectToServer@/: whether to show an item for the Connect to Server command
    -> m ()
placesSidebarSetShowConnectToServer sidebar showConnectToServer = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showConnectToServer' = (fromIntegral . fromEnum) showConnectToServer
    gtk_places_sidebar_set_show_connect_to_server sidebar' showConnectToServer'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowConnectToServerMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowConnectToServerMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowConnectToServer

#endif

-- method PlacesSidebar::set_show_desktop
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_desktop"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to show an item for the Desktop folder"
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

foreign import ccall "gtk_places_sidebar_set_show_desktop" gtk_places_sidebar_set_show_desktop :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_desktop : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should show an item for the Desktop folder.
-- The default value for this option is determined by the desktop
-- environment and the user’s configuration, but this function can be
-- used to override it on a per-application basis.
-- 
-- /Since: 3.10/
placesSidebarSetShowDesktop ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showDesktop@/: whether to show an item for the Desktop folder
    -> m ()
placesSidebarSetShowDesktop sidebar showDesktop = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showDesktop' = (fromIntegral . fromEnum) showDesktop
    gtk_places_sidebar_set_show_desktop sidebar' showDesktop'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowDesktopMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowDesktopMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowDesktop

#endif

-- method PlacesSidebar::set_show_enter_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_enter_location"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show an item to enter a location"
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

foreign import ccall "gtk_places_sidebar_set_show_enter_location" gtk_places_sidebar_set_show_enter_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_enter_location : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should show an item for entering a location;
-- this is off by default. An application may want to turn this on if manually
-- entering URLs is an expected user action.
-- 
-- If you enable this, you should connect to the
-- [showEnterLocation]("GI.Gtk.Objects.PlacesSidebar#signal:showEnterLocation") signal.
-- 
-- /Since: 3.14/
placesSidebarSetShowEnterLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showEnterLocation@/: whether to show an item to enter a location
    -> m ()
placesSidebarSetShowEnterLocation sidebar showEnterLocation = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showEnterLocation' = (fromIntegral . fromEnum) showEnterLocation
    gtk_places_sidebar_set_show_enter_location sidebar' showEnterLocation'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowEnterLocationMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowEnterLocationMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowEnterLocation

#endif

-- method PlacesSidebar::set_show_other_locations
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_other_locations"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to show an item for the Other Locations view"
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

foreign import ccall "gtk_places_sidebar_set_show_other_locations" gtk_places_sidebar_set_show_other_locations :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_other_locations : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should show an item for the application to show
-- an Other Locations view; this is off by default. When set to 'P.True', persistent
-- devices such as hard drives are hidden, otherwise they are shown in the sidebar.
-- An application may want to turn this on if it implements a way for the user to
-- see and interact with drives and network servers directly.
-- 
-- If you enable this, you should connect to the
-- [showOtherLocations]("GI.Gtk.Objects.PlacesSidebar#signal:showOtherLocations") signal.
-- 
-- /Since: 3.18/
placesSidebarSetShowOtherLocations ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showOtherLocations@/: whether to show an item for the Other Locations view
    -> m ()
placesSidebarSetShowOtherLocations sidebar showOtherLocations = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showOtherLocations' = (fromIntegral . fromEnum) showOtherLocations
    gtk_places_sidebar_set_show_other_locations sidebar' showOtherLocations'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowOtherLocationsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowOtherLocationsMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowOtherLocations

#endif

-- method PlacesSidebar::set_show_recent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_recent"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show an item for recent files"
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

foreign import ccall "gtk_places_sidebar_set_show_recent" gtk_places_sidebar_set_show_recent :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_recent : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should show an item for recent files.
-- The default value for this option is determined by the desktop
-- environment, but this function can be used to override it on a
-- per-application basis.
-- 
-- /Since: 3.18/
placesSidebarSetShowRecent ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showRecent@/: whether to show an item for recent files
    -> m ()
placesSidebarSetShowRecent sidebar showRecent = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showRecent' = (fromIntegral . fromEnum) showRecent
    gtk_places_sidebar_set_show_recent sidebar' showRecent'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowRecentMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowRecentMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowRecent

#endif

-- method PlacesSidebar::set_show_starred_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_starred_location"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show an item for Starred files"
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

foreign import ccall "gtk_places_sidebar_set_show_starred_location" gtk_places_sidebar_set_show_starred_location :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_starred_location : TBasicType TBoolean
    IO ()

-- | If you enable this, you should connect to the
-- [showStarredLocation]("GI.Gtk.Objects.PlacesSidebar#signal:showStarredLocation") signal.
-- 
-- /Since: 3.22.26/
placesSidebarSetShowStarredLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showStarredLocation@/: whether to show an item for Starred files
    -> m ()
placesSidebarSetShowStarredLocation sidebar showStarredLocation = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showStarredLocation' = (fromIntegral . fromEnum) showStarredLocation
    gtk_places_sidebar_set_show_starred_location sidebar' showStarredLocation'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowStarredLocationMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowStarredLocationMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowStarredLocation

#endif

-- method PlacesSidebar::set_show_trash
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PlacesSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a places sidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_trash"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to show an item for the Trash location"
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

foreign import ccall "gtk_places_sidebar_set_show_trash" gtk_places_sidebar_set_show_trash :: 
    Ptr PlacesSidebar ->                    -- sidebar : TInterface (Name {namespace = "Gtk", name = "PlacesSidebar"})
    CInt ->                                 -- show_trash : TBasicType TBoolean
    IO ()

-- | Sets whether the /@sidebar@/ should show an item for the Trash location.
-- 
-- /Since: 3.18/
placesSidebarSetShowTrash ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlacesSidebar a) =>
    a
    -- ^ /@sidebar@/: a places sidebar
    -> Bool
    -- ^ /@showTrash@/: whether to show an item for the Trash location
    -> m ()
placesSidebarSetShowTrash sidebar showTrash = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    let showTrash' = (fromIntegral . fromEnum) showTrash
    gtk_places_sidebar_set_show_trash sidebar' showTrash'
    touchManagedPtr sidebar
    return ()

#if defined(ENABLE_OVERLOADING)
data PlacesSidebarSetShowTrashMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPlacesSidebar a) => O.MethodInfo PlacesSidebarSetShowTrashMethodInfo a signature where
    overloadedMethod = placesSidebarSetShowTrash

#endif

