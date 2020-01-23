{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The GtkAboutDialog offers a simple way to display information about
-- a program like its logo, name, copyright, website and license. It is
-- also possible to give credits to the authors, documenters, translators
-- and artists who have worked on the program. An about dialog is typically
-- opened when the user selects the @About@ option from the @Help@ menu.
-- All parts of the dialog are optional.
-- 
-- About dialogs often contain links and email addresses. GtkAboutDialog
-- displays these as clickable links. By default, it calls 'GI.Gtk.Functions.showUriOnWindow'
-- when a user clicks one. The behaviour can be overridden with the
-- [activateLink]("GI.Gtk.Objects.AboutDialog#signal:activateLink") signal.
-- 
-- To specify a person with an email address, use a string like
-- \"Edgar Allan Poe \<edgar\@poe.com>\". To specify a website with a title,
-- use a string like \"GTK+ team http:\/\/www.gtk.org\".
-- 
-- To make constructing a GtkAboutDialog as convenient as possible, you can
-- use the function @/gtk_show_about_dialog()/@ which constructs and shows a dialog
-- and keeps it around so that it can be shown again.
-- 
-- Note that GTK+ sets a default title of @_(\"About %s\")@ on the dialog
-- window (where %s is replaced by the name of the application, but in
-- order to ensure proper translation of the title, applications should
-- set the title property explicitly when constructing a GtkAboutDialog,
-- as shown in the following example:
-- 
-- === /C code/
-- >
-- >GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
-- >gtk_show_about_dialog (NULL,
-- >                       "program-name", "ExampleCode",
-- >                       "logo", example_logo,
-- >                       "title", _("About ExampleCode"),
-- >                       NULL);
-- 
-- 
-- It is also possible to show a t'GI.Gtk.Objects.AboutDialog.AboutDialog' like any other t'GI.Gtk.Objects.Dialog.Dialog',
-- e.g. using 'GI.Gtk.Objects.Dialog.dialogRun'. In this case, you might need to know that
-- the “Close” button returns the @/GTK_RESPONSE_CANCEL/@ response id.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.AboutDialog
    ( 

-- * Exported types
    AboutDialog(..)                         ,
    IsAboutDialog                           ,
    toAboutDialog                           ,
    noAboutDialog                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAboutDialogMethod                ,
#endif


-- ** addCreditSection #method:addCreditSection#

#if defined(ENABLE_OVERLOADING)
    AboutDialogAddCreditSectionMethodInfo   ,
#endif
    aboutDialogAddCreditSection             ,


-- ** getArtists #method:getArtists#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetArtistsMethodInfo         ,
#endif
    aboutDialogGetArtists                   ,


-- ** getAuthors #method:getAuthors#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetAuthorsMethodInfo         ,
#endif
    aboutDialogGetAuthors                   ,


-- ** getComments #method:getComments#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetCommentsMethodInfo        ,
#endif
    aboutDialogGetComments                  ,


-- ** getCopyright #method:getCopyright#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetCopyrightMethodInfo       ,
#endif
    aboutDialogGetCopyright                 ,


-- ** getDocumenters #method:getDocumenters#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetDocumentersMethodInfo     ,
#endif
    aboutDialogGetDocumenters               ,


-- ** getLicense #method:getLicense#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetLicenseMethodInfo         ,
#endif
    aboutDialogGetLicense                   ,


-- ** getLicenseType #method:getLicenseType#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetLicenseTypeMethodInfo     ,
#endif
    aboutDialogGetLicenseType               ,


-- ** getLogo #method:getLogo#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetLogoMethodInfo            ,
#endif
    aboutDialogGetLogo                      ,


-- ** getLogoIconName #method:getLogoIconName#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetLogoIconNameMethodInfo    ,
#endif
    aboutDialogGetLogoIconName              ,


-- ** getProgramName #method:getProgramName#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetProgramNameMethodInfo     ,
#endif
    aboutDialogGetProgramName               ,


-- ** getTranslatorCredits #method:getTranslatorCredits#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetTranslatorCreditsMethodInfo,
#endif
    aboutDialogGetTranslatorCredits         ,


-- ** getVersion #method:getVersion#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetVersionMethodInfo         ,
#endif
    aboutDialogGetVersion                   ,


-- ** getWebsite #method:getWebsite#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetWebsiteMethodInfo         ,
#endif
    aboutDialogGetWebsite                   ,


-- ** getWebsiteLabel #method:getWebsiteLabel#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetWebsiteLabelMethodInfo    ,
#endif
    aboutDialogGetWebsiteLabel              ,


-- ** getWrapLicense #method:getWrapLicense#

#if defined(ENABLE_OVERLOADING)
    AboutDialogGetWrapLicenseMethodInfo     ,
#endif
    aboutDialogGetWrapLicense               ,


-- ** new #method:new#

    aboutDialogNew                          ,


-- ** setArtists #method:setArtists#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetArtistsMethodInfo         ,
#endif
    aboutDialogSetArtists                   ,


-- ** setAuthors #method:setAuthors#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetAuthorsMethodInfo         ,
#endif
    aboutDialogSetAuthors                   ,


-- ** setComments #method:setComments#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetCommentsMethodInfo        ,
#endif
    aboutDialogSetComments                  ,


-- ** setCopyright #method:setCopyright#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetCopyrightMethodInfo       ,
#endif
    aboutDialogSetCopyright                 ,


-- ** setDocumenters #method:setDocumenters#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetDocumentersMethodInfo     ,
#endif
    aboutDialogSetDocumenters               ,


-- ** setLicense #method:setLicense#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetLicenseMethodInfo         ,
#endif
    aboutDialogSetLicense                   ,


-- ** setLicenseType #method:setLicenseType#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetLicenseTypeMethodInfo     ,
#endif
    aboutDialogSetLicenseType               ,


-- ** setLogo #method:setLogo#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetLogoMethodInfo            ,
#endif
    aboutDialogSetLogo                      ,


-- ** setLogoIconName #method:setLogoIconName#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetLogoIconNameMethodInfo    ,
#endif
    aboutDialogSetLogoIconName              ,


-- ** setProgramName #method:setProgramName#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetProgramNameMethodInfo     ,
#endif
    aboutDialogSetProgramName               ,


-- ** setTranslatorCredits #method:setTranslatorCredits#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetTranslatorCreditsMethodInfo,
#endif
    aboutDialogSetTranslatorCredits         ,


-- ** setVersion #method:setVersion#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetVersionMethodInfo         ,
#endif
    aboutDialogSetVersion                   ,


-- ** setWebsite #method:setWebsite#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetWebsiteMethodInfo         ,
#endif
    aboutDialogSetWebsite                   ,


-- ** setWebsiteLabel #method:setWebsiteLabel#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetWebsiteLabelMethodInfo    ,
#endif
    aboutDialogSetWebsiteLabel              ,


-- ** setWrapLicense #method:setWrapLicense#

#if defined(ENABLE_OVERLOADING)
    AboutDialogSetWrapLicenseMethodInfo     ,
#endif
    aboutDialogSetWrapLicense               ,




 -- * Properties
-- ** artists #attr:artists#
-- | The people who contributed artwork to the program, as a 'P.Nothing'-terminated
-- array of strings. Each string may contain email addresses and URLs, which
-- will be displayed as links, see the introduction for more details.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogArtistsPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogArtists                      ,
#endif
    constructAboutDialogArtists             ,
    getAboutDialogArtists                   ,
    setAboutDialogArtists                   ,


-- ** authors #attr:authors#
-- | The authors of the program, as a 'P.Nothing'-terminated array of strings.
-- Each string may contain email addresses and URLs, which will be displayed
-- as links, see the introduction for more details.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogAuthorsPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogAuthors                      ,
#endif
    constructAboutDialogAuthors             ,
    getAboutDialogAuthors                   ,
    setAboutDialogAuthors                   ,


-- ** comments #attr:comments#
-- | Comments about the program. This string is displayed in a label
-- in the main dialog, thus it should be a short explanation of
-- the main purpose of the program, not a detailed list of features.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogCommentsPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogComments                     ,
#endif
    clearAboutDialogComments                ,
    constructAboutDialogComments            ,
    getAboutDialogComments                  ,
    setAboutDialogComments                  ,


-- ** copyright #attr:copyright#
-- | Copyright information for the program.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogCopyrightPropertyInfo        ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogCopyright                    ,
#endif
    clearAboutDialogCopyright               ,
    constructAboutDialogCopyright           ,
    getAboutDialogCopyright                 ,
    setAboutDialogCopyright                 ,


-- ** documenters #attr:documenters#
-- | The people documenting the program, as a 'P.Nothing'-terminated array of strings.
-- Each string may contain email addresses and URLs, which will be displayed
-- as links, see the introduction for more details.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogDocumentersPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogDocumenters                  ,
#endif
    constructAboutDialogDocumenters         ,
    getAboutDialogDocumenters               ,
    setAboutDialogDocumenters               ,


-- ** license #attr:license#
-- | The license of the program. This string is displayed in a
-- text view in a secondary dialog, therefore it is fine to use
-- a long multi-paragraph text. Note that the text is only wrapped
-- in the text view if the \"wrap-license\" property is set to 'P.True';
-- otherwise the text itself must contain the intended linebreaks.
-- When setting this property to a non-'P.Nothing' value, the
-- t'GI.Gtk.Objects.AboutDialog.AboutDialog':@/license-type/@ property is set to 'GI.Gtk.Enums.LicenseCustom'
-- as a side effect.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogLicensePropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogLicense                      ,
#endif
    clearAboutDialogLicense                 ,
    constructAboutDialogLicense             ,
    getAboutDialogLicense                   ,
    setAboutDialogLicense                   ,


-- ** licenseType #attr:licenseType#
-- | The license of the program, as a value of the @/GtkLicense/@ enumeration.
-- 
-- The t'GI.Gtk.Objects.AboutDialog.AboutDialog' will automatically fill out a standard disclaimer
-- and link the user to the appropriate online resource for the license
-- text.
-- 
-- If 'GI.Gtk.Enums.LicenseUnknown' is used, the link used will be the same
-- specified in the t'GI.Gtk.Objects.AboutDialog.AboutDialog':@/website/@ property.
-- 
-- If 'GI.Gtk.Enums.LicenseCustom' is used, the current contents of the
-- t'GI.Gtk.Objects.AboutDialog.AboutDialog':@/license/@ property are used.
-- 
-- For any other t'GI.Gtk.Enums.License' value, the contents of the
-- t'GI.Gtk.Objects.AboutDialog.AboutDialog':@/license/@ property are also set by this property as
-- a side effect.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    AboutDialogLicenseTypePropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogLicenseType                  ,
#endif
    constructAboutDialogLicenseType         ,
    getAboutDialogLicenseType               ,
    setAboutDialogLicenseType               ,


-- ** logo #attr:logo#
-- | A logo for the about box. If it is 'P.Nothing', the default window icon
-- set with 'GI.Gtk.Objects.Window.windowSetDefaultIcon' will be used.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogLogoPropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogLogo                         ,
#endif
    clearAboutDialogLogo                    ,
    constructAboutDialogLogo                ,
    getAboutDialogLogo                      ,
    setAboutDialogLogo                      ,


-- ** logoIconName #attr:logoIconName#
-- | A named icon to use as the logo for the about box. This property
-- overrides the t'GI.Gtk.Objects.AboutDialog.AboutDialog':@/logo/@ property.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogLogoIconNamePropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogLogoIconName                 ,
#endif
    clearAboutDialogLogoIconName            ,
    constructAboutDialogLogoIconName        ,
    getAboutDialogLogoIconName              ,
    setAboutDialogLogoIconName              ,


-- ** programName #attr:programName#
-- | The name of the program.
-- If this is not set, it defaults to 'GI.GLib.Functions.getApplicationName'.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    AboutDialogProgramNamePropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogProgramName                  ,
#endif
    constructAboutDialogProgramName         ,
    getAboutDialogProgramName               ,
    setAboutDialogProgramName               ,


-- ** translatorCredits #attr:translatorCredits#
-- | Credits to the translators. This string should be marked as translatable.
-- The string may contain email addresses and URLs, which will be displayed
-- as links, see the introduction for more details.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogTranslatorCreditsPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogTranslatorCredits            ,
#endif
    clearAboutDialogTranslatorCredits       ,
    constructAboutDialogTranslatorCredits   ,
    getAboutDialogTranslatorCredits         ,
    setAboutDialogTranslatorCredits         ,


-- ** version #attr:version#
-- | The version of the program.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogVersionPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogVersion                      ,
#endif
    clearAboutDialogVersion                 ,
    constructAboutDialogVersion             ,
    getAboutDialogVersion                   ,
    setAboutDialogVersion                   ,


-- ** website #attr:website#
-- | The URL for the link to the website of the program.
-- This should be a string starting with \"http:\/\/.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogWebsitePropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogWebsite                      ,
#endif
    clearAboutDialogWebsite                 ,
    constructAboutDialogWebsite             ,
    getAboutDialogWebsite                   ,
    setAboutDialogWebsite                   ,


-- ** websiteLabel #attr:websiteLabel#
-- | The label for the link to the website of the program.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    AboutDialogWebsiteLabelPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogWebsiteLabel                 ,
#endif
    constructAboutDialogWebsiteLabel        ,
    getAboutDialogWebsiteLabel              ,
    setAboutDialogWebsiteLabel              ,


-- ** wrapLicense #attr:wrapLicense#
-- | Whether to wrap the text in the license dialog.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    AboutDialogWrapLicensePropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    aboutDialogWrapLicense                  ,
#endif
    constructAboutDialogWrapLicense         ,
    getAboutDialogWrapLicense               ,
    setAboutDialogWrapLicense               ,




 -- * Signals
-- ** activateLink #signal:activateLink#

    AboutDialogActivateLinkCallback         ,
#if defined(ENABLE_OVERLOADING)
    AboutDialogActivateLinkSignalInfo       ,
#endif
    C_AboutDialogActivateLinkCallback       ,
    afterAboutDialogActivateLink            ,
    genClosure_AboutDialogActivateLink      ,
    mk_AboutDialogActivateLinkCallback      ,
    noAboutDialogActivateLinkCallback       ,
    onAboutDialogActivateLink               ,
    wrap_AboutDialogActivateLinkCallback    ,




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
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype AboutDialog = AboutDialog (ManagedPtr AboutDialog)
    deriving (Eq)
foreign import ccall "gtk_about_dialog_get_type"
    c_gtk_about_dialog_get_type :: IO GType

instance GObject AboutDialog where
    gobjectType = c_gtk_about_dialog_get_type
    

-- | Convert 'AboutDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue AboutDialog where
    toGValue o = do
        gtype <- c_gtk_about_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr AboutDialog)
        B.ManagedPtr.newObject AboutDialog ptr
        
    

-- | Type class for types which can be safely cast to `AboutDialog`, for instance with `toAboutDialog`.
class (GObject o, O.IsDescendantOf AboutDialog o) => IsAboutDialog o
instance (GObject o, O.IsDescendantOf AboutDialog o) => IsAboutDialog o

instance O.HasParentTypes AboutDialog
type instance O.ParentTypes AboutDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `AboutDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAboutDialog :: (MonadIO m, IsAboutDialog o) => o -> m AboutDialog
toAboutDialog = liftIO . unsafeCastTo AboutDialog

-- | A convenience alias for `Nothing` :: `Maybe` `AboutDialog`.
noAboutDialog :: Maybe AboutDialog
noAboutDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAboutDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveAboutDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveAboutDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveAboutDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveAboutDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveAboutDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveAboutDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveAboutDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveAboutDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveAboutDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveAboutDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveAboutDialogMethod "addCreditSection" o = AboutDialogAddCreditSectionMethodInfo
    ResolveAboutDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveAboutDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveAboutDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveAboutDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveAboutDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveAboutDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveAboutDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveAboutDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAboutDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAboutDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveAboutDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveAboutDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveAboutDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveAboutDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveAboutDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveAboutDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveAboutDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveAboutDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveAboutDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveAboutDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveAboutDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveAboutDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveAboutDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveAboutDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveAboutDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveAboutDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveAboutDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveAboutDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveAboutDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveAboutDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveAboutDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveAboutDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveAboutDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveAboutDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveAboutDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveAboutDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveAboutDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveAboutDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveAboutDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveAboutDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveAboutDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveAboutDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveAboutDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveAboutDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveAboutDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveAboutDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveAboutDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveAboutDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveAboutDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveAboutDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveAboutDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveAboutDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveAboutDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveAboutDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveAboutDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveAboutDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveAboutDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveAboutDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveAboutDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveAboutDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveAboutDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveAboutDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveAboutDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveAboutDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAboutDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveAboutDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveAboutDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAboutDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveAboutDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveAboutDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAboutDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveAboutDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveAboutDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveAboutDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveAboutDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveAboutDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveAboutDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveAboutDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveAboutDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveAboutDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveAboutDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveAboutDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveAboutDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveAboutDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveAboutDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveAboutDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveAboutDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveAboutDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveAboutDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveAboutDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveAboutDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveAboutDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveAboutDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveAboutDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveAboutDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAboutDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveAboutDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveAboutDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveAboutDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveAboutDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveAboutDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveAboutDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveAboutDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveAboutDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveAboutDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveAboutDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveAboutDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveAboutDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveAboutDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveAboutDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveAboutDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveAboutDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveAboutDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveAboutDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveAboutDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveAboutDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAboutDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAboutDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveAboutDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveAboutDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveAboutDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveAboutDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveAboutDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveAboutDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveAboutDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveAboutDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveAboutDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveAboutDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveAboutDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveAboutDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveAboutDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveAboutDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveAboutDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveAboutDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveAboutDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveAboutDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveAboutDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveAboutDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAboutDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAboutDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveAboutDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveAboutDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveAboutDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveAboutDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveAboutDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveAboutDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveAboutDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveAboutDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveAboutDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveAboutDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveAboutDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveAboutDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveAboutDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveAboutDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveAboutDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveAboutDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveAboutDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveAboutDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveAboutDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveAboutDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAboutDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveAboutDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveAboutDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveAboutDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveAboutDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveAboutDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveAboutDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveAboutDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveAboutDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveAboutDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAboutDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAboutDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveAboutDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveAboutDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveAboutDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveAboutDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAboutDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveAboutDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveAboutDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveAboutDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveAboutDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveAboutDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveAboutDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveAboutDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAboutDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveAboutDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveAboutDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveAboutDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveAboutDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAboutDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveAboutDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveAboutDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveAboutDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveAboutDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveAboutDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveAboutDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveAboutDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveAboutDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveAboutDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveAboutDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveAboutDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveAboutDialogMethod "getArtists" o = AboutDialogGetArtistsMethodInfo
    ResolveAboutDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveAboutDialogMethod "getAuthors" o = AboutDialogGetAuthorsMethodInfo
    ResolveAboutDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveAboutDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveAboutDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveAboutDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveAboutDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveAboutDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveAboutDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveAboutDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveAboutDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveAboutDialogMethod "getComments" o = AboutDialogGetCommentsMethodInfo
    ResolveAboutDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveAboutDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveAboutDialogMethod "getCopyright" o = AboutDialogGetCopyrightMethodInfo
    ResolveAboutDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAboutDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveAboutDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveAboutDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveAboutDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveAboutDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveAboutDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveAboutDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveAboutDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveAboutDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveAboutDialogMethod "getDocumenters" o = AboutDialogGetDocumentersMethodInfo
    ResolveAboutDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveAboutDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveAboutDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveAboutDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveAboutDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveAboutDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveAboutDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveAboutDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveAboutDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveAboutDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveAboutDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveAboutDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveAboutDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveAboutDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveAboutDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveAboutDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveAboutDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveAboutDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveAboutDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveAboutDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveAboutDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveAboutDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveAboutDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveAboutDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveAboutDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveAboutDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveAboutDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveAboutDialogMethod "getLicense" o = AboutDialogGetLicenseMethodInfo
    ResolveAboutDialogMethod "getLicenseType" o = AboutDialogGetLicenseTypeMethodInfo
    ResolveAboutDialogMethod "getLogo" o = AboutDialogGetLogoMethodInfo
    ResolveAboutDialogMethod "getLogoIconName" o = AboutDialogGetLogoIconNameMethodInfo
    ResolveAboutDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveAboutDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveAboutDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveAboutDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveAboutDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveAboutDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveAboutDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveAboutDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveAboutDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveAboutDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveAboutDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveAboutDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveAboutDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveAboutDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveAboutDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveAboutDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveAboutDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveAboutDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveAboutDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveAboutDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveAboutDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveAboutDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveAboutDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveAboutDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveAboutDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveAboutDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveAboutDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveAboutDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveAboutDialogMethod "getProgramName" o = AboutDialogGetProgramNameMethodInfo
    ResolveAboutDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAboutDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAboutDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveAboutDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveAboutDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveAboutDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveAboutDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveAboutDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveAboutDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveAboutDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveAboutDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveAboutDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveAboutDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveAboutDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveAboutDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveAboutDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveAboutDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveAboutDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveAboutDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveAboutDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveAboutDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveAboutDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveAboutDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveAboutDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveAboutDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveAboutDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveAboutDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveAboutDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveAboutDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveAboutDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveAboutDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveAboutDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveAboutDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveAboutDialogMethod "getTranslatorCredits" o = AboutDialogGetTranslatorCreditsMethodInfo
    ResolveAboutDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveAboutDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveAboutDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveAboutDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveAboutDialogMethod "getVersion" o = AboutDialogGetVersionMethodInfo
    ResolveAboutDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveAboutDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveAboutDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveAboutDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveAboutDialogMethod "getWebsite" o = AboutDialogGetWebsiteMethodInfo
    ResolveAboutDialogMethod "getWebsiteLabel" o = AboutDialogGetWebsiteLabelMethodInfo
    ResolveAboutDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveAboutDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveAboutDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveAboutDialogMethod "getWrapLicense" o = AboutDialogGetWrapLicenseMethodInfo
    ResolveAboutDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveAboutDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveAboutDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveAboutDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveAboutDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveAboutDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveAboutDialogMethod "setArtists" o = AboutDialogSetArtistsMethodInfo
    ResolveAboutDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveAboutDialogMethod "setAuthors" o = AboutDialogSetAuthorsMethodInfo
    ResolveAboutDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveAboutDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveAboutDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveAboutDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveAboutDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveAboutDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveAboutDialogMethod "setComments" o = AboutDialogSetCommentsMethodInfo
    ResolveAboutDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveAboutDialogMethod "setCopyright" o = AboutDialogSetCopyrightMethodInfo
    ResolveAboutDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAboutDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAboutDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveAboutDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveAboutDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveAboutDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveAboutDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveAboutDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveAboutDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveAboutDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveAboutDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveAboutDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveAboutDialogMethod "setDocumenters" o = AboutDialogSetDocumentersMethodInfo
    ResolveAboutDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveAboutDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveAboutDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveAboutDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveAboutDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveAboutDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveAboutDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveAboutDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveAboutDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveAboutDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveAboutDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveAboutDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveAboutDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveAboutDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveAboutDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveAboutDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveAboutDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveAboutDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveAboutDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveAboutDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveAboutDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveAboutDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveAboutDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveAboutDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveAboutDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveAboutDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveAboutDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveAboutDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveAboutDialogMethod "setLicense" o = AboutDialogSetLicenseMethodInfo
    ResolveAboutDialogMethod "setLicenseType" o = AboutDialogSetLicenseTypeMethodInfo
    ResolveAboutDialogMethod "setLogo" o = AboutDialogSetLogoMethodInfo
    ResolveAboutDialogMethod "setLogoIconName" o = AboutDialogSetLogoIconNameMethodInfo
    ResolveAboutDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveAboutDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveAboutDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveAboutDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveAboutDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveAboutDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveAboutDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveAboutDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveAboutDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveAboutDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveAboutDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveAboutDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveAboutDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveAboutDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveAboutDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveAboutDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveAboutDialogMethod "setProgramName" o = AboutDialogSetProgramNameMethodInfo
    ResolveAboutDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAboutDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveAboutDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveAboutDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveAboutDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveAboutDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveAboutDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveAboutDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveAboutDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveAboutDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveAboutDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveAboutDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveAboutDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveAboutDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveAboutDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveAboutDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveAboutDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveAboutDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveAboutDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveAboutDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveAboutDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveAboutDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveAboutDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveAboutDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveAboutDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveAboutDialogMethod "setTranslatorCredits" o = AboutDialogSetTranslatorCreditsMethodInfo
    ResolveAboutDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveAboutDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveAboutDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveAboutDialogMethod "setVersion" o = AboutDialogSetVersionMethodInfo
    ResolveAboutDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveAboutDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveAboutDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveAboutDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveAboutDialogMethod "setWebsite" o = AboutDialogSetWebsiteMethodInfo
    ResolveAboutDialogMethod "setWebsiteLabel" o = AboutDialogSetWebsiteLabelMethodInfo
    ResolveAboutDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveAboutDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveAboutDialogMethod "setWrapLicense" o = AboutDialogSetWrapLicenseMethodInfo
    ResolveAboutDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAboutDialogMethod t AboutDialog, O.MethodInfo info AboutDialog p) => OL.IsLabel t (AboutDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal AboutDialog::activate-link
-- | The signal which gets emitted to activate a URI.
-- Applications may connect to it to override the default behaviour,
-- which is to call 'GI.Gtk.Functions.showUriOnWindow'.
-- 
-- /Since: 2.24/
type AboutDialogActivateLinkCallback =
    T.Text
    -- ^ /@uri@/: the URI that is activated
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the link has been activated

-- | A convenience synonym for @`Nothing` :: `Maybe` `AboutDialogActivateLinkCallback`@.
noAboutDialogActivateLinkCallback :: Maybe AboutDialogActivateLinkCallback
noAboutDialogActivateLinkCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AboutDialogActivateLinkCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_AboutDialogActivateLinkCallback`.
foreign import ccall "wrapper"
    mk_AboutDialogActivateLinkCallback :: C_AboutDialogActivateLinkCallback -> IO (FunPtr C_AboutDialogActivateLinkCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AboutDialogActivateLink :: MonadIO m => AboutDialogActivateLinkCallback -> m (GClosure C_AboutDialogActivateLinkCallback)
genClosure_AboutDialogActivateLink cb = liftIO $ do
    let cb' = wrap_AboutDialogActivateLinkCallback cb
    mk_AboutDialogActivateLinkCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AboutDialogActivateLinkCallback` into a `C_AboutDialogActivateLinkCallback`.
wrap_AboutDialogActivateLinkCallback ::
    AboutDialogActivateLinkCallback ->
    C_AboutDialogActivateLinkCallback
wrap_AboutDialogActivateLinkCallback _cb _ uri _ = do
    uri' <- cstringToText uri
    result <- _cb  uri'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [activateLink](#signal:activateLink) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' aboutDialog #activateLink callback
-- @
-- 
-- 
onAboutDialogActivateLink :: (IsAboutDialog a, MonadIO m) => a -> AboutDialogActivateLinkCallback -> m SignalHandlerId
onAboutDialogActivateLink obj cb = liftIO $ do
    let cb' = wrap_AboutDialogActivateLinkCallback cb
    cb'' <- mk_AboutDialogActivateLinkCallback cb'
    connectSignalFunPtr obj "activate-link" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activateLink](#signal:activateLink) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' aboutDialog #activateLink callback
-- @
-- 
-- 
afterAboutDialogActivateLink :: (IsAboutDialog a, MonadIO m) => a -> AboutDialogActivateLinkCallback -> m SignalHandlerId
afterAboutDialogActivateLink obj cb = liftIO $ do
    let cb' = wrap_AboutDialogActivateLinkCallback cb
    cb'' <- mk_AboutDialogActivateLinkCallback cb'
    connectSignalFunPtr obj "activate-link" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AboutDialogActivateLinkSignalInfo
instance SignalInfo AboutDialogActivateLinkSignalInfo where
    type HaskellCallbackType AboutDialogActivateLinkSignalInfo = AboutDialogActivateLinkCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AboutDialogActivateLinkCallback cb
        cb'' <- mk_AboutDialogActivateLinkCallback cb'
        connectSignalFunPtr obj "activate-link" cb'' connectMode detail

#endif

-- VVV Prop "artists"
   -- Type: TCArray True (-1) (-1) (TBasicType TUTF8)
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@artists@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #artists
-- @
getAboutDialogArtists :: (MonadIO m, IsAboutDialog o) => o -> m [T.Text]
getAboutDialogArtists obj = liftIO $ checkUnexpectedNothing "getAboutDialogArtists" $ B.Properties.getObjectPropertyStringArray obj "artists"

-- | Set the value of the “@artists@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #artists 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogArtists :: (MonadIO m, IsAboutDialog o) => o -> [T.Text] -> m ()
setAboutDialogArtists obj val = liftIO $ B.Properties.setObjectPropertyStringArray obj "artists" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@artists@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogArtists :: (IsAboutDialog o) => [T.Text] -> IO (GValueConstruct o)
constructAboutDialogArtists val = B.Properties.constructObjectPropertyStringArray "artists" (Just val)

#if defined(ENABLE_OVERLOADING)
data AboutDialogArtistsPropertyInfo
instance AttrInfo AboutDialogArtistsPropertyInfo where
    type AttrAllowedOps AboutDialogArtistsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogArtistsPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogArtistsPropertyInfo = (~) [T.Text]
    type AttrTransferTypeConstraint AboutDialogArtistsPropertyInfo = (~) [T.Text]
    type AttrTransferType AboutDialogArtistsPropertyInfo = [T.Text]
    type AttrGetType AboutDialogArtistsPropertyInfo = [T.Text]
    type AttrLabel AboutDialogArtistsPropertyInfo = "artists"
    type AttrOrigin AboutDialogArtistsPropertyInfo = AboutDialog
    attrGet = getAboutDialogArtists
    attrSet = setAboutDialogArtists
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogArtists
    attrClear = undefined
#endif

-- VVV Prop "authors"
   -- Type: TCArray True (-1) (-1) (TBasicType TUTF8)
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@authors@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #authors
-- @
getAboutDialogAuthors :: (MonadIO m, IsAboutDialog o) => o -> m [T.Text]
getAboutDialogAuthors obj = liftIO $ checkUnexpectedNothing "getAboutDialogAuthors" $ B.Properties.getObjectPropertyStringArray obj "authors"

-- | Set the value of the “@authors@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #authors 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogAuthors :: (MonadIO m, IsAboutDialog o) => o -> [T.Text] -> m ()
setAboutDialogAuthors obj val = liftIO $ B.Properties.setObjectPropertyStringArray obj "authors" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@authors@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogAuthors :: (IsAboutDialog o) => [T.Text] -> IO (GValueConstruct o)
constructAboutDialogAuthors val = B.Properties.constructObjectPropertyStringArray "authors" (Just val)

#if defined(ENABLE_OVERLOADING)
data AboutDialogAuthorsPropertyInfo
instance AttrInfo AboutDialogAuthorsPropertyInfo where
    type AttrAllowedOps AboutDialogAuthorsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogAuthorsPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogAuthorsPropertyInfo = (~) [T.Text]
    type AttrTransferTypeConstraint AboutDialogAuthorsPropertyInfo = (~) [T.Text]
    type AttrTransferType AboutDialogAuthorsPropertyInfo = [T.Text]
    type AttrGetType AboutDialogAuthorsPropertyInfo = [T.Text]
    type AttrLabel AboutDialogAuthorsPropertyInfo = "authors"
    type AttrOrigin AboutDialogAuthorsPropertyInfo = AboutDialog
    attrGet = getAboutDialogAuthors
    attrSet = setAboutDialogAuthors
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogAuthors
    attrClear = undefined
#endif

-- VVV Prop "comments"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@comments@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #comments
-- @
getAboutDialogComments :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogComments obj = liftIO $ checkUnexpectedNothing "getAboutDialogComments" $ B.Properties.getObjectPropertyString obj "comments"

-- | Set the value of the “@comments@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #comments 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogComments :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogComments obj val = liftIO $ B.Properties.setObjectPropertyString obj "comments" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@comments@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogComments :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogComments val = B.Properties.constructObjectPropertyString "comments" (Just val)

-- | Set the value of the “@comments@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #comments
-- @
clearAboutDialogComments :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogComments obj = liftIO $ B.Properties.setObjectPropertyString obj "comments" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogCommentsPropertyInfo
instance AttrInfo AboutDialogCommentsPropertyInfo where
    type AttrAllowedOps AboutDialogCommentsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogCommentsPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogCommentsPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogCommentsPropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogCommentsPropertyInfo = T.Text
    type AttrGetType AboutDialogCommentsPropertyInfo = T.Text
    type AttrLabel AboutDialogCommentsPropertyInfo = "comments"
    type AttrOrigin AboutDialogCommentsPropertyInfo = AboutDialog
    attrGet = getAboutDialogComments
    attrSet = setAboutDialogComments
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogComments
    attrClear = clearAboutDialogComments
#endif

-- VVV Prop "copyright"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@copyright@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #copyright
-- @
getAboutDialogCopyright :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogCopyright obj = liftIO $ checkUnexpectedNothing "getAboutDialogCopyright" $ B.Properties.getObjectPropertyString obj "copyright"

-- | Set the value of the “@copyright@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #copyright 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogCopyright :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogCopyright obj val = liftIO $ B.Properties.setObjectPropertyString obj "copyright" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@copyright@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogCopyright :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogCopyright val = B.Properties.constructObjectPropertyString "copyright" (Just val)

-- | Set the value of the “@copyright@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #copyright
-- @
clearAboutDialogCopyright :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogCopyright obj = liftIO $ B.Properties.setObjectPropertyString obj "copyright" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogCopyrightPropertyInfo
instance AttrInfo AboutDialogCopyrightPropertyInfo where
    type AttrAllowedOps AboutDialogCopyrightPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogCopyrightPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogCopyrightPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogCopyrightPropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogCopyrightPropertyInfo = T.Text
    type AttrGetType AboutDialogCopyrightPropertyInfo = T.Text
    type AttrLabel AboutDialogCopyrightPropertyInfo = "copyright"
    type AttrOrigin AboutDialogCopyrightPropertyInfo = AboutDialog
    attrGet = getAboutDialogCopyright
    attrSet = setAboutDialogCopyright
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogCopyright
    attrClear = clearAboutDialogCopyright
#endif

-- VVV Prop "documenters"
   -- Type: TCArray True (-1) (-1) (TBasicType TUTF8)
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@documenters@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #documenters
-- @
getAboutDialogDocumenters :: (MonadIO m, IsAboutDialog o) => o -> m [T.Text]
getAboutDialogDocumenters obj = liftIO $ checkUnexpectedNothing "getAboutDialogDocumenters" $ B.Properties.getObjectPropertyStringArray obj "documenters"

-- | Set the value of the “@documenters@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #documenters 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogDocumenters :: (MonadIO m, IsAboutDialog o) => o -> [T.Text] -> m ()
setAboutDialogDocumenters obj val = liftIO $ B.Properties.setObjectPropertyStringArray obj "documenters" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@documenters@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogDocumenters :: (IsAboutDialog o) => [T.Text] -> IO (GValueConstruct o)
constructAboutDialogDocumenters val = B.Properties.constructObjectPropertyStringArray "documenters" (Just val)

#if defined(ENABLE_OVERLOADING)
data AboutDialogDocumentersPropertyInfo
instance AttrInfo AboutDialogDocumentersPropertyInfo where
    type AttrAllowedOps AboutDialogDocumentersPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogDocumentersPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogDocumentersPropertyInfo = (~) [T.Text]
    type AttrTransferTypeConstraint AboutDialogDocumentersPropertyInfo = (~) [T.Text]
    type AttrTransferType AboutDialogDocumentersPropertyInfo = [T.Text]
    type AttrGetType AboutDialogDocumentersPropertyInfo = [T.Text]
    type AttrLabel AboutDialogDocumentersPropertyInfo = "documenters"
    type AttrOrigin AboutDialogDocumentersPropertyInfo = AboutDialog
    attrGet = getAboutDialogDocumenters
    attrSet = setAboutDialogDocumenters
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogDocumenters
    attrClear = undefined
#endif

-- VVV Prop "license"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@license@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #license
-- @
getAboutDialogLicense :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogLicense obj = liftIO $ checkUnexpectedNothing "getAboutDialogLicense" $ B.Properties.getObjectPropertyString obj "license"

-- | Set the value of the “@license@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #license 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogLicense :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogLicense obj val = liftIO $ B.Properties.setObjectPropertyString obj "license" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@license@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogLicense :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogLicense val = B.Properties.constructObjectPropertyString "license" (Just val)

-- | Set the value of the “@license@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #license
-- @
clearAboutDialogLicense :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogLicense obj = liftIO $ B.Properties.setObjectPropertyString obj "license" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogLicensePropertyInfo
instance AttrInfo AboutDialogLicensePropertyInfo where
    type AttrAllowedOps AboutDialogLicensePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogLicensePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogLicensePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogLicensePropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogLicensePropertyInfo = T.Text
    type AttrGetType AboutDialogLicensePropertyInfo = T.Text
    type AttrLabel AboutDialogLicensePropertyInfo = "license"
    type AttrOrigin AboutDialogLicensePropertyInfo = AboutDialog
    attrGet = getAboutDialogLicense
    attrSet = setAboutDialogLicense
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogLicense
    attrClear = clearAboutDialogLicense
#endif

-- VVV Prop "license-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "License"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@license-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #licenseType
-- @
getAboutDialogLicenseType :: (MonadIO m, IsAboutDialog o) => o -> m Gtk.Enums.License
getAboutDialogLicenseType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "license-type"

-- | Set the value of the “@license-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #licenseType 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogLicenseType :: (MonadIO m, IsAboutDialog o) => o -> Gtk.Enums.License -> m ()
setAboutDialogLicenseType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "license-type" val

-- | Construct a `GValueConstruct` with valid value for the “@license-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogLicenseType :: (IsAboutDialog o) => Gtk.Enums.License -> IO (GValueConstruct o)
constructAboutDialogLicenseType val = B.Properties.constructObjectPropertyEnum "license-type" val

#if defined(ENABLE_OVERLOADING)
data AboutDialogLicenseTypePropertyInfo
instance AttrInfo AboutDialogLicenseTypePropertyInfo where
    type AttrAllowedOps AboutDialogLicenseTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogLicenseTypePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogLicenseTypePropertyInfo = (~) Gtk.Enums.License
    type AttrTransferTypeConstraint AboutDialogLicenseTypePropertyInfo = (~) Gtk.Enums.License
    type AttrTransferType AboutDialogLicenseTypePropertyInfo = Gtk.Enums.License
    type AttrGetType AboutDialogLicenseTypePropertyInfo = Gtk.Enums.License
    type AttrLabel AboutDialogLicenseTypePropertyInfo = "license-type"
    type AttrOrigin AboutDialogLicenseTypePropertyInfo = AboutDialog
    attrGet = getAboutDialogLicenseType
    attrSet = setAboutDialogLicenseType
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogLicenseType
    attrClear = undefined
#endif

-- VVV Prop "logo"
   -- Type: TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@logo@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #logo
-- @
getAboutDialogLogo :: (MonadIO m, IsAboutDialog o) => o -> m GdkPixbuf.Pixbuf.Pixbuf
getAboutDialogLogo obj = liftIO $ checkUnexpectedNothing "getAboutDialogLogo" $ B.Properties.getObjectPropertyObject obj "logo" GdkPixbuf.Pixbuf.Pixbuf

-- | Set the value of the “@logo@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #logo 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogLogo :: (MonadIO m, IsAboutDialog o, GdkPixbuf.Pixbuf.IsPixbuf a) => o -> a -> m ()
setAboutDialogLogo obj val = liftIO $ B.Properties.setObjectPropertyObject obj "logo" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@logo@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogLogo :: (IsAboutDialog o, GdkPixbuf.Pixbuf.IsPixbuf a) => a -> IO (GValueConstruct o)
constructAboutDialogLogo val = B.Properties.constructObjectPropertyObject "logo" (Just val)

-- | Set the value of the “@logo@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #logo
-- @
clearAboutDialogLogo :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogLogo obj = liftIO $ B.Properties.setObjectPropertyObject obj "logo" (Nothing :: Maybe GdkPixbuf.Pixbuf.Pixbuf)

#if defined(ENABLE_OVERLOADING)
data AboutDialogLogoPropertyInfo
instance AttrInfo AboutDialogLogoPropertyInfo where
    type AttrAllowedOps AboutDialogLogoPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogLogoPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogLogoPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferTypeConstraint AboutDialogLogoPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferType AboutDialogLogoPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrGetType AboutDialogLogoPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrLabel AboutDialogLogoPropertyInfo = "logo"
    type AttrOrigin AboutDialogLogoPropertyInfo = AboutDialog
    attrGet = getAboutDialogLogo
    attrSet = setAboutDialogLogo
    attrTransfer _ v = do
        unsafeCastTo GdkPixbuf.Pixbuf.Pixbuf v
    attrConstruct = constructAboutDialogLogo
    attrClear = clearAboutDialogLogo
#endif

-- VVV Prop "logo-icon-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@logo-icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #logoIconName
-- @
getAboutDialogLogoIconName :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogLogoIconName obj = liftIO $ checkUnexpectedNothing "getAboutDialogLogoIconName" $ B.Properties.getObjectPropertyString obj "logo-icon-name"

-- | Set the value of the “@logo-icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #logoIconName 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogLogoIconName :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogLogoIconName obj val = liftIO $ B.Properties.setObjectPropertyString obj "logo-icon-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@logo-icon-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogLogoIconName :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogLogoIconName val = B.Properties.constructObjectPropertyString "logo-icon-name" (Just val)

-- | Set the value of the “@logo-icon-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #logoIconName
-- @
clearAboutDialogLogoIconName :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogLogoIconName obj = liftIO $ B.Properties.setObjectPropertyString obj "logo-icon-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogLogoIconNamePropertyInfo
instance AttrInfo AboutDialogLogoIconNamePropertyInfo where
    type AttrAllowedOps AboutDialogLogoIconNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogLogoIconNamePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogLogoIconNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogLogoIconNamePropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogLogoIconNamePropertyInfo = T.Text
    type AttrGetType AboutDialogLogoIconNamePropertyInfo = T.Text
    type AttrLabel AboutDialogLogoIconNamePropertyInfo = "logo-icon-name"
    type AttrOrigin AboutDialogLogoIconNamePropertyInfo = AboutDialog
    attrGet = getAboutDialogLogoIconName
    attrSet = setAboutDialogLogoIconName
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogLogoIconName
    attrClear = clearAboutDialogLogoIconName
#endif

-- VVV Prop "program-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@program-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #programName
-- @
getAboutDialogProgramName :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogProgramName obj = liftIO $ checkUnexpectedNothing "getAboutDialogProgramName" $ B.Properties.getObjectPropertyString obj "program-name"

-- | Set the value of the “@program-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #programName 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogProgramName :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogProgramName obj val = liftIO $ B.Properties.setObjectPropertyString obj "program-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@program-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogProgramName :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogProgramName val = B.Properties.constructObjectPropertyString "program-name" (Just val)

#if defined(ENABLE_OVERLOADING)
data AboutDialogProgramNamePropertyInfo
instance AttrInfo AboutDialogProgramNamePropertyInfo where
    type AttrAllowedOps AboutDialogProgramNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogProgramNamePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogProgramNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogProgramNamePropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogProgramNamePropertyInfo = T.Text
    type AttrGetType AboutDialogProgramNamePropertyInfo = T.Text
    type AttrLabel AboutDialogProgramNamePropertyInfo = "program-name"
    type AttrOrigin AboutDialogProgramNamePropertyInfo = AboutDialog
    attrGet = getAboutDialogProgramName
    attrSet = setAboutDialogProgramName
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogProgramName
    attrClear = undefined
#endif

-- VVV Prop "translator-credits"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@translator-credits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #translatorCredits
-- @
getAboutDialogTranslatorCredits :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogTranslatorCredits obj = liftIO $ checkUnexpectedNothing "getAboutDialogTranslatorCredits" $ B.Properties.getObjectPropertyString obj "translator-credits"

-- | Set the value of the “@translator-credits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #translatorCredits 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogTranslatorCredits :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogTranslatorCredits obj val = liftIO $ B.Properties.setObjectPropertyString obj "translator-credits" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@translator-credits@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogTranslatorCredits :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogTranslatorCredits val = B.Properties.constructObjectPropertyString "translator-credits" (Just val)

-- | Set the value of the “@translator-credits@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #translatorCredits
-- @
clearAboutDialogTranslatorCredits :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogTranslatorCredits obj = liftIO $ B.Properties.setObjectPropertyString obj "translator-credits" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogTranslatorCreditsPropertyInfo
instance AttrInfo AboutDialogTranslatorCreditsPropertyInfo where
    type AttrAllowedOps AboutDialogTranslatorCreditsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogTranslatorCreditsPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogTranslatorCreditsPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogTranslatorCreditsPropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogTranslatorCreditsPropertyInfo = T.Text
    type AttrGetType AboutDialogTranslatorCreditsPropertyInfo = T.Text
    type AttrLabel AboutDialogTranslatorCreditsPropertyInfo = "translator-credits"
    type AttrOrigin AboutDialogTranslatorCreditsPropertyInfo = AboutDialog
    attrGet = getAboutDialogTranslatorCredits
    attrSet = setAboutDialogTranslatorCredits
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogTranslatorCredits
    attrClear = clearAboutDialogTranslatorCredits
#endif

-- VVV Prop "version"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@version@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #version
-- @
getAboutDialogVersion :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogVersion obj = liftIO $ checkUnexpectedNothing "getAboutDialogVersion" $ B.Properties.getObjectPropertyString obj "version"

-- | Set the value of the “@version@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #version 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogVersion :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogVersion obj val = liftIO $ B.Properties.setObjectPropertyString obj "version" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@version@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogVersion :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogVersion val = B.Properties.constructObjectPropertyString "version" (Just val)

-- | Set the value of the “@version@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #version
-- @
clearAboutDialogVersion :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogVersion obj = liftIO $ B.Properties.setObjectPropertyString obj "version" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogVersionPropertyInfo
instance AttrInfo AboutDialogVersionPropertyInfo where
    type AttrAllowedOps AboutDialogVersionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogVersionPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogVersionPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogVersionPropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogVersionPropertyInfo = T.Text
    type AttrGetType AboutDialogVersionPropertyInfo = T.Text
    type AttrLabel AboutDialogVersionPropertyInfo = "version"
    type AttrOrigin AboutDialogVersionPropertyInfo = AboutDialog
    attrGet = getAboutDialogVersion
    attrSet = setAboutDialogVersion
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogVersion
    attrClear = clearAboutDialogVersion
#endif

-- VVV Prop "website"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@website@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #website
-- @
getAboutDialogWebsite :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogWebsite obj = liftIO $ checkUnexpectedNothing "getAboutDialogWebsite" $ B.Properties.getObjectPropertyString obj "website"

-- | Set the value of the “@website@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #website 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogWebsite :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogWebsite obj val = liftIO $ B.Properties.setObjectPropertyString obj "website" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@website@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogWebsite :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogWebsite val = B.Properties.constructObjectPropertyString "website" (Just val)

-- | Set the value of the “@website@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #website
-- @
clearAboutDialogWebsite :: (MonadIO m, IsAboutDialog o) => o -> m ()
clearAboutDialogWebsite obj = liftIO $ B.Properties.setObjectPropertyString obj "website" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data AboutDialogWebsitePropertyInfo
instance AttrInfo AboutDialogWebsitePropertyInfo where
    type AttrAllowedOps AboutDialogWebsitePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AboutDialogWebsitePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogWebsitePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogWebsitePropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogWebsitePropertyInfo = T.Text
    type AttrGetType AboutDialogWebsitePropertyInfo = T.Text
    type AttrLabel AboutDialogWebsitePropertyInfo = "website"
    type AttrOrigin AboutDialogWebsitePropertyInfo = AboutDialog
    attrGet = getAboutDialogWebsite
    attrSet = setAboutDialogWebsite
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogWebsite
    attrClear = clearAboutDialogWebsite
#endif

-- VVV Prop "website-label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@website-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #websiteLabel
-- @
getAboutDialogWebsiteLabel :: (MonadIO m, IsAboutDialog o) => o -> m T.Text
getAboutDialogWebsiteLabel obj = liftIO $ checkUnexpectedNothing "getAboutDialogWebsiteLabel" $ B.Properties.getObjectPropertyString obj "website-label"

-- | Set the value of the “@website-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #websiteLabel 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogWebsiteLabel :: (MonadIO m, IsAboutDialog o) => o -> T.Text -> m ()
setAboutDialogWebsiteLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "website-label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@website-label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogWebsiteLabel :: (IsAboutDialog o) => T.Text -> IO (GValueConstruct o)
constructAboutDialogWebsiteLabel val = B.Properties.constructObjectPropertyString "website-label" (Just val)

#if defined(ENABLE_OVERLOADING)
data AboutDialogWebsiteLabelPropertyInfo
instance AttrInfo AboutDialogWebsiteLabelPropertyInfo where
    type AttrAllowedOps AboutDialogWebsiteLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogWebsiteLabelPropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogWebsiteLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AboutDialogWebsiteLabelPropertyInfo = (~) T.Text
    type AttrTransferType AboutDialogWebsiteLabelPropertyInfo = T.Text
    type AttrGetType AboutDialogWebsiteLabelPropertyInfo = T.Text
    type AttrLabel AboutDialogWebsiteLabelPropertyInfo = "website-label"
    type AttrOrigin AboutDialogWebsiteLabelPropertyInfo = AboutDialog
    attrGet = getAboutDialogWebsiteLabel
    attrSet = setAboutDialogWebsiteLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogWebsiteLabel
    attrClear = undefined
#endif

-- VVV Prop "wrap-license"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@wrap-license@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' aboutDialog #wrapLicense
-- @
getAboutDialogWrapLicense :: (MonadIO m, IsAboutDialog o) => o -> m Bool
getAboutDialogWrapLicense obj = liftIO $ B.Properties.getObjectPropertyBool obj "wrap-license"

-- | Set the value of the “@wrap-license@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' aboutDialog [ #wrapLicense 'Data.GI.Base.Attributes.:=' value ]
-- @
setAboutDialogWrapLicense :: (MonadIO m, IsAboutDialog o) => o -> Bool -> m ()
setAboutDialogWrapLicense obj val = liftIO $ B.Properties.setObjectPropertyBool obj "wrap-license" val

-- | Construct a `GValueConstruct` with valid value for the “@wrap-license@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAboutDialogWrapLicense :: (IsAboutDialog o) => Bool -> IO (GValueConstruct o)
constructAboutDialogWrapLicense val = B.Properties.constructObjectPropertyBool "wrap-license" val

#if defined(ENABLE_OVERLOADING)
data AboutDialogWrapLicensePropertyInfo
instance AttrInfo AboutDialogWrapLicensePropertyInfo where
    type AttrAllowedOps AboutDialogWrapLicensePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AboutDialogWrapLicensePropertyInfo = IsAboutDialog
    type AttrSetTypeConstraint AboutDialogWrapLicensePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint AboutDialogWrapLicensePropertyInfo = (~) Bool
    type AttrTransferType AboutDialogWrapLicensePropertyInfo = Bool
    type AttrGetType AboutDialogWrapLicensePropertyInfo = Bool
    type AttrLabel AboutDialogWrapLicensePropertyInfo = "wrap-license"
    type AttrOrigin AboutDialogWrapLicensePropertyInfo = AboutDialog
    attrGet = getAboutDialogWrapLicense
    attrSet = setAboutDialogWrapLicense
    attrTransfer _ v = do
        return v
    attrConstruct = constructAboutDialogWrapLicense
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AboutDialog
type instance O.AttributeList AboutDialog = AboutDialogAttributeList
type AboutDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("artists", AboutDialogArtistsPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("authors", AboutDialogAuthorsPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("comments", AboutDialogCommentsPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("copyright", AboutDialogCopyrightPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("documenters", AboutDialogDocumentersPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("license", AboutDialogLicensePropertyInfo), '("licenseType", AboutDialogLicenseTypePropertyInfo), '("logo", AboutDialogLogoPropertyInfo), '("logoIconName", AboutDialogLogoIconNamePropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("programName", AboutDialogProgramNamePropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("translatorCredits", AboutDialogTranslatorCreditsPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("version", AboutDialogVersionPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("website", AboutDialogWebsitePropertyInfo), '("websiteLabel", AboutDialogWebsiteLabelPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo), '("wrapLicense", AboutDialogWrapLicensePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
aboutDialogArtists :: AttrLabelProxy "artists"
aboutDialogArtists = AttrLabelProxy

aboutDialogAuthors :: AttrLabelProxy "authors"
aboutDialogAuthors = AttrLabelProxy

aboutDialogComments :: AttrLabelProxy "comments"
aboutDialogComments = AttrLabelProxy

aboutDialogCopyright :: AttrLabelProxy "copyright"
aboutDialogCopyright = AttrLabelProxy

aboutDialogDocumenters :: AttrLabelProxy "documenters"
aboutDialogDocumenters = AttrLabelProxy

aboutDialogLicense :: AttrLabelProxy "license"
aboutDialogLicense = AttrLabelProxy

aboutDialogLicenseType :: AttrLabelProxy "licenseType"
aboutDialogLicenseType = AttrLabelProxy

aboutDialogLogo :: AttrLabelProxy "logo"
aboutDialogLogo = AttrLabelProxy

aboutDialogLogoIconName :: AttrLabelProxy "logoIconName"
aboutDialogLogoIconName = AttrLabelProxy

aboutDialogProgramName :: AttrLabelProxy "programName"
aboutDialogProgramName = AttrLabelProxy

aboutDialogTranslatorCredits :: AttrLabelProxy "translatorCredits"
aboutDialogTranslatorCredits = AttrLabelProxy

aboutDialogVersion :: AttrLabelProxy "version"
aboutDialogVersion = AttrLabelProxy

aboutDialogWebsite :: AttrLabelProxy "website"
aboutDialogWebsite = AttrLabelProxy

aboutDialogWebsiteLabel :: AttrLabelProxy "websiteLabel"
aboutDialogWebsiteLabel = AttrLabelProxy

aboutDialogWrapLicense :: AttrLabelProxy "wrapLicense"
aboutDialogWrapLicense = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList AboutDialog = AboutDialogSignalList
type AboutDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("activateLink", AboutDialogActivateLinkSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method AboutDialog::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "AboutDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_about_dialog_new" gtk_about_dialog_new :: 
    IO (Ptr AboutDialog)

-- | Creates a new t'GI.Gtk.Objects.AboutDialog.AboutDialog'.
-- 
-- /Since: 2.6/
aboutDialogNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m AboutDialog
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.AboutDialog.AboutDialog'
aboutDialogNew  = liftIO $ do
    result <- gtk_about_dialog_new
    checkUnexpectedReturnNULL "aboutDialogNew" result
    result' <- (newObject AboutDialog) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method AboutDialog::add_credit_section
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "section_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the section"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "people"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The people who belong to that section"
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

foreign import ccall "gtk_about_dialog_add_credit_section" gtk_about_dialog_add_credit_section :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- section_name : TBasicType TUTF8
    Ptr CString ->                          -- people : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Creates a new section in the Credits page.
-- 
-- /Since: 3.4/
aboutDialogAddCreditSection ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: A t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> T.Text
    -- ^ /@sectionName@/: The name of the section
    -> [T.Text]
    -- ^ /@people@/: The people who belong to that section
    -> m ()
aboutDialogAddCreditSection about sectionName people = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    sectionName' <- textToCString sectionName
    people' <- packZeroTerminatedUTF8CArray people
    gtk_about_dialog_add_credit_section about' sectionName' people'
    touchManagedPtr about
    freeMem sectionName'
    mapZeroTerminatedCArray freeMem people'
    freeMem people'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogAddCreditSectionMethodInfo
instance (signature ~ (T.Text -> [T.Text] -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogAddCreditSectionMethodInfo a signature where
    overloadedMethod = aboutDialogAddCreditSection

#endif

-- method AboutDialog::get_artists
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_about_dialog_get_artists" gtk_about_dialog_get_artists :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO (Ptr CString)

-- | Returns the string which are displayed in the artists tab
-- of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogGetArtists ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m [T.Text]
    -- ^ __Returns:__ A
    --  'P.Nothing'-terminated string array containing the artists. The array is
    --  owned by the about dialog and must not be modified.
aboutDialogGetArtists about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_artists about'
    checkUnexpectedReturnNULL "aboutDialogGetArtists" result
    result' <- unpackZeroTerminatedUTF8CArray result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetArtistsMethodInfo
instance (signature ~ (m [T.Text]), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetArtistsMethodInfo a signature where
    overloadedMethod = aboutDialogGetArtists

#endif

-- method AboutDialog::get_authors
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_about_dialog_get_authors" gtk_about_dialog_get_authors :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO (Ptr CString)

-- | Returns the string which are displayed in the authors tab
-- of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogGetAuthors ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m [T.Text]
    -- ^ __Returns:__ A
    --  'P.Nothing'-terminated string array containing the authors. The array is
    --  owned by the about dialog and must not be modified.
aboutDialogGetAuthors about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_authors about'
    checkUnexpectedReturnNULL "aboutDialogGetAuthors" result
    result' <- unpackZeroTerminatedUTF8CArray result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetAuthorsMethodInfo
instance (signature ~ (m [T.Text]), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetAuthorsMethodInfo a signature where
    overloadedMethod = aboutDialogGetAuthors

#endif

-- method AboutDialog::get_comments
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_comments" gtk_about_dialog_get_comments :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the comments string.
-- 
-- /Since: 2.6/
aboutDialogGetComments ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The comments. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetComments about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_comments about'
    checkUnexpectedReturnNULL "aboutDialogGetComments" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetCommentsMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetCommentsMethodInfo a signature where
    overloadedMethod = aboutDialogGetComments

#endif

-- method AboutDialog::get_copyright
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_copyright" gtk_about_dialog_get_copyright :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the copyright string.
-- 
-- /Since: 2.6/
aboutDialogGetCopyright ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The copyright string. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetCopyright about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_copyright about'
    checkUnexpectedReturnNULL "aboutDialogGetCopyright" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetCopyrightMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetCopyrightMethodInfo a signature where
    overloadedMethod = aboutDialogGetCopyright

#endif

-- method AboutDialog::get_documenters
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_about_dialog_get_documenters" gtk_about_dialog_get_documenters :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO (Ptr CString)

-- | Returns the string which are displayed in the documenters
-- tab of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogGetDocumenters ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m [T.Text]
    -- ^ __Returns:__ A
    --  'P.Nothing'-terminated string array containing the documenters. The
    --  array is owned by the about dialog and must not be modified.
aboutDialogGetDocumenters about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_documenters about'
    checkUnexpectedReturnNULL "aboutDialogGetDocumenters" result
    result' <- unpackZeroTerminatedUTF8CArray result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetDocumentersMethodInfo
instance (signature ~ (m [T.Text]), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetDocumentersMethodInfo a signature where
    overloadedMethod = aboutDialogGetDocumenters

#endif

-- method AboutDialog::get_license
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_license" gtk_about_dialog_get_license :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the license information.
-- 
-- /Since: 2.6/
aboutDialogGetLicense ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The license information. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetLicense about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_license about'
    checkUnexpectedReturnNULL "aboutDialogGetLicense" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetLicenseMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetLicenseMethodInfo a signature where
    overloadedMethod = aboutDialogGetLicense

#endif

-- method AboutDialog::get_license_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "License" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_about_dialog_get_license_type" gtk_about_dialog_get_license_type :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CUInt

-- | Retrieves the license set using 'GI.Gtk.Objects.AboutDialog.aboutDialogSetLicenseType'
-- 
-- /Since: 3.0/
aboutDialogGetLicenseType ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m Gtk.Enums.License
    -- ^ __Returns:__ a t'GI.Gtk.Enums.License' value
aboutDialogGetLicenseType about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_license_type about'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetLicenseTypeMethodInfo
instance (signature ~ (m Gtk.Enums.License), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetLicenseTypeMethodInfo a signature where
    overloadedMethod = aboutDialogGetLicenseType

#endif

-- method AboutDialog::get_logo
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_logo" gtk_about_dialog_get_logo :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

-- | Returns the pixbuf displayed as logo in the about dialog.
-- 
-- /Since: 2.6/
aboutDialogGetLogo ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ the pixbuf displayed as logo. The
    --   pixbuf is owned by the about dialog. If you want to keep a
    --   reference to it, you have to call 'GI.GObject.Objects.Object.objectRef' on it.
aboutDialogGetLogo about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_logo about'
    checkUnexpectedReturnNULL "aboutDialogGetLogo" result
    result' <- (newObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetLogoMethodInfo
instance (signature ~ (m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetLogoMethodInfo a signature where
    overloadedMethod = aboutDialogGetLogo

#endif

-- method AboutDialog::get_logo_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_logo_icon_name" gtk_about_dialog_get_logo_icon_name :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the icon name displayed as logo in the about dialog.
-- 
-- /Since: 2.6/
aboutDialogGetLogoIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ the icon name displayed as logo. The string is
    --   owned by the dialog. If you want to keep a reference
    --   to it, you have to call 'GI.GLib.Functions.strdup' on it.
aboutDialogGetLogoIconName about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_logo_icon_name about'
    checkUnexpectedReturnNULL "aboutDialogGetLogoIconName" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetLogoIconNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetLogoIconNameMethodInfo a signature where
    overloadedMethod = aboutDialogGetLogoIconName

#endif

-- method AboutDialog::get_program_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_program_name" gtk_about_dialog_get_program_name :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the program name displayed in the about dialog.
-- 
-- /Since: 2.12/
aboutDialogGetProgramName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The program name. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetProgramName about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_program_name about'
    checkUnexpectedReturnNULL "aboutDialogGetProgramName" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetProgramNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetProgramNameMethodInfo a signature where
    overloadedMethod = aboutDialogGetProgramName

#endif

-- method AboutDialog::get_translator_credits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_translator_credits" gtk_about_dialog_get_translator_credits :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the translator credits string which is displayed
-- in the translators tab of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogGetTranslatorCredits ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The translator credits string. The string is
    --   owned by the about dialog and must not be modified.
aboutDialogGetTranslatorCredits about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_translator_credits about'
    checkUnexpectedReturnNULL "aboutDialogGetTranslatorCredits" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetTranslatorCreditsMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetTranslatorCreditsMethodInfo a signature where
    overloadedMethod = aboutDialogGetTranslatorCredits

#endif

-- method AboutDialog::get_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_version" gtk_about_dialog_get_version :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the version string.
-- 
-- /Since: 2.6/
aboutDialogGetVersion ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The version string. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetVersion about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_version about'
    checkUnexpectedReturnNULL "aboutDialogGetVersion" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetVersionMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetVersionMethodInfo a signature where
    overloadedMethod = aboutDialogGetVersion

#endif

-- method AboutDialog::get_website
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_website" gtk_about_dialog_get_website :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the website URL.
-- 
-- /Since: 2.6/
aboutDialogGetWebsite ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The website URL. The string is owned by the about
    --  dialog and must not be modified.
aboutDialogGetWebsite about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_website about'
    checkUnexpectedReturnNULL "aboutDialogGetWebsite" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetWebsiteMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetWebsiteMethodInfo a signature where
    overloadedMethod = aboutDialogGetWebsite

#endif

-- method AboutDialog::get_website_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_website_label" gtk_about_dialog_get_website_label :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CString

-- | Returns the label used for the website link.
-- 
-- /Since: 2.6/
aboutDialogGetWebsiteLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m T.Text
    -- ^ __Returns:__ The label used for the website link. The string is
    --     owned by the about dialog and must not be modified.
aboutDialogGetWebsiteLabel about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_website_label about'
    checkUnexpectedReturnNULL "aboutDialogGetWebsiteLabel" result
    result' <- cstringToText result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetWebsiteLabelMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetWebsiteLabelMethodInfo a signature where
    overloadedMethod = aboutDialogGetWebsiteLabel

#endif

-- method AboutDialog::get_wrap_license
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_get_wrap_license" gtk_about_dialog_get_wrap_license :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    IO CInt

-- | Returns whether the license text in /@about@/ is
-- automatically wrapped.
-- 
-- /Since: 2.8/
aboutDialogGetWrapLicense ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the license text is wrapped
aboutDialogGetWrapLicense about = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    result <- gtk_about_dialog_get_wrap_license about'
    let result' = (/= 0) result
    touchManagedPtr about
    return result'

#if defined(ENABLE_OVERLOADING)
data AboutDialogGetWrapLicenseMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogGetWrapLicenseMethodInfo a signature where
    overloadedMethod = aboutDialogGetWrapLicense

#endif

-- method AboutDialog::set_artists
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "artists"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a %NULL-terminated array of strings"
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

foreign import ccall "gtk_about_dialog_set_artists" gtk_about_dialog_set_artists :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    Ptr CString ->                          -- artists : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Sets the strings which are displayed in the artists tab
-- of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogSetArtists ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> [T.Text]
    -- ^ /@artists@/: a 'P.Nothing'-terminated array of strings
    -> m ()
aboutDialogSetArtists about artists = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    artists' <- packZeroTerminatedUTF8CArray artists
    gtk_about_dialog_set_artists about' artists'
    touchManagedPtr about
    mapZeroTerminatedCArray freeMem artists'
    freeMem artists'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetArtistsMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetArtistsMethodInfo a signature where
    overloadedMethod = aboutDialogSetArtists

#endif

-- method AboutDialog::set_authors
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "authors"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a %NULL-terminated array of strings"
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

foreign import ccall "gtk_about_dialog_set_authors" gtk_about_dialog_set_authors :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    Ptr CString ->                          -- authors : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Sets the strings which are displayed in the authors tab
-- of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogSetAuthors ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> [T.Text]
    -- ^ /@authors@/: a 'P.Nothing'-terminated array of strings
    -> m ()
aboutDialogSetAuthors about authors = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    authors' <- packZeroTerminatedUTF8CArray authors
    gtk_about_dialog_set_authors about' authors'
    touchManagedPtr about
    mapZeroTerminatedCArray freeMem authors'
    freeMem authors'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetAuthorsMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetAuthorsMethodInfo a signature where
    overloadedMethod = aboutDialogSetAuthors

#endif

-- method AboutDialog::set_comments
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "comments"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a comments string" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_set_comments" gtk_about_dialog_set_comments :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- comments : TBasicType TUTF8
    IO ()

-- | Sets the comments string to display in the about dialog.
-- This should be a short string of one or two lines.
-- 
-- /Since: 2.6/
aboutDialogSetComments ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@comments@/: a comments string
    -> m ()
aboutDialogSetComments about comments = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeComments <- case comments of
        Nothing -> return nullPtr
        Just jComments -> do
            jComments' <- textToCString jComments
            return jComments'
    gtk_about_dialog_set_comments about' maybeComments
    touchManagedPtr about
    freeMem maybeComments
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetCommentsMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetCommentsMethodInfo a signature where
    overloadedMethod = aboutDialogSetComments

#endif

-- method AboutDialog::set_copyright
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "copyright"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the copyright string"
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

foreign import ccall "gtk_about_dialog_set_copyright" gtk_about_dialog_set_copyright :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- copyright : TBasicType TUTF8
    IO ()

-- | Sets the copyright string to display in the about dialog.
-- This should be a short string of one or two lines.
-- 
-- /Since: 2.6/
aboutDialogSetCopyright ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@copyright@/: the copyright string
    -> m ()
aboutDialogSetCopyright about copyright = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeCopyright <- case copyright of
        Nothing -> return nullPtr
        Just jCopyright -> do
            jCopyright' <- textToCString jCopyright
            return jCopyright'
    gtk_about_dialog_set_copyright about' maybeCopyright
    touchManagedPtr about
    freeMem maybeCopyright
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetCopyrightMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetCopyrightMethodInfo a signature where
    overloadedMethod = aboutDialogSetCopyright

#endif

-- method AboutDialog::set_documenters
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "documenters"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a %NULL-terminated array of strings"
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

foreign import ccall "gtk_about_dialog_set_documenters" gtk_about_dialog_set_documenters :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    Ptr CString ->                          -- documenters : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Sets the strings which are displayed in the documenters tab
-- of the secondary credits dialog.
-- 
-- /Since: 2.6/
aboutDialogSetDocumenters ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> [T.Text]
    -- ^ /@documenters@/: a 'P.Nothing'-terminated array of strings
    -> m ()
aboutDialogSetDocumenters about documenters = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    documenters' <- packZeroTerminatedUTF8CArray documenters
    gtk_about_dialog_set_documenters about' documenters'
    touchManagedPtr about
    mapZeroTerminatedCArray freeMem documenters'
    freeMem documenters'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetDocumentersMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetDocumentersMethodInfo a signature where
    overloadedMethod = aboutDialogSetDocumenters

#endif

-- method AboutDialog::set_license
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "license"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the license information or %NULL"
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

foreign import ccall "gtk_about_dialog_set_license" gtk_about_dialog_set_license :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- license : TBasicType TUTF8
    IO ()

-- | Sets the license information to be displayed in the secondary
-- license dialog. If /@license@/ is 'P.Nothing', the license button is
-- hidden.
-- 
-- /Since: 2.6/
aboutDialogSetLicense ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@license@/: the license information or 'P.Nothing'
    -> m ()
aboutDialogSetLicense about license = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeLicense <- case license of
        Nothing -> return nullPtr
        Just jLicense -> do
            jLicense' <- textToCString jLicense
            return jLicense'
    gtk_about_dialog_set_license about' maybeLicense
    touchManagedPtr about
    freeMem maybeLicense
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetLicenseMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetLicenseMethodInfo a signature where
    overloadedMethod = aboutDialogSetLicense

#endif

-- method AboutDialog::set_license_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "license_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "License" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the type of license"
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

foreign import ccall "gtk_about_dialog_set_license_type" gtk_about_dialog_set_license_type :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CUInt ->                                -- license_type : TInterface (Name {namespace = "Gtk", name = "License"})
    IO ()

-- | Sets the license of the application showing the /@about@/ dialog from a
-- list of known licenses.
-- 
-- This function overrides the license set using
-- 'GI.Gtk.Objects.AboutDialog.aboutDialogSetLicense'.
-- 
-- /Since: 3.0/
aboutDialogSetLicenseType ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Gtk.Enums.License
    -- ^ /@licenseType@/: the type of license
    -> m ()
aboutDialogSetLicenseType about licenseType = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    let licenseType' = (fromIntegral . fromEnum) licenseType
    gtk_about_dialog_set_license_type about' licenseType'
    touchManagedPtr about
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetLicenseTypeMethodInfo
instance (signature ~ (Gtk.Enums.License -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetLicenseTypeMethodInfo a signature where
    overloadedMethod = aboutDialogSetLicenseType

#endif

-- method AboutDialog::set_logo
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "logo"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkPixbuf, or %NULL"
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

foreign import ccall "gtk_about_dialog_set_logo" gtk_about_dialog_set_logo :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- logo : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

-- | Sets the pixbuf to be displayed as logo in the about dialog.
-- If it is 'P.Nothing', the default window icon set with
-- 'GI.Gtk.Objects.Window.windowSetDefaultIcon' will be used.
-- 
-- /Since: 2.6/
aboutDialogSetLogo ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a, GdkPixbuf.Pixbuf.IsPixbuf b) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (b)
    -- ^ /@logo@/: a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf', or 'P.Nothing'
    -> m ()
aboutDialogSetLogo about logo = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeLogo <- case logo of
        Nothing -> return nullPtr
        Just jLogo -> do
            jLogo' <- unsafeManagedPtrCastPtr jLogo
            return jLogo'
    gtk_about_dialog_set_logo about' maybeLogo
    touchManagedPtr about
    whenJust logo touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetLogoMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsAboutDialog a, GdkPixbuf.Pixbuf.IsPixbuf b) => O.MethodInfo AboutDialogSetLogoMethodInfo a signature where
    overloadedMethod = aboutDialogSetLogo

#endif

-- method AboutDialog::set_logo_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an icon name, or %NULL"
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

foreign import ccall "gtk_about_dialog_set_logo_icon_name" gtk_about_dialog_set_logo_icon_name :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- icon_name : TBasicType TUTF8
    IO ()

-- | Sets the pixbuf to be displayed as logo in the about dialog.
-- If it is 'P.Nothing', the default window icon set with
-- 'GI.Gtk.Objects.Window.windowSetDefaultIcon' will be used.
-- 
-- /Since: 2.6/
aboutDialogSetLogoIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@iconName@/: an icon name, or 'P.Nothing'
    -> m ()
aboutDialogSetLogoIconName about iconName = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeIconName <- case iconName of
        Nothing -> return nullPtr
        Just jIconName -> do
            jIconName' <- textToCString jIconName
            return jIconName'
    gtk_about_dialog_set_logo_icon_name about' maybeIconName
    touchManagedPtr about
    freeMem maybeIconName
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetLogoIconNameMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetLogoIconNameMethodInfo a signature where
    overloadedMethod = aboutDialogSetLogoIconName

#endif

-- method AboutDialog::set_program_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the program name" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_set_program_name" gtk_about_dialog_set_program_name :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- name : TBasicType TUTF8
    IO ()

-- | Sets the name to display in the about dialog.
-- If this is not set, it defaults to 'GI.GLib.Functions.getApplicationName'.
-- 
-- /Since: 2.12/
aboutDialogSetProgramName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> T.Text
    -- ^ /@name@/: the program name
    -> m ()
aboutDialogSetProgramName about name = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    name' <- textToCString name
    gtk_about_dialog_set_program_name about' name'
    touchManagedPtr about
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetProgramNameMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetProgramNameMethodInfo a signature where
    overloadedMethod = aboutDialogSetProgramName

#endif

-- method AboutDialog::set_translator_credits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "translator_credits"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the translator credits"
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

foreign import ccall "gtk_about_dialog_set_translator_credits" gtk_about_dialog_set_translator_credits :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- translator_credits : TBasicType TUTF8
    IO ()

-- | Sets the translator credits string which is displayed in
-- the translators tab of the secondary credits dialog.
-- 
-- The intended use for this string is to display the translator
-- of the language which is currently used in the user interface.
-- Using @/gettext()/@, a simple way to achieve that is to mark the
-- string for translation:
-- 
-- === /C code/
-- >
-- >GtkWidget *about = gtk_about_dialog_new ();
-- >gtk_about_dialog_set_translator_credits (GTK_ABOUT_DIALOG (about),
-- >                                         _("translator-credits"));
-- 
-- It is a good idea to use the customary msgid “translator-credits” for this
-- purpose, since translators will already know the purpose of that msgid, and
-- since t'GI.Gtk.Objects.AboutDialog.AboutDialog' will detect if “translator-credits” is untranslated
-- and hide the tab.
-- 
-- /Since: 2.6/
aboutDialogSetTranslatorCredits ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@translatorCredits@/: the translator credits
    -> m ()
aboutDialogSetTranslatorCredits about translatorCredits = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeTranslatorCredits <- case translatorCredits of
        Nothing -> return nullPtr
        Just jTranslatorCredits -> do
            jTranslatorCredits' <- textToCString jTranslatorCredits
            return jTranslatorCredits'
    gtk_about_dialog_set_translator_credits about' maybeTranslatorCredits
    touchManagedPtr about
    freeMem maybeTranslatorCredits
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetTranslatorCreditsMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetTranslatorCreditsMethodInfo a signature where
    overloadedMethod = aboutDialogSetTranslatorCredits

#endif

-- method AboutDialog::set_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "version"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the version string" , sinceVersion = Nothing }
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

foreign import ccall "gtk_about_dialog_set_version" gtk_about_dialog_set_version :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- version : TBasicType TUTF8
    IO ()

-- | Sets the version string to display in the about dialog.
-- 
-- /Since: 2.6/
aboutDialogSetVersion ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@version@/: the version string
    -> m ()
aboutDialogSetVersion about version = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeVersion <- case version of
        Nothing -> return nullPtr
        Just jVersion -> do
            jVersion' <- textToCString jVersion
            return jVersion'
    gtk_about_dialog_set_version about' maybeVersion
    touchManagedPtr about
    freeMem maybeVersion
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetVersionMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetVersionMethodInfo a signature where
    overloadedMethod = aboutDialogSetVersion

#endif

-- method AboutDialog::set_website
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "website"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URL string starting with \"http://\""
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

foreign import ccall "gtk_about_dialog_set_website" gtk_about_dialog_set_website :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- website : TBasicType TUTF8
    IO ()

-- | Sets the URL to use for the website link.
-- 
-- /Since: 2.6/
aboutDialogSetWebsite ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Maybe (T.Text)
    -- ^ /@website@/: a URL string starting with \"http:\/\/\"
    -> m ()
aboutDialogSetWebsite about website = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    maybeWebsite <- case website of
        Nothing -> return nullPtr
        Just jWebsite -> do
            jWebsite' <- textToCString jWebsite
            return jWebsite'
    gtk_about_dialog_set_website about' maybeWebsite
    touchManagedPtr about
    freeMem maybeWebsite
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetWebsiteMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetWebsiteMethodInfo a signature where
    overloadedMethod = aboutDialogSetWebsite

#endif

-- method AboutDialog::set_website_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "website_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label used for the website link"
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

foreign import ccall "gtk_about_dialog_set_website_label" gtk_about_dialog_set_website_label :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CString ->                              -- website_label : TBasicType TUTF8
    IO ()

-- | Sets the label to be used for the website link.
-- 
-- /Since: 2.6/
aboutDialogSetWebsiteLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> T.Text
    -- ^ /@websiteLabel@/: the label used for the website link
    -> m ()
aboutDialogSetWebsiteLabel about websiteLabel = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    websiteLabel' <- textToCString websiteLabel
    gtk_about_dialog_set_website_label about' websiteLabel'
    touchManagedPtr about
    freeMem websiteLabel'
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetWebsiteLabelMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetWebsiteLabelMethodInfo a signature where
    overloadedMethod = aboutDialogSetWebsiteLabel

#endif

-- method AboutDialog::set_wrap_license
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "about"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AboutDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAboutDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wrap_license"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to wrap the license"
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

foreign import ccall "gtk_about_dialog_set_wrap_license" gtk_about_dialog_set_wrap_license :: 
    Ptr AboutDialog ->                      -- about : TInterface (Name {namespace = "Gtk", name = "AboutDialog"})
    CInt ->                                 -- wrap_license : TBasicType TBoolean
    IO ()

-- | Sets whether the license text in /@about@/ is
-- automatically wrapped.
-- 
-- /Since: 2.8/
aboutDialogSetWrapLicense ::
    (B.CallStack.HasCallStack, MonadIO m, IsAboutDialog a) =>
    a
    -- ^ /@about@/: a t'GI.Gtk.Objects.AboutDialog.AboutDialog'
    -> Bool
    -- ^ /@wrapLicense@/: whether to wrap the license
    -> m ()
aboutDialogSetWrapLicense about wrapLicense = liftIO $ do
    about' <- unsafeManagedPtrCastPtr about
    let wrapLicense' = (fromIntegral . fromEnum) wrapLicense
    gtk_about_dialog_set_wrap_license about' wrapLicense'
    touchManagedPtr about
    return ()

#if defined(ENABLE_OVERLOADING)
data AboutDialogSetWrapLicenseMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAboutDialog a) => O.MethodInfo AboutDialogSetWrapLicenseMethodInfo a signature where
    overloadedMethod = aboutDialogSetWrapLicense

#endif

