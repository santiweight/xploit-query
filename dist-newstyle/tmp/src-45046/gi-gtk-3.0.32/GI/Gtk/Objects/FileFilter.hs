{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkFileFilter can be used to restrict the files being shown in a
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser'. Files can be filtered based on their name (with
-- 'GI.Gtk.Objects.FileFilter.fileFilterAddPattern'), on their mime type (with
-- 'GI.Gtk.Objects.FileFilter.fileFilterAddMimeType'), or by a custom filter function
-- (with 'GI.Gtk.Objects.FileFilter.fileFilterAddCustom').
-- 
-- Filtering by mime types handles aliasing and subclassing of mime
-- types; e.g. a filter for text\/plain also matches a file with mime
-- type application\/rtf, since application\/rtf is a subclass of
-- text\/plain. Note that t'GI.Gtk.Objects.FileFilter.FileFilter' allows wildcards for the
-- subtype of a mime type, so you can e.g. filter for image\/\\*.
-- 
-- Normally, filters are used by adding them to a t'GI.Gtk.Interfaces.FileChooser.FileChooser',
-- see 'GI.Gtk.Interfaces.FileChooser.fileChooserAddFilter', but it is also possible
-- to manually use a filter on a file with 'GI.Gtk.Objects.FileFilter.fileFilterFilter'.
-- 
-- = GtkFileFilter as GtkBuildable
-- 
-- The GtkFileFilter implementation of the GtkBuildable interface
-- supports adding rules using the \<mime-types>, \<patterns> and
-- \<applications> elements and listing the rules within. Specifying
-- a \<mime-type> or \<pattern> has the same effect as as calling
-- 'GI.Gtk.Objects.FileFilter.fileFilterAddMimeType' or 'GI.Gtk.Objects.FileFilter.fileFilterAddPattern'.
-- 
-- An example of a UI definition fragment specifying GtkFileFilter
-- rules:
-- >
-- ><object class="GtkFileFilter">
-- >  <mime-types>
-- >    <mime-type>text/plain</mime-type>
-- >    <mime-type>image/ *</mime-type>
-- >  </mime-types>
-- >  <patterns>
-- >    <pattern>*.txt</pattern>
-- >    <pattern>*.png</pattern>
-- >  </patterns>
-- ></object>
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FileFilter
    ( 

-- * Exported types
    FileFilter(..)                          ,
    IsFileFilter                            ,
    toFileFilter                            ,
    noFileFilter                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileFilterMethod                 ,
#endif


-- ** addCustom #method:addCustom#

#if defined(ENABLE_OVERLOADING)
    FileFilterAddCustomMethodInfo           ,
#endif
    fileFilterAddCustom                     ,


-- ** addMimeType #method:addMimeType#

#if defined(ENABLE_OVERLOADING)
    FileFilterAddMimeTypeMethodInfo         ,
#endif
    fileFilterAddMimeType                   ,


-- ** addPattern #method:addPattern#

#if defined(ENABLE_OVERLOADING)
    FileFilterAddPatternMethodInfo          ,
#endif
    fileFilterAddPattern                    ,


-- ** addPixbufFormats #method:addPixbufFormats#

#if defined(ENABLE_OVERLOADING)
    FileFilterAddPixbufFormatsMethodInfo    ,
#endif
    fileFilterAddPixbufFormats              ,


-- ** filter #method:filter#

#if defined(ENABLE_OVERLOADING)
    FileFilterFilterMethodInfo              ,
#endif
    fileFilterFilter                        ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    FileFilterGetNameMethodInfo             ,
#endif
    fileFilterGetName                       ,


-- ** getNeeded #method:getNeeded#

#if defined(ENABLE_OVERLOADING)
    FileFilterGetNeededMethodInfo           ,
#endif
    fileFilterGetNeeded                     ,


-- ** new #method:new#

    fileFilterNew                           ,


-- ** newFromGvariant #method:newFromGvariant#

    fileFilterNewFromGvariant               ,


-- ** setName #method:setName#

#if defined(ENABLE_OVERLOADING)
    FileFilterSetNameMethodInfo             ,
#endif
    fileFilterSetName                       ,


-- ** toGvariant #method:toGvariant#

#if defined(ENABLE_OVERLOADING)
    FileFilterToGvariantMethodInfo          ,
#endif
    fileFilterToGvariant                    ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Structs.FileFilterInfo as Gtk.FileFilterInfo

-- | Memory-managed wrapper type.
newtype FileFilter = FileFilter (ManagedPtr FileFilter)
    deriving (Eq)
foreign import ccall "gtk_file_filter_get_type"
    c_gtk_file_filter_get_type :: IO GType

instance GObject FileFilter where
    gobjectType = c_gtk_file_filter_get_type
    

-- | Convert 'FileFilter' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FileFilter where
    toGValue o = do
        gtype <- c_gtk_file_filter_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FileFilter)
        B.ManagedPtr.newObject FileFilter ptr
        
    

