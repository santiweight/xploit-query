{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Interfaces.FontChooser.FontChooser' is an interface that can be implemented by widgets
-- displaying the list of fonts. In GTK+, the main objects
-- that implement this interface are t'GI.Gtk.Objects.FontChooserWidget.FontChooserWidget',
-- t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog' and t'GI.Gtk.Objects.FontButton.FontButton'. The GtkFontChooser interface
-- has been introducted in GTK+ 3.2.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.FontChooser
    ( 

-- * Exported types
    FontChooser(..)                         ,
    noFontChooser                           ,
    IsFontChooser                           ,
    toFontChooser                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontChooserMethod                ,
#endif


-- ** getFont #method:getFont#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontMethodInfo            ,
#endif
    fontChooserGetFont                      ,


-- ** getFontDesc #method:getFontDesc#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontDescMethodInfo        ,
#endif
    fontChooserGetFontDesc                  ,


-- ** getFontFace #method:getFontFace#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontFaceMethodInfo        ,
#endif
    fontChooserGetFontFace                  ,


-- ** getFontFamily #method:getFontFamily#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontFamilyMethodInfo      ,
#endif
    fontChooserGetFontFamily                ,


-- ** getFontFeatures #method:getFontFeatures#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontFeaturesMethodInfo    ,
#endif
    fontChooserGetFontFeatures              ,


-- ** getFontMap #method:getFontMap#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontMapMethodInfo         ,
#endif
    fontChooserGetFontMap                   ,


-- ** getFontSize #method:getFontSize#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetFontSizeMethodInfo        ,
#endif
    fontChooserGetFontSize                  ,


-- ** getLanguage #method:getLanguage#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetLanguageMethodInfo        ,
#endif
    fontChooserGetLanguage                  ,


-- ** getLevel #method:getLevel#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetLevelMethodInfo           ,
#endif
    fontChooserGetLevel                     ,


-- ** getPreviewText #method:getPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetPreviewTextMethodInfo     ,
#endif
    fontChooserGetPreviewText               ,


-- ** getShowPreviewEntry #method:getShowPreviewEntry#

#if defined(ENABLE_OVERLOADING)
    FontChooserGetShowPreviewEntryMethodInfo,
#endif
    fontChooserGetShowPreviewEntry          ,


-- ** setFilterFunc #method:setFilterFunc#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetFilterFuncMethodInfo      ,
#endif
    fontChooserSetFilterFunc                ,


-- ** setFont #method:setFont#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetFontMethodInfo            ,
#endif
    fontChooserSetFont                      ,


-- ** setFontDesc #method:setFontDesc#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetFontDescMethodInfo        ,
#endif
    fontChooserSetFontDesc                  ,


-- ** setFontMap #method:setFontMap#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetFontMapMethodInfo         ,
#endif
    fontChooserSetFontMap                   ,


-- ** setLanguage #method:setLanguage#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetLanguageMethodInfo        ,
#endif
    fontChooserSetLanguage                  ,


-- ** setLevel #method:setLevel#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetLevelMethodInfo           ,
#endif
    fontChooserSetLevel                     ,


-- ** setPreviewText #method:setPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetPreviewTextMethodInfo     ,
#endif
    fontChooserSetPreviewText               ,


-- ** setShowPreviewEntry #method:setShowPreviewEntry#

#if defined(ENABLE_OVERLOADING)
    FontChooserSetShowPreviewEntryMethodInfo,
#endif
    fontChooserSetShowPreviewEntry          ,




 -- * Properties
-- ** font #attr:font#
-- | The font description as a string, e.g. \"Sans Italic 12\".

#if defined(ENABLE_OVERLOADING)
    FontChooserFontPropertyInfo             ,
#endif
    constructFontChooserFont                ,
#if defined(ENABLE_OVERLOADING)
    fontChooserFont                         ,
#endif
    getFontChooserFont                      ,
    setFontChooserFont                      ,


-- ** fontDesc #attr:fontDesc#
-- | The font description as a t'GI.Pango.Structs.FontDescription.FontDescription'.

#if defined(ENABLE_OVERLOADING)
    FontChooserFontDescPropertyInfo         ,
#endif
    constructFontChooserFontDesc            ,
#if defined(ENABLE_OVERLOADING)
    fontChooserFontDesc                     ,
#endif
    getFontChooserFontDesc                  ,
    setFontChooserFontDesc                  ,


-- ** fontFeatures #attr:fontFeatures#
-- | The selected font features, in a format that is compatible with
-- CSS and with Pango attributes.
-- 
-- /Since: 3.22.30/

#if defined(ENABLE_OVERLOADING)
    FontChooserFontFeaturesPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    fontChooserFontFeatures                 ,
#endif
    getFontChooserFontFeatures              ,


-- ** language #attr:language#
-- | The language for which the t'GI.Gtk.Interfaces.FontChooser.FontChooser':@/font-features/@ were
-- selected, in a format that is compatible with CSS and with Pango
-- attributes.
-- 
-- /Since: 3.22.30/

#if defined(ENABLE_OVERLOADING)
    FontChooserLanguagePropertyInfo         ,
#endif
    constructFontChooserLanguage            ,
#if defined(ENABLE_OVERLOADING)
    fontChooserLanguage                     ,
#endif
    getFontChooserLanguage                  ,
    setFontChooserLanguage                  ,


-- ** level #attr:level#
-- | The level of granularity to offer for selecting fonts.
-- 
-- /Since: 3.22.30/

#if defined(ENABLE_OVERLOADING)
    FontChooserLevelPropertyInfo            ,
#endif
    constructFontChooserLevel               ,
#if defined(ENABLE_OVERLOADING)
    fontChooserLevel                        ,
#endif
    getFontChooserLevel                     ,
    setFontChooserLevel                     ,


-- ** previewText #attr:previewText#
-- | The string with which to preview the font.

#if defined(ENABLE_OVERLOADING)
    FontChooserPreviewTextPropertyInfo      ,
#endif
    constructFontChooserPreviewText         ,
#if defined(ENABLE_OVERLOADING)
    fontChooserPreviewText                  ,
#endif
    getFontChooserPreviewText               ,
    setFontChooserPreviewText               ,


-- ** showPreviewEntry #attr:showPreviewEntry#
-- | Whether to show an entry to change the preview text.

#if defined(ENABLE_OVERLOADING)
    FontChooserShowPreviewEntryPropertyInfo ,
#endif
    constructFontChooserShowPreviewEntry    ,
#if defined(ENABLE_OVERLOADING)
    fontChooserShowPreviewEntry             ,
#endif
    getFontChooserShowPreviewEntry          ,
    setFontChooserShowPreviewEntry          ,




 -- * Signals
-- ** fontActivated #signal:fontActivated#

    C_FontChooserFontActivatedCallback      ,
    FontChooserFontActivatedCallback        ,
#if defined(ENABLE_OVERLOADING)
    FontChooserFontActivatedSignalInfo      ,
#endif
    afterFontChooserFontActivated           ,
    genClosure_FontChooserFontActivated     ,
    mk_FontChooserFontActivatedCallback     ,
    noFontChooserFontActivatedCallback      ,
    onFontChooserFontActivated              ,
    wrap_FontChooserFontActivatedCallback   ,




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

import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import qualified GI.Pango.Objects.FontFace as Pango.FontFace
import qualified GI.Pango.Objects.FontFamily as Pango.FontFamily
import qualified GI.Pango.Objects.FontMap as Pango.FontMap
import qualified GI.Pango.Structs.FontDescription as Pango.FontDescription

-- interface FontChooser 
-- | Memory-managed wrapper type.
newtype FontChooser = FontChooser (ManagedPtr FontChooser)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `FontChooser`.
noFontChooser :: Maybe FontChooser
noFontChooser = Nothing

-- signal FontChooser::font-activated
-- | Emitted when a font is activated.
-- This usually happens when the user double clicks an item,
-- or an item is selected and the user presses one of the keys
-- Space, Shift+Space, Return or Enter.
type FontChooserFontActivatedCallback =
    T.Text
    -- ^ /@fontname@/: the font name
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FontChooserFontActivatedCallback`@.
noFontChooserFontActivatedCallback :: Maybe FontChooserFontActivatedCallback
noFontChooserFontActivatedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FontChooserFontActivatedCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FontChooserFontActivatedCallback`.
foreign import ccall "wrapper"
    mk_FontChooserFontActivatedCallback :: C_FontChooserFontActivatedCallback -> IO (FunPtr C_FontChooserFontActivatedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FontChooserFontActivated :: MonadIO m => FontChooserFontActivatedCallback -> m (GClosure C_FontChooserFontActivatedCallback)
genClosure_FontChooserFontActivated cb = liftIO $ do
    let cb' = wrap_FontChooserFontActivatedCallback cb
    mk_FontChooserFontActivatedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FontChooserFontActivatedCallback` into a `C_FontChooserFontActivatedCallback`.
wrap_FontChooserFontActivatedCallback ::
    FontChooserFontActivatedCallback ->
    C_FontChooserFontActivatedCallback
wrap_FontChooserFontActivatedCallback _cb _ fontname _ = do
    fontname' <- cstringToText fontname
    _cb  fontname'


-- | Connect a signal handler for the [fontActivated](#signal:fontActivated) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fontChooser #fontActivated callback
-- @
-- 
-- 
onFontChooserFontActivated :: (IsFontChooser a, MonadIO m) => a -> FontChooserFontActivatedCallback -> m SignalHandlerId
onFontChooserFontActivated obj cb = liftIO $ do
    let cb' = wrap_FontChooserFontActivatedCallback cb
    cb'' <- mk_FontChooserFontActivatedCallback cb'
    connectSignalFunPtr obj "font-activated" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [fontActivated](#signal:fontActivated) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fontChooser #fontActivated callback
-- @
-- 
-- 
afterFontChooserFontActivated :: (IsFontChooser a, MonadIO m) => a -> FontChooserFontActivatedCallback -> m SignalHandlerId
afterFontChooserFontActivated obj cb = liftIO $ do
    let cb' = wrap_FontChooserFontActivatedCallback cb
    cb'' <- mk_FontChooserFontActivatedCallback cb'
    connectSignalFunPtr obj "font-activated" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FontChooserFontActivatedSignalInfo
instance SignalInfo FontChooserFontActivatedSignalInfo where
    type HaskellCallbackType FontChooserFontActivatedSignalInfo = FontChooserFontActivatedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FontChooserFontActivatedCallback cb
        cb'' <- mk_FontChooserFontActivatedCallback cb'
        connectSignalFunPtr obj "font-activated" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontChooser = FontChooserSignalList
type FontChooserSignalList = ('[ '("fontActivated", FontChooserFontActivatedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_font_chooser_get_type"
    c_gtk_font_chooser_get_type :: IO GType

instance GObject FontChooser where
    gobjectType = c_gtk_font_chooser_get_type
    

-- | Convert 'FontChooser' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontChooser where
    toGValue o = do
        gtype <- c_gtk_font_chooser_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontChooser)
        B.ManagedPtr.newObject FontChooser ptr
        
    

-- | Type class for types which can be safely cast to `FontChooser`, for instance with `toFontChooser`.
class (GObject o, O.IsDescendantOf FontChooser o) => IsFontChooser o
instance (GObject o, O.IsDescendantOf FontChooser o) => IsFontChooser o

instance O.HasParentTypes FontChooser
type instance O.ParentTypes FontChooser = '[GObject.Object.Object]

-- | Cast to `FontChooser`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontChooser :: (MonadIO m, IsFontChooser o) => o -> m FontChooser
toFontChooser = liftIO . unsafeCastTo FontChooser

-- VVV Prop "font"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@font@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #font
-- @
getFontChooserFont :: (MonadIO m, IsFontChooser o) => o -> m (Maybe T.Text)
getFontChooserFont obj = liftIO $ B.Properties.getObjectPropertyString obj "font"

-- | Set the value of the “@font@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #font 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserFont :: (MonadIO m, IsFontChooser o) => o -> T.Text -> m ()
setFontChooserFont obj val = liftIO $ B.Properties.setObjectPropertyString obj "font" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@font@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserFont :: (IsFontChooser o) => T.Text -> IO (GValueConstruct o)
constructFontChooserFont val = B.Properties.constructObjectPropertyString "font" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontChooserFontPropertyInfo
instance AttrInfo FontChooserFontPropertyInfo where
    type AttrAllowedOps FontChooserFontPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserFontPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserFontPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontChooserFontPropertyInfo = (~) T.Text
    type AttrTransferType FontChooserFontPropertyInfo = T.Text
    type AttrGetType FontChooserFontPropertyInfo = (Maybe T.Text)
    type AttrLabel FontChooserFontPropertyInfo = "font"
    type AttrOrigin FontChooserFontPropertyInfo = FontChooser
    attrGet = getFontChooserFont
    attrSet = setFontChooserFont
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserFont
    attrClear = undefined
#endif

-- VVV Prop "font-desc"
   -- Type: TInterface (Name {namespace = "Pango", name = "FontDescription"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@font-desc@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #fontDesc
-- @
getFontChooserFontDesc :: (MonadIO m, IsFontChooser o) => o -> m (Maybe Pango.FontDescription.FontDescription)
getFontChooserFontDesc obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "font-desc" Pango.FontDescription.FontDescription

-- | Set the value of the “@font-desc@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #fontDesc 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserFontDesc :: (MonadIO m, IsFontChooser o) => o -> Pango.FontDescription.FontDescription -> m ()
setFontChooserFontDesc obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "font-desc" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@font-desc@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserFontDesc :: (IsFontChooser o) => Pango.FontDescription.FontDescription -> IO (GValueConstruct o)
constructFontChooserFontDesc val = B.Properties.constructObjectPropertyBoxed "font-desc" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontChooserFontDescPropertyInfo
instance AttrInfo FontChooserFontDescPropertyInfo where
    type AttrAllowedOps FontChooserFontDescPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserFontDescPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserFontDescPropertyInfo = (~) Pango.FontDescription.FontDescription
    type AttrTransferTypeConstraint FontChooserFontDescPropertyInfo = (~) Pango.FontDescription.FontDescription
    type AttrTransferType FontChooserFontDescPropertyInfo = Pango.FontDescription.FontDescription
    type AttrGetType FontChooserFontDescPropertyInfo = (Maybe Pango.FontDescription.FontDescription)
    type AttrLabel FontChooserFontDescPropertyInfo = "font-desc"
    type AttrOrigin FontChooserFontDescPropertyInfo = FontChooser
    attrGet = getFontChooserFontDesc
    attrSet = setFontChooserFontDesc
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserFontDesc
    attrClear = undefined
#endif

-- VVV Prop "font-features"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@font-features@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #fontFeatures
-- @
getFontChooserFontFeatures :: (MonadIO m, IsFontChooser o) => o -> m (Maybe T.Text)
getFontChooserFontFeatures obj = liftIO $ B.Properties.getObjectPropertyString obj "font-features"

#if defined(ENABLE_OVERLOADING)
data FontChooserFontFeaturesPropertyInfo
instance AttrInfo FontChooserFontFeaturesPropertyInfo where
    type AttrAllowedOps FontChooserFontFeaturesPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FontChooserFontFeaturesPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserFontFeaturesPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FontChooserFontFeaturesPropertyInfo = (~) ()
    type AttrTransferType FontChooserFontFeaturesPropertyInfo = ()
    type AttrGetType FontChooserFontFeaturesPropertyInfo = (Maybe T.Text)
    type AttrLabel FontChooserFontFeaturesPropertyInfo = "font-features"
    type AttrOrigin FontChooserFontFeaturesPropertyInfo = FontChooser
    attrGet = getFontChooserFontFeatures
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "language"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@language@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #language
-- @
getFontChooserLanguage :: (MonadIO m, IsFontChooser o) => o -> m (Maybe T.Text)
getFontChooserLanguage obj = liftIO $ B.Properties.getObjectPropertyString obj "language"

-- | Set the value of the “@language@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #language 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserLanguage :: (MonadIO m, IsFontChooser o) => o -> T.Text -> m ()
setFontChooserLanguage obj val = liftIO $ B.Properties.setObjectPropertyString obj "language" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@language@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserLanguage :: (IsFontChooser o) => T.Text -> IO (GValueConstruct o)
constructFontChooserLanguage val = B.Properties.constructObjectPropertyString "language" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontChooserLanguagePropertyInfo
instance AttrInfo FontChooserLanguagePropertyInfo where
    type AttrAllowedOps FontChooserLanguagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserLanguagePropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserLanguagePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontChooserLanguagePropertyInfo = (~) T.Text
    type AttrTransferType FontChooserLanguagePropertyInfo = T.Text
    type AttrGetType FontChooserLanguagePropertyInfo = (Maybe T.Text)
    type AttrLabel FontChooserLanguagePropertyInfo = "language"
    type AttrOrigin FontChooserLanguagePropertyInfo = FontChooser
    attrGet = getFontChooserLanguage
    attrSet = setFontChooserLanguage
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserLanguage
    attrClear = undefined
#endif

-- VVV Prop "level"
   -- Type: TInterface (Name {namespace = "Gtk", name = "FontChooserLevel"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #level
-- @
getFontChooserLevel :: (MonadIO m, IsFontChooser o) => o -> m [Gtk.Flags.FontChooserLevel]
getFontChooserLevel obj = liftIO $ B.Properties.getObjectPropertyFlags obj "level"

-- | Set the value of the “@level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #level 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserLevel :: (MonadIO m, IsFontChooser o) => o -> [Gtk.Flags.FontChooserLevel] -> m ()
setFontChooserLevel obj val = liftIO $ B.Properties.setObjectPropertyFlags obj "level" val

-- | Construct a `GValueConstruct` with valid value for the “@level@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserLevel :: (IsFontChooser o) => [Gtk.Flags.FontChooserLevel] -> IO (GValueConstruct o)
constructFontChooserLevel val = B.Properties.constructObjectPropertyFlags "level" val

#if defined(ENABLE_OVERLOADING)
data FontChooserLevelPropertyInfo
instance AttrInfo FontChooserLevelPropertyInfo where
    type AttrAllowedOps FontChooserLevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserLevelPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserLevelPropertyInfo = (~) [Gtk.Flags.FontChooserLevel]
    type AttrTransferTypeConstraint FontChooserLevelPropertyInfo = (~) [Gtk.Flags.FontChooserLevel]
    type AttrTransferType FontChooserLevelPropertyInfo = [Gtk.Flags.FontChooserLevel]
    type AttrGetType FontChooserLevelPropertyInfo = [Gtk.Flags.FontChooserLevel]
    type AttrLabel FontChooserLevelPropertyInfo = "level"
    type AttrOrigin FontChooserLevelPropertyInfo = FontChooser
    attrGet = getFontChooserLevel
    attrSet = setFontChooserLevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserLevel
    attrClear = undefined
#endif

-- VVV Prop "preview-text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@preview-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #previewText
-- @
getFontChooserPreviewText :: (MonadIO m, IsFontChooser o) => o -> m (Maybe T.Text)
getFontChooserPreviewText obj = liftIO $ B.Properties.getObjectPropertyString obj "preview-text"

-- | Set the value of the “@preview-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #previewText 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserPreviewText :: (MonadIO m, IsFontChooser o) => o -> T.Text -> m ()
setFontChooserPreviewText obj val = liftIO $ B.Properties.setObjectPropertyString obj "preview-text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@preview-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserPreviewText :: (IsFontChooser o) => T.Text -> IO (GValueConstruct o)
constructFontChooserPreviewText val = B.Properties.constructObjectPropertyString "preview-text" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontChooserPreviewTextPropertyInfo
instance AttrInfo FontChooserPreviewTextPropertyInfo where
    type AttrAllowedOps FontChooserPreviewTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserPreviewTextPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserPreviewTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontChooserPreviewTextPropertyInfo = (~) T.Text
    type AttrTransferType FontChooserPreviewTextPropertyInfo = T.Text
    type AttrGetType FontChooserPreviewTextPropertyInfo = (Maybe T.Text)
    type AttrLabel FontChooserPreviewTextPropertyInfo = "preview-text"
    type AttrOrigin FontChooserPreviewTextPropertyInfo = FontChooser
    attrGet = getFontChooserPreviewText
    attrSet = setFontChooserPreviewText
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserPreviewText
    attrClear = undefined
#endif

-- VVV Prop "show-preview-entry"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-preview-entry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooser #showPreviewEntry
-- @
getFontChooserShowPreviewEntry :: (MonadIO m, IsFontChooser o) => o -> m Bool
getFontChooserShowPreviewEntry obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-preview-entry"

-- | Set the value of the “@show-preview-entry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontChooser [ #showPreviewEntry 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontChooserShowPreviewEntry :: (MonadIO m, IsFontChooser o) => o -> Bool -> m ()
setFontChooserShowPreviewEntry obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-preview-entry" val

-- | Construct a `GValueConstruct` with valid value for the “@show-preview-entry@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontChooserShowPreviewEntry :: (IsFontChooser o) => Bool -> IO (GValueConstruct o)
constructFontChooserShowPreviewEntry val = B.Properties.constructObjectPropertyBool "show-preview-entry" val

#if defined(ENABLE_OVERLOADING)
data FontChooserShowPreviewEntryPropertyInfo
instance AttrInfo FontChooserShowPreviewEntryPropertyInfo where
    type AttrAllowedOps FontChooserShowPreviewEntryPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontChooserShowPreviewEntryPropertyInfo = IsFontChooser
    type AttrSetTypeConstraint FontChooserShowPreviewEntryPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FontChooserShowPreviewEntryPropertyInfo = (~) Bool
    type AttrTransferType FontChooserShowPreviewEntryPropertyInfo = Bool
    type AttrGetType FontChooserShowPreviewEntryPropertyInfo = Bool
    type AttrLabel FontChooserShowPreviewEntryPropertyInfo = "show-preview-entry"
    type AttrOrigin FontChooserShowPreviewEntryPropertyInfo = FontChooser
    attrGet = getFontChooserShowPreviewEntry
    attrSet = setFontChooserShowPreviewEntry
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontChooserShowPreviewEntry
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontChooser
type instance O.AttributeList FontChooser = FontChooserAttributeList
type FontChooserAttributeList = ('[ '("font", FontChooserFontPropertyInfo), '("fontDesc", FontChooserFontDescPropertyInfo), '("fontFeatures", FontChooserFontFeaturesPropertyInfo), '("language", FontChooserLanguagePropertyInfo), '("level", FontChooserLevelPropertyInfo), '("previewText", FontChooserPreviewTextPropertyInfo), '("showPreviewEntry", FontChooserShowPreviewEntryPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fontChooserFont :: AttrLabelProxy "font"
fontChooserFont = AttrLabelProxy

fontChooserFontDesc :: AttrLabelProxy "fontDesc"
fontChooserFontDesc = AttrLabelProxy

fontChooserFontFeatures :: AttrLabelProxy "fontFeatures"
fontChooserFontFeatures = AttrLabelProxy

fontChooserLanguage :: AttrLabelProxy "language"
fontChooserLanguage = AttrLabelProxy

fontChooserLevel :: AttrLabelProxy "level"
fontChooserLevel = AttrLabelProxy

fontChooserPreviewText :: AttrLabelProxy "previewText"
fontChooserPreviewText = AttrLabelProxy

fontChooserShowPreviewEntry :: AttrLabelProxy "showPreviewEntry"
fontChooserShowPreviewEntry = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveFontChooserMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontChooserMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontChooserMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontChooserMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontChooserMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontChooserMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontChooserMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontChooserMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontChooserMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontChooserMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontChooserMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontChooserMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontChooserMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontChooserMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontChooserMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontChooserMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontChooserMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontChooserMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontChooserMethod "getFont" o = FontChooserGetFontMethodInfo
    ResolveFontChooserMethod "getFontDesc" o = FontChooserGetFontDescMethodInfo
    ResolveFontChooserMethod "getFontFace" o = FontChooserGetFontFaceMethodInfo
    ResolveFontChooserMethod "getFontFamily" o = FontChooserGetFontFamilyMethodInfo
    ResolveFontChooserMethod "getFontFeatures" o = FontChooserGetFontFeaturesMethodInfo
    ResolveFontChooserMethod "getFontMap" o = FontChooserGetFontMapMethodInfo
    ResolveFontChooserMethod "getFontSize" o = FontChooserGetFontSizeMethodInfo
    ResolveFontChooserMethod "getLanguage" o = FontChooserGetLanguageMethodInfo
    ResolveFontChooserMethod "getLevel" o = FontChooserGetLevelMethodInfo
    ResolveFontChooserMethod "getPreviewText" o = FontChooserGetPreviewTextMethodInfo
    ResolveFontChooserMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontChooserMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontChooserMethod "getShowPreviewEntry" o = FontChooserGetShowPreviewEntryMethodInfo
    ResolveFontChooserMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontChooserMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontChooserMethod "setFilterFunc" o = FontChooserSetFilterFuncMethodInfo
    ResolveFontChooserMethod "setFont" o = FontChooserSetFontMethodInfo
    ResolveFontChooserMethod "setFontDesc" o = FontChooserSetFontDescMethodInfo
    ResolveFontChooserMethod "setFontMap" o = FontChooserSetFontMapMethodInfo
    ResolveFontChooserMethod "setLanguage" o = FontChooserSetLanguageMethodInfo
    ResolveFontChooserMethod "setLevel" o = FontChooserSetLevelMethodInfo
    ResolveFontChooserMethod "setPreviewText" o = FontChooserSetPreviewTextMethodInfo
    ResolveFontChooserMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontChooserMethod "setShowPreviewEntry" o = FontChooserSetShowPreviewEntryMethodInfo
    ResolveFontChooserMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontChooserMethod t FontChooser, O.MethodInfo info FontChooser p) => OL.IsLabel t (FontChooser -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method FontChooser::get_font
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_font" gtk_font_chooser_get_font :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CString

-- | Gets the currently-selected font name.
-- 
-- Note that this can be a different string than what you set with
-- 'GI.Gtk.Interfaces.FontChooser.fontChooserSetFont', as the font chooser widget may
-- normalize font names and thus return a string with a different
-- structure. For example, “Helvetica Italic Bold 12” could be
-- normalized to “Helvetica Bold Italic 12”.
-- 
-- Use 'GI.Pango.Structs.FontDescription.fontDescriptionEqual' if you want to compare two
-- font descriptions.
-- 
-- /Since: 3.2/
fontChooserGetFont ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ A string with the name
    --     of the current font, or 'P.Nothing' if  no font is selected. You must
    --     free this string with 'GI.GLib.Functions.free'.
fontChooserGetFont fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font fontchooser'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr fontchooser
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontMethodInfo a signature where
    overloadedMethod = fontChooserGetFont

#endif

-- method FontChooser::get_font_desc
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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
--                  Name { namespace = "Pango" , name = "FontDescription" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_get_font_desc" gtk_font_chooser_get_font_desc :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO (Ptr Pango.FontDescription.FontDescription)

-- | Gets the currently-selected font.
-- 
-- Note that this can be a different string than what you set with
-- 'GI.Gtk.Interfaces.FontChooser.fontChooserSetFont', as the font chooser widget may
-- normalize font names and thus return a string with a different
-- structure. For example, “Helvetica Italic Bold 12” could be
-- normalized to “Helvetica Bold Italic 12”.
-- 
-- Use 'GI.Pango.Structs.FontDescription.fontDescriptionEqual' if you want to compare two
-- font descriptions.
-- 
-- /Since: 3.2/
fontChooserGetFontDesc ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m (Maybe Pango.FontDescription.FontDescription)
    -- ^ __Returns:__ A t'GI.Pango.Structs.FontDescription.FontDescription' for the
    --     current font, or 'P.Nothing' if  no font is selected.
fontChooserGetFontDesc fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_desc fontchooser'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Pango.FontDescription.FontDescription) result'
        return result''
    touchManagedPtr fontchooser
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontDescMethodInfo
instance (signature ~ (m (Maybe Pango.FontDescription.FontDescription)), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontDescMethodInfo a signature where
    overloadedMethod = fontChooserGetFontDesc

#endif

-- method FontChooser::get_font_face
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Pango" , name = "FontFace" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_get_font_face" gtk_font_chooser_get_font_face :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO (Ptr Pango.FontFace.FontFace)

-- | Gets the t'GI.Pango.Objects.FontFace.FontFace' representing the selected font group
-- details (i.e. family, slant, weight, width, etc).
-- 
-- If the selected font is not installed, returns 'P.Nothing'.
-- 
-- /Since: 3.2/
fontChooserGetFontFace ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m (Maybe Pango.FontFace.FontFace)
    -- ^ __Returns:__ A t'GI.Pango.Objects.FontFace.FontFace' representing the
    --     selected font group details, or 'P.Nothing'. The returned object is owned by
    --     /@fontchooser@/ and must not be modified or freed.
fontChooserGetFontFace fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_face fontchooser'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Pango.FontFace.FontFace) result'
        return result''
    touchManagedPtr fontchooser
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontFaceMethodInfo
instance (signature ~ (m (Maybe Pango.FontFace.FontFace)), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontFaceMethodInfo a signature where
    overloadedMethod = fontChooserGetFontFace

#endif

-- method FontChooser::get_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Pango" , name = "FontFamily" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_get_font_family" gtk_font_chooser_get_font_family :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO (Ptr Pango.FontFamily.FontFamily)

-- | Gets the t'GI.Pango.Objects.FontFamily.FontFamily' representing the selected font family.
-- Font families are a collection of font faces.
-- 
-- If the selected font is not installed, returns 'P.Nothing'.
-- 
-- /Since: 3.2/
fontChooserGetFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m (Maybe Pango.FontFamily.FontFamily)
    -- ^ __Returns:__ A t'GI.Pango.Objects.FontFamily.FontFamily' representing the
    --     selected font family, or 'P.Nothing'. The returned object is owned by /@fontchooser@/
    --     and must not be modified or freed.
fontChooserGetFontFamily fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_family fontchooser'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Pango.FontFamily.FontFamily) result'
        return result''
    touchManagedPtr fontchooser
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontFamilyMethodInfo
instance (signature ~ (m (Maybe Pango.FontFamily.FontFamily)), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontFamilyMethodInfo a signature where
    overloadedMethod = fontChooserGetFontFamily

#endif

-- method FontChooser::get_font_features
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_font_features" gtk_font_chooser_get_font_features :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CString

-- | Gets the currently-selected font features.
-- 
-- /Since: 3.24/
fontChooserGetFontFeatures ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m T.Text
    -- ^ __Returns:__ the currently selected font features
fontChooserGetFontFeatures fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_features fontchooser'
    checkUnexpectedReturnNULL "fontChooserGetFontFeatures" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr fontchooser
    return result'

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontFeaturesMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontFeaturesMethodInfo a signature where
    overloadedMethod = fontChooserGetFontFeatures

#endif

-- method FontChooser::get_font_map
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Pango" , name = "FontMap" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_get_font_map" gtk_font_chooser_get_font_map :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO (Ptr Pango.FontMap.FontMap)

-- | Gets the custom font map of this font chooser widget,
-- or 'P.Nothing' if it does not have one.
-- 
-- /Since: 3.18/
fontChooserGetFontMap ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m (Maybe Pango.FontMap.FontMap)
    -- ^ __Returns:__ a t'GI.Pango.Objects.FontMap.FontMap', or 'P.Nothing'
fontChooserGetFontMap fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_map fontchooser'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Pango.FontMap.FontMap) result'
        return result''
    touchManagedPtr fontchooser
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontMapMethodInfo
instance (signature ~ (m (Maybe Pango.FontMap.FontMap)), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontMapMethodInfo a signature where
    overloadedMethod = fontChooserGetFontMap

#endif

-- method FontChooser::get_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_font_size" gtk_font_chooser_get_font_size :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO Int32

-- | The selected font size.
-- 
-- /Since: 3.2/
fontChooserGetFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m Int32
    -- ^ __Returns:__ A n integer representing the selected font size,
    --     or -1 if no font size is selected.
fontChooserGetFontSize fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_font_size fontchooser'
    touchManagedPtr fontchooser
    return result

#if defined(ENABLE_OVERLOADING)
data FontChooserGetFontSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetFontSizeMethodInfo a signature where
    overloadedMethod = fontChooserGetFontSize

#endif

-- method FontChooser::get_language
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_language" gtk_font_chooser_get_language :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CString

-- | Gets the language that is used for font features.
-- 
-- /Since: 3.24/
fontChooserGetLanguage ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m T.Text
    -- ^ __Returns:__ the currently selected language
fontChooserGetLanguage fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_language fontchooser'
    checkUnexpectedReturnNULL "fontChooserGetLanguage" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr fontchooser
    return result'

#if defined(ENABLE_OVERLOADING)
data FontChooserGetLanguageMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetLanguageMethodInfo a signature where
    overloadedMethod = fontChooserGetLanguage

#endif

-- method FontChooser::get_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "FontChooserLevel" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_get_level" gtk_font_chooser_get_level :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CUInt

-- | Returns the current level of granularity for selecting fonts.
-- 
-- /Since: 3.24/
fontChooserGetLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m [Gtk.Flags.FontChooserLevel]
    -- ^ __Returns:__ the current granularity level
fontChooserGetLevel fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_level fontchooser'
    let result' = wordToGFlags result
    touchManagedPtr fontchooser
    return result'

#if defined(ENABLE_OVERLOADING)
data FontChooserGetLevelMethodInfo
instance (signature ~ (m [Gtk.Flags.FontChooserLevel]), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetLevelMethodInfo a signature where
    overloadedMethod = fontChooserGetLevel

#endif

-- method FontChooser::get_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_preview_text" gtk_font_chooser_get_preview_text :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CString

-- | Gets the text displayed in the preview area.
-- 
-- /Since: 3.2/
fontChooserGetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m T.Text
    -- ^ __Returns:__ the text displayed in the
    --     preview area
fontChooserGetPreviewText fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_preview_text fontchooser'
    checkUnexpectedReturnNULL "fontChooserGetPreviewText" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr fontchooser
    return result'

#if defined(ENABLE_OVERLOADING)
data FontChooserGetPreviewTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetPreviewTextMethodInfo a signature where
    overloadedMethod = fontChooserGetPreviewText

#endif

-- method FontChooser::get_show_preview_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_get_show_preview_entry" gtk_font_chooser_get_show_preview_entry :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    IO CInt

-- | Returns whether the preview entry is shown or not.
-- 
-- /Since: 3.2/
fontChooserGetShowPreviewEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the preview entry is shown
    --     or 'P.False' if it is hidden.
fontChooserGetShowPreviewEntry fontchooser = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    result <- gtk_font_chooser_get_show_preview_entry fontchooser'
    let result' = (/= 0) result
    touchManagedPtr fontchooser
    return result'

#if defined(ENABLE_OVERLOADING)
data FontChooserGetShowPreviewEntryMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserGetShowPreviewEntryMethodInfo a signature where
    overloadedMethod = fontChooserGetShowPreviewEntry

#endif

-- method FontChooser::set_filter_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontFilterFunc" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontFilterFunc, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 2
--           , argDestroy = 3
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "data to pass to @filter"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destroy"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "function to call to free @data when it is no longer needed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "gtk_font_chooser_set_filter_func" gtk_font_chooser_set_filter_func :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    FunPtr Gtk.Callbacks.C_FontFilterFunc -> -- filter : TInterface (Name {namespace = "Gtk", name = "FontFilterFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Adds a filter function that decides which fonts to display
-- in the font chooser.
-- 
-- /Since: 3.2/
fontChooserSetFilterFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> Maybe (Gtk.Callbacks.FontFilterFunc)
    -- ^ /@filter@/: a t'GI.Gtk.Callbacks.FontFilterFunc', or 'P.Nothing'
    -> m ()
fontChooserSetFilterFunc fontchooser filter = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    maybeFilter <- case filter of
        Nothing -> return (castPtrToFunPtr nullPtr)
        Just jFilter -> do
            jFilter' <- Gtk.Callbacks.mk_FontFilterFunc (Gtk.Callbacks.wrap_FontFilterFunc Nothing (Gtk.Callbacks.drop_closures_FontFilterFunc jFilter))
            return jFilter'
    let userData = castFunPtrToPtr maybeFilter
    let destroy = safeFreeFunPtrPtr
    gtk_font_chooser_set_filter_func fontchooser' maybeFilter userData destroy
    touchManagedPtr fontchooser
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetFilterFuncMethodInfo
instance (signature ~ (Maybe (Gtk.Callbacks.FontFilterFunc) -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetFilterFuncMethodInfo a signature where
    overloadedMethod = fontChooserSetFilterFunc

#endif

-- method FontChooser::set_font
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fontname"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a font name like \8220Helvetica 12\8221 or \8220Times Bold 18\8221"
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

foreign import ccall "gtk_font_chooser_set_font" gtk_font_chooser_set_font :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    CString ->                              -- fontname : TBasicType TUTF8
    IO ()

-- | Sets the currently-selected font.
-- 
-- /Since: 3.2/
fontChooserSetFont ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> T.Text
    -- ^ /@fontname@/: a font name like “Helvetica 12” or “Times Bold 18”
    -> m ()
fontChooserSetFont fontchooser fontname = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    fontname' <- textToCString fontname
    gtk_font_chooser_set_font fontchooser' fontname'
    touchManagedPtr fontchooser
    freeMem fontname'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetFontMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetFontMethodInfo a signature where
    overloadedMethod = fontChooserSetFont

#endif

-- method FontChooser::set_font_desc
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "font_desc"
--           , argType =
--               TInterface Name { namespace = "Pango" , name = "FontDescription" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #PangoFontDescription"
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

foreign import ccall "gtk_font_chooser_set_font_desc" gtk_font_chooser_set_font_desc :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    Ptr Pango.FontDescription.FontDescription -> -- font_desc : TInterface (Name {namespace = "Pango", name = "FontDescription"})
    IO ()

-- | Sets the currently-selected font from /@fontDesc@/.
-- 
-- /Since: 3.2/
fontChooserSetFontDesc ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> Pango.FontDescription.FontDescription
    -- ^ /@fontDesc@/: a t'GI.Pango.Structs.FontDescription.FontDescription'
    -> m ()
fontChooserSetFontDesc fontchooser fontDesc = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    fontDesc' <- unsafeManagedPtrGetPtr fontDesc
    gtk_font_chooser_set_font_desc fontchooser' fontDesc'
    touchManagedPtr fontchooser
    touchManagedPtr fontDesc
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetFontDescMethodInfo
instance (signature ~ (Pango.FontDescription.FontDescription -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetFontDescMethodInfo a signature where
    overloadedMethod = fontChooserSetFontDesc

#endif

-- method FontChooser::set_font_map
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fontmap"
--           , argType =
--               TInterface Name { namespace = "Pango" , name = "FontMap" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #PangoFontMap" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_set_font_map" gtk_font_chooser_set_font_map :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    Ptr Pango.FontMap.FontMap ->            -- fontmap : TInterface (Name {namespace = "Pango", name = "FontMap"})
    IO ()

-- | Sets a custom font map to use for this font chooser widget.
-- A custom font map can be used to present application-specific
-- fonts instead of or in addition to the normal system fonts.
-- 
-- 
-- === /C code/
-- >
-- >FcConfig *config;
-- >PangoFontMap *fontmap;
-- >
-- >config = FcInitLoadConfigAndFonts ();
-- >FcConfigAppFontAddFile (config, my_app_font_file);
-- >
-- >fontmap = pango_cairo_font_map_new_for_font_type (CAIRO_FONT_TYPE_FT);
-- >pango_fc_font_map_set_config (PANGO_FC_FONT_MAP (fontmap), config);
-- >
-- >gtk_font_chooser_set_font_map (font_chooser, fontmap);
-- 
-- 
-- Note that other GTK+ widgets will only be able to use the application-specific
-- font if it is present in the font map they use:
-- 
-- >
-- >context = gtk_widget_get_pango_context (label);
-- >pango_context_set_font_map (context, fontmap);
-- 
-- 
-- /Since: 3.18/
fontChooserSetFontMap ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a, Pango.FontMap.IsFontMap b) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> Maybe (b)
    -- ^ /@fontmap@/: a t'GI.Pango.Objects.FontMap.FontMap'
    -> m ()
fontChooserSetFontMap fontchooser fontmap = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    maybeFontmap <- case fontmap of
        Nothing -> return nullPtr
        Just jFontmap -> do
            jFontmap' <- unsafeManagedPtrCastPtr jFontmap
            return jFontmap'
    gtk_font_chooser_set_font_map fontchooser' maybeFontmap
    touchManagedPtr fontchooser
    whenJust fontmap touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetFontMapMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsFontChooser a, Pango.FontMap.IsFontMap b) => O.MethodInfo FontChooserSetFontMapMethodInfo a signature where
    overloadedMethod = fontChooserSetFontMap

#endif

-- method FontChooser::set_language
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "language"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a language" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_chooser_set_language" gtk_font_chooser_set_language :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    CString ->                              -- language : TBasicType TUTF8
    IO ()

-- | Sets the language to use for font features.
-- 
-- /Since: 3.24/
fontChooserSetLanguage ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> T.Text
    -- ^ /@language@/: a language
    -> m ()
fontChooserSetLanguage fontchooser language = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    language' <- textToCString language
    gtk_font_chooser_set_language fontchooser' language'
    touchManagedPtr fontchooser
    freeMem language'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetLanguageMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetLanguageMethodInfo a signature where
    overloadedMethod = fontChooserSetLanguage

#endif

-- method FontChooser::set_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "level"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooserLevel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the desired level of granularity"
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

foreign import ccall "gtk_font_chooser_set_level" gtk_font_chooser_set_level :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    CUInt ->                                -- level : TInterface (Name {namespace = "Gtk", name = "FontChooserLevel"})
    IO ()

-- | Sets the desired level of granularity for selecting fonts.
-- 
-- /Since: 3.24/
fontChooserSetLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> [Gtk.Flags.FontChooserLevel]
    -- ^ /@level@/: the desired level of granularity
    -> m ()
fontChooserSetLevel fontchooser level = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    let level' = gflagsToWord level
    gtk_font_chooser_set_level fontchooser' level'
    touchManagedPtr fontchooser
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetLevelMethodInfo
instance (signature ~ ([Gtk.Flags.FontChooserLevel] -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetLevelMethodInfo a signature where
    overloadedMethod = fontChooserSetLevel

#endif

-- method FontChooser::set_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the text to display in the preview area"
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

foreign import ccall "gtk_font_chooser_set_preview_text" gtk_font_chooser_set_preview_text :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

-- | Sets the text displayed in the preview area.
-- The /@text@/ is used to show how the selected font looks.
-- 
-- /Since: 3.2/
fontChooserSetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> T.Text
    -- ^ /@text@/: the text to display in the preview area
    -> m ()
fontChooserSetPreviewText fontchooser text = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    text' <- textToCString text
    gtk_font_chooser_set_preview_text fontchooser' text'
    touchManagedPtr fontchooser
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetPreviewTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetPreviewTextMethodInfo a signature where
    overloadedMethod = fontChooserSetPreviewText

#endif

-- method FontChooser::set_show_preview_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontchooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_preview_entry"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to show the editable preview entry or not"
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

foreign import ccall "gtk_font_chooser_set_show_preview_entry" gtk_font_chooser_set_show_preview_entry :: 
    Ptr FontChooser ->                      -- fontchooser : TInterface (Name {namespace = "Gtk", name = "FontChooser"})
    CInt ->                                 -- show_preview_entry : TBasicType TBoolean
    IO ()

-- | Shows or hides the editable preview entry.
-- 
-- /Since: 3.2/
fontChooserSetShowPreviewEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontChooser a) =>
    a
    -- ^ /@fontchooser@/: a t'GI.Gtk.Interfaces.FontChooser.FontChooser'
    -> Bool
    -- ^ /@showPreviewEntry@/: whether to show the editable preview entry or not
    -> m ()
fontChooserSetShowPreviewEntry fontchooser showPreviewEntry = liftIO $ do
    fontchooser' <- unsafeManagedPtrCastPtr fontchooser
    let showPreviewEntry' = (fromIntegral . fromEnum) showPreviewEntry
    gtk_font_chooser_set_show_preview_entry fontchooser' showPreviewEntry'
    touchManagedPtr fontchooser
    return ()

#if defined(ENABLE_OVERLOADING)
data FontChooserSetShowPreviewEntryMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFontChooser a) => O.MethodInfo FontChooserSetShowPreviewEntryMethodInfo a signature where
    overloadedMethod = fontChooserSetShowPreviewEntry

#endif

