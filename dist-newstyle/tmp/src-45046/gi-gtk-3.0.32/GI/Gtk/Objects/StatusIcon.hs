{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The “system tray” or notification area is normally used for transient icons
-- that indicate some special state. For example, a system tray icon might
-- appear to tell the user that they have new mail, or have an incoming instant
-- message, or something along those lines. The basic idea is that creating an
-- icon in the notification area is less annoying than popping up a dialog.
-- 
-- A t'GI.Gtk.Objects.StatusIcon.StatusIcon' object can be used to display an icon in a “system tray”.
-- The icon can have a tooltip, and the user can interact with it by
-- activating it or popping up a context menu.
-- 
-- It is very important to notice that status icons depend on the existence
-- of a notification area being available to the user; you should not use status
-- icons as the only way to convey critical information regarding your application,
-- as the notification area may not exist on the user\'s environment, or may have
-- been removed. You should always check that a status icon has been embedded into
-- a notification area by using 'GI.Gtk.Objects.StatusIcon.statusIconIsEmbedded', and gracefully
-- recover if the function returns 'P.False'.
-- 
-- On X11, the implementation follows the
-- <http://www.freedesktop.org/wiki/Specifications/systemtray-spec FreeDesktop System Tray Specification>.
-- Implementations of the “tray” side of this specification can
-- be found e.g. in the GNOME 2 and KDE panel applications.
-- 
-- Note that a GtkStatusIcon is not a widget, but just a t'GI.GObject.Objects.Object.Object'. Making it a
-- widget would be impractical, since the system tray on Windows doesn’t allow
-- to embed arbitrary widgets.
-- 
-- GtkStatusIcon has been deprecated in 3.14. You should consider using
-- notifications or more modern platform-specific APIs instead. GLib provides
-- the t'GI.Gio.Objects.Notification.Notification' API which works well with t'GI.Gtk.Objects.Application.Application' on multiple
-- platforms and environments, and should be the preferred mechanism to notify
-- the users of transient status updates. See this <https://wiki.gnome.org/HowDoI/GNotification HowDoI>
-- for code examples.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StatusIcon
    ( 

-- * Exported types
    StatusIcon(..)                          ,
    IsStatusIcon                            ,
    toStatusIcon                            ,
    noStatusIcon                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStatusIconMethod                 ,
#endif


-- ** getGeometry #method:getGeometry#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetGeometryMethodInfo         ,
#endif
    statusIconGetGeometry                   ,


-- ** getGicon #method:getGicon#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetGiconMethodInfo            ,
#endif
    statusIconGetGicon                      ,


-- ** getHasTooltip #method:getHasTooltip#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetHasTooltipMethodInfo       ,
#endif
    statusIconGetHasTooltip                 ,


-- ** getIconName #method:getIconName#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetIconNameMethodInfo         ,
#endif
    statusIconGetIconName                   ,


-- ** getPixbuf #method:getPixbuf#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetPixbufMethodInfo           ,
#endif
    statusIconGetPixbuf                     ,


-- ** getScreen #method:getScreen#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetScreenMethodInfo           ,
#endif
    statusIconGetScreen                     ,


-- ** getSize #method:getSize#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetSizeMethodInfo             ,
#endif
    statusIconGetSize                       ,


-- ** getStock #method:getStock#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetStockMethodInfo            ,
#endif
    statusIconGetStock                      ,


-- ** getStorageType #method:getStorageType#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetStorageTypeMethodInfo      ,
#endif
    statusIconGetStorageType                ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetTitleMethodInfo            ,
#endif
    statusIconGetTitle                      ,


-- ** getTooltipMarkup #method:getTooltipMarkup#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetTooltipMarkupMethodInfo    ,
#endif
    statusIconGetTooltipMarkup              ,


-- ** getTooltipText #method:getTooltipText#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetTooltipTextMethodInfo      ,
#endif
    statusIconGetTooltipText                ,


-- ** getVisible #method:getVisible#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetVisibleMethodInfo          ,
#endif
    statusIconGetVisible                    ,


-- ** getX11WindowId #method:getX11WindowId#

#if defined(ENABLE_OVERLOADING)
    StatusIconGetX11WindowIdMethodInfo      ,
#endif
    statusIconGetX11WindowId                ,


-- ** isEmbedded #method:isEmbedded#

#if defined(ENABLE_OVERLOADING)
    StatusIconIsEmbeddedMethodInfo          ,
#endif
    statusIconIsEmbedded                    ,


-- ** new #method:new#

    statusIconNew                           ,


-- ** newFromFile #method:newFromFile#

    statusIconNewFromFile                   ,


-- ** newFromGicon #method:newFromGicon#

    statusIconNewFromGicon                  ,


-- ** newFromIconName #method:newFromIconName#

    statusIconNewFromIconName               ,


-- ** newFromPixbuf #method:newFromPixbuf#

    statusIconNewFromPixbuf                 ,


-- ** newFromStock #method:newFromStock#

    statusIconNewFromStock                  ,


-- ** positionMenu #method:positionMenu#

    statusIconPositionMenu                  ,


-- ** setFromFile #method:setFromFile#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetFromFileMethodInfo         ,
#endif
    statusIconSetFromFile                   ,


-- ** setFromGicon #method:setFromGicon#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetFromGiconMethodInfo        ,
#endif
    statusIconSetFromGicon                  ,


-- ** setFromIconName #method:setFromIconName#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetFromIconNameMethodInfo     ,
#endif
    statusIconSetFromIconName               ,


-- ** setFromPixbuf #method:setFromPixbuf#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetFromPixbufMethodInfo       ,
#endif
    statusIconSetFromPixbuf                 ,


-- ** setFromStock #method:setFromStock#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetFromStockMethodInfo        ,
#endif
    statusIconSetFromStock                  ,


-- ** setHasTooltip #method:setHasTooltip#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetHasTooltipMethodInfo       ,
#endif
    statusIconSetHasTooltip                 ,


-- ** setName #method:setName#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetNameMethodInfo             ,
#endif
    statusIconSetName                       ,


-- ** setScreen #method:setScreen#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetScreenMethodInfo           ,
#endif
    statusIconSetScreen                     ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetTitleMethodInfo            ,
#endif
    statusIconSetTitle                      ,


-- ** setTooltipMarkup #method:setTooltipMarkup#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetTooltipMarkupMethodInfo    ,
#endif
    statusIconSetTooltipMarkup              ,


-- ** setTooltipText #method:setTooltipText#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetTooltipTextMethodInfo      ,
#endif
    statusIconSetTooltipText                ,


-- ** setVisible #method:setVisible#

#if defined(ENABLE_OVERLOADING)
    StatusIconSetVisibleMethodInfo          ,
#endif
    statusIconSetVisible                    ,




 -- * Properties
-- ** embedded #attr:embedded#
-- | 'P.True' if the statusicon is embedded in a notification area.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    StatusIconEmbeddedPropertyInfo          ,
#endif
    getStatusIconEmbedded                   ,
#if defined(ENABLE_OVERLOADING)
    statusIconEmbedded                      ,
#endif


-- ** file #attr:file#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconFilePropertyInfo              ,
#endif
    clearStatusIconFile                     ,
    constructStatusIconFile                 ,
    setStatusIconFile                       ,
#if defined(ENABLE_OVERLOADING)
    statusIconFile                          ,
#endif


-- ** gicon #attr:gicon#
-- | The t'GI.Gio.Interfaces.Icon.Icon' displayed in the t'GI.Gtk.Objects.StatusIcon.StatusIcon'. For themed icons,
-- the image will be updated automatically if the theme changes.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    StatusIconGiconPropertyInfo             ,
#endif
    clearStatusIconGicon                    ,
    constructStatusIconGicon                ,
    getStatusIconGicon                      ,
    setStatusIconGicon                      ,
#if defined(ENABLE_OVERLOADING)
    statusIconGicon                         ,
#endif


-- ** hasTooltip #attr:hasTooltip#
-- | Enables or disables the emission of [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip") on
-- /@statusIcon@/.  A value of 'P.True' indicates that /@statusIcon@/ can have a
-- tooltip, in this case the status icon will be queried using
-- [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip") to determine whether it will provide a
-- tooltip or not.
-- 
-- Note that setting this property to 'P.True' for the first time will change
-- the event masks of the windows of this status icon to include leave-notify
-- and motion-notify events. This will not be undone when the property is set
-- to 'P.False' again.
-- 
-- Whether this property is respected is platform dependent.
-- For plain text tooltips, use t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/tooltip-text/@ in preference.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    StatusIconHasTooltipPropertyInfo        ,
#endif
    constructStatusIconHasTooltip           ,
    getStatusIconHasTooltip                 ,
    setStatusIconHasTooltip                 ,
#if defined(ENABLE_OVERLOADING)
    statusIconHasTooltip                    ,
#endif


-- ** iconName #attr:iconName#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconIconNamePropertyInfo          ,
#endif
    clearStatusIconIconName                 ,
    constructStatusIconIconName             ,
    getStatusIconIconName                   ,
    setStatusIconIconName                   ,
#if defined(ENABLE_OVERLOADING)
    statusIconIconName                      ,
#endif


-- ** orientation #attr:orientation#
-- | The orientation of the tray in which the statusicon
-- is embedded.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    StatusIconOrientationPropertyInfo       ,
#endif
    getStatusIconOrientation                ,
#if defined(ENABLE_OVERLOADING)
    statusIconOrientation                   ,
#endif


-- ** pixbuf #attr:pixbuf#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconPixbufPropertyInfo            ,
#endif
    clearStatusIconPixbuf                   ,
    constructStatusIconPixbuf               ,
    getStatusIconPixbuf                     ,
    setStatusIconPixbuf                     ,
#if defined(ENABLE_OVERLOADING)
    statusIconPixbuf                        ,
#endif


-- ** screen #attr:screen#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconScreenPropertyInfo            ,
#endif
    constructStatusIconScreen               ,
    getStatusIconScreen                     ,
    setStatusIconScreen                     ,
#if defined(ENABLE_OVERLOADING)
    statusIconScreen                        ,
#endif


-- ** size #attr:size#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconSizePropertyInfo              ,
#endif
    getStatusIconSize                       ,
#if defined(ENABLE_OVERLOADING)
    statusIconSize                          ,
#endif


-- ** stock #attr:stock#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconStockPropertyInfo             ,
#endif
    clearStatusIconStock                    ,
    constructStatusIconStock                ,
    getStatusIconStock                      ,
    setStatusIconStock                      ,
#if defined(ENABLE_OVERLOADING)
    statusIconStock                         ,
#endif


-- ** storageType #attr:storageType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconStorageTypePropertyInfo       ,
#endif
    getStatusIconStorageType                ,
#if defined(ENABLE_OVERLOADING)
    statusIconStorageType                   ,
#endif


-- ** title #attr:title#
-- | The title of this tray icon. This should be a short, human-readable,
-- localized string describing the tray icon. It may be used by tools
-- like screen readers to render the tray icon.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    StatusIconTitlePropertyInfo             ,
#endif
    constructStatusIconTitle                ,
    getStatusIconTitle                      ,
    setStatusIconTitle                      ,
#if defined(ENABLE_OVERLOADING)
    statusIconTitle                         ,
#endif


-- ** tooltipMarkup #attr:tooltipMarkup#
-- | Sets the text of tooltip to be the given string, which is marked up
-- with the [Pango text markup language][PangoMarkupFormat].
-- Also see 'GI.Gtk.Objects.Tooltip.tooltipSetMarkup'.
-- 
-- This is a convenience property which will take care of getting the
-- tooltip shown if the given string is not 'P.Nothing'.
-- t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ will automatically be set to 'P.True' and
-- the default handler for the [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip") signal
-- will take care of displaying the tooltip.
-- 
-- On some platforms, embedded markup will be ignored.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    StatusIconTooltipMarkupPropertyInfo     ,
#endif
    clearStatusIconTooltipMarkup            ,
    constructStatusIconTooltipMarkup        ,
    getStatusIconTooltipMarkup              ,
    setStatusIconTooltipMarkup              ,
#if defined(ENABLE_OVERLOADING)
    statusIconTooltipMarkup                 ,
#endif


-- ** tooltipText #attr:tooltipText#
-- | Sets the text of tooltip to be the given string.
-- 
-- Also see 'GI.Gtk.Objects.Tooltip.tooltipSetText'.
-- 
-- This is a convenience property which will take care of getting the
-- tooltip shown if the given string is not 'P.Nothing'.
-- t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ will automatically be set to 'P.True' and
-- the default handler for the [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip") signal
-- will take care of displaying the tooltip.
-- 
-- Note that some platforms have limitations on the length of tooltips
-- that they allow on status icons, e.g. Windows only shows the first
-- 64 characters.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    StatusIconTooltipTextPropertyInfo       ,
#endif
    constructStatusIconTooltipText          ,
    getStatusIconTooltipText                ,
    setStatusIconTooltipText                ,
#if defined(ENABLE_OVERLOADING)
    statusIconTooltipText                   ,
#endif


-- ** visible #attr:visible#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StatusIconVisiblePropertyInfo           ,
#endif
    constructStatusIconVisible              ,
    getStatusIconVisible                    ,
    setStatusIconVisible                    ,
#if defined(ENABLE_OVERLOADING)
    statusIconVisible                       ,
#endif




 -- * Signals
-- ** activate #signal:activate#

    C_StatusIconActivateCallback            ,
    StatusIconActivateCallback              ,
#if defined(ENABLE_OVERLOADING)
    StatusIconActivateSignalInfo            ,
#endif
    afterStatusIconActivate                 ,
    genClosure_StatusIconActivate           ,
    mk_StatusIconActivateCallback           ,
    noStatusIconActivateCallback            ,
    onStatusIconActivate                    ,
    wrap_StatusIconActivateCallback         ,


-- ** buttonPressEvent #signal:buttonPressEvent#

    C_StatusIconButtonPressEventCallback    ,
    StatusIconButtonPressEventCallback      ,
#if defined(ENABLE_OVERLOADING)
    StatusIconButtonPressEventSignalInfo    ,
#endif
    afterStatusIconButtonPressEvent         ,
    genClosure_StatusIconButtonPressEvent   ,
    mk_StatusIconButtonPressEventCallback   ,
    noStatusIconButtonPressEventCallback    ,
    onStatusIconButtonPressEvent            ,
    wrap_StatusIconButtonPressEventCallback ,


-- ** buttonReleaseEvent #signal:buttonReleaseEvent#

    C_StatusIconButtonReleaseEventCallback  ,
    StatusIconButtonReleaseEventCallback    ,
#if defined(ENABLE_OVERLOADING)
    StatusIconButtonReleaseEventSignalInfo  ,
#endif
    afterStatusIconButtonReleaseEvent       ,
    genClosure_StatusIconButtonReleaseEvent ,
    mk_StatusIconButtonReleaseEventCallback ,
    noStatusIconButtonReleaseEventCallback  ,
    onStatusIconButtonReleaseEvent          ,
    wrap_StatusIconButtonReleaseEventCallback,


-- ** popupMenu #signal:popupMenu#

    C_StatusIconPopupMenuCallback           ,
    StatusIconPopupMenuCallback             ,
#if defined(ENABLE_OVERLOADING)
    StatusIconPopupMenuSignalInfo           ,
#endif
    afterStatusIconPopupMenu                ,
    genClosure_StatusIconPopupMenu          ,
    mk_StatusIconPopupMenuCallback          ,
    noStatusIconPopupMenuCallback           ,
    onStatusIconPopupMenu                   ,
    wrap_StatusIconPopupMenuCallback        ,


-- ** queryTooltip #signal:queryTooltip#

    C_StatusIconQueryTooltipCallback        ,
    StatusIconQueryTooltipCallback          ,
#if defined(ENABLE_OVERLOADING)
    StatusIconQueryTooltipSignalInfo        ,
#endif
    afterStatusIconQueryTooltip             ,
    genClosure_StatusIconQueryTooltip       ,
    mk_StatusIconQueryTooltipCallback       ,
    noStatusIconQueryTooltipCallback        ,
    onStatusIconQueryTooltip                ,
    wrap_StatusIconQueryTooltipCallback     ,


-- ** scrollEvent #signal:scrollEvent#

    C_StatusIconScrollEventCallback         ,
    StatusIconScrollEventCallback           ,
#if defined(ENABLE_OVERLOADING)
    StatusIconScrollEventSignalInfo         ,
#endif
    afterStatusIconScrollEvent              ,
    genClosure_StatusIconScrollEvent        ,
    mk_StatusIconScrollEventCallback        ,
    noStatusIconScrollEventCallback         ,
    onStatusIconScrollEvent                 ,
    wrap_StatusIconScrollEventCallback      ,


-- ** sizeChanged #signal:sizeChanged#

    C_StatusIconSizeChangedCallback         ,
    StatusIconSizeChangedCallback           ,
#if defined(ENABLE_OVERLOADING)
    StatusIconSizeChangedSignalInfo         ,
#endif
    afterStatusIconSizeChanged              ,
    genClosure_StatusIconSizeChanged        ,
    mk_StatusIconSizeChangedCallback        ,
    noStatusIconSizeChangedCallback         ,
    onStatusIconSizeChanged                 ,
    wrap_StatusIconSizeChangedCallback      ,




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

import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Objects.Screen as Gdk.Screen
import qualified GI.Gdk.Structs.EventButton as Gdk.EventButton
import qualified GI.Gdk.Structs.EventScroll as Gdk.EventScroll
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import qualified GI.Gio.Interfaces.Icon as Gio.Icon
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.Menu as Gtk.Menu
import {-# SOURCE #-} qualified GI.Gtk.Objects.Tooltip as Gtk.Tooltip

-- | Memory-managed wrapper type.
newtype StatusIcon = StatusIcon (ManagedPtr StatusIcon)
    deriving (Eq)
foreign import ccall "gtk_status_icon_get_type"
    c_gtk_status_icon_get_type :: IO GType

instance GObject StatusIcon where
    gobjectType = c_gtk_status_icon_get_type
    

-- | Convert 'StatusIcon' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StatusIcon where
    toGValue o = do
        gtype <- c_gtk_status_icon_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StatusIcon)
        B.ManagedPtr.newObject StatusIcon ptr
        
    

-- | Type class for types which can be safely cast to `StatusIcon`, for instance with `toStatusIcon`.
class (GObject o, O.IsDescendantOf StatusIcon o) => IsStatusIcon o
instance (GObject o, O.IsDescendantOf StatusIcon o) => IsStatusIcon o

instance O.HasParentTypes StatusIcon
type instance O.ParentTypes StatusIcon = '[GObject.Object.Object]

-- | Cast to `StatusIcon`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStatusIcon :: (MonadIO m, IsStatusIcon o) => o -> m StatusIcon
toStatusIcon = liftIO . unsafeCastTo StatusIcon

-- | A convenience alias for `Nothing` :: `Maybe` `StatusIcon`.
noStatusIcon :: Maybe StatusIcon
noStatusIcon = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStatusIconMethod (t :: Symbol) (o :: *) :: * where
    ResolveStatusIconMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStatusIconMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStatusIconMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStatusIconMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStatusIconMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStatusIconMethod "isEmbedded" o = StatusIconIsEmbeddedMethodInfo
    ResolveStatusIconMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStatusIconMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStatusIconMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStatusIconMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStatusIconMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStatusIconMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStatusIconMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStatusIconMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStatusIconMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStatusIconMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStatusIconMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStatusIconMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStatusIconMethod "getGeometry" o = StatusIconGetGeometryMethodInfo
    ResolveStatusIconMethod "getGicon" o = StatusIconGetGiconMethodInfo
    ResolveStatusIconMethod "getHasTooltip" o = StatusIconGetHasTooltipMethodInfo
    ResolveStatusIconMethod "getIconName" o = StatusIconGetIconNameMethodInfo
    ResolveStatusIconMethod "getPixbuf" o = StatusIconGetPixbufMethodInfo
    ResolveStatusIconMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStatusIconMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStatusIconMethod "getScreen" o = StatusIconGetScreenMethodInfo
    ResolveStatusIconMethod "getSize" o = StatusIconGetSizeMethodInfo
    ResolveStatusIconMethod "getStock" o = StatusIconGetStockMethodInfo
    ResolveStatusIconMethod "getStorageType" o = StatusIconGetStorageTypeMethodInfo
    ResolveStatusIconMethod "getTitle" o = StatusIconGetTitleMethodInfo
    ResolveStatusIconMethod "getTooltipMarkup" o = StatusIconGetTooltipMarkupMethodInfo
    ResolveStatusIconMethod "getTooltipText" o = StatusIconGetTooltipTextMethodInfo
    ResolveStatusIconMethod "getVisible" o = StatusIconGetVisibleMethodInfo
    ResolveStatusIconMethod "getX11WindowId" o = StatusIconGetX11WindowIdMethodInfo
    ResolveStatusIconMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStatusIconMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStatusIconMethod "setFromFile" o = StatusIconSetFromFileMethodInfo
    ResolveStatusIconMethod "setFromGicon" o = StatusIconSetFromGiconMethodInfo
    ResolveStatusIconMethod "setFromIconName" o = StatusIconSetFromIconNameMethodInfo
    ResolveStatusIconMethod "setFromPixbuf" o = StatusIconSetFromPixbufMethodInfo
    ResolveStatusIconMethod "setFromStock" o = StatusIconSetFromStockMethodInfo
    ResolveStatusIconMethod "setHasTooltip" o = StatusIconSetHasTooltipMethodInfo
    ResolveStatusIconMethod "setName" o = StatusIconSetNameMethodInfo
    ResolveStatusIconMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStatusIconMethod "setScreen" o = StatusIconSetScreenMethodInfo
    ResolveStatusIconMethod "setTitle" o = StatusIconSetTitleMethodInfo
    ResolveStatusIconMethod "setTooltipMarkup" o = StatusIconSetTooltipMarkupMethodInfo
    ResolveStatusIconMethod "setTooltipText" o = StatusIconSetTooltipTextMethodInfo
    ResolveStatusIconMethod "setVisible" o = StatusIconSetVisibleMethodInfo
    ResolveStatusIconMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStatusIconMethod t StatusIcon, O.MethodInfo info StatusIcon p) => OL.IsLabel t (StatusIcon -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal StatusIcon::activate
-- | Gets emitted when the user activates the status icon.
-- If and how status icons can activated is platform-dependent.
-- 
-- Unlike most G_SIGNAL_ACTION signals, this signal is meant to
-- be used by applications and should be wrapped by language bindings.
-- 
-- /Since: 2.10/
type StatusIconActivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconActivateCallback`@.
noStatusIconActivateCallback :: Maybe StatusIconActivateCallback
noStatusIconActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconActivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_StatusIconActivateCallback`.
foreign import ccall "wrapper"
    mk_StatusIconActivateCallback :: C_StatusIconActivateCallback -> IO (FunPtr C_StatusIconActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconActivate :: MonadIO m => StatusIconActivateCallback -> m (GClosure C_StatusIconActivateCallback)
genClosure_StatusIconActivate cb = liftIO $ do
    let cb' = wrap_StatusIconActivateCallback cb
    mk_StatusIconActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconActivateCallback` into a `C_StatusIconActivateCallback`.
wrap_StatusIconActivateCallback ::
    StatusIconActivateCallback ->
    C_StatusIconActivateCallback
wrap_StatusIconActivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #activate callback
-- @
-- 
-- 
onStatusIconActivate :: (IsStatusIcon a, MonadIO m) => a -> StatusIconActivateCallback -> m SignalHandlerId
onStatusIconActivate obj cb = liftIO $ do
    let cb' = wrap_StatusIconActivateCallback cb
    cb'' <- mk_StatusIconActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #activate callback
-- @
-- 
-- 
afterStatusIconActivate :: (IsStatusIcon a, MonadIO m) => a -> StatusIconActivateCallback -> m SignalHandlerId
afterStatusIconActivate obj cb = liftIO $ do
    let cb' = wrap_StatusIconActivateCallback cb
    cb'' <- mk_StatusIconActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconActivateSignalInfo
instance SignalInfo StatusIconActivateSignalInfo where
    type HaskellCallbackType StatusIconActivateSignalInfo = StatusIconActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconActivateCallback cb
        cb'' <- mk_StatusIconActivateCallback cb'
        connectSignalFunPtr obj "activate" cb'' connectMode detail

#endif

-- signal StatusIcon::button-press-event
-- | The [buttonPressEvent](#signal:buttonPressEvent) signal will be emitted when a button
-- (typically from a mouse) is pressed.
-- 
-- Whether this event is emitted is platform-dependent.  Use the [activate](#signal:activate)
-- and [popupMenu](#signal:popupMenu) signals in preference.
-- 
-- /Since: 2.14/
type StatusIconButtonPressEventCallback =
    Gdk.EventButton.EventButton
    -- ^ /@event@/: the t'GI.Gdk.Structs.EventButton.EventButton' which triggered
    --                                 this signal
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked
    -- for the event. 'P.False' to propagate the event further.

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconButtonPressEventCallback`@.
noStatusIconButtonPressEventCallback :: Maybe StatusIconButtonPressEventCallback
noStatusIconButtonPressEventCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconButtonPressEventCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventButton.EventButton ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_StatusIconButtonPressEventCallback`.
foreign import ccall "wrapper"
    mk_StatusIconButtonPressEventCallback :: C_StatusIconButtonPressEventCallback -> IO (FunPtr C_StatusIconButtonPressEventCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconButtonPressEvent :: MonadIO m => StatusIconButtonPressEventCallback -> m (GClosure C_StatusIconButtonPressEventCallback)
genClosure_StatusIconButtonPressEvent cb = liftIO $ do
    let cb' = wrap_StatusIconButtonPressEventCallback cb
    mk_StatusIconButtonPressEventCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconButtonPressEventCallback` into a `C_StatusIconButtonPressEventCallback`.
wrap_StatusIconButtonPressEventCallback ::
    StatusIconButtonPressEventCallback ->
    C_StatusIconButtonPressEventCallback
wrap_StatusIconButtonPressEventCallback _cb _ event _ = do
    event' <- (newPtr Gdk.EventButton.EventButton) event
    result <- _cb  event'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [buttonPressEvent](#signal:buttonPressEvent) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #buttonPressEvent callback
-- @
-- 
-- 
onStatusIconButtonPressEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconButtonPressEventCallback -> m SignalHandlerId
onStatusIconButtonPressEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconButtonPressEventCallback cb
    cb'' <- mk_StatusIconButtonPressEventCallback cb'
    connectSignalFunPtr obj "button-press-event" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [buttonPressEvent](#signal:buttonPressEvent) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #buttonPressEvent callback
-- @
-- 
-- 
afterStatusIconButtonPressEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconButtonPressEventCallback -> m SignalHandlerId
afterStatusIconButtonPressEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconButtonPressEventCallback cb
    cb'' <- mk_StatusIconButtonPressEventCallback cb'
    connectSignalFunPtr obj "button-press-event" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconButtonPressEventSignalInfo
instance SignalInfo StatusIconButtonPressEventSignalInfo where
    type HaskellCallbackType StatusIconButtonPressEventSignalInfo = StatusIconButtonPressEventCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconButtonPressEventCallback cb
        cb'' <- mk_StatusIconButtonPressEventCallback cb'
        connectSignalFunPtr obj "button-press-event" cb'' connectMode detail

#endif

-- signal StatusIcon::button-release-event
-- | The [buttonReleaseEvent](#signal:buttonReleaseEvent) signal will be emitted when a button
-- (typically from a mouse) is released.
-- 
-- Whether this event is emitted is platform-dependent.  Use the [activate](#signal:activate)
-- and [popupMenu](#signal:popupMenu) signals in preference.
-- 
-- /Since: 2.14/
type StatusIconButtonReleaseEventCallback =
    Gdk.EventButton.EventButton
    -- ^ /@event@/: the t'GI.Gdk.Structs.EventButton.EventButton' which triggered
    --                                 this signal
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked
    -- for the event. 'P.False' to propagate the event further.

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconButtonReleaseEventCallback`@.
noStatusIconButtonReleaseEventCallback :: Maybe StatusIconButtonReleaseEventCallback
noStatusIconButtonReleaseEventCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconButtonReleaseEventCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventButton.EventButton ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_StatusIconButtonReleaseEventCallback`.
foreign import ccall "wrapper"
    mk_StatusIconButtonReleaseEventCallback :: C_StatusIconButtonReleaseEventCallback -> IO (FunPtr C_StatusIconButtonReleaseEventCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconButtonReleaseEvent :: MonadIO m => StatusIconButtonReleaseEventCallback -> m (GClosure C_StatusIconButtonReleaseEventCallback)
genClosure_StatusIconButtonReleaseEvent cb = liftIO $ do
    let cb' = wrap_StatusIconButtonReleaseEventCallback cb
    mk_StatusIconButtonReleaseEventCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconButtonReleaseEventCallback` into a `C_StatusIconButtonReleaseEventCallback`.
wrap_StatusIconButtonReleaseEventCallback ::
    StatusIconButtonReleaseEventCallback ->
    C_StatusIconButtonReleaseEventCallback
wrap_StatusIconButtonReleaseEventCallback _cb _ event _ = do
    event' <- (newPtr Gdk.EventButton.EventButton) event
    result <- _cb  event'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [buttonReleaseEvent](#signal:buttonReleaseEvent) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #buttonReleaseEvent callback
-- @
-- 
-- 
onStatusIconButtonReleaseEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconButtonReleaseEventCallback -> m SignalHandlerId
onStatusIconButtonReleaseEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconButtonReleaseEventCallback cb
    cb'' <- mk_StatusIconButtonReleaseEventCallback cb'
    connectSignalFunPtr obj "button-release-event" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [buttonReleaseEvent](#signal:buttonReleaseEvent) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #buttonReleaseEvent callback
-- @
-- 
-- 
afterStatusIconButtonReleaseEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconButtonReleaseEventCallback -> m SignalHandlerId
afterStatusIconButtonReleaseEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconButtonReleaseEventCallback cb
    cb'' <- mk_StatusIconButtonReleaseEventCallback cb'
    connectSignalFunPtr obj "button-release-event" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconButtonReleaseEventSignalInfo
instance SignalInfo StatusIconButtonReleaseEventSignalInfo where
    type HaskellCallbackType StatusIconButtonReleaseEventSignalInfo = StatusIconButtonReleaseEventCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconButtonReleaseEventCallback cb
        cb'' <- mk_StatusIconButtonReleaseEventCallback cb'
        connectSignalFunPtr obj "button-release-event" cb'' connectMode detail

#endif

-- signal StatusIcon::popup-menu
-- | Gets emitted when the user brings up the context menu
-- of the status icon. Whether status icons can have context
-- menus and how these are activated is platform-dependent.
-- 
-- The /@button@/ and /@activateTime@/ parameters should be
-- passed as the last to arguments to 'GI.Gtk.Objects.Menu.menuPopup'.
-- 
-- Unlike most G_SIGNAL_ACTION signals, this signal is meant to
-- be used by applications and should be wrapped by language bindings.
-- 
-- /Since: 2.10/
type StatusIconPopupMenuCallback =
    Word32
    -- ^ /@button@/: the button that was pressed, or 0 if the
    --   signal is not emitted in response to a button press event
    -> Word32
    -- ^ /@activateTime@/: the timestamp of the event that
    --   triggered the signal emission
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconPopupMenuCallback`@.
noStatusIconPopupMenuCallback :: Maybe StatusIconPopupMenuCallback
noStatusIconPopupMenuCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconPopupMenuCallback =
    Ptr () ->                               -- object
    Word32 ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_StatusIconPopupMenuCallback`.
foreign import ccall "wrapper"
    mk_StatusIconPopupMenuCallback :: C_StatusIconPopupMenuCallback -> IO (FunPtr C_StatusIconPopupMenuCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconPopupMenu :: MonadIO m => StatusIconPopupMenuCallback -> m (GClosure C_StatusIconPopupMenuCallback)
genClosure_StatusIconPopupMenu cb = liftIO $ do
    let cb' = wrap_StatusIconPopupMenuCallback cb
    mk_StatusIconPopupMenuCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconPopupMenuCallback` into a `C_StatusIconPopupMenuCallback`.
wrap_StatusIconPopupMenuCallback ::
    StatusIconPopupMenuCallback ->
    C_StatusIconPopupMenuCallback
wrap_StatusIconPopupMenuCallback _cb _ button activateTime _ = do
    _cb  button activateTime


-- | Connect a signal handler for the [popupMenu](#signal:popupMenu) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #popupMenu callback
-- @
-- 
-- 
onStatusIconPopupMenu :: (IsStatusIcon a, MonadIO m) => a -> StatusIconPopupMenuCallback -> m SignalHandlerId
onStatusIconPopupMenu obj cb = liftIO $ do
    let cb' = wrap_StatusIconPopupMenuCallback cb
    cb'' <- mk_StatusIconPopupMenuCallback cb'
    connectSignalFunPtr obj "popup-menu" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [popupMenu](#signal:popupMenu) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #popupMenu callback
-- @
-- 
-- 
afterStatusIconPopupMenu :: (IsStatusIcon a, MonadIO m) => a -> StatusIconPopupMenuCallback -> m SignalHandlerId
afterStatusIconPopupMenu obj cb = liftIO $ do
    let cb' = wrap_StatusIconPopupMenuCallback cb
    cb'' <- mk_StatusIconPopupMenuCallback cb'
    connectSignalFunPtr obj "popup-menu" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconPopupMenuSignalInfo
instance SignalInfo StatusIconPopupMenuSignalInfo where
    type HaskellCallbackType StatusIconPopupMenuSignalInfo = StatusIconPopupMenuCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconPopupMenuCallback cb
        cb'' <- mk_StatusIconPopupMenuCallback cb'
        connectSignalFunPtr obj "popup-menu" cb'' connectMode detail

#endif

-- signal StatusIcon::query-tooltip
-- | Emitted when the hover timeout has expired with the
-- cursor hovering above /@statusIcon@/; or emitted when /@statusIcon@/ got
-- focus in keyboard mode.
-- 
-- Using the given coordinates, the signal handler should determine
-- whether a tooltip should be shown for /@statusIcon@/. If this is
-- the case 'P.True' should be returned, 'P.False' otherwise. Note that if
-- /@keyboardMode@/ is 'P.True', the values of /@x@/ and /@y@/ are undefined and
-- should not be used.
-- 
-- The signal handler is free to manipulate /@tooltip@/ with the therefore
-- destined function calls.
-- 
-- Whether this signal is emitted is platform-dependent.
-- For plain text tooltips, use t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/tooltip-text/@ in preference.
-- 
-- /Since: 2.16/
type StatusIconQueryTooltipCallback =
    Int32
    -- ^ /@x@/: the x coordinate of the cursor position where the request has been
    --     emitted, relative to /@statusIcon@/
    -> Int32
    -- ^ /@y@/: the y coordinate of the cursor position where the request has been
    --     emitted, relative to /@statusIcon@/
    -> Bool
    -- ^ /@keyboardMode@/: 'P.True' if the tooltip was trigged using the keyboard
    -> Gtk.Tooltip.Tooltip
    -- ^ /@tooltip@/: a t'GI.Gtk.Objects.Tooltip.Tooltip'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if /@tooltip@/ should be shown right now, 'P.False' otherwise.

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconQueryTooltipCallback`@.
noStatusIconQueryTooltipCallback :: Maybe StatusIconQueryTooltipCallback
noStatusIconQueryTooltipCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconQueryTooltipCallback =
    Ptr () ->                               -- object
    Int32 ->
    Int32 ->
    CInt ->
    Ptr Gtk.Tooltip.Tooltip ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_StatusIconQueryTooltipCallback`.
foreign import ccall "wrapper"
    mk_StatusIconQueryTooltipCallback :: C_StatusIconQueryTooltipCallback -> IO (FunPtr C_StatusIconQueryTooltipCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconQueryTooltip :: MonadIO m => StatusIconQueryTooltipCallback -> m (GClosure C_StatusIconQueryTooltipCallback)
genClosure_StatusIconQueryTooltip cb = liftIO $ do
    let cb' = wrap_StatusIconQueryTooltipCallback cb
    mk_StatusIconQueryTooltipCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconQueryTooltipCallback` into a `C_StatusIconQueryTooltipCallback`.
wrap_StatusIconQueryTooltipCallback ::
    StatusIconQueryTooltipCallback ->
    C_StatusIconQueryTooltipCallback
wrap_StatusIconQueryTooltipCallback _cb _ x y keyboardMode tooltip _ = do
    let keyboardMode' = (/= 0) keyboardMode
    tooltip' <- (newObject Gtk.Tooltip.Tooltip) tooltip
    result <- _cb  x y keyboardMode' tooltip'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [queryTooltip](#signal:queryTooltip) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #queryTooltip callback
-- @
-- 
-- 
onStatusIconQueryTooltip :: (IsStatusIcon a, MonadIO m) => a -> StatusIconQueryTooltipCallback -> m SignalHandlerId
onStatusIconQueryTooltip obj cb = liftIO $ do
    let cb' = wrap_StatusIconQueryTooltipCallback cb
    cb'' <- mk_StatusIconQueryTooltipCallback cb'
    connectSignalFunPtr obj "query-tooltip" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [queryTooltip](#signal:queryTooltip) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #queryTooltip callback
-- @
-- 
-- 
afterStatusIconQueryTooltip :: (IsStatusIcon a, MonadIO m) => a -> StatusIconQueryTooltipCallback -> m SignalHandlerId
afterStatusIconQueryTooltip obj cb = liftIO $ do
    let cb' = wrap_StatusIconQueryTooltipCallback cb
    cb'' <- mk_StatusIconQueryTooltipCallback cb'
    connectSignalFunPtr obj "query-tooltip" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconQueryTooltipSignalInfo
instance SignalInfo StatusIconQueryTooltipSignalInfo where
    type HaskellCallbackType StatusIconQueryTooltipSignalInfo = StatusIconQueryTooltipCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconQueryTooltipCallback cb
        cb'' <- mk_StatusIconQueryTooltipCallback cb'
        connectSignalFunPtr obj "query-tooltip" cb'' connectMode detail

#endif

-- signal StatusIcon::scroll-event
-- | The [scrollEvent](#signal:scrollEvent) signal is emitted when a button in the 4 to 7
-- range is pressed. Wheel mice are usually configured to generate
-- button press events for buttons 4 and 5 when the wheel is turned.
-- 
-- Whether this event is emitted is platform-dependent.
-- 
-- /Since: 2.16/
type StatusIconScrollEventCallback =
    Gdk.EventScroll.EventScroll
    -- ^ /@event@/: the t'GI.Gdk.Structs.EventScroll.EventScroll' which triggered
    --                                 this signal
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconScrollEventCallback`@.
noStatusIconScrollEventCallback :: Maybe StatusIconScrollEventCallback
noStatusIconScrollEventCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconScrollEventCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventScroll.EventScroll ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_StatusIconScrollEventCallback`.
foreign import ccall "wrapper"
    mk_StatusIconScrollEventCallback :: C_StatusIconScrollEventCallback -> IO (FunPtr C_StatusIconScrollEventCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconScrollEvent :: MonadIO m => StatusIconScrollEventCallback -> m (GClosure C_StatusIconScrollEventCallback)
genClosure_StatusIconScrollEvent cb = liftIO $ do
    let cb' = wrap_StatusIconScrollEventCallback cb
    mk_StatusIconScrollEventCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconScrollEventCallback` into a `C_StatusIconScrollEventCallback`.
wrap_StatusIconScrollEventCallback ::
    StatusIconScrollEventCallback ->
    C_StatusIconScrollEventCallback
wrap_StatusIconScrollEventCallback _cb _ event _ = do
    event' <- (newPtr Gdk.EventScroll.EventScroll) event
    result <- _cb  event'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [scrollEvent](#signal:scrollEvent) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #scrollEvent callback
-- @
-- 
-- 
onStatusIconScrollEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconScrollEventCallback -> m SignalHandlerId
onStatusIconScrollEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconScrollEventCallback cb
    cb'' <- mk_StatusIconScrollEventCallback cb'
    connectSignalFunPtr obj "scroll-event" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scrollEvent](#signal:scrollEvent) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #scrollEvent callback
-- @
-- 
-- 
afterStatusIconScrollEvent :: (IsStatusIcon a, MonadIO m) => a -> StatusIconScrollEventCallback -> m SignalHandlerId
afterStatusIconScrollEvent obj cb = liftIO $ do
    let cb' = wrap_StatusIconScrollEventCallback cb
    cb'' <- mk_StatusIconScrollEventCallback cb'
    connectSignalFunPtr obj "scroll-event" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconScrollEventSignalInfo
instance SignalInfo StatusIconScrollEventSignalInfo where
    type HaskellCallbackType StatusIconScrollEventSignalInfo = StatusIconScrollEventCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconScrollEventCallback cb
        cb'' <- mk_StatusIconScrollEventCallback cb'
        connectSignalFunPtr obj "scroll-event" cb'' connectMode detail

#endif

-- signal StatusIcon::size-changed
-- | Gets emitted when the size available for the image
-- changes, e.g. because the notification area got resized.
-- 
-- /Since: 2.10/
type StatusIconSizeChangedCallback =
    Int32
    -- ^ /@size@/: the new size
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the icon was updated for the new
    -- size. Otherwise, GTK+ will scale the icon as necessary.

-- | A convenience synonym for @`Nothing` :: `Maybe` `StatusIconSizeChangedCallback`@.
noStatusIconSizeChangedCallback :: Maybe StatusIconSizeChangedCallback
noStatusIconSizeChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_StatusIconSizeChangedCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_StatusIconSizeChangedCallback`.
foreign import ccall "wrapper"
    mk_StatusIconSizeChangedCallback :: C_StatusIconSizeChangedCallback -> IO (FunPtr C_StatusIconSizeChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_StatusIconSizeChanged :: MonadIO m => StatusIconSizeChangedCallback -> m (GClosure C_StatusIconSizeChangedCallback)
genClosure_StatusIconSizeChanged cb = liftIO $ do
    let cb' = wrap_StatusIconSizeChangedCallback cb
    mk_StatusIconSizeChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `StatusIconSizeChangedCallback` into a `C_StatusIconSizeChangedCallback`.
wrap_StatusIconSizeChangedCallback ::
    StatusIconSizeChangedCallback ->
    C_StatusIconSizeChangedCallback
wrap_StatusIconSizeChangedCallback _cb _ size _ = do
    result <- _cb  size
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [sizeChanged](#signal:sizeChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' statusIcon #sizeChanged callback
-- @
-- 
-- 
onStatusIconSizeChanged :: (IsStatusIcon a, MonadIO m) => a -> StatusIconSizeChangedCallback -> m SignalHandlerId
onStatusIconSizeChanged obj cb = liftIO $ do
    let cb' = wrap_StatusIconSizeChangedCallback cb
    cb'' <- mk_StatusIconSizeChangedCallback cb'
    connectSignalFunPtr obj "size-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [sizeChanged](#signal:sizeChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' statusIcon #sizeChanged callback
-- @
-- 
-- 
afterStatusIconSizeChanged :: (IsStatusIcon a, MonadIO m) => a -> StatusIconSizeChangedCallback -> m SignalHandlerId
afterStatusIconSizeChanged obj cb = liftIO $ do
    let cb' = wrap_StatusIconSizeChangedCallback cb
    cb'' <- mk_StatusIconSizeChangedCallback cb'
    connectSignalFunPtr obj "size-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data StatusIconSizeChangedSignalInfo
instance SignalInfo StatusIconSizeChangedSignalInfo where
    type HaskellCallbackType StatusIconSizeChangedSignalInfo = StatusIconSizeChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_StatusIconSizeChangedCallback cb
        cb'' <- mk_StatusIconSizeChangedCallback cb'
        connectSignalFunPtr obj "size-changed" cb'' connectMode detail

#endif

-- VVV Prop "embedded"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@embedded@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #embedded
-- @
getStatusIconEmbedded :: (MonadIO m, IsStatusIcon o) => o -> m Bool
getStatusIconEmbedded obj = liftIO $ B.Properties.getObjectPropertyBool obj "embedded"

#if defined(ENABLE_OVERLOADING)
data StatusIconEmbeddedPropertyInfo
instance AttrInfo StatusIconEmbeddedPropertyInfo where
    type AttrAllowedOps StatusIconEmbeddedPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint StatusIconEmbeddedPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconEmbeddedPropertyInfo = (~) ()
    type AttrTransferTypeConstraint StatusIconEmbeddedPropertyInfo = (~) ()
    type AttrTransferType StatusIconEmbeddedPropertyInfo = ()
    type AttrGetType StatusIconEmbeddedPropertyInfo = Bool
    type AttrLabel StatusIconEmbeddedPropertyInfo = "embedded"
    type AttrOrigin StatusIconEmbeddedPropertyInfo = StatusIcon
    attrGet = getStatusIconEmbedded
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "file"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@file@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #file 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconFile :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconFile obj val = liftIO $ B.Properties.setObjectPropertyString obj "file" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@file@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconFile :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconFile val = B.Properties.constructObjectPropertyString "file" (Just val)

-- | Set the value of the “@file@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #file
-- @
clearStatusIconFile :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconFile obj = liftIO $ B.Properties.setObjectPropertyString obj "file" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data StatusIconFilePropertyInfo
instance AttrInfo StatusIconFilePropertyInfo where
    type AttrAllowedOps StatusIconFilePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconFilePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconFilePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconFilePropertyInfo = (~) T.Text
    type AttrTransferType StatusIconFilePropertyInfo = T.Text
    type AttrGetType StatusIconFilePropertyInfo = ()
    type AttrLabel StatusIconFilePropertyInfo = "file"
    type AttrOrigin StatusIconFilePropertyInfo = StatusIcon
    attrGet = undefined
    attrSet = setStatusIconFile
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconFile
    attrClear = clearStatusIconFile
#endif

-- VVV Prop "gicon"
   -- Type: TInterface (Name {namespace = "Gio", name = "Icon"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #gicon
-- @
getStatusIconGicon :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe Gio.Icon.Icon)
getStatusIconGicon obj = liftIO $ B.Properties.getObjectPropertyObject obj "gicon" Gio.Icon.Icon

-- | Set the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #gicon 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconGicon :: (MonadIO m, IsStatusIcon o, Gio.Icon.IsIcon a) => o -> a -> m ()
setStatusIconGicon obj val = liftIO $ B.Properties.setObjectPropertyObject obj "gicon" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@gicon@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconGicon :: (IsStatusIcon o, Gio.Icon.IsIcon a) => a -> IO (GValueConstruct o)
constructStatusIconGicon val = B.Properties.constructObjectPropertyObject "gicon" (Just val)

-- | Set the value of the “@gicon@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #gicon
-- @
clearStatusIconGicon :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconGicon obj = liftIO $ B.Properties.setObjectPropertyObject obj "gicon" (Nothing :: Maybe Gio.Icon.Icon)

#if defined(ENABLE_OVERLOADING)
data StatusIconGiconPropertyInfo
instance AttrInfo StatusIconGiconPropertyInfo where
    type AttrAllowedOps StatusIconGiconPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconGiconPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferTypeConstraint StatusIconGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferType StatusIconGiconPropertyInfo = Gio.Icon.Icon
    type AttrGetType StatusIconGiconPropertyInfo = (Maybe Gio.Icon.Icon)
    type AttrLabel StatusIconGiconPropertyInfo = "gicon"
    type AttrOrigin StatusIconGiconPropertyInfo = StatusIcon
    attrGet = getStatusIconGicon
    attrSet = setStatusIconGicon
    attrTransfer _ v = do
        unsafeCastTo Gio.Icon.Icon v
    attrConstruct = constructStatusIconGicon
    attrClear = clearStatusIconGicon
#endif

-- VVV Prop "has-tooltip"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@has-tooltip@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #hasTooltip
-- @
getStatusIconHasTooltip :: (MonadIO m, IsStatusIcon o) => o -> m Bool
getStatusIconHasTooltip obj = liftIO $ B.Properties.getObjectPropertyBool obj "has-tooltip"

-- | Set the value of the “@has-tooltip@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #hasTooltip 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconHasTooltip :: (MonadIO m, IsStatusIcon o) => o -> Bool -> m ()
setStatusIconHasTooltip obj val = liftIO $ B.Properties.setObjectPropertyBool obj "has-tooltip" val

-- | Construct a `GValueConstruct` with valid value for the “@has-tooltip@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconHasTooltip :: (IsStatusIcon o) => Bool -> IO (GValueConstruct o)
constructStatusIconHasTooltip val = B.Properties.constructObjectPropertyBool "has-tooltip" val

#if defined(ENABLE_OVERLOADING)
data StatusIconHasTooltipPropertyInfo
instance AttrInfo StatusIconHasTooltipPropertyInfo where
    type AttrAllowedOps StatusIconHasTooltipPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StatusIconHasTooltipPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconHasTooltipPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint StatusIconHasTooltipPropertyInfo = (~) Bool
    type AttrTransferType StatusIconHasTooltipPropertyInfo = Bool
    type AttrGetType StatusIconHasTooltipPropertyInfo = Bool
    type AttrLabel StatusIconHasTooltipPropertyInfo = "has-tooltip"
    type AttrOrigin StatusIconHasTooltipPropertyInfo = StatusIcon
    attrGet = getStatusIconHasTooltip
    attrSet = setStatusIconHasTooltip
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconHasTooltip
    attrClear = undefined
#endif

-- VVV Prop "icon-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #iconName
-- @
getStatusIconIconName :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe T.Text)
getStatusIconIconName obj = liftIO $ B.Properties.getObjectPropertyString obj "icon-name"

-- | Set the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #iconName 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconIconName :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconIconName obj val = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconIconName :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconIconName val = B.Properties.constructObjectPropertyString "icon-name" (Just val)

-- | Set the value of the “@icon-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #iconName
-- @
clearStatusIconIconName :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconIconName obj = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data StatusIconIconNamePropertyInfo
instance AttrInfo StatusIconIconNamePropertyInfo where
    type AttrAllowedOps StatusIconIconNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconIconNamePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconIconNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconIconNamePropertyInfo = (~) T.Text
    type AttrTransferType StatusIconIconNamePropertyInfo = T.Text
    type AttrGetType StatusIconIconNamePropertyInfo = (Maybe T.Text)
    type AttrLabel StatusIconIconNamePropertyInfo = "icon-name"
    type AttrOrigin StatusIconIconNamePropertyInfo = StatusIcon
    attrGet = getStatusIconIconName
    attrSet = setStatusIconIconName
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconIconName
    attrClear = clearStatusIconIconName
#endif

-- VVV Prop "orientation"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Orientation"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@orientation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #orientation
-- @
getStatusIconOrientation :: (MonadIO m, IsStatusIcon o) => o -> m Gtk.Enums.Orientation
getStatusIconOrientation obj = liftIO $ B.Properties.getObjectPropertyEnum obj "orientation"

#if defined(ENABLE_OVERLOADING)
data StatusIconOrientationPropertyInfo
instance AttrInfo StatusIconOrientationPropertyInfo where
    type AttrAllowedOps StatusIconOrientationPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint StatusIconOrientationPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconOrientationPropertyInfo = (~) ()
    type AttrTransferTypeConstraint StatusIconOrientationPropertyInfo = (~) ()
    type AttrTransferType StatusIconOrientationPropertyInfo = ()
    type AttrGetType StatusIconOrientationPropertyInfo = Gtk.Enums.Orientation
    type AttrLabel StatusIconOrientationPropertyInfo = "orientation"
    type AttrOrigin StatusIconOrientationPropertyInfo = StatusIcon
    attrGet = getStatusIconOrientation
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "pixbuf"
   -- Type: TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@pixbuf@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #pixbuf
-- @
getStatusIconPixbuf :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
getStatusIconPixbuf obj = liftIO $ B.Properties.getObjectPropertyObject obj "pixbuf" GdkPixbuf.Pixbuf.Pixbuf

-- | Set the value of the “@pixbuf@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #pixbuf 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconPixbuf :: (MonadIO m, IsStatusIcon o, GdkPixbuf.Pixbuf.IsPixbuf a) => o -> a -> m ()
setStatusIconPixbuf obj val = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@pixbuf@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconPixbuf :: (IsStatusIcon o, GdkPixbuf.Pixbuf.IsPixbuf a) => a -> IO (GValueConstruct o)
constructStatusIconPixbuf val = B.Properties.constructObjectPropertyObject "pixbuf" (Just val)

-- | Set the value of the “@pixbuf@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #pixbuf
-- @
clearStatusIconPixbuf :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconPixbuf obj = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf" (Nothing :: Maybe GdkPixbuf.Pixbuf.Pixbuf)

#if defined(ENABLE_OVERLOADING)
data StatusIconPixbufPropertyInfo
instance AttrInfo StatusIconPixbufPropertyInfo where
    type AttrAllowedOps StatusIconPixbufPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconPixbufPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconPixbufPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferTypeConstraint StatusIconPixbufPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferType StatusIconPixbufPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrGetType StatusIconPixbufPropertyInfo = (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    type AttrLabel StatusIconPixbufPropertyInfo = "pixbuf"
    type AttrOrigin StatusIconPixbufPropertyInfo = StatusIcon
    attrGet = getStatusIconPixbuf
    attrSet = setStatusIconPixbuf
    attrTransfer _ v = do
        unsafeCastTo GdkPixbuf.Pixbuf.Pixbuf v
    attrConstruct = constructStatusIconPixbuf
    attrClear = clearStatusIconPixbuf
#endif

-- VVV Prop "screen"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Screen"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #screen
-- @
getStatusIconScreen :: (MonadIO m, IsStatusIcon o) => o -> m Gdk.Screen.Screen
getStatusIconScreen obj = liftIO $ checkUnexpectedNothing "getStatusIconScreen" $ B.Properties.getObjectPropertyObject obj "screen" Gdk.Screen.Screen

-- | Set the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #screen 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconScreen :: (MonadIO m, IsStatusIcon o, Gdk.Screen.IsScreen a) => o -> a -> m ()
setStatusIconScreen obj val = liftIO $ B.Properties.setObjectPropertyObject obj "screen" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@screen@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconScreen :: (IsStatusIcon o, Gdk.Screen.IsScreen a) => a -> IO (GValueConstruct o)
constructStatusIconScreen val = B.Properties.constructObjectPropertyObject "screen" (Just val)

#if defined(ENABLE_OVERLOADING)
data StatusIconScreenPropertyInfo
instance AttrInfo StatusIconScreenPropertyInfo where
    type AttrAllowedOps StatusIconScreenPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StatusIconScreenPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferTypeConstraint StatusIconScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferType StatusIconScreenPropertyInfo = Gdk.Screen.Screen
    type AttrGetType StatusIconScreenPropertyInfo = Gdk.Screen.Screen
    type AttrLabel StatusIconScreenPropertyInfo = "screen"
    type AttrOrigin StatusIconScreenPropertyInfo = StatusIcon
    attrGet = getStatusIconScreen
    attrSet = setStatusIconScreen
    attrTransfer _ v = do
        unsafeCastTo Gdk.Screen.Screen v
    attrConstruct = constructStatusIconScreen
    attrClear = undefined
#endif

-- VVV Prop "size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #size
-- @
getStatusIconSize :: (MonadIO m, IsStatusIcon o) => o -> m Int32
getStatusIconSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "size"

#if defined(ENABLE_OVERLOADING)
data StatusIconSizePropertyInfo
instance AttrInfo StatusIconSizePropertyInfo where
    type AttrAllowedOps StatusIconSizePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint StatusIconSizePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconSizePropertyInfo = (~) ()
    type AttrTransferTypeConstraint StatusIconSizePropertyInfo = (~) ()
    type AttrTransferType StatusIconSizePropertyInfo = ()
    type AttrGetType StatusIconSizePropertyInfo = Int32
    type AttrLabel StatusIconSizePropertyInfo = "size"
    type AttrOrigin StatusIconSizePropertyInfo = StatusIcon
    attrGet = getStatusIconSize
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "stock"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@stock@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #stock
-- @
getStatusIconStock :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe T.Text)
getStatusIconStock obj = liftIO $ B.Properties.getObjectPropertyString obj "stock"

-- | Set the value of the “@stock@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #stock 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconStock :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconStock obj val = liftIO $ B.Properties.setObjectPropertyString obj "stock" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stock@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconStock :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconStock val = B.Properties.constructObjectPropertyString "stock" (Just val)

-- | Set the value of the “@stock@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #stock
-- @
clearStatusIconStock :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconStock obj = liftIO $ B.Properties.setObjectPropertyString obj "stock" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data StatusIconStockPropertyInfo
instance AttrInfo StatusIconStockPropertyInfo where
    type AttrAllowedOps StatusIconStockPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconStockPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconStockPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconStockPropertyInfo = (~) T.Text
    type AttrTransferType StatusIconStockPropertyInfo = T.Text
    type AttrGetType StatusIconStockPropertyInfo = (Maybe T.Text)
    type AttrLabel StatusIconStockPropertyInfo = "stock"
    type AttrOrigin StatusIconStockPropertyInfo = StatusIcon
    attrGet = getStatusIconStock
    attrSet = setStatusIconStock
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconStock
    attrClear = clearStatusIconStock
#endif

-- VVV Prop "storage-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ImageType"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@storage-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #storageType
-- @
getStatusIconStorageType :: (MonadIO m, IsStatusIcon o) => o -> m Gtk.Enums.ImageType
getStatusIconStorageType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "storage-type"

#if defined(ENABLE_OVERLOADING)
data StatusIconStorageTypePropertyInfo
instance AttrInfo StatusIconStorageTypePropertyInfo where
    type AttrAllowedOps StatusIconStorageTypePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint StatusIconStorageTypePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconStorageTypePropertyInfo = (~) ()
    type AttrTransferTypeConstraint StatusIconStorageTypePropertyInfo = (~) ()
    type AttrTransferType StatusIconStorageTypePropertyInfo = ()
    type AttrGetType StatusIconStorageTypePropertyInfo = Gtk.Enums.ImageType
    type AttrLabel StatusIconStorageTypePropertyInfo = "storage-type"
    type AttrOrigin StatusIconStorageTypePropertyInfo = StatusIcon
    attrGet = getStatusIconStorageType
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #title
-- @
getStatusIconTitle :: (MonadIO m, IsStatusIcon o) => o -> m T.Text
getStatusIconTitle obj = liftIO $ checkUnexpectedNothing "getStatusIconTitle" $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconTitle :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconTitle :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

#if defined(ENABLE_OVERLOADING)
data StatusIconTitlePropertyInfo
instance AttrInfo StatusIconTitlePropertyInfo where
    type AttrAllowedOps StatusIconTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StatusIconTitlePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconTitlePropertyInfo = (~) T.Text
    type AttrTransferType StatusIconTitlePropertyInfo = T.Text
    type AttrGetType StatusIconTitlePropertyInfo = T.Text
    type AttrLabel StatusIconTitlePropertyInfo = "title"
    type AttrOrigin StatusIconTitlePropertyInfo = StatusIcon
    attrGet = getStatusIconTitle
    attrSet = setStatusIconTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconTitle
    attrClear = undefined
#endif

-- VVV Prop "tooltip-markup"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just True)

-- | Get the value of the “@tooltip-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #tooltipMarkup
-- @
getStatusIconTooltipMarkup :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe T.Text)
getStatusIconTooltipMarkup obj = liftIO $ B.Properties.getObjectPropertyString obj "tooltip-markup"

-- | Set the value of the “@tooltip-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #tooltipMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconTooltipMarkup :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconTooltipMarkup obj val = liftIO $ B.Properties.setObjectPropertyString obj "tooltip-markup" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@tooltip-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconTooltipMarkup :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconTooltipMarkup val = B.Properties.constructObjectPropertyString "tooltip-markup" (Just val)

-- | Set the value of the “@tooltip-markup@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #tooltipMarkup
-- @
clearStatusIconTooltipMarkup :: (MonadIO m, IsStatusIcon o) => o -> m ()
clearStatusIconTooltipMarkup obj = liftIO $ B.Properties.setObjectPropertyString obj "tooltip-markup" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data StatusIconTooltipMarkupPropertyInfo
instance AttrInfo StatusIconTooltipMarkupPropertyInfo where
    type AttrAllowedOps StatusIconTooltipMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StatusIconTooltipMarkupPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconTooltipMarkupPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconTooltipMarkupPropertyInfo = (~) T.Text
    type AttrTransferType StatusIconTooltipMarkupPropertyInfo = T.Text
    type AttrGetType StatusIconTooltipMarkupPropertyInfo = (Maybe T.Text)
    type AttrLabel StatusIconTooltipMarkupPropertyInfo = "tooltip-markup"
    type AttrOrigin StatusIconTooltipMarkupPropertyInfo = StatusIcon
    attrGet = getStatusIconTooltipMarkup
    attrSet = setStatusIconTooltipMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconTooltipMarkup
    attrClear = clearStatusIconTooltipMarkup
#endif

-- VVV Prop "tooltip-text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@tooltip-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #tooltipText
-- @
getStatusIconTooltipText :: (MonadIO m, IsStatusIcon o) => o -> m (Maybe T.Text)
getStatusIconTooltipText obj = liftIO $ B.Properties.getObjectPropertyString obj "tooltip-text"

-- | Set the value of the “@tooltip-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #tooltipText 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconTooltipText :: (MonadIO m, IsStatusIcon o) => o -> T.Text -> m ()
setStatusIconTooltipText obj val = liftIO $ B.Properties.setObjectPropertyString obj "tooltip-text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@tooltip-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconTooltipText :: (IsStatusIcon o) => T.Text -> IO (GValueConstruct o)
constructStatusIconTooltipText val = B.Properties.constructObjectPropertyString "tooltip-text" (Just val)

#if defined(ENABLE_OVERLOADING)
data StatusIconTooltipTextPropertyInfo
instance AttrInfo StatusIconTooltipTextPropertyInfo where
    type AttrAllowedOps StatusIconTooltipTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StatusIconTooltipTextPropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconTooltipTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint StatusIconTooltipTextPropertyInfo = (~) T.Text
    type AttrTransferType StatusIconTooltipTextPropertyInfo = T.Text
    type AttrGetType StatusIconTooltipTextPropertyInfo = (Maybe T.Text)
    type AttrLabel StatusIconTooltipTextPropertyInfo = "tooltip-text"
    type AttrOrigin StatusIconTooltipTextPropertyInfo = StatusIcon
    attrGet = getStatusIconTooltipText
    attrSet = setStatusIconTooltipText
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconTooltipText
    attrClear = undefined
#endif

-- VVV Prop "visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' statusIcon #visible
-- @
getStatusIconVisible :: (MonadIO m, IsStatusIcon o) => o -> m Bool
getStatusIconVisible obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible"

-- | Set the value of the “@visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' statusIcon [ #visible 'Data.GI.Base.Attributes.:=' value ]
-- @
setStatusIconVisible :: (MonadIO m, IsStatusIcon o) => o -> Bool -> m ()
setStatusIconVisible obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible" val

-- | Construct a `GValueConstruct` with valid value for the “@visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStatusIconVisible :: (IsStatusIcon o) => Bool -> IO (GValueConstruct o)
constructStatusIconVisible val = B.Properties.constructObjectPropertyBool "visible" val

#if defined(ENABLE_OVERLOADING)
data StatusIconVisiblePropertyInfo
instance AttrInfo StatusIconVisiblePropertyInfo where
    type AttrAllowedOps StatusIconVisiblePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StatusIconVisiblePropertyInfo = IsStatusIcon
    type AttrSetTypeConstraint StatusIconVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint StatusIconVisiblePropertyInfo = (~) Bool
    type AttrTransferType StatusIconVisiblePropertyInfo = Bool
    type AttrGetType StatusIconVisiblePropertyInfo = Bool
    type AttrLabel StatusIconVisiblePropertyInfo = "visible"
    type AttrOrigin StatusIconVisiblePropertyInfo = StatusIcon
    attrGet = getStatusIconVisible
    attrSet = setStatusIconVisible
    attrTransfer _ v = do
        return v
    attrConstruct = constructStatusIconVisible
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StatusIcon
type instance O.AttributeList StatusIcon = StatusIconAttributeList
type StatusIconAttributeList = ('[ '("embedded", StatusIconEmbeddedPropertyInfo), '("file", StatusIconFilePropertyInfo), '("gicon", StatusIconGiconPropertyInfo), '("hasTooltip", StatusIconHasTooltipPropertyInfo), '("iconName", StatusIconIconNamePropertyInfo), '("orientation", StatusIconOrientationPropertyInfo), '("pixbuf", StatusIconPixbufPropertyInfo), '("screen", StatusIconScreenPropertyInfo), '("size", StatusIconSizePropertyInfo), '("stock", StatusIconStockPropertyInfo), '("storageType", StatusIconStorageTypePropertyInfo), '("title", StatusIconTitlePropertyInfo), '("tooltipMarkup", StatusIconTooltipMarkupPropertyInfo), '("tooltipText", StatusIconTooltipTextPropertyInfo), '("visible", StatusIconVisiblePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
statusIconEmbedded :: AttrLabelProxy "embedded"
statusIconEmbedded = AttrLabelProxy

statusIconFile :: AttrLabelProxy "file"
statusIconFile = AttrLabelProxy

statusIconGicon :: AttrLabelProxy "gicon"
statusIconGicon = AttrLabelProxy

statusIconHasTooltip :: AttrLabelProxy "hasTooltip"
statusIconHasTooltip = AttrLabelProxy

statusIconIconName :: AttrLabelProxy "iconName"
statusIconIconName = AttrLabelProxy

statusIconOrientation :: AttrLabelProxy "orientation"
statusIconOrientation = AttrLabelProxy

statusIconPixbuf :: AttrLabelProxy "pixbuf"
statusIconPixbuf = AttrLabelProxy

statusIconScreen :: AttrLabelProxy "screen"
statusIconScreen = AttrLabelProxy

statusIconSize :: AttrLabelProxy "size"
statusIconSize = AttrLabelProxy

statusIconStock :: AttrLabelProxy "stock"
statusIconStock = AttrLabelProxy

statusIconStorageType :: AttrLabelProxy "storageType"
statusIconStorageType = AttrLabelProxy

statusIconTitle :: AttrLabelProxy "title"
statusIconTitle = AttrLabelProxy

statusIconTooltipMarkup :: AttrLabelProxy "tooltipMarkup"
statusIconTooltipMarkup = AttrLabelProxy

statusIconTooltipText :: AttrLabelProxy "tooltipText"
statusIconTooltipText = AttrLabelProxy

statusIconVisible :: AttrLabelProxy "visible"
statusIconVisible = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StatusIcon = StatusIconSignalList
type StatusIconSignalList = ('[ '("activate", StatusIconActivateSignalInfo), '("buttonPressEvent", StatusIconButtonPressEventSignalInfo), '("buttonReleaseEvent", StatusIconButtonReleaseEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("popupMenu", StatusIconPopupMenuSignalInfo), '("queryTooltip", StatusIconQueryTooltipSignalInfo), '("scrollEvent", StatusIconScrollEventSignalInfo), '("sizeChanged", StatusIconSizeChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method StatusIcon::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new" gtk_status_icon_new :: 
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNew ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates an empty status icon object.
-- 
-- /Since: 2.10/
statusIconNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNew  = liftIO $ do
    result <- gtk_status_icon_new
    checkUnexpectedReturnNULL "statusIconNew" result
    result' <- (wrapObject StatusIcon) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::new_from_file
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "filename"
--           , argType = TBasicType TFileName
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a filename" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new_from_file" gtk_status_icon_new_from_file :: 
    CString ->                              -- filename : TBasicType TFileName
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNewFromFile ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates a status icon displaying the file /@filename@/.
-- 
-- The image will be scaled down to fit in the available
-- space in the notification area, if necessary.
-- 
-- /Since: 2.10/
statusIconNewFromFile ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    [Char]
    -- ^ /@filename@/: a filename
    -> m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNewFromFile filename = liftIO $ do
    filename' <- stringToCString filename
    result <- gtk_status_icon_new_from_file filename'
    checkUnexpectedReturnNULL "statusIconNewFromFile" result
    result' <- (wrapObject StatusIcon) result
    freeMem filename'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::new_from_gicon
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "icon"
--           , argType = TInterface Name { namespace = "Gio" , name = "Icon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new_from_gicon" gtk_status_icon_new_from_gicon :: 
    Ptr Gio.Icon.Icon ->                    -- icon : TInterface (Name {namespace = "Gio", name = "Icon"})
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNewFromGicon ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates a status icon displaying a t'GI.Gio.Interfaces.Icon.Icon'. If the icon is a
-- themed icon, it will be updated when the theme changes.
-- 
-- /Since: 2.14/
statusIconNewFromGicon ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.Icon.IsIcon a) =>
    a
    -- ^ /@icon@/: a t'GI.Gio.Interfaces.Icon.Icon'
    -> m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNewFromGicon icon = liftIO $ do
    icon' <- unsafeManagedPtrCastPtr icon
    result <- gtk_status_icon_new_from_gicon icon'
    checkUnexpectedReturnNULL "statusIconNewFromGicon" result
    result' <- (wrapObject StatusIcon) result
    touchManagedPtr icon
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::new_from_icon_name
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "icon_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an icon name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new_from_icon_name" gtk_status_icon_new_from_icon_name :: 
    CString ->                              -- icon_name : TBasicType TUTF8
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNewFromIconName ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates a status icon displaying an icon from the current icon theme.
-- If the current icon theme is changed, the icon will be updated
-- appropriately.
-- 
-- /Since: 2.10/
statusIconNewFromIconName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@iconName@/: an icon name
    -> m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNewFromIconName iconName = liftIO $ do
    iconName' <- textToCString iconName
    result <- gtk_status_icon_new_from_icon_name iconName'
    checkUnexpectedReturnNULL "statusIconNewFromIconName" result
    result' <- (wrapObject StatusIcon) result
    freeMem iconName'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::new_from_pixbuf
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkPixbuf" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new_from_pixbuf" gtk_status_icon_new_from_pixbuf :: 
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNewFromPixbuf ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates a status icon displaying /@pixbuf@/.
-- 
-- The image will be scaled down to fit in the available
-- space in the notification area, if necessary.
-- 
-- /Since: 2.10/
statusIconNewFromPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, GdkPixbuf.Pixbuf.IsPixbuf a) =>
    a
    -- ^ /@pixbuf@/: a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf'
    -> m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNewFromPixbuf pixbuf = liftIO $ do
    pixbuf' <- unsafeManagedPtrCastPtr pixbuf
    result <- gtk_status_icon_new_from_pixbuf pixbuf'
    checkUnexpectedReturnNULL "statusIconNewFromPixbuf" result
    result' <- (wrapObject StatusIcon) result
    touchManagedPtr pixbuf
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a stock icon id" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StatusIcon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_new_from_stock" gtk_status_icon_new_from_stock :: 
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr StatusIcon)

{-# DEPRECATED statusIconNewFromStock ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications"] #-}
-- | Creates a status icon displaying a stock icon. Sample stock icon
-- names are 'GI.Gtk.Constants.STOCK_OPEN', 'GI.Gtk.Constants.STOCK_QUIT'. You can register your
-- own stock icon names, see 'GI.Gtk.Objects.IconFactory.iconFactoryAddDefault' and
-- 'GI.Gtk.Objects.IconFactory.iconFactoryAdd'.
-- 
-- /Since: 2.10/
statusIconNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@stockId@/: a stock icon id
    -> m StatusIcon
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StatusIcon.StatusIcon'
statusIconNewFromStock stockId = liftIO $ do
    stockId' <- textToCString stockId
    result <- gtk_status_icon_new_from_stock stockId'
    checkUnexpectedReturnNULL "statusIconNewFromStock" result
    result' <- (wrapObject StatusIcon) result
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StatusIcon::get_geometry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "screen"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Screen" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "return location for\n         the screen, or %NULL if the information is not needed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "area"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "return location for the area occupied by\n       the status icon, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "return location for the\n   orientation of the panel in which the status icon is embedded,\n   or %NULL. A panel at the top or bottom of the screen is\n   horizontal, a panel at the left or right is vertical."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_geometry" gtk_status_icon_get_geometry :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    Ptr (Ptr Gdk.Screen.Screen) ->          -- screen : TInterface (Name {namespace = "Gdk", name = "Screen"})
    Ptr Gdk.Rectangle.Rectangle ->          -- area : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    Ptr CUInt ->                            -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO CInt

{-# DEPRECATED statusIconGetGeometry ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as the platform is responsible for the","  presentation of notifications"] #-}
-- | Obtains information about the location of the status icon
-- on screen. This information can be used to e.g. position
-- popups like notification bubbles.
-- 
-- See 'GI.Gtk.Objects.StatusIcon.statusIconPositionMenu' for a more convenient
-- alternative for positioning menus.
-- 
-- Note that some platforms do not allow GTK+ to provide
-- this information, and even on platforms that do allow it,
-- the information is not reliable unless the status icon
-- is embedded in a notification area, see
-- 'GI.Gtk.Objects.StatusIcon.statusIconIsEmbedded'.
-- 
-- /Since: 2.10/
statusIconGetGeometry ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m ((Bool, Gdk.Screen.Screen, Gdk.Rectangle.Rectangle, Gtk.Enums.Orientation))
    -- ^ __Returns:__ 'P.True' if the location information has
    --               been filled in
statusIconGetGeometry statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    screen <- allocMem :: IO (Ptr (Ptr Gdk.Screen.Screen))
    area <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    orientation <- allocMem :: IO (Ptr CUInt)
    result <- gtk_status_icon_get_geometry statusIcon' screen area orientation
    let result' = (/= 0) result
    screen' <- peek screen
    screen'' <- (newObject Gdk.Screen.Screen) screen'
    area' <- (wrapBoxed Gdk.Rectangle.Rectangle) area
    orientation' <- peek orientation
    let orientation'' = (toEnum . fromIntegral) orientation'
    touchManagedPtr statusIcon
    freeMem screen
    freeMem orientation
    return (result', screen'', area', orientation'')

#if defined(ENABLE_OVERLOADING)
data StatusIconGetGeometryMethodInfo
instance (signature ~ (m ((Bool, Gdk.Screen.Screen, Gdk.Rectangle.Rectangle, Gtk.Enums.Orientation))), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetGeometryMethodInfo a signature where
    overloadedMethod = statusIconGetGeometry

#endif

-- method StatusIcon::get_gicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "Icon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_gicon" gtk_status_icon_get_gicon :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO (Ptr Gio.Icon.Icon)

{-# DEPRECATED statusIconGetGicon ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Retrieves the t'GI.Gio.Interfaces.Icon.Icon' being displayed by the t'GI.Gtk.Objects.StatusIcon.StatusIcon'.
-- The storage type of the status icon must be 'GI.Gtk.Enums.ImageTypeEmpty' or
-- 'GI.Gtk.Enums.ImageTypeGicon' (see 'GI.Gtk.Objects.StatusIcon.statusIconGetStorageType').
-- The caller of this function does not own a reference to the
-- returned t'GI.Gio.Interfaces.Icon.Icon'.
-- 
-- If this function fails, /@icon@/ is left unchanged;
-- 
-- /Since: 2.14/
statusIconGetGicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe Gio.Icon.Icon)
    -- ^ __Returns:__ the displayed icon, or 'P.Nothing' if the image is empty
statusIconGetGicon statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_gicon statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gio.Icon.Icon) result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetGiconMethodInfo
instance (signature ~ (m (Maybe Gio.Icon.Icon)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetGiconMethodInfo a signature where
    overloadedMethod = statusIconGetGicon

#endif

-- method StatusIcon::get_has_tooltip
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_has_tooltip" gtk_status_icon_get_has_tooltip :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CInt

{-# DEPRECATED statusIconGetHasTooltip ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Returns the current value of the has-tooltip property.
-- See t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ for more information.
-- 
-- /Since: 2.16/
statusIconGetHasTooltip ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Bool
    -- ^ __Returns:__ current value of has-tooltip on /@statusIcon@/.
statusIconGetHasTooltip statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_has_tooltip statusIcon'
    let result' = (/= 0) result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconGetHasTooltipMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetHasTooltipMethodInfo a signature where
    overloadedMethod = statusIconGetHasTooltip

#endif

-- method StatusIcon::get_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_icon_name" gtk_status_icon_get_icon_name :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CString

{-# DEPRECATED statusIconGetIconName ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Gets the name of the icon being displayed by the t'GI.Gtk.Objects.StatusIcon.StatusIcon'.
-- The storage type of the status icon must be 'GI.Gtk.Enums.ImageTypeEmpty' or
-- 'GI.Gtk.Enums.ImageTypeIconName' (see 'GI.Gtk.Objects.StatusIcon.statusIconGetStorageType').
-- The returned string is owned by the t'GI.Gtk.Objects.StatusIcon.StatusIcon' and should not
-- be freed or modified.
-- 
-- /Since: 2.10/
statusIconGetIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ name of the displayed icon, or 'P.Nothing' if the image is empty.
statusIconGetIconName statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_icon_name statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetIconNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetIconNameMethodInfo a signature where
    overloadedMethod = statusIconGetIconName

#endif

-- method StatusIcon::get_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_pixbuf" gtk_status_icon_get_pixbuf :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED statusIconGetPixbuf ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Gets the t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' being displayed by the t'GI.Gtk.Objects.StatusIcon.StatusIcon'.
-- The storage type of the status icon must be 'GI.Gtk.Enums.ImageTypeEmpty' or
-- 'GI.Gtk.Enums.ImageTypePixbuf' (see 'GI.Gtk.Objects.StatusIcon.statusIconGetStorageType').
-- The caller of this function does not own a reference to the
-- returned pixbuf.
-- 
-- /Since: 2.10/
statusIconGetPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    -- ^ __Returns:__ the displayed pixbuf,
    --     or 'P.Nothing' if the image is empty.
statusIconGetPixbuf statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_pixbuf statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject GdkPixbuf.Pixbuf.Pixbuf) result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetPixbufMethodInfo
instance (signature ~ (m (Maybe GdkPixbuf.Pixbuf.Pixbuf)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetPixbufMethodInfo a signature where
    overloadedMethod = statusIconGetPixbuf

#endif

-- method StatusIcon::get_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Screen" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_screen" gtk_status_icon_get_screen :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO (Ptr Gdk.Screen.Screen)

{-# DEPRECATED statusIconGetScreen ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as notifications are managed by the platform"] #-}
-- | Returns the t'GI.Gdk.Objects.Screen.Screen' associated with /@statusIcon@/.
-- 
-- /Since: 2.12/
statusIconGetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Gdk.Screen.Screen
    -- ^ __Returns:__ a t'GI.Gdk.Objects.Screen.Screen'.
statusIconGetScreen statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_screen statusIcon'
    checkUnexpectedReturnNULL "statusIconGetScreen" result
    result' <- (newObject Gdk.Screen.Screen) result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconGetScreenMethodInfo
instance (signature ~ (m Gdk.Screen.Screen), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetScreenMethodInfo a signature where
    overloadedMethod = statusIconGetScreen

#endif

-- method StatusIcon::get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_size" gtk_status_icon_get_size :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO Int32

{-# DEPRECATED statusIconGetSize ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as the representation of a notification","  is left to the platform"] #-}
-- | Gets the size in pixels that is available for the image.
-- Stock icons and named icons adapt their size automatically
-- if the size of the notification area changes. For other
-- storage types, the size-changed signal can be used to
-- react to size changes.
-- 
-- Note that the returned size is only meaningful while the
-- status icon is embedded (see 'GI.Gtk.Objects.StatusIcon.statusIconIsEmbedded').
-- 
-- /Since: 2.10/
statusIconGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Int32
    -- ^ __Returns:__ the size that is available for the image
statusIconGetSize statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_size statusIcon'
    touchManagedPtr statusIcon
    return result

#if defined(ENABLE_OVERLOADING)
data StatusIconGetSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetSizeMethodInfo a signature where
    overloadedMethod = statusIconGetSize

#endif

-- method StatusIcon::get_stock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_stock" gtk_status_icon_get_stock :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CString

{-# DEPRECATED statusIconGetStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.StatusIcon.statusIconGetIconName' instead."] #-}
-- | Gets the id of the stock icon being displayed by the t'GI.Gtk.Objects.StatusIcon.StatusIcon'.
-- The storage type of the status icon must be 'GI.Gtk.Enums.ImageTypeEmpty' or
-- 'GI.Gtk.Enums.ImageTypeStock' (see 'GI.Gtk.Objects.StatusIcon.statusIconGetStorageType').
-- The returned string is owned by the t'GI.Gtk.Objects.StatusIcon.StatusIcon' and should not
-- be freed or modified.
-- 
-- /Since: 2.10/
statusIconGetStock ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ stock id of the displayed stock icon,
    --   or 'P.Nothing' if the image is empty.
statusIconGetStock statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_stock statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetStockMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetStockMethodInfo a signature where
    overloadedMethod = statusIconGetStock

#endif

-- method StatusIcon::get_storage_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ImageType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_storage_type" gtk_status_icon_get_storage_type :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CUInt

{-# DEPRECATED statusIconGetStorageType ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, and t'GI.Gio.Objects.Notification.Notification' only supports t'GI.Gio.Interfaces.Icon.Icon'","  instances"] #-}
-- | Gets the type of representation being used by the t'GI.Gtk.Objects.StatusIcon.StatusIcon'
-- to store image data. If the t'GI.Gtk.Objects.StatusIcon.StatusIcon' has no image data,
-- the return value will be 'GI.Gtk.Enums.ImageTypeEmpty'.
-- 
-- /Since: 2.10/
statusIconGetStorageType ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Gtk.Enums.ImageType
    -- ^ __Returns:__ the image representation being used
statusIconGetStorageType statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_storage_type statusIcon'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconGetStorageTypeMethodInfo
instance (signature ~ (m Gtk.Enums.ImageType), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetStorageTypeMethodInfo a signature where
    overloadedMethod = statusIconGetStorageType

#endif

-- method StatusIcon::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_title" gtk_status_icon_get_title :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CString

{-# DEPRECATED statusIconGetTitle ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Gets the title of this tray icon. See 'GI.Gtk.Objects.StatusIcon.statusIconSetTitle'.
-- 
-- /Since: 2.18/
statusIconGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m T.Text
    -- ^ __Returns:__ the title of the status icon
statusIconGetTitle statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_title statusIcon'
    checkUnexpectedReturnNULL "statusIconGetTitle" result
    result' <- cstringToText result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetTitleMethodInfo a signature where
    overloadedMethod = statusIconGetTitle

#endif

-- method StatusIcon::get_tooltip_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_tooltip_markup" gtk_status_icon_get_tooltip_markup :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CString

{-# DEPRECATED statusIconGetTooltipMarkup ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Gets the contents of the tooltip for /@statusIcon@/.
-- 
-- /Since: 2.16/
statusIconGetTooltipMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the tooltip text, or 'P.Nothing'. You should free the
    --   returned string with 'GI.GLib.Functions.free' when done.
statusIconGetTooltipMarkup statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_tooltip_markup statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetTooltipMarkupMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetTooltipMarkupMethodInfo a signature where
    overloadedMethod = statusIconGetTooltipMarkup

#endif

-- method StatusIcon::get_tooltip_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_tooltip_text" gtk_status_icon_get_tooltip_text :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CString

{-# DEPRECATED statusIconGetTooltipText ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Gets the contents of the tooltip for /@statusIcon@/.
-- 
-- /Since: 2.16/
statusIconGetTooltipText ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the tooltip text, or 'P.Nothing'. You should free the
    --   returned string with 'GI.GLib.Functions.free' when done.
statusIconGetTooltipText statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_tooltip_text statusIcon'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr statusIcon
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StatusIconGetTooltipTextMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetTooltipTextMethodInfo a signature where
    overloadedMethod = statusIconGetTooltipText

#endif

-- method StatusIcon::get_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_get_visible" gtk_status_icon_get_visible :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CInt

{-# DEPRECATED statusIconGetVisible ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Returns whether the status icon is visible or not.
-- Note that being visible does not guarantee that
-- the user can actually see the icon, see also
-- 'GI.Gtk.Objects.StatusIcon.statusIconIsEmbedded'.
-- 
-- /Since: 2.10/
statusIconGetVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the status icon is visible
statusIconGetVisible statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_visible statusIcon'
    let result' = (/= 0) result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconGetVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetVisibleMethodInfo a signature where
    overloadedMethod = statusIconGetVisible

#endif

-- method StatusIcon::get_x11_window_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_status_icon_get_x11_window_id" gtk_status_icon_get_x11_window_id :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO Word32

{-# DEPRECATED statusIconGetX11WindowId ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | This function is only useful on the X11\/freedesktop.org platform.
-- 
-- It returns a window ID for the widget in the underlying
-- status icon implementation.  This is useful for the Galago
-- notification service, which can send a window ID in the protocol
-- in order for the server to position notification windows
-- pointing to a status icon reliably.
-- 
-- This function is not intended for other use cases which are
-- more likely to be met by one of the non-X11 specific methods, such
-- as 'GI.Gtk.Objects.StatusIcon.statusIconPositionMenu'.
-- 
-- /Since: 2.14/
statusIconGetX11WindowId ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Word32
    -- ^ __Returns:__ An 32 bit unsigned integer identifier for the
    -- underlying X11 Window
statusIconGetX11WindowId statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_get_x11_window_id statusIcon'
    touchManagedPtr statusIcon
    return result

#if defined(ENABLE_OVERLOADING)
data StatusIconGetX11WindowIdMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconGetX11WindowIdMethodInfo a signature where
    overloadedMethod = statusIconGetX11WindowId

#endif

-- method StatusIcon::is_embedded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_is_embedded" gtk_status_icon_is_embedded :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO CInt

{-# DEPRECATED statusIconIsEmbedded ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Returns whether the status icon is embedded in a notification
-- area.
-- 
-- /Since: 2.10/
statusIconIsEmbedded ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the status icon is embedded in
    --   a notification area.
statusIconIsEmbedded statusIcon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    result <- gtk_status_icon_is_embedded statusIcon'
    let result' = (/= 0) result
    touchManagedPtr statusIcon
    return result'

#if defined(ENABLE_OVERLOADING)
data StatusIconIsEmbeddedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconIsEmbeddedMethodInfo a signature where
    overloadedMethod = statusIconIsEmbedded

#endif

-- method StatusIcon::set_from_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "filename"
--           , argType = TBasicType TFileName
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a filename" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_from_file" gtk_status_icon_set_from_file :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- filename : TBasicType TFileName
    IO ()

{-# DEPRECATED statusIconSetFromFile ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; you can use 'GI.Gio.Objects.Notification.notificationSetIcon'","  to associate a t'GI.Gio.Interfaces.Icon.Icon' with a notification"] #-}
-- | Makes /@statusIcon@/ display the file /@filename@/.
-- See 'GI.Gtk.Objects.StatusIcon.statusIconNewFromFile' for details.
-- 
-- /Since: 2.10/
statusIconSetFromFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> [Char]
    -- ^ /@filename@/: a filename
    -> m ()
statusIconSetFromFile statusIcon filename = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    filename' <- stringToCString filename
    gtk_status_icon_set_from_file statusIcon' filename'
    touchManagedPtr statusIcon
    freeMem filename'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetFromFileMethodInfo
instance (signature ~ ([Char] -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetFromFileMethodInfo a signature where
    overloadedMethod = statusIconSetFromFile

#endif

-- method StatusIcon::set_from_gicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon"
--           , argType = TInterface Name { namespace = "Gio" , name = "Icon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a GIcon" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_from_gicon" gtk_status_icon_set_from_gicon :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    Ptr Gio.Icon.Icon ->                    -- icon : TInterface (Name {namespace = "Gio", name = "Icon"})
    IO ()

{-# DEPRECATED statusIconSetFromGicon ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; you can use 'GI.Gio.Objects.Notification.notificationSetIcon'","  to associate a t'GI.Gio.Interfaces.Icon.Icon' with a notification"] #-}
-- | Makes /@statusIcon@/ display the t'GI.Gio.Interfaces.Icon.Icon'.
-- See 'GI.Gtk.Objects.StatusIcon.statusIconNewFromGicon' for details.
-- 
-- /Since: 2.14/
statusIconSetFromGicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a, Gio.Icon.IsIcon b) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> b
    -- ^ /@icon@/: a GIcon
    -> m ()
statusIconSetFromGicon statusIcon icon = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    icon' <- unsafeManagedPtrCastPtr icon
    gtk_status_icon_set_from_gicon statusIcon' icon'
    touchManagedPtr statusIcon
    touchManagedPtr icon
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetFromGiconMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsStatusIcon a, Gio.Icon.IsIcon b) => O.MethodInfo StatusIconSetFromGiconMethodInfo a signature where
    overloadedMethod = statusIconSetFromGicon

#endif

-- method StatusIcon::set_from_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an icon name" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_from_icon_name" gtk_status_icon_set_from_icon_name :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- icon_name : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetFromIconName ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; you can use 'GI.Gio.Objects.Notification.notificationSetIcon'","  to associate a t'GI.Gio.Interfaces.Icon.Icon' with a notification"] #-}
-- | Makes /@statusIcon@/ display the icon named /@iconName@/ from the
-- current icon theme.
-- See 'GI.Gtk.Objects.StatusIcon.statusIconNewFromIconName' for details.
-- 
-- /Since: 2.10/
statusIconSetFromIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> T.Text
    -- ^ /@iconName@/: an icon name
    -> m ()
statusIconSetFromIconName statusIcon iconName = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    iconName' <- textToCString iconName
    gtk_status_icon_set_from_icon_name statusIcon' iconName'
    touchManagedPtr statusIcon
    freeMem iconName'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetFromIconNameMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetFromIconNameMethodInfo a signature where
    overloadedMethod = statusIconSetFromIconName

#endif

-- method StatusIcon::set_from_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkPixbuf or %NULL"
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

foreign import ccall "gtk_status_icon_set_from_pixbuf" gtk_status_icon_set_from_pixbuf :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

{-# DEPRECATED statusIconSetFromPixbuf ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; you can use 'GI.Gio.Objects.Notification.notificationSetIcon'","  to associate a t'GI.Gio.Interfaces.Icon.Icon' with a notification"] #-}
-- | Makes /@statusIcon@/ display /@pixbuf@/.
-- See 'GI.Gtk.Objects.StatusIcon.statusIconNewFromPixbuf' for details.
-- 
-- /Since: 2.10/
statusIconSetFromPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a, GdkPixbuf.Pixbuf.IsPixbuf b) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> Maybe (b)
    -- ^ /@pixbuf@/: a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' or 'P.Nothing'
    -> m ()
statusIconSetFromPixbuf statusIcon pixbuf = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    maybePixbuf <- case pixbuf of
        Nothing -> return nullPtr
        Just jPixbuf -> do
            jPixbuf' <- unsafeManagedPtrCastPtr jPixbuf
            return jPixbuf'
    gtk_status_icon_set_from_pixbuf statusIcon' maybePixbuf
    touchManagedPtr statusIcon
    whenJust pixbuf touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetFromPixbufMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsStatusIcon a, GdkPixbuf.Pixbuf.IsPixbuf b) => O.MethodInfo StatusIconSetFromPixbufMethodInfo a signature where
    overloadedMethod = statusIconSetFromPixbuf

#endif

-- method StatusIcon::set_from_stock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a stock icon id" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_from_stock" gtk_status_icon_set_from_stock :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- stock_id : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.StatusIcon.statusIconSetFromIconName' instead."] #-}
-- | Makes /@statusIcon@/ display the stock icon with the id /@stockId@/.
-- See 'GI.Gtk.Objects.StatusIcon.statusIconNewFromStock' for details.
-- 
-- /Since: 2.10/
statusIconSetFromStock ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> T.Text
    -- ^ /@stockId@/: a stock icon id
    -> m ()
statusIconSetFromStock statusIcon stockId = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    stockId' <- textToCString stockId
    gtk_status_icon_set_from_stock statusIcon' stockId'
    touchManagedPtr statusIcon
    freeMem stockId'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetFromStockMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetFromStockMethodInfo a signature where
    overloadedMethod = statusIconSetFromStock

#endif

-- method StatusIcon::set_has_tooltip
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "has_tooltip"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether or not @status_icon has a tooltip"
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

foreign import ccall "gtk_status_icon_set_has_tooltip" gtk_status_icon_set_has_tooltip :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CInt ->                                 -- has_tooltip : TBasicType TBoolean
    IO ()

{-# DEPRECATED statusIconSetHasTooltip ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, but notifications can display an arbitrary","  amount of text using 'GI.Gio.Objects.Notification.notificationSetBody'"] #-}
-- | Sets the has-tooltip property on /@statusIcon@/ to /@hasTooltip@/.
-- See t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ for more information.
-- 
-- /Since: 2.16/
statusIconSetHasTooltip ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> Bool
    -- ^ /@hasTooltip@/: whether or not /@statusIcon@/ has a tooltip
    -> m ()
statusIconSetHasTooltip statusIcon hasTooltip = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    let hasTooltip' = (fromIntegral . fromEnum) hasTooltip
    gtk_status_icon_set_has_tooltip statusIcon' hasTooltip'
    touchManagedPtr statusIcon
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetHasTooltipMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetHasTooltipMethodInfo a signature where
    overloadedMethod = statusIconSetHasTooltip

#endif

-- method StatusIcon::set_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_name" gtk_status_icon_set_name :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- name : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetName ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as notifications are associated with a","  unique application identifier by t'GI.Gio.Objects.Application.Application'"] #-}
-- | Sets the name of this tray icon.
-- This should be a string identifying this icon. It is may be
-- used for sorting the icons in the tray and will not be shown to
-- the user.
-- 
-- /Since: 2.20/
statusIconSetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> T.Text
    -- ^ /@name@/: the name
    -> m ()
statusIconSetName statusIcon name = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    name' <- textToCString name
    gtk_status_icon_set_name statusIcon' name'
    touchManagedPtr statusIcon
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetNameMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetNameMethodInfo a signature where
    overloadedMethod = statusIconSetName

#endif

-- method StatusIcon::set_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "screen"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Screen" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkScreen" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_screen" gtk_status_icon_set_screen :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    Ptr Gdk.Screen.Screen ->                -- screen : TInterface (Name {namespace = "Gdk", name = "Screen"})
    IO ()

{-# DEPRECATED statusIconSetScreen ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as GTK typically only has one t'GI.Gdk.Objects.Screen.Screen'","  and notifications are managed by the platform"] #-}
-- | Sets the t'GI.Gdk.Objects.Screen.Screen' where /@statusIcon@/ is displayed; if
-- the icon is already mapped, it will be unmapped, and
-- then remapped on the new screen.
-- 
-- /Since: 2.12/
statusIconSetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a, Gdk.Screen.IsScreen b) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> b
    -- ^ /@screen@/: a t'GI.Gdk.Objects.Screen.Screen'
    -> m ()
statusIconSetScreen statusIcon screen = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    screen' <- unsafeManagedPtrCastPtr screen
    gtk_status_icon_set_screen statusIcon' screen'
    touchManagedPtr statusIcon
    touchManagedPtr screen
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetScreenMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsStatusIcon a, Gdk.Screen.IsScreen b) => O.MethodInfo StatusIconSetScreenMethodInfo a signature where
    overloadedMethod = statusIconSetScreen

#endif

-- method StatusIcon::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the title" , sinceVersion = Nothing }
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

foreign import ccall "gtk_status_icon_set_title" gtk_status_icon_set_title :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetTitle ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; you should use 'GI.Gio.Objects.Notification.notificationSetTitle'","  and 'GI.Gio.Objects.Notification.notificationSetBody' to present text inside your notification"] #-}
-- | Sets the title of this tray icon.
-- This should be a short, human-readable, localized string
-- describing the tray icon. It may be used by tools like screen
-- readers to render the tray icon.
-- 
-- /Since: 2.18/
statusIconSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> T.Text
    -- ^ /@title@/: the title
    -> m ()
statusIconSetTitle statusIcon title = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    title' <- textToCString title
    gtk_status_icon_set_title statusIcon' title'
    touchManagedPtr statusIcon
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetTitleMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetTitleMethodInfo a signature where
    overloadedMethod = statusIconSetTitle

#endif

-- method StatusIcon::set_tooltip_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "markup"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the contents of the tooltip for @status_icon, or %NULL"
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

foreign import ccall "gtk_status_icon_set_tooltip_markup" gtk_status_icon_set_tooltip_markup :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- markup : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetTooltipMarkup ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Sets /@markup@/ as the contents of the tooltip, which is marked up with
--  the [Pango text markup language][PangoMarkupFormat].
-- 
-- This function will take care of setting t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ to 'P.True'
-- and of the default handler for the [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip") signal.
-- 
-- See also the t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/tooltip-markup/@ property and
-- 'GI.Gtk.Objects.Tooltip.tooltipSetMarkup'.
-- 
-- /Since: 2.16/
statusIconSetTooltipMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> Maybe (T.Text)
    -- ^ /@markup@/: the contents of the tooltip for /@statusIcon@/, or 'P.Nothing'
    -> m ()
statusIconSetTooltipMarkup statusIcon markup = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    maybeMarkup <- case markup of
        Nothing -> return nullPtr
        Just jMarkup -> do
            jMarkup' <- textToCString jMarkup
            return jMarkup'
    gtk_status_icon_set_tooltip_markup statusIcon' maybeMarkup
    touchManagedPtr statusIcon
    freeMem maybeMarkup
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetTooltipMarkupMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetTooltipMarkupMethodInfo a signature where
    overloadedMethod = statusIconSetTooltipMarkup

#endif

-- method StatusIcon::set_tooltip_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the contents of the tooltip for @status_icon"
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

foreign import ccall "gtk_status_icon_set_tooltip_text" gtk_status_icon_set_tooltip_text :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

{-# DEPRECATED statusIconSetTooltipText ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function"] #-}
-- | Sets /@text@/ as the contents of the tooltip.
-- 
-- This function will take care of setting t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/has-tooltip/@ to
-- 'P.True' and of the default handler for the [queryTooltip]("GI.Gtk.Objects.StatusIcon#signal:queryTooltip")
-- signal.
-- 
-- See also the t'GI.Gtk.Objects.StatusIcon.StatusIcon':@/tooltip-text/@ property and
-- 'GI.Gtk.Objects.Tooltip.tooltipSetText'.
-- 
-- /Since: 2.16/
statusIconSetTooltipText ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> T.Text
    -- ^ /@text@/: the contents of the tooltip for /@statusIcon@/
    -> m ()
statusIconSetTooltipText statusIcon text = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    text' <- textToCString text
    gtk_status_icon_set_tooltip_text statusIcon' text'
    touchManagedPtr statusIcon
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetTooltipTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetTooltipTextMethodInfo a signature where
    overloadedMethod = statusIconSetTooltipText

#endif

-- method StatusIcon::set_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "status_icon"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStatusIcon" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "%TRUE to show the status icon, %FALSE to hide it"
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

foreign import ccall "gtk_status_icon_set_visible" gtk_status_icon_set_visible :: 
    Ptr StatusIcon ->                       -- status_icon : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    CInt ->                                 -- visible : TBasicType TBoolean
    IO ()

{-# DEPRECATED statusIconSetVisible ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; there is no direct replacement","  for this function, as notifications are managed by the platform"] #-}
-- | Shows or hides a status icon.
-- 
-- /Since: 2.10/
statusIconSetVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsStatusIcon a) =>
    a
    -- ^ /@statusIcon@/: a t'GI.Gtk.Objects.StatusIcon.StatusIcon'
    -> Bool
    -- ^ /@visible@/: 'P.True' to show the status icon, 'P.False' to hide it
    -> m ()
statusIconSetVisible statusIcon visible = liftIO $ do
    statusIcon' <- unsafeManagedPtrCastPtr statusIcon
    let visible' = (fromIntegral . fromEnum) visible
    gtk_status_icon_set_visible statusIcon' visible'
    touchManagedPtr statusIcon
    return ()

#if defined(ENABLE_OVERLOADING)
data StatusIconSetVisibleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsStatusIcon a) => O.MethodInfo StatusIconSetVisibleMethodInfo a signature where
    overloadedMethod = statusIconSetVisible

#endif

-- method StatusIcon::position_menu
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "menu"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Menu" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkMenu" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionInout
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the x position"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionInout
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the y position"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "push_in"
--           , argType = TBasicType TBoolean
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether the first menu item should be offset\n          (pushed in) to be aligned with the menu popup position\n          (only useful for GtkOptionMenu)."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StatusIcon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the status icon to position the menu on"
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

foreign import ccall "gtk_status_icon_position_menu" gtk_status_icon_position_menu :: 
    Ptr Gtk.Menu.Menu ->                    -- menu : TInterface (Name {namespace = "Gtk", name = "Menu"})
    Ptr Int32 ->                            -- x : TBasicType TInt
    Ptr Int32 ->                            -- y : TBasicType TInt
    Ptr CInt ->                             -- push_in : TBasicType TBoolean
    Ptr StatusIcon ->                       -- user_data : TInterface (Name {namespace = "Gtk", name = "StatusIcon"})
    IO ()

{-# DEPRECATED statusIconPositionMenu ["(Since version 3.14)","Use t'GI.Gio.Objects.Notification.Notification' and t'GI.Gtk.Objects.Application.Application' to","  provide status notifications; notifications do not have menus,","  but can have buttons, and actions associated with each button"] #-}
-- | Menu positioning function to use with 'GI.Gtk.Objects.Menu.menuPopup'
-- to position /@menu@/ aligned to the status icon /@userData@/.
-- 
-- /Since: 2.10/
statusIconPositionMenu ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Menu.IsMenu a, IsStatusIcon b) =>
    a
    -- ^ /@menu@/: the t'GI.Gtk.Objects.Menu.Menu'
    -> Int32
    -- ^ /@x@/: return location for the x position
    -> Int32
    -- ^ /@y@/: return location for the y position
    -> b
    -- ^ /@userData@/: the status icon to position the menu on
    -> m ((Int32, Int32, Bool))
statusIconPositionMenu menu x y userData = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    x' <- allocMem :: IO (Ptr Int32)
    poke x' x
    y' <- allocMem :: IO (Ptr Int32)
    poke y' y
    pushIn <- allocMem :: IO (Ptr CInt)
    userData' <- unsafeManagedPtrCastPtr userData
    gtk_status_icon_position_menu menu' x' y' pushIn userData'
    x'' <- peek x'
    y'' <- peek y'
    pushIn' <- peek pushIn
    let pushIn'' = (/= 0) pushIn'
    touchManagedPtr menu
    touchManagedPtr userData
    freeMem x'
    freeMem y'
    freeMem pushIn
    return (x'', y'', pushIn'')

#if defined(ENABLE_OVERLOADING)
#endif