-- | Type class for types which can be safely cast to `FileFilter`, for instance with `toFileFilter`.
class (GObject o, O.IsDescendantOf FileFilter o) => IsFileFilter o
instance (GObject o, O.IsDescendantOf FileFilter o) => IsFileFilter o

instance O.HasParentTypes FileFilter
type instance O.ParentTypes FileFilter = '[GObject.Object.Object, Gtk.Buildable.Buildable]

-- | Cast to `FileFilter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileFilter :: (MonadIO m, IsFileFilter o) => o -> m FileFilter
toFileFilter = liftIO . unsafeCastTo FileFilter

-- | A convenience alias for `Nothing` :: `Maybe` `FileFilter`.
noFileFilter :: Maybe FileFilter
noFileFilter = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFileFilterMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileFilterMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFileFilterMethod "addCustom" o = FileFilterAddCustomMethodInfo
    ResolveFileFilterMethod "addMimeType" o = FileFilterAddMimeTypeMethodInfo
    ResolveFileFilterMethod "addPattern" o = FileFilterAddPatternMethodInfo
    ResolveFileFilterMethod "addPixbufFormats" o = FileFilterAddPixbufFormatsMethodInfo
    ResolveFileFilterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileFilterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileFilterMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFileFilterMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFileFilterMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFileFilterMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFileFilterMethod "filter" o = FileFilterFilterMethodInfo
    ResolveFileFilterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileFilterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileFilterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileFilterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileFilterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileFilterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileFilterMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFileFilterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileFilterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileFilterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileFilterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileFilterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileFilterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileFilterMethod "toGvariant" o = FileFilterToGvariantMethodInfo
    ResolveFileFilterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileFilterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileFilterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileFilterMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFileFilterMethod "getName" o = FileFilterGetNameMethodInfo
    ResolveFileFilterMethod "getNeeded" o = FileFilterGetNeededMethodInfo
    ResolveFileFilterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileFilterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileFilterMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFileFilterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileFilterMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileFilterMethod "setName" o = FileFilterSetNameMethodInfo
    ResolveFileFilterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileFilterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileFilterMethod t FileFilter, O.MethodInfo info FileFilter p) => OL.IsLabel t (FileFilter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileFilter
type instance O.AttributeList FileFilter = FileFilterAttributeList
type FileFilterAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileFilter = FileFilterSignalList
type FileFilterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FileFilter::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "FileFilter" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_filter_new" gtk_file_filter_new :: 
    IO (Ptr FileFilter)

-- | Creates a new t'GI.Gtk.Objects.FileFilter.FileFilter' with no rules added to it.
-- Such a filter doesn’t accept any files, so is not
-- particularly useful until you add rules with
-- 'GI.Gtk.Objects.FileFilter.fileFilterAddMimeType', 'GI.Gtk.Objects.FileFilter.fileFilterAddPattern',
-- or 'GI.Gtk.Objects.FileFilter.fileFilterAddCustom'. To create a filter
-- that accepts any file, use:
-- 
-- === /C code/
-- >
-- >GtkFileFilter *filter = gtk_file_filter_new ();
-- >gtk_file_filter_add_pattern (filter, "*");
-- 
-- 
-- /Since: 2.4/
fileFilterNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FileFilter
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FileFilter.FileFilter'
fileFilterNew  = liftIO $ do
    result <- gtk_file_filter_new
    checkUnexpectedReturnNULL "fileFilterNew" result
    result' <- (newObject FileFilter) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FileFilter::new_from_gvariant
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "variant"
--           , argType = TVariant
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an a{sv} #GVariant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "FileFilter" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_filter_new_from_gvariant" gtk_file_filter_new_from_gvariant :: 
    Ptr GVariant ->                         -- variant : TVariant
    IO (Ptr FileFilter)

-- | Deserialize a file filter from an a{sv} variant in
-- the format produced by 'GI.Gtk.Objects.FileFilter.fileFilterToGvariant'.
-- 
-- /Since: 3.22/
fileFilterNewFromGvariant ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GVariant
    -- ^ /@variant@/: an a{sv} t'GVariant'
    -> m FileFilter
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FileFilter.FileFilter' object
fileFilterNewFromGvariant variant = liftIO $ do
    variant' <- unsafeManagedPtrGetPtr variant
    result <- gtk_file_filter_new_from_gvariant variant'
    checkUnexpectedReturnNULL "fileFilterNewFromGvariant" result
    result' <- (wrapObject FileFilter) result
    touchManagedPtr variant
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FileFilter::add_custom
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "needed"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilterFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "bitfield of flags indicating the information that the custom\n         filter function needs."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "func"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilterFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "callback function; if the function returns %TRUE, then\n  the file will be displayed."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "data to pass to @func"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "function to call to free @data when it is no longer needed."
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

foreign import ccall "gtk_file_filter_add_custom" gtk_file_filter_add_custom :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    CUInt ->                                -- needed : TInterface (Name {namespace = "Gtk", name = "FileFilterFlags"})
    FunPtr Gtk.Callbacks.C_FileFilterFunc -> -- func : TInterface (Name {namespace = "Gtk", name = "FileFilterFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Adds rule to a filter that allows files based on a custom callback
-- function. The bitfield /@needed@/ which is passed in provides information
-- about what sorts of information that the filter function needs;
-- this allows GTK+ to avoid retrieving expensive information when
-- it isn’t needed by the filter.
-- 
-- /Since: 2.4/
fileFilterAddCustom ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> [Gtk.Flags.FileFilterFlags]
    -- ^ /@needed@/: bitfield of flags indicating the information that the custom
    --          filter function needs.
    -> Gtk.Callbacks.FileFilterFunc
    -- ^ /@func@/: callback function; if the function returns 'P.True', then
    --   the file will be displayed.
    -> m ()
fileFilterAddCustom filter needed func = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    let needed' = gflagsToWord needed
    func' <- Gtk.Callbacks.mk_FileFilterFunc (Gtk.Callbacks.wrap_FileFilterFunc Nothing (Gtk.Callbacks.drop_closures_FileFilterFunc func))
    let data_ = castFunPtrToPtr func'
    let notify = safeFreeFunPtrPtr
    gtk_file_filter_add_custom filter' needed' func' data_ notify
    touchManagedPtr filter
    return ()

#if defined(ENABLE_OVERLOADING)
data FileFilterAddCustomMethodInfo
instance (signature ~ ([Gtk.Flags.FileFilterFlags] -> Gtk.Callbacks.FileFilterFunc -> m ()), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterAddCustomMethodInfo a signature where
    overloadedMethod = fileFilterAddCustom

#endif

-- method FileFilter::add_mime_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mime_type"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "name of a MIME type"
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

foreign import ccall "gtk_file_filter_add_mime_type" gtk_file_filter_add_mime_type :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    CString ->                              -- mime_type : TBasicType TUTF8
    IO ()

-- | Adds a rule allowing a given mime type to /@filter@/.
-- 
-- /Since: 2.4/
fileFilterAddMimeType ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: A t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> T.Text
    -- ^ /@mimeType@/: name of a MIME type
    -> m ()
fileFilterAddMimeType filter mimeType = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    mimeType' <- textToCString mimeType
    gtk_file_filter_add_mime_type filter' mimeType'
    touchManagedPtr filter
    freeMem mimeType'
    return ()

#if defined(ENABLE_OVERLOADING)
data FileFilterAddMimeTypeMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterAddMimeTypeMethodInfo a signature where
    overloadedMethod = fileFilterAddMimeType

#endif

-- method FileFilter::add_pattern
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pattern"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a shell style glob" , sinceVersion = Nothing }
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

foreign import ccall "gtk_file_filter_add_pattern" gtk_file_filter_add_pattern :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    CString ->                              -- pattern : TBasicType TUTF8
    IO ()

-- | Adds a rule allowing a shell style glob to a filter.
-- 
-- /Since: 2.4/
fileFilterAddPattern ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> T.Text
    -- ^ /@pattern@/: a shell style glob
    -> m ()
fileFilterAddPattern filter pattern = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    pattern' <- textToCString pattern
    gtk_file_filter_add_pattern filter' pattern'
    touchManagedPtr filter
    freeMem pattern'
    return ()

#if defined(ENABLE_OVERLOADING)
data FileFilterAddPatternMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterAddPatternMethodInfo a signature where
    overloadedMethod = fileFilterAddPattern

#endif

-- method FileFilter::add_pixbuf_formats
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
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

foreign import ccall "gtk_file_filter_add_pixbuf_formats" gtk_file_filter_add_pixbuf_formats :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    IO ()

-- | Adds a rule allowing image files in the formats supported
-- by GdkPixbuf.
-- 
-- /Since: 2.6/
fileFilterAddPixbufFormats ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> m ()
fileFilterAddPixbufFormats filter = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    gtk_file_filter_add_pixbuf_formats filter'
    touchManagedPtr filter
    return ()

#if defined(ENABLE_OVERLOADING)
data FileFilterAddPixbufFormatsMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterAddPixbufFormatsMethodInfo a signature where
    overloadedMethod = fileFilterAddPixbufFormats

#endif

-- method FileFilter::filter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "filter_info"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilterInfo" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkFileFilterInfo containing information\n about a file."
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
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_filter_filter" gtk_file_filter_filter :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    Ptr Gtk.FileFilterInfo.FileFilterInfo -> -- filter_info : TInterface (Name {namespace = "Gtk", name = "FileFilterInfo"})
    IO CInt

-- | Tests whether a file should be displayed according to /@filter@/.
-- The t'GI.Gtk.Structs.FileFilterInfo.FileFilterInfo' /@filterInfo@/ should include
-- the fields returned from 'GI.Gtk.Objects.FileFilter.fileFilterGetNeeded'.
-- 
-- This function will not typically be used by applications; it
-- is intended principally for use in the implementation of
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser'.
-- 
-- /Since: 2.4/
fileFilterFilter ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> Gtk.FileFilterInfo.FileFilterInfo
    -- ^ /@filterInfo@/: a t'GI.Gtk.Structs.FileFilterInfo.FileFilterInfo' containing information
    --  about a file.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the file should be displayed
fileFilterFilter filter filterInfo = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    filterInfo' <- unsafeManagedPtrGetPtr filterInfo
    result <- gtk_file_filter_filter filter' filterInfo'
    let result' = (/= 0) result
    touchManagedPtr filter
    touchManagedPtr filterInfo
    return result'

#if defined(ENABLE_OVERLOADING)
data FileFilterFilterMethodInfo
instance (signature ~ (Gtk.FileFilterInfo.FileFilterInfo -> m Bool), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterFilterMethodInfo a signature where
    overloadedMethod = fileFilterFilter

#endif

-- method FileFilter::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
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

foreign import ccall "gtk_file_filter_get_name" gtk_file_filter_get_name :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    IO CString

-- | Gets the human-readable name for the filter. See 'GI.Gtk.Objects.FileFilter.fileFilterSetName'.
-- 
-- /Since: 2.4/
fileFilterGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The human-readable name of the filter,
    --   or 'P.Nothing'. This value is owned by GTK+ and must not
    --   be modified or freed.
fileFilterGetName filter = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    result <- gtk_file_filter_get_name filter'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr filter
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FileFilterGetNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterGetNameMethodInfo a signature where
    overloadedMethod = fileFilterGetName

#endif

-- method FileFilter::get_needed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "FileFilterFlags" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_filter_get_needed" gtk_file_filter_get_needed :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    IO CUInt

-- | Gets the fields that need to be filled in for the t'GI.Gtk.Structs.FileFilterInfo.FileFilterInfo'
-- passed to 'GI.Gtk.Objects.FileFilter.fileFilterFilter'
-- 
-- This function will not typically be used by applications; it
-- is intended principally for use in the implementation of
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser'.
-- 
-- /Since: 2.4/
fileFilterGetNeeded ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> m [Gtk.Flags.FileFilterFlags]
    -- ^ __Returns:__ bitfield of flags indicating needed fields when
    --   calling 'GI.Gtk.Objects.FileFilter.fileFilterFilter'
fileFilterGetNeeded filter = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    result <- gtk_file_filter_get_needed filter'
    let result' = wordToGFlags result
    touchManagedPtr filter
    return result'

#if defined(ENABLE_OVERLOADING)
data FileFilterGetNeededMethodInfo
instance (signature ~ (m [Gtk.Flags.FileFilterFlags]), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterGetNeededMethodInfo a signature where
    overloadedMethod = fileFilterGetNeeded

#endif

-- method FileFilter::set_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the human-readable-name for the filter, or %NULL\n  to remove any existing name."
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

foreign import ccall "gtk_file_filter_set_name" gtk_file_filter_set_name :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    CString ->                              -- name : TBasicType TUTF8
    IO ()

-- | Sets the human-readable name of the filter; this is the string
-- that will be displayed in the file selector user interface if
-- there is a selectable list of filters.
-- 
-- /Since: 2.4/
fileFilterSetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> Maybe (T.Text)
    -- ^ /@name@/: the human-readable-name for the filter, or 'P.Nothing'
    --   to remove any existing name.
    -> m ()
fileFilterSetName filter name = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    maybeName <- case name of
        Nothing -> return nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    gtk_file_filter_set_name filter' maybeName
    touchManagedPtr filter
    freeMem maybeName
    return ()

#if defined(ENABLE_OVERLOADING)
data FileFilterSetNameMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterSetNameMethodInfo a signature where
    overloadedMethod = fileFilterSetName

#endif

-- method FileFilter::to_gvariant
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "filter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileFilter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileFilter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just TVariant
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_filter_to_gvariant" gtk_file_filter_to_gvariant :: 
    Ptr FileFilter ->                       -- filter : TInterface (Name {namespace = "Gtk", name = "FileFilter"})
    IO (Ptr GVariant)

-- | Serialize a file filter to an a{sv} variant.
-- 
-- /Since: 3.22/
fileFilterToGvariant ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileFilter a) =>
    a
    -- ^ /@filter@/: a t'GI.Gtk.Objects.FileFilter.FileFilter'
    -> m GVariant
    -- ^ __Returns:__ a new, floating, t'GVariant'
fileFilterToGvariant filter = liftIO $ do
    filter' <- unsafeManagedPtrCastPtr filter
    result <- gtk_file_filter_to_gvariant filter'
    checkUnexpectedReturnNULL "fileFilterToGvariant" result
    result' <- B.GVariant.newGVariantFromPtr result
    touchManagedPtr filter
    return result'

#if defined(ENABLE_OVERLOADING)
data FileFilterToGvariantMethodInfo
instance (signature ~ (m GVariant), MonadIO m, IsFileFilter a) => O.MethodInfo FileFilterToGvariantMethodInfo a signature where
    overloadedMethod = fileFilterToGvariant

#endif

