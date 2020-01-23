{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.IconSource
    ( 

-- * Exported types
    IconSource(..)                          ,
    noIconSource                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIconSourceMethod                 ,
#endif


-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    IconSourceCopyMethodInfo                ,
#endif
    iconSourceCopy                          ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    IconSourceFreeMethodInfo                ,
#endif
    iconSourceFree                          ,


-- ** getDirection #method:getDirection#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetDirectionMethodInfo        ,
#endif
    iconSourceGetDirection                  ,


-- ** getDirectionWildcarded #method:getDirectionWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetDirectionWildcardedMethodInfo,
#endif
    iconSourceGetDirectionWildcarded        ,


-- ** getFilename #method:getFilename#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetFilenameMethodInfo         ,
#endif
    iconSourceGetFilename                   ,


-- ** getIconName #method:getIconName#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetIconNameMethodInfo         ,
#endif
    iconSourceGetIconName                   ,


-- ** getPixbuf #method:getPixbuf#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetPixbufMethodInfo           ,
#endif
    iconSourceGetPixbuf                     ,


-- ** getSize #method:getSize#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetSizeMethodInfo             ,
#endif
    iconSourceGetSize                       ,


-- ** getSizeWildcarded #method:getSizeWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetSizeWildcardedMethodInfo   ,
#endif
    iconSourceGetSizeWildcarded             ,


-- ** getState #method:getState#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetStateMethodInfo            ,
#endif
    iconSourceGetState                      ,


-- ** getStateWildcarded #method:getStateWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceGetStateWildcardedMethodInfo  ,
#endif
    iconSourceGetStateWildcarded            ,


-- ** new #method:new#

    iconSourceNew                           ,


-- ** setDirection #method:setDirection#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetDirectionMethodInfo        ,
#endif
    iconSourceSetDirection                  ,


-- ** setDirectionWildcarded #method:setDirectionWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetDirectionWildcardedMethodInfo,
#endif
    iconSourceSetDirectionWildcarded        ,


-- ** setFilename #method:setFilename#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetFilenameMethodInfo         ,
#endif
    iconSourceSetFilename                   ,


-- ** setIconName #method:setIconName#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetIconNameMethodInfo         ,
#endif
    iconSourceSetIconName                   ,


-- ** setPixbuf #method:setPixbuf#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetPixbufMethodInfo           ,
#endif
    iconSourceSetPixbuf                     ,


-- ** setSize #method:setSize#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetSizeMethodInfo             ,
#endif
    iconSourceSetSize                       ,


-- ** setSizeWildcarded #method:setSizeWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetSizeWildcardedMethodInfo   ,
#endif
    iconSourceSetSizeWildcarded             ,


-- ** setState #method:setState#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetStateMethodInfo            ,
#endif
    iconSourceSetState                      ,


-- ** setStateWildcarded #method:setStateWildcarded#

#if defined(ENABLE_OVERLOADING)
    IconSourceSetStateWildcardedMethodInfo  ,
#endif
    iconSourceSetStateWildcarded            ,




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

import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums

-- | Memory-managed wrapper type.
newtype IconSource = IconSource (ManagedPtr IconSource)
    deriving (Eq)
foreign import ccall "gtk_icon_source_get_type" c_gtk_icon_source_get_type :: 
    IO GType

instance BoxedObject IconSource where
    boxedType _ = c_gtk_icon_source_get_type

-- | Convert 'IconSource' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IconSource where
    toGValue o = do
        gtype <- c_gtk_icon_source_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr IconSource)
        B.ManagedPtr.newBoxed IconSource ptr
        
    

-- | A convenience alias for `Nothing` :: `Maybe` `IconSource`.
noIconSource :: Maybe IconSource
noIconSource = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IconSource
type instance O.AttributeList IconSource = IconSourceAttributeList
type IconSourceAttributeList = ('[ ] :: [(Symbol, *)])
#endif

-- method IconSource::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSource" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_source_new" gtk_icon_source_new :: 
    IO (Ptr IconSource)

{-# DEPRECATED iconSourceNew ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Creates a new t'GI.Gtk.Structs.IconSource.IconSource'. A t'GI.Gtk.Structs.IconSource.IconSource' contains a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' (or
-- image filename) that serves as the base image for one or more of the
-- icons in a t'GI.Gtk.Structs.IconSet.IconSet', along with a specification for which icons in the
-- icon set will be based on that pixbuf or image file. An icon set contains
-- a set of icons that represent “the same” logical concept in different states,
-- different global text directions, and different sizes.
-- 
-- So for example a web browser’s “Back to Previous Page” icon might
-- point in a different direction in Hebrew and in English; it might
-- look different when insensitive; and it might change size depending
-- on toolbar mode (small\/large icons). So a single icon set would
-- contain all those variants of the icon. t'GI.Gtk.Structs.IconSet.IconSet' contains a list
-- of t'GI.Gtk.Structs.IconSource.IconSource' from which it can derive specific icon variants in
-- the set.
-- 
-- In the simplest case, t'GI.Gtk.Structs.IconSet.IconSet' contains one source pixbuf from
-- which it derives all variants. The convenience function
-- 'GI.Gtk.Structs.IconSet.iconSetNewFromPixbuf' handles this case; if you only have
-- one source pixbuf, just use that function.
-- 
-- If you want to use a different base pixbuf for different icon
-- variants, you create multiple icon sources, mark which variants
-- they’ll be used to create, and add them to the icon set with
-- 'GI.Gtk.Structs.IconSet.iconSetAddSource'.
-- 
-- By default, the icon source has all parameters wildcarded. That is,
-- the icon source will be used as the base icon for any desired text
-- direction, widget state, or icon size.
iconSourceNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IconSource
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.IconSource.IconSource'
iconSourceNew  = liftIO $ do
    result <- gtk_icon_source_new
    checkUnexpectedReturnNULL "iconSourceNew" result
    result' <- (wrapBoxed IconSource) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconSource::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSource" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_source_copy" gtk_icon_source_copy :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO (Ptr IconSource)

{-# DEPRECATED iconSourceCopy ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Creates a copy of /@source@/; mostly useful for language bindings.
iconSourceCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m IconSource
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.IconSource.IconSource'
iconSourceCopy source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_copy source'
    checkUnexpectedReturnNULL "iconSourceCopy" result
    result' <- (wrapBoxed IconSource) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceCopyMethodInfo
instance (signature ~ (m IconSource), MonadIO m) => O.MethodInfo IconSourceCopyMethodInfo IconSource signature where
    overloadedMethod = iconSourceCopy

#endif

-- method IconSource::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_free" gtk_icon_source_free :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO ()

{-# DEPRECATED iconSourceFree ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Frees a dynamically-allocated icon source, along with its
-- filename, size, and pixbuf fields if those are not 'P.Nothing'.
iconSourceFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m ()
iconSourceFree source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    gtk_icon_source_free source'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo IconSourceFreeMethodInfo IconSource signature where
    overloadedMethod = iconSourceFree

#endif

-- method IconSource::get_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "TextDirection" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_source_get_direction" gtk_icon_source_get_direction :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CUInt

{-# DEPRECATED iconSourceGetDirection ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Obtains the text direction this icon source applies to. The return
-- value is only useful\/meaningful if the text direction is not
-- wildcarded.
iconSourceGetDirection ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Gtk.Enums.TextDirection
    -- ^ __Returns:__ text direction this source matches
iconSourceGetDirection source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_direction source'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetDirectionMethodInfo
instance (signature ~ (m Gtk.Enums.TextDirection), MonadIO m) => O.MethodInfo IconSourceGetDirectionMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetDirection

#endif

-- method IconSource::get_direction_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_direction_wildcarded" gtk_icon_source_get_direction_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CInt

{-# DEPRECATED iconSourceGetDirectionWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Gets the value set by 'GI.Gtk.Structs.IconSource.iconSourceSetDirectionWildcarded'.
iconSourceGetDirectionWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if this icon source is a base for any text direction variant
iconSourceGetDirectionWildcarded source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_direction_wildcarded source'
    let result' = (/= 0) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetDirectionWildcardedMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.MethodInfo IconSourceGetDirectionWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetDirectionWildcarded

#endif

-- method IconSource::get_filename
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TFileName)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_source_get_filename" gtk_icon_source_get_filename :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CString

{-# DEPRECATED iconSourceGetFilename ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Retrieves the source filename, or 'P.Nothing' if none is set. The
-- filename is not a copy, and should not be modified or expected to
-- persist beyond the lifetime of the icon source.
iconSourceGetFilename ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m [Char]
    -- ^ __Returns:__ image filename. This string must not
    -- be modified or freed.
iconSourceGetFilename source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_filename source'
    checkUnexpectedReturnNULL "iconSourceGetFilename" result
    result' <- cstringToString result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetFilenameMethodInfo
instance (signature ~ (m [Char]), MonadIO m) => O.MethodInfo IconSourceGetFilenameMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetFilename

#endif

-- method IconSource::get_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_icon_name" gtk_icon_source_get_icon_name :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CString

{-# DEPRECATED iconSourceGetIconName ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Retrieves the source icon name, or 'P.Nothing' if none is set. The
-- icon_name is not a copy, and should not be modified or expected to
-- persist beyond the lifetime of the icon source.
iconSourceGetIconName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m T.Text
    -- ^ __Returns:__ icon name. This string must not be modified or freed.
iconSourceGetIconName source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_icon_name source'
    checkUnexpectedReturnNULL "iconSourceGetIconName" result
    result' <- cstringToText result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetIconNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.MethodInfo IconSourceGetIconNameMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetIconName

#endif

-- method IconSource::get_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_pixbuf" gtk_icon_source_get_pixbuf :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED iconSourceGetPixbuf ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Retrieves the source pixbuf, or 'P.Nothing' if none is set.
-- In addition, if a filename source is in use, this
-- function in some cases will return the pixbuf from
-- loaded from the filename. This is, for example, true
-- for the GtkIconSource passed to the t'GI.Gtk.Objects.Style.Style' @/render_icon()/@
-- virtual function. The reference count on the pixbuf is
-- not incremented.
iconSourceGetPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ source pixbuf
iconSourceGetPixbuf source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_pixbuf source'
    checkUnexpectedReturnNULL "iconSourceGetPixbuf" result
    result' <- (newObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetPixbufMethodInfo
instance (signature ~ (m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m) => O.MethodInfo IconSourceGetPixbufMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetPixbuf

#endif

-- method IconSource::get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_size" gtk_icon_source_get_size :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO Int32

{-# DEPRECATED iconSourceGetSize ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Obtains the icon size this source applies to. The return value
-- is only useful\/meaningful if the icon size is not wildcarded.
iconSourceGetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Int32
    -- ^ __Returns:__ icon size (t'GI.Gtk.Enums.IconSize') this source matches.
iconSourceGetSize source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_size source'
    touchManagedPtr source
    return result

#if defined(ENABLE_OVERLOADING)
data IconSourceGetSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m) => O.MethodInfo IconSourceGetSizeMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetSize

#endif

-- method IconSource::get_size_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_size_wildcarded" gtk_icon_source_get_size_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CInt

{-# DEPRECATED iconSourceGetSizeWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Gets the value set by 'GI.Gtk.Structs.IconSource.iconSourceSetSizeWildcarded'.
iconSourceGetSizeWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if this icon source is a base for any icon size variant
iconSourceGetSizeWildcarded source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_size_wildcarded source'
    let result' = (/= 0) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetSizeWildcardedMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.MethodInfo IconSourceGetSizeWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetSizeWildcarded

#endif

-- method IconSource::get_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "StateType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_source_get_state" gtk_icon_source_get_state :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CUInt

{-# DEPRECATED iconSourceGetState ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Obtains the widget state this icon source applies to. The return
-- value is only useful\/meaningful if the widget state is not
-- wildcarded.
iconSourceGetState ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Gtk.Enums.StateType
    -- ^ __Returns:__ widget state this source matches
iconSourceGetState source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_state source'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetStateMethodInfo
instance (signature ~ (m Gtk.Enums.StateType), MonadIO m) => O.MethodInfo IconSourceGetStateMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetState

#endif

-- method IconSource::get_state_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_get_state_wildcarded" gtk_icon_source_get_state_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO CInt

{-# DEPRECATED iconSourceGetStateWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Gets the value set by 'GI.Gtk.Structs.IconSource.iconSourceSetStateWildcarded'.
iconSourceGetStateWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if this icon source is a base for any widget state variant
iconSourceGetStateWildcarded source = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    result <- gtk_icon_source_get_state_wildcarded source'
    let result' = (/= 0) result
    touchManagedPtr source
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSourceGetStateWildcardedMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.MethodInfo IconSourceGetStateWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceGetStateWildcarded

#endif

-- method IconSource::set_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "direction"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextDirection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text direction this source applies to"
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

foreign import ccall "gtk_icon_source_set_direction" gtk_icon_source_set_direction :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CUInt ->                                -- direction : TInterface (Name {namespace = "Gtk", name = "TextDirection"})
    IO ()

{-# DEPRECATED iconSourceSetDirection ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets the text direction this icon source is intended to be used
-- with.
-- 
-- Setting the text direction on an icon source makes no difference
-- if the text direction is wildcarded. Therefore, you should usually
-- call 'GI.Gtk.Structs.IconSource.iconSourceSetDirectionWildcarded' to un-wildcard it
-- in addition to calling this function.
iconSourceSetDirection ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Gtk.Enums.TextDirection
    -- ^ /@direction@/: text direction this source applies to
    -> m ()
iconSourceSetDirection source direction = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    let direction' = (fromIntegral . fromEnum) direction
    gtk_icon_source_set_direction source' direction'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetDirectionMethodInfo
instance (signature ~ (Gtk.Enums.TextDirection -> m ()), MonadIO m) => O.MethodInfo IconSourceSetDirectionMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetDirection

#endif

-- method IconSource::set_direction_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to wildcard the text direction"
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

foreign import ccall "gtk_icon_source_set_direction_wildcarded" gtk_icon_source_set_direction_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

{-# DEPRECATED iconSourceSetDirectionWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | If the text direction is wildcarded, this source can be used
-- as the base image for an icon in any t'GI.Gtk.Enums.TextDirection'.
-- If the text direction is not wildcarded, then the
-- text direction the icon source applies to should be set
-- with 'GI.Gtk.Structs.IconSource.iconSourceSetDirection', and the icon source
-- will only be used with that text direction.
-- 
-- t'GI.Gtk.Structs.IconSet.IconSet' prefers non-wildcarded sources (exact matches) over
-- wildcarded sources, and will use an exact match when possible.
iconSourceSetDirectionWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Bool
    -- ^ /@setting@/: 'P.True' to wildcard the text direction
    -> m ()
iconSourceSetDirectionWildcarded source setting = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    let setting' = (fromIntegral . fromEnum) setting
    gtk_icon_source_set_direction_wildcarded source' setting'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetDirectionWildcardedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m) => O.MethodInfo IconSourceSetDirectionWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetDirectionWildcarded

#endif

-- method IconSource::set_filename
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "image file to use" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_source_set_filename" gtk_icon_source_set_filename :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CString ->                              -- filename : TBasicType TFileName
    IO ()

{-# DEPRECATED iconSourceSetFilename ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets the name of an image file to use as a base image when creating
-- icon variants for t'GI.Gtk.Structs.IconSet.IconSet'. The filename must be absolute.
iconSourceSetFilename ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> [Char]
    -- ^ /@filename@/: image file to use
    -> m ()
iconSourceSetFilename source filename = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    filename' <- stringToCString filename
    gtk_icon_source_set_filename source' filename'
    touchManagedPtr source
    freeMem filename'
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetFilenameMethodInfo
instance (signature ~ ([Char] -> m ()), MonadIO m) => O.MethodInfo IconSourceSetFilenameMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetFilename

#endif

-- method IconSource::set_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "name of icon to use"
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

foreign import ccall "gtk_icon_source_set_icon_name" gtk_icon_source_set_icon_name :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CString ->                              -- icon_name : TBasicType TUTF8
    IO ()

{-# DEPRECATED iconSourceSetIconName ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets the name of an icon to look up in the current icon theme
-- to use as a base image when creating icon variants for t'GI.Gtk.Structs.IconSet.IconSet'.
iconSourceSetIconName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Maybe (T.Text)
    -- ^ /@iconName@/: name of icon to use
    -> m ()
iconSourceSetIconName source iconName = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    maybeIconName <- case iconName of
        Nothing -> return nullPtr
        Just jIconName -> do
            jIconName' <- textToCString jIconName
            return jIconName'
    gtk_icon_source_set_icon_name source' maybeIconName
    touchManagedPtr source
    freeMem maybeIconName
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetIconNameMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m) => O.MethodInfo IconSourceSetIconNameMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetIconName

#endif

-- method IconSource::set_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "pixbuf to use as a source"
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

foreign import ccall "gtk_icon_source_set_pixbuf" gtk_icon_source_set_pixbuf :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

{-# DEPRECATED iconSourceSetPixbuf ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets a pixbuf to use as a base image when creating icon variants
-- for t'GI.Gtk.Structs.IconSet.IconSet'.
iconSourceSetPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, GdkPixbuf.Pixbuf.IsPixbuf a) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> a
    -- ^ /@pixbuf@/: pixbuf to use as a source
    -> m ()
iconSourceSetPixbuf source pixbuf = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    pixbuf' <- unsafeManagedPtrCastPtr pixbuf
    gtk_icon_source_set_pixbuf source' pixbuf'
    touchManagedPtr source
    touchManagedPtr pixbuf
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetPixbufMethodInfo
instance (signature ~ (a -> m ()), MonadIO m, GdkPixbuf.Pixbuf.IsPixbuf a) => O.MethodInfo IconSourceSetPixbufMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetPixbuf

#endif

-- method IconSource::set_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "icon size (#GtkIconSize) this source applies to"
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

foreign import ccall "gtk_icon_source_set_size" gtk_icon_source_set_size :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    Int32 ->                                -- size : TBasicType TInt
    IO ()

{-# DEPRECATED iconSourceSetSize ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets the icon size this icon source is intended to be used
-- with.
-- 
-- Setting the icon size on an icon source makes no difference
-- if the size is wildcarded. Therefore, you should usually
-- call 'GI.Gtk.Structs.IconSource.iconSourceSetSizeWildcarded' to un-wildcard it
-- in addition to calling this function.
iconSourceSetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Int32
    -- ^ /@size@/: icon size (t'GI.Gtk.Enums.IconSize') this source applies to
    -> m ()
iconSourceSetSize source size = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    gtk_icon_source_set_size source' size
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetSizeMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m) => O.MethodInfo IconSourceSetSizeMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetSize

#endif

-- method IconSource::set_size_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to wildcard the widget state"
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

foreign import ccall "gtk_icon_source_set_size_wildcarded" gtk_icon_source_set_size_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

{-# DEPRECATED iconSourceSetSizeWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | If the icon size is wildcarded, this source can be used as the base
-- image for an icon of any size.  If the size is not wildcarded, then
-- the size the source applies to should be set with
-- 'GI.Gtk.Structs.IconSource.iconSourceSetSize' and the icon source will only be used
-- with that specific size.
-- 
-- t'GI.Gtk.Structs.IconSet.IconSet' prefers non-wildcarded sources (exact matches) over
-- wildcarded sources, and will use an exact match when possible.
-- 
-- t'GI.Gtk.Structs.IconSet.IconSet' will normally scale wildcarded source images to produce
-- an appropriate icon at a given size, but will not change the size
-- of source images that match exactly.
iconSourceSetSizeWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Bool
    -- ^ /@setting@/: 'P.True' to wildcard the widget state
    -> m ()
iconSourceSetSizeWildcarded source setting = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    let setting' = (fromIntegral . fromEnum) setting
    gtk_icon_source_set_size_wildcarded source' setting'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetSizeWildcardedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m) => O.MethodInfo IconSourceSetSizeWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetSizeWildcarded

#endif

-- method IconSource::set_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StateType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "widget state this source applies to"
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

foreign import ccall "gtk_icon_source_set_state" gtk_icon_source_set_state :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "StateType"})
    IO ()

{-# DEPRECATED iconSourceSetState ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Sets the widget state this icon source is intended to be used
-- with.
-- 
-- Setting the widget state on an icon source makes no difference
-- if the state is wildcarded. Therefore, you should usually
-- call 'GI.Gtk.Structs.IconSource.iconSourceSetStateWildcarded' to un-wildcard it
-- in addition to calling this function.
iconSourceSetState ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Gtk.Enums.StateType
    -- ^ /@state@/: widget state this source applies to
    -> m ()
iconSourceSetState source state = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    let state' = (fromIntegral . fromEnum) state
    gtk_icon_source_set_state source' state'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetStateMethodInfo
instance (signature ~ (Gtk.Enums.StateType -> m ()), MonadIO m) => O.MethodInfo IconSourceSetStateMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetState

#endif

-- method IconSource::set_state_wildcarded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to wildcard the widget state"
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

foreign import ccall "gtk_icon_source_set_state_wildcarded" gtk_icon_source_set_state_wildcarded :: 
    Ptr IconSource ->                       -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

{-# DEPRECATED iconSourceSetStateWildcarded ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | If the widget state is wildcarded, this source can be used as the
-- base image for an icon in any t'GI.Gtk.Enums.StateType'.  If the widget state
-- is not wildcarded, then the state the source applies to should be
-- set with 'GI.Gtk.Structs.IconSource.iconSourceSetState' and the icon source will
-- only be used with that specific state.
-- 
-- t'GI.Gtk.Structs.IconSet.IconSet' prefers non-wildcarded sources (exact matches) over
-- wildcarded sources, and will use an exact match when possible.
-- 
-- t'GI.Gtk.Structs.IconSet.IconSet' will normally transform wildcarded source images to
-- produce an appropriate icon for a given state, for example
-- lightening an image on prelight, but will not modify source images
-- that match exactly.
iconSourceSetStateWildcarded ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> Bool
    -- ^ /@setting@/: 'P.True' to wildcard the widget state
    -> m ()
iconSourceSetStateWildcarded source setting = liftIO $ do
    source' <- unsafeManagedPtrGetPtr source
    let setting' = (fromIntegral . fromEnum) setting
    gtk_icon_source_set_state_wildcarded source' setting'
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSourceSetStateWildcardedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m) => O.MethodInfo IconSourceSetStateWildcardedMethodInfo IconSource signature where
    overloadedMethod = iconSourceSetStateWildcarded

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveIconSourceMethod (t :: Symbol) (o :: *) :: * where
    ResolveIconSourceMethod "copy" o = IconSourceCopyMethodInfo
    ResolveIconSourceMethod "free" o = IconSourceFreeMethodInfo
    ResolveIconSourceMethod "getDirection" o = IconSourceGetDirectionMethodInfo
    ResolveIconSourceMethod "getDirectionWildcarded" o = IconSourceGetDirectionWildcardedMethodInfo
    ResolveIconSourceMethod "getFilename" o = IconSourceGetFilenameMethodInfo
    ResolveIconSourceMethod "getIconName" o = IconSourceGetIconNameMethodInfo
    ResolveIconSourceMethod "getPixbuf" o = IconSourceGetPixbufMethodInfo
    ResolveIconSourceMethod "getSize" o = IconSourceGetSizeMethodInfo
    ResolveIconSourceMethod "getSizeWildcarded" o = IconSourceGetSizeWildcardedMethodInfo
    ResolveIconSourceMethod "getState" o = IconSourceGetStateMethodInfo
    ResolveIconSourceMethod "getStateWildcarded" o = IconSourceGetStateWildcardedMethodInfo
    ResolveIconSourceMethod "setDirection" o = IconSourceSetDirectionMethodInfo
    ResolveIconSourceMethod "setDirectionWildcarded" o = IconSourceSetDirectionWildcardedMethodInfo
    ResolveIconSourceMethod "setFilename" o = IconSourceSetFilenameMethodInfo
    ResolveIconSourceMethod "setIconName" o = IconSourceSetIconNameMethodInfo
    ResolveIconSourceMethod "setPixbuf" o = IconSourceSetPixbufMethodInfo
    ResolveIconSourceMethod "setSize" o = IconSourceSetSizeMethodInfo
    ResolveIconSourceMethod "setSizeWildcarded" o = IconSourceSetSizeWildcardedMethodInfo
    ResolveIconSourceMethod "setState" o = IconSourceSetStateMethodInfo
    ResolveIconSourceMethod "setStateWildcarded" o = IconSourceSetStateWildcardedMethodInfo
    ResolveIconSourceMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIconSourceMethod t IconSource, O.MethodInfo info IconSource p) => OL.IsLabel t (IconSource -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

