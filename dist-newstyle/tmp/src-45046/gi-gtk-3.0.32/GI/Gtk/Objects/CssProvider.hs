{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkCssProvider is an object implementing the t'GI.Gtk.Interfaces.StyleProvider.StyleProvider' interface.
-- It is able to parse [CSS-like][css-overview] input in order to style widgets.
-- 
-- An application can make GTK+ parse a specific CSS style sheet by calling
-- 'GI.Gtk.Objects.CssProvider.cssProviderLoadFromFile' or 'GI.Gtk.Objects.CssProvider.cssProviderLoadFromResource'
-- and adding the provider with 'GI.Gtk.Objects.StyleContext.styleContextAddProvider' or
-- 'GI.Gtk.Objects.StyleContext.styleContextAddProviderForScreen'.
-- 
-- In addition, certain files will be read when GTK+ is initialized. First, the
-- file @$XDG_CONFIG_HOME\/gtk-3.0\/gtk.css@ is loaded if it exists. Then, GTK+
-- loads the first existing file among
-- @XDG_DATA_HOME\/themes\/THEME\/gtk-VERSION\/gtk.css@,
-- @$HOME\/.themes\/THEME\/gtk-VERSION\/gtk.css@,
-- @$XDG_DATA_DIRS\/themes\/THEME\/gtk-VERSION\/gtk.css@ and
-- @DATADIR\/share\/themes\/THEME\/gtk-VERSION\/gtk.css@, where @THEME@ is the name of
-- the current theme (see the t'GI.Gtk.Objects.Settings.Settings':@/gtk-theme-name/@ setting), @DATADIR@
-- is the prefix configured when GTK+ was compiled (unless overridden by the
-- @GTK_DATA_PREFIX@ environment variable), and @VERSION@ is the GTK+ version number.
-- If no file is found for the current version, GTK+ tries older versions all the
-- way back to 3.0.
-- 
-- In the same way, GTK+ tries to load a gtk-keys.css file for the current
-- key theme, as defined by t'GI.Gtk.Objects.Settings.Settings':@/gtk-key-theme-name/@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CssProvider
    ( 

-- * Exported types
    CssProvider(..)                         ,
    IsCssProvider                           ,
    toCssProvider                           ,
    noCssProvider                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCssProviderMethod                ,
#endif


-- ** getDefault #method:getDefault#

    cssProviderGetDefault                   ,


-- ** getNamed #method:getNamed#

    cssProviderGetNamed                     ,


-- ** loadFromData #method:loadFromData#

#if defined(ENABLE_OVERLOADING)
    CssProviderLoadFromDataMethodInfo       ,
#endif
    cssProviderLoadFromData                 ,


-- ** loadFromFile #method:loadFromFile#

#if defined(ENABLE_OVERLOADING)
    CssProviderLoadFromFileMethodInfo       ,
#endif
    cssProviderLoadFromFile                 ,


-- ** loadFromPath #method:loadFromPath#

#if defined(ENABLE_OVERLOADING)
    CssProviderLoadFromPathMethodInfo       ,
#endif
    cssProviderLoadFromPath                 ,


-- ** loadFromResource #method:loadFromResource#

#if defined(ENABLE_OVERLOADING)
    CssProviderLoadFromResourceMethodInfo   ,
#endif
    cssProviderLoadFromResource             ,


-- ** new #method:new#

    cssProviderNew                          ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    CssProviderToStringMethodInfo           ,
#endif
    cssProviderToString                     ,




 -- * Signals
-- ** parsingError #signal:parsingError#

    C_CssProviderParsingErrorCallback       ,
    CssProviderParsingErrorCallback         ,
#if defined(ENABLE_OVERLOADING)
    CssProviderParsingErrorSignalInfo       ,
#endif
    afterCssProviderParsingError            ,
    genClosure_CssProviderParsingError      ,
    mk_CssProviderParsingErrorCallback      ,
    noCssProviderParsingErrorCallback       ,
    onCssProviderParsingError               ,
    wrap_CssProviderParsingErrorCallback    ,




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
import qualified GI.Gio.Interfaces.File as Gio.File
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.StyleProvider as Gtk.StyleProvider
import {-# SOURCE #-} qualified GI.Gtk.Structs.CssSection as Gtk.CssSection

-- | Memory-managed wrapper type.
newtype CssProvider = CssProvider (ManagedPtr CssProvider)
    deriving (Eq)
foreign import ccall "gtk_css_provider_get_type"
    c_gtk_css_provider_get_type :: IO GType

instance GObject CssProvider where
    gobjectType = c_gtk_css_provider_get_type
    

-- | Convert 'CssProvider' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CssProvider where
    toGValue o = do
        gtype <- c_gtk_css_provider_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CssProvider)
        B.ManagedPtr.newObject CssProvider ptr
        
    

-- | Type class for types which can be safely cast to `CssProvider`, for instance with `toCssProvider`.
class (GObject o, O.IsDescendantOf CssProvider o) => IsCssProvider o
instance (GObject o, O.IsDescendantOf CssProvider o) => IsCssProvider o

instance O.HasParentTypes CssProvider
type instance O.ParentTypes CssProvider = '[GObject.Object.Object, Gtk.StyleProvider.StyleProvider]

-- | Cast to `CssProvider`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCssProvider :: (MonadIO m, IsCssProvider o) => o -> m CssProvider
toCssProvider = liftIO . unsafeCastTo CssProvider

-- | A convenience alias for `Nothing` :: `Maybe` `CssProvider`.
noCssProvider :: Maybe CssProvider
noCssProvider = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCssProviderMethod (t :: Symbol) (o :: *) :: * where
    ResolveCssProviderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCssProviderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCssProviderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCssProviderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCssProviderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCssProviderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCssProviderMethod "loadFromData" o = CssProviderLoadFromDataMethodInfo
    ResolveCssProviderMethod "loadFromFile" o = CssProviderLoadFromFileMethodInfo
    ResolveCssProviderMethod "loadFromPath" o = CssProviderLoadFromPathMethodInfo
    ResolveCssProviderMethod "loadFromResource" o = CssProviderLoadFromResourceMethodInfo
    ResolveCssProviderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCssProviderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCssProviderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCssProviderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCssProviderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCssProviderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCssProviderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCssProviderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCssProviderMethod "toString" o = CssProviderToStringMethodInfo
    ResolveCssProviderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCssProviderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCssProviderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCssProviderMethod "getIconFactory" o = Gtk.StyleProvider.StyleProviderGetIconFactoryMethodInfo
    ResolveCssProviderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCssProviderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCssProviderMethod "getStyle" o = Gtk.StyleProvider.StyleProviderGetStyleMethodInfo
    ResolveCssProviderMethod "getStyleProperty" o = Gtk.StyleProvider.StyleProviderGetStylePropertyMethodInfo
    ResolveCssProviderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCssProviderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCssProviderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCssProviderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCssProviderMethod t CssProvider, O.MethodInfo info CssProvider p) => OL.IsLabel t (CssProvider -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal CssProvider::parsing-error
-- | Signals that a parsing error occurred. the /@path@/, /@line@/ and /@position@/
-- describe the actual location of the error as accurately as possible.
-- 
-- Parsing errors are never fatal, so the parsing will resume after
-- the error. Errors may however cause parts of the given
-- data or even all of it to not be parsed at all. So it is a useful idea
-- to check that the parsing succeeds by connecting to this signal.
-- 
-- Note that this signal may be emitted at any time as the css provider
-- may opt to defer parsing parts or all of the input to a later time
-- than when a loading function was called.
type CssProviderParsingErrorCallback =
    Gtk.CssSection.CssSection
    -- ^ /@section@/: section the error happened in
    -> GError
    -- ^ /@error@/: The parsing error
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CssProviderParsingErrorCallback`@.
noCssProviderParsingErrorCallback :: Maybe CssProviderParsingErrorCallback
noCssProviderParsingErrorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CssProviderParsingErrorCallback =
    Ptr () ->                               -- object
    Ptr Gtk.CssSection.CssSection ->
    Ptr GError ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CssProviderParsingErrorCallback`.
foreign import ccall "wrapper"
    mk_CssProviderParsingErrorCallback :: C_CssProviderParsingErrorCallback -> IO (FunPtr C_CssProviderParsingErrorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CssProviderParsingError :: MonadIO m => CssProviderParsingErrorCallback -> m (GClosure C_CssProviderParsingErrorCallback)
genClosure_CssProviderParsingError cb = liftIO $ do
    let cb' = wrap_CssProviderParsingErrorCallback cb
    mk_CssProviderParsingErrorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CssProviderParsingErrorCallback` into a `C_CssProviderParsingErrorCallback`.
wrap_CssProviderParsingErrorCallback ::
    CssProviderParsingErrorCallback ->
    C_CssProviderParsingErrorCallback
wrap_CssProviderParsingErrorCallback _cb _ section error_ _ = do
    B.ManagedPtr.withTransient Gtk.CssSection.CssSection section $ \section' -> do
        error_' <- (newBoxed GError) error_
        _cb  section' error_'


-- | Connect a signal handler for the [parsingError](#signal:parsingError) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cssProvider #parsingError callback
-- @
-- 
-- 
onCssProviderParsingError :: (IsCssProvider a, MonadIO m) => a -> CssProviderParsingErrorCallback -> m SignalHandlerId
onCssProviderParsingError obj cb = liftIO $ do
    let cb' = wrap_CssProviderParsingErrorCallback cb
    cb'' <- mk_CssProviderParsingErrorCallback cb'
    connectSignalFunPtr obj "parsing-error" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [parsingError](#signal:parsingError) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cssProvider #parsingError callback
-- @
-- 
-- 
afterCssProviderParsingError :: (IsCssProvider a, MonadIO m) => a -> CssProviderParsingErrorCallback -> m SignalHandlerId
afterCssProviderParsingError obj cb = liftIO $ do
    let cb' = wrap_CssProviderParsingErrorCallback cb
    cb'' <- mk_CssProviderParsingErrorCallback cb'
    connectSignalFunPtr obj "parsing-error" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CssProviderParsingErrorSignalInfo
instance SignalInfo CssProviderParsingErrorSignalInfo where
    type HaskellCallbackType CssProviderParsingErrorSignalInfo = CssProviderParsingErrorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CssProviderParsingErrorCallback cb
        cb'' <- mk_CssProviderParsingErrorCallback cb'
        connectSignalFunPtr obj "parsing-error" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CssProvider
type instance O.AttributeList CssProvider = CssProviderAttributeList
type CssProviderAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CssProvider = CssProviderSignalList
type CssProviderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("parsingError", CssProviderParsingErrorSignalInfo)] :: [(Symbol, *)])

#endif

-- method CssProvider::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CssProvider" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_css_provider_new" gtk_css_provider_new :: 
    IO (Ptr CssProvider)

-- | Returns a newly created t'GI.Gtk.Objects.CssProvider.CssProvider'.
cssProviderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CssProvider
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.CssProvider.CssProvider'
cssProviderNew  = liftIO $ do
    result <- gtk_css_provider_new
    checkUnexpectedReturnNULL "cssProviderNew" result
    result' <- (wrapObject CssProvider) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CssProvider::load_from_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "css_provider"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CssProvider" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCssProvider" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TCArray False (-1) 2 (TBasicType TUInt8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "CSS data loaded in memory"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the length of @data in bytes, or -1 for NUL terminated strings. If\n  @length is not -1, the code will assume it is not NUL terminated and will\n  potentially do a copy."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just
--                          "the length of @data in bytes, or -1 for NUL terminated strings. If\n  @length is not -1, the code will assume it is not NUL terminated and will\n  potentially do a copy."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "gtk_css_provider_load_from_data" gtk_css_provider_load_from_data :: 
    Ptr CssProvider ->                      -- css_provider : TInterface (Name {namespace = "Gtk", name = "CssProvider"})
    Ptr Word8 ->                            -- data : TCArray False (-1) 2 (TBasicType TUInt8)
    Int64 ->                                -- length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Loads /@data@/ into /@cssProvider@/, and by doing so clears any previously loaded
-- information.
cssProviderLoadFromData ::
    (B.CallStack.HasCallStack, MonadIO m, IsCssProvider a) =>
    a
    -- ^ /@cssProvider@/: a t'GI.Gtk.Objects.CssProvider.CssProvider'
    -> ByteString
    -- ^ /@data@/: CSS data loaded in memory
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cssProviderLoadFromData cssProvider data_ = liftIO $ do
    let length_ = fromIntegral $ B.length data_
    cssProvider' <- unsafeManagedPtrCastPtr cssProvider
    data_' <- packByteString data_
    onException (do
        _ <- propagateGError $ gtk_css_provider_load_from_data cssProvider' data_' length_
        touchManagedPtr cssProvider
        freeMem data_'
        return ()
     ) (do
        freeMem data_'
     )

#if defined(ENABLE_OVERLOADING)
data CssProviderLoadFromDataMethodInfo
instance (signature ~ (ByteString -> m ()), MonadIO m, IsCssProvider a) => O.MethodInfo CssProviderLoadFromDataMethodInfo a signature where
    overloadedMethod = cssProviderLoadFromData

#endif

-- method CssProvider::load_from_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "css_provider"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CssProvider" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCssProvider" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GFile pointing to a file to load"
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
-- throws : True
-- Skip return : False

foreign import ccall "gtk_css_provider_load_from_file" gtk_css_provider_load_from_file :: 
    Ptr CssProvider ->                      -- css_provider : TInterface (Name {namespace = "Gtk", name = "CssProvider"})
    Ptr Gio.File.File ->                    -- file : TInterface (Name {namespace = "Gio", name = "File"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Loads the data contained in /@file@/ into /@cssProvider@/, making it
-- clear any previously loaded information.
cssProviderLoadFromFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsCssProvider a, Gio.File.IsFile b) =>
    a
    -- ^ /@cssProvider@/: a t'GI.Gtk.Objects.CssProvider.CssProvider'
    -> b
    -- ^ /@file@/: t'GI.Gio.Interfaces.File.File' pointing to a file to load
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cssProviderLoadFromFile cssProvider file = liftIO $ do
    cssProvider' <- unsafeManagedPtrCastPtr cssProvider
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        _ <- propagateGError $ gtk_css_provider_load_from_file cssProvider' file'
        touchManagedPtr cssProvider
        touchManagedPtr file
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CssProviderLoadFromFileMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCssProvider a, Gio.File.IsFile b) => O.MethodInfo CssProviderLoadFromFileMethodInfo a signature where
    overloadedMethod = cssProviderLoadFromFile

#endif

-- method CssProvider::load_from_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "css_provider"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CssProvider" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCssProvider" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "path"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the path of a filename to load, in the GLib filename encoding"
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
-- throws : True
-- Skip return : False

foreign import ccall "gtk_css_provider_load_from_path" gtk_css_provider_load_from_path :: 
    Ptr CssProvider ->                      -- css_provider : TInterface (Name {namespace = "Gtk", name = "CssProvider"})
    CString ->                              -- path : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Loads the data contained in /@path@/ into /@cssProvider@/, making it clear
-- any previously loaded information.
cssProviderLoadFromPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsCssProvider a) =>
    a
    -- ^ /@cssProvider@/: a t'GI.Gtk.Objects.CssProvider.CssProvider'
    -> T.Text
    -- ^ /@path@/: the path of a filename to load, in the GLib filename encoding
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cssProviderLoadFromPath cssProvider path = liftIO $ do
    cssProvider' <- unsafeManagedPtrCastPtr cssProvider
    path' <- textToCString path
    onException (do
        _ <- propagateGError $ gtk_css_provider_load_from_path cssProvider' path'
        touchManagedPtr cssProvider
        freeMem path'
        return ()
     ) (do
        freeMem path'
     )

#if defined(ENABLE_OVERLOADING)
data CssProviderLoadFromPathMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCssProvider a) => O.MethodInfo CssProviderLoadFromPathMethodInfo a signature where
    overloadedMethod = cssProviderLoadFromPath

#endif

-- method CssProvider::load_from_resource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "css_provider"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CssProvider" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCssProvider" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resource_path"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GResource resource path"
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

foreign import ccall "gtk_css_provider_load_from_resource" gtk_css_provider_load_from_resource :: 
    Ptr CssProvider ->                      -- css_provider : TInterface (Name {namespace = "Gtk", name = "CssProvider"})
    CString ->                              -- resource_path : TBasicType TUTF8
    IO ()

-- | Loads the data contained in the resource at /@resourcePath@/ into
-- the t'GI.Gtk.Objects.CssProvider.CssProvider', clearing any previously loaded information.
-- 
-- To track errors while loading CSS, connect to the
-- [parsingError]("GI.Gtk.Objects.CssProvider#signal:parsingError") signal.
-- 
-- /Since: 3.16/
cssProviderLoadFromResource ::
    (B.CallStack.HasCallStack, MonadIO m, IsCssProvider a) =>
    a
    -- ^ /@cssProvider@/: a t'GI.Gtk.Objects.CssProvider.CssProvider'
    -> T.Text
    -- ^ /@resourcePath@/: a t'GI.Gio.Structs.Resource.Resource' resource path
    -> m ()
cssProviderLoadFromResource cssProvider resourcePath = liftIO $ do
    cssProvider' <- unsafeManagedPtrCastPtr cssProvider
    resourcePath' <- textToCString resourcePath
    gtk_css_provider_load_from_resource cssProvider' resourcePath'
    touchManagedPtr cssProvider
    freeMem resourcePath'
    return ()

#if defined(ENABLE_OVERLOADING)
data CssProviderLoadFromResourceMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCssProvider a) => O.MethodInfo CssProviderLoadFromResourceMethodInfo a signature where
    overloadedMethod = cssProviderLoadFromResource

#endif

-- method CssProvider::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "provider"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CssProvider" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the provider to write to a string"
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

foreign import ccall "gtk_css_provider_to_string" gtk_css_provider_to_string :: 
    Ptr CssProvider ->                      -- provider : TInterface (Name {namespace = "Gtk", name = "CssProvider"})
    IO CString

-- | Converts the /@provider@/ into a string representation in CSS
-- format.
-- 
-- Using 'GI.Gtk.Objects.CssProvider.cssProviderLoadFromData' with the return value
-- from this function on a new provider created with
-- 'GI.Gtk.Objects.CssProvider.cssProviderNew' will basically create a duplicate of
-- this /@provider@/.
-- 
-- /Since: 3.2/
cssProviderToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsCssProvider a) =>
    a
    -- ^ /@provider@/: the provider to write to a string
    -> m T.Text
    -- ^ __Returns:__ a new string representing the /@provider@/.
cssProviderToString provider = liftIO $ do
    provider' <- unsafeManagedPtrCastPtr provider
    result <- gtk_css_provider_to_string provider'
    checkUnexpectedReturnNULL "cssProviderToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr provider
    return result'

#if defined(ENABLE_OVERLOADING)
data CssProviderToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsCssProvider a) => O.MethodInfo CssProviderToStringMethodInfo a signature where
    overloadedMethod = cssProviderToString

#endif

-- method CssProvider::get_default
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CssProvider" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_css_provider_get_default" gtk_css_provider_get_default :: 
    IO (Ptr CssProvider)

{-# DEPRECATED cssProviderGetDefault ["(Since version 3.24)","Use 'GI.Gtk.Objects.CssProvider.cssProviderNew' instead."] #-}
-- | Returns the provider containing the style settings used as a
-- fallback for all widgets.
cssProviderGetDefault ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CssProvider
    -- ^ __Returns:__ The provider used for fallback styling.
    --          This memory is owned by GTK+, and you must not free it.
cssProviderGetDefault  = liftIO $ do
    result <- gtk_css_provider_get_default
    checkUnexpectedReturnNULL "cssProviderGetDefault" result
    result' <- (newObject CssProvider) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CssProvider::get_named
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A theme name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "variant"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "variant to load, for example, \"dark\", or\n    %NULL for the default"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CssProvider" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_css_provider_get_named" gtk_css_provider_get_named :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- variant : TBasicType TUTF8
    IO (Ptr CssProvider)

-- | Loads a theme from the usual theme paths
cssProviderGetNamed ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: A theme name
    -> Maybe (T.Text)
    -- ^ /@variant@/: variant to load, for example, \"dark\", or
    --     'P.Nothing' for the default
    -> m CssProvider
    -- ^ __Returns:__ a t'GI.Gtk.Objects.CssProvider.CssProvider' with the theme loaded.
    --     This memory is owned by GTK+, and you must not free it.
cssProviderGetNamed name variant = liftIO $ do
    name' <- textToCString name
    maybeVariant <- case variant of
        Nothing -> return nullPtr
        Just jVariant -> do
            jVariant' <- textToCString jVariant
            return jVariant'
    result <- gtk_css_provider_get_named name' maybeVariant
    checkUnexpectedReturnNULL "cssProviderGetNamed" result
    result' <- (newObject CssProvider) result
    freeMem name'
    freeMem maybeVariant
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

