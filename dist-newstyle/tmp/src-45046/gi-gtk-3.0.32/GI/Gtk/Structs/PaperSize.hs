{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkPaperSize handles paper sizes. It uses the standard called
-- <http://www.pwg.org/standards.html PWG 5101.1-2002 PWG: Standard for Media Standardized Names>
-- to name the paper sizes (and to get the data for the page sizes).
-- In addition to standard paper sizes, GtkPaperSize allows to
-- construct custom paper sizes with arbitrary dimensions.
-- 
-- The t'GI.Gtk.Structs.PaperSize.PaperSize' object stores not only the dimensions (width
-- and height) of a paper size and its name, it also provides
-- default [print margins][print-margins].
-- 
-- Printing support has been added in GTK+ 2.10.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.PaperSize
    ( 

-- * Exported types
    PaperSize(..)                           ,
    noPaperSize                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePaperSizeMethod                  ,
#endif


-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    PaperSizeCopyMethodInfo                 ,
#endif
    paperSizeCopy                           ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    PaperSizeFreeMethodInfo                 ,
#endif
    paperSizeFree                           ,


-- ** getDefault #method:getDefault#

    paperSizeGetDefault                     ,


-- ** getDefaultBottomMargin #method:getDefaultBottomMargin#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetDefaultBottomMarginMethodInfo,
#endif
    paperSizeGetDefaultBottomMargin         ,


-- ** getDefaultLeftMargin #method:getDefaultLeftMargin#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetDefaultLeftMarginMethodInfo ,
#endif
    paperSizeGetDefaultLeftMargin           ,


-- ** getDefaultRightMargin #method:getDefaultRightMargin#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetDefaultRightMarginMethodInfo,
#endif
    paperSizeGetDefaultRightMargin          ,


-- ** getDefaultTopMargin #method:getDefaultTopMargin#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetDefaultTopMarginMethodInfo  ,
#endif
    paperSizeGetDefaultTopMargin            ,


-- ** getDisplayName #method:getDisplayName#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetDisplayNameMethodInfo       ,
#endif
    paperSizeGetDisplayName                 ,


-- ** getHeight #method:getHeight#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetHeightMethodInfo            ,
#endif
    paperSizeGetHeight                      ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetNameMethodInfo              ,
#endif
    paperSizeGetName                        ,


-- ** getPaperSizes #method:getPaperSizes#

    paperSizeGetPaperSizes                  ,


-- ** getPpdName #method:getPpdName#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetPpdNameMethodInfo           ,
#endif
    paperSizeGetPpdName                     ,


-- ** getWidth #method:getWidth#

#if defined(ENABLE_OVERLOADING)
    PaperSizeGetWidthMethodInfo             ,
#endif
    paperSizeGetWidth                       ,


-- ** isCustom #method:isCustom#

#if defined(ENABLE_OVERLOADING)
    PaperSizeIsCustomMethodInfo             ,
#endif
    paperSizeIsCustom                       ,


-- ** isEqual #method:isEqual#

#if defined(ENABLE_OVERLOADING)
    PaperSizeIsEqualMethodInfo              ,
#endif
    paperSizeIsEqual                        ,


-- ** isIpp #method:isIpp#

#if defined(ENABLE_OVERLOADING)
    PaperSizeIsIppMethodInfo                ,
#endif
    paperSizeIsIpp                          ,


-- ** new #method:new#

    paperSizeNew                            ,


-- ** newCustom #method:newCustom#

    paperSizeNewCustom                      ,


-- ** newFromGvariant #method:newFromGvariant#

    paperSizeNewFromGvariant                ,


-- ** newFromIpp #method:newFromIpp#

    paperSizeNewFromIpp                     ,


-- ** newFromKeyFile #method:newFromKeyFile#

    paperSizeNewFromKeyFile                 ,


-- ** newFromPpd #method:newFromPpd#

    paperSizeNewFromPpd                     ,


-- ** setSize #method:setSize#

#if defined(ENABLE_OVERLOADING)
    PaperSizeSetSizeMethodInfo              ,
#endif
    paperSizeSetSize                        ,


-- ** toGvariant #method:toGvariant#

#if defined(ENABLE_OVERLOADING)
    PaperSizeToGvariantMethodInfo           ,
#endif
    paperSizeToGvariant                     ,


-- ** toKeyFile #method:toKeyFile#

#if defined(ENABLE_OVERLOADING)
    PaperSizeToKeyFileMethodInfo            ,
#endif
    paperSizeToKeyFile                      ,




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

import qualified GI.GLib.Structs.KeyFile as GLib.KeyFile
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums

-- | Memory-managed wrapper type.
newtype PaperSize = PaperSize (ManagedPtr PaperSize)
    deriving (Eq)
foreign import ccall "gtk_paper_size_get_type" c_gtk_paper_size_get_type :: 
    IO GType

instance BoxedObject PaperSize where
    boxedType _ = c_gtk_paper_size_get_type

-- | Convert 'PaperSize' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue PaperSize where
    toGValue o = do
        gtype <- c_gtk_paper_size_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr PaperSize)
        B.ManagedPtr.newBoxed PaperSize ptr
        
    

-- | A convenience alias for `Nothing` :: `Maybe` `PaperSize`.
noPaperSize :: Maybe PaperSize
noPaperSize = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PaperSize
type instance O.AttributeList PaperSize = PaperSizeAttributeList
type PaperSizeAttributeList = ('[ ] :: [(Symbol, *)])
#endif

-- method PaperSize::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a paper size name, or %NULL"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_new" gtk_paper_size_new :: 
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr PaperSize)

-- | Creates a new t'GI.Gtk.Structs.PaperSize.PaperSize' object by parsing a
-- <https://developer.gnome.org/gtk3/stable/ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf PWG 5101.1-2002>
-- paper name.
-- 
-- If /@name@/ is 'P.Nothing', the default paper size is returned,
-- see 'GI.Gtk.Functions.paperSizeGetDefault'.
-- 
-- /Since: 2.10/
paperSizeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe (T.Text)
    -- ^ /@name@/: a paper size name, or 'P.Nothing'
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize', use 'GI.Gtk.Structs.PaperSize.paperSizeFree'
    -- to free it
paperSizeNew name = liftIO $ do
    maybeName <- case name of
        Nothing -> return nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    result <- gtk_paper_size_new maybeName
    checkUnexpectedReturnNULL "paperSizeNew" result
    result' <- (wrapBoxed PaperSize) result
    freeMem maybeName
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::new_custom
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "display_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the human-readable name"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper width, in units of @unit"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper height, in units of @unit"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for @width and @height. not %GTK_UNIT_NONE."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_new_custom" gtk_paper_size_new_custom :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- display_name : TBasicType TUTF8
    CDouble ->                              -- width : TBasicType TDouble
    CDouble ->                              -- height : TBasicType TDouble
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO (Ptr PaperSize)

-- | Creates a new t'GI.Gtk.Structs.PaperSize.PaperSize' object with the
-- given parameters.
-- 
-- /Since: 2.10/
paperSizeNewCustom ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: the paper name
    -> T.Text
    -- ^ /@displayName@/: the human-readable name
    -> Double
    -- ^ /@width@/: the paper width, in units of /@unit@/
    -> Double
    -- ^ /@height@/: the paper height, in units of /@unit@/
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for /@width@/ and /@height@/. not 'GI.Gtk.Enums.UnitNone'.
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize' object, use 'GI.Gtk.Structs.PaperSize.paperSizeFree'
    -- to free it
paperSizeNewCustom name displayName width height unit = liftIO $ do
    name' <- textToCString name
    displayName' <- textToCString displayName
    let width' = realToFrac width
    let height' = realToFrac height
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_new_custom name' displayName' width' height' unit'
    checkUnexpectedReturnNULL "paperSizeNewCustom" result
    result' <- (wrapBoxed PaperSize) result
    freeMem name'
    freeMem displayName'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::new_from_gvariant
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_new_from_gvariant" gtk_paper_size_new_from_gvariant :: 
    Ptr GVariant ->                         -- variant : TVariant
    IO (Ptr PaperSize)

-- | Deserialize a paper size from an a{sv} variant in
-- the format produced by 'GI.Gtk.Structs.PaperSize.paperSizeToGvariant'.
-- 
-- /Since: 3.22/
paperSizeNewFromGvariant ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GVariant
    -- ^ /@variant@/: an a{sv} t'GVariant'
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize' object
paperSizeNewFromGvariant variant = liftIO $ do
    variant' <- unsafeManagedPtrGetPtr variant
    result <- gtk_paper_size_new_from_gvariant variant'
    checkUnexpectedReturnNULL "paperSizeNewFromGvariant" result
    result' <- (wrapBoxed PaperSize) result
    touchManagedPtr variant
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::new_from_ipp
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "ipp_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an IPP paper name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper width, in points"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper height in points"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_new_from_ipp" gtk_paper_size_new_from_ipp :: 
    CString ->                              -- ipp_name : TBasicType TUTF8
    CDouble ->                              -- width : TBasicType TDouble
    CDouble ->                              -- height : TBasicType TDouble
    IO (Ptr PaperSize)

-- | Creates a new t'GI.Gtk.Structs.PaperSize.PaperSize' object by using
-- IPP information.
-- 
-- If /@ippName@/ is not a recognized paper name,
-- /@width@/ and /@height@/ are used to
-- construct a custom t'GI.Gtk.Structs.PaperSize.PaperSize' object.
-- 
-- /Since: 3.16/
paperSizeNewFromIpp ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@ippName@/: an IPP paper name
    -> Double
    -- ^ /@width@/: the paper width, in points
    -> Double
    -- ^ /@height@/: the paper height in points
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize', use 'GI.Gtk.Structs.PaperSize.paperSizeFree'
    -- to free it
paperSizeNewFromIpp ippName width height = liftIO $ do
    ippName' <- textToCString ippName
    let width' = realToFrac width
    let height' = realToFrac height
    result <- gtk_paper_size_new_from_ipp ippName' width' height'
    checkUnexpectedReturnNULL "paperSizeNewFromIpp" result
    result' <- (wrapBoxed PaperSize) result
    freeMem ippName'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::new_from_key_file
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "key_file"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "KeyFile" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GKeyFile to retrieve the papersize from"
--                 , sinceVersion = Nothing
--                 }
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
--                     Just
--                       "the name of the group in the key file to read,\n    or %NULL to read the first group"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : True
-- Skip return : False

foreign import ccall "gtk_paper_size_new_from_key_file" gtk_paper_size_new_from_key_file :: 
    Ptr GLib.KeyFile.KeyFile ->             -- key_file : TInterface (Name {namespace = "GLib", name = "KeyFile"})
    CString ->                              -- group_name : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr PaperSize)

-- | Reads a paper size from the group /@groupName@/ in the key file
-- /@keyFile@/.
-- 
-- /Since: 2.12/
paperSizeNewFromKeyFile ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GLib.KeyFile.KeyFile
    -- ^ /@keyFile@/: the t'GI.GLib.Structs.KeyFile.KeyFile' to retrieve the papersize from
    -> Maybe (T.Text)
    -- ^ /@groupName@/: the name of the group in the key file to read,
    --     or 'P.Nothing' to read the first group
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize' object with the restored
    --     paper size, or 'P.Nothing' if an error occurred /(Can throw 'Data.GI.Base.GError.GError')/
paperSizeNewFromKeyFile keyFile groupName = liftIO $ do
    keyFile' <- unsafeManagedPtrGetPtr keyFile
    maybeGroupName <- case groupName of
        Nothing -> return nullPtr
        Just jGroupName -> do
            jGroupName' <- textToCString jGroupName
            return jGroupName'
    onException (do
        result <- propagateGError $ gtk_paper_size_new_from_key_file keyFile' maybeGroupName
        checkUnexpectedReturnNULL "paperSizeNewFromKeyFile" result
        result' <- (wrapBoxed PaperSize) result
        touchManagedPtr keyFile
        freeMem maybeGroupName
        return result'
     ) (do
        freeMem maybeGroupName
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::new_from_ppd
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "ppd_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a PPD paper name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ppd_display_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the corresponding human-readable name"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper width, in points"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paper height in points"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_new_from_ppd" gtk_paper_size_new_from_ppd :: 
    CString ->                              -- ppd_name : TBasicType TUTF8
    CString ->                              -- ppd_display_name : TBasicType TUTF8
    CDouble ->                              -- width : TBasicType TDouble
    CDouble ->                              -- height : TBasicType TDouble
    IO (Ptr PaperSize)

-- | Creates a new t'GI.Gtk.Structs.PaperSize.PaperSize' object by using
-- PPD information.
-- 
-- If /@ppdName@/ is not a recognized PPD paper name,
-- /@ppdDisplayName@/, /@width@/ and /@height@/ are used to
-- construct a custom t'GI.Gtk.Structs.PaperSize.PaperSize' object.
-- 
-- /Since: 2.10/
paperSizeNewFromPpd ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@ppdName@/: a PPD paper name
    -> T.Text
    -- ^ /@ppdDisplayName@/: the corresponding human-readable name
    -> Double
    -- ^ /@width@/: the paper width, in points
    -> Double
    -- ^ /@height@/: the paper height in points
    -> m PaperSize
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.PaperSize.PaperSize', use 'GI.Gtk.Structs.PaperSize.paperSizeFree'
    -- to free it
paperSizeNewFromPpd ppdName ppdDisplayName width height = liftIO $ do
    ppdName' <- textToCString ppdName
    ppdDisplayName' <- textToCString ppdDisplayName
    let width' = realToFrac width
    let height' = realToFrac height
    result <- gtk_paper_size_new_from_ppd ppdName' ppdDisplayName' width' height'
    checkUnexpectedReturnNULL "paperSizeNewFromPpd" result
    result' <- (wrapBoxed PaperSize) result
    freeMem ppdName'
    freeMem ppdDisplayName'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "other"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PaperSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_copy" gtk_paper_size_copy :: 
    Ptr PaperSize ->                        -- other : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO (Ptr PaperSize)

-- | Copies an existing t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@other@/: a t'GI.Gtk.Structs.PaperSize.PaperSize'
    -> m PaperSize
    -- ^ __Returns:__ a copy of /@other@/
paperSizeCopy other = liftIO $ do
    other' <- unsafeManagedPtrGetPtr other
    result <- gtk_paper_size_copy other'
    checkUnexpectedReturnNULL "paperSizeCopy" result
    result' <- (wrapBoxed PaperSize) result
    touchManagedPtr other
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeCopyMethodInfo
instance (signature ~ (m PaperSize), MonadIO m) => O.MethodInfo PaperSizeCopyMethodInfo PaperSize signature where
    overloadedMethod = paperSizeCopy

#endif

-- method PaperSize::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paper_size_free" gtk_paper_size_free :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO ()

-- | Free the given t'GI.Gtk.Structs.PaperSize.PaperSize' object.
-- 
-- /Since: 2.10/
paperSizeFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize'
    -> m ()
paperSizeFree size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    gtk_paper_size_free size'
    touchManagedPtr size
    return ()

#if defined(ENABLE_OVERLOADING)
data PaperSizeFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo PaperSizeFreeMethodInfo PaperSize signature where
    overloadedMethod = paperSizeFree

#endif

-- method PaperSize::get_default_bottom_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_default_bottom_margin" gtk_paper_size_get_default_bottom_margin :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the default bottom margin for the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetDefaultBottomMargin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the default bottom margin
paperSizeGetDefaultBottomMargin size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_default_bottom_margin size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetDefaultBottomMarginMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetDefaultBottomMarginMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetDefaultBottomMargin

#endif

-- method PaperSize::get_default_left_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_default_left_margin" gtk_paper_size_get_default_left_margin :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the default left margin for the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetDefaultLeftMargin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the default left margin
paperSizeGetDefaultLeftMargin size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_default_left_margin size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetDefaultLeftMarginMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetDefaultLeftMarginMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetDefaultLeftMargin

#endif

-- method PaperSize::get_default_right_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_default_right_margin" gtk_paper_size_get_default_right_margin :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the default right margin for the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetDefaultRightMargin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the default right margin
paperSizeGetDefaultRightMargin size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_default_right_margin size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetDefaultRightMarginMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetDefaultRightMarginMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetDefaultRightMargin

#endif

-- method PaperSize::get_default_top_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_default_top_margin" gtk_paper_size_get_default_top_margin :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the default top margin for the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetDefaultTopMargin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the default top margin
paperSizeGetDefaultTopMargin size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_default_top_margin size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetDefaultTopMarginMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetDefaultTopMarginMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetDefaultTopMargin

#endif

-- method PaperSize::get_display_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_get_display_name" gtk_paper_size_get_display_name :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CString

-- | Gets the human-readable name of the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetDisplayName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m T.Text
    -- ^ __Returns:__ the human-readable name of /@size@/
paperSizeGetDisplayName size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    result <- gtk_paper_size_get_display_name size'
    checkUnexpectedReturnNULL "paperSizeGetDisplayName" result
    result' <- cstringToText result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetDisplayNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.MethodInfo PaperSizeGetDisplayNameMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetDisplayName

#endif

-- method PaperSize::get_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_height" gtk_paper_size_get_height :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the paper height of the t'GI.Gtk.Structs.PaperSize.PaperSize', in
-- units of /@unit@/.
-- 
-- /Since: 2.10/
paperSizeGetHeight ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the paper height
paperSizeGetHeight size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_height size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetHeightMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetHeightMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetHeight

#endif

-- method PaperSize::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_get_name" gtk_paper_size_get_name :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CString

-- | Gets the name of the t'GI.Gtk.Structs.PaperSize.PaperSize'.
-- 
-- /Since: 2.10/
paperSizeGetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m T.Text
    -- ^ __Returns:__ the name of /@size@/
paperSizeGetName size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    result <- gtk_paper_size_get_name size'
    checkUnexpectedReturnNULL "paperSizeGetName" result
    result' <- cstringToText result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.MethodInfo PaperSizeGetNameMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetName

#endif

-- method PaperSize::get_ppd_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_get_ppd_name" gtk_paper_size_get_ppd_name :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CString

-- | Gets the PPD name of the t'GI.Gtk.Structs.PaperSize.PaperSize', which
-- may be 'P.Nothing'.
-- 
-- /Since: 2.10/
paperSizeGetPpdName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m T.Text
    -- ^ __Returns:__ the PPD name of /@size@/
paperSizeGetPpdName size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    result <- gtk_paper_size_get_ppd_name size'
    checkUnexpectedReturnNULL "paperSizeGetPpdName" result
    result' <- cstringToText result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetPpdNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.MethodInfo PaperSizeGetPpdNameMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetPpdName

#endif

-- method PaperSize::get_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the unit for the return value, not %GTK_UNIT_NONE"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_width" gtk_paper_size_get_width :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO CDouble

-- | Gets the paper width of the t'GI.Gtk.Structs.PaperSize.PaperSize', in
-- units of /@unit@/.
-- 
-- /Since: 2.10/
paperSizeGetWidth ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for the return value, not 'GI.Gtk.Enums.UnitNone'
    -> m Double
    -- ^ __Returns:__ the paper width
paperSizeGetWidth size unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let unit' = (fromIntegral . fromEnum) unit
    result <- gtk_paper_size_get_width size' unit'
    let result' = realToFrac result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeGetWidthMethodInfo
instance (signature ~ (Gtk.Enums.Unit -> m Double), MonadIO m) => O.MethodInfo PaperSizeGetWidthMethodInfo PaperSize signature where
    overloadedMethod = paperSizeGetWidth

#endif

-- method PaperSize::is_custom
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_is_custom" gtk_paper_size_is_custom :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CInt

-- | Returns 'P.True' if /@size@/ is not a standard paper size.
paperSizeIsCustom ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m Bool
    -- ^ __Returns:__ whether /@size@/ is a custom paper size.
paperSizeIsCustom size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    result <- gtk_paper_size_is_custom size'
    let result' = (/= 0) result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeIsCustomMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.MethodInfo PaperSizeIsCustomMethodInfo PaperSize signature where
    overloadedMethod = paperSizeIsCustom

#endif

-- method PaperSize::is_equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size1"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size2"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "another #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_is_equal" gtk_paper_size_is_equal :: 
    Ptr PaperSize ->                        -- size1 : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    Ptr PaperSize ->                        -- size2 : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CInt

-- | Compares two t'GI.Gtk.Structs.PaperSize.PaperSize' objects.
-- 
-- /Since: 2.10/
paperSizeIsEqual ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size1@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> PaperSize
    -- ^ /@size2@/: another t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m Bool
    -- ^ __Returns:__ 'P.True', if /@size1@/ and /@size2@/
    -- represent the same paper size
paperSizeIsEqual size1 size2 = liftIO $ do
    size1' <- unsafeManagedPtrGetPtr size1
    size2' <- unsafeManagedPtrGetPtr size2
    result <- gtk_paper_size_is_equal size1' size2'
    let result' = (/= 0) result
    touchManagedPtr size1
    touchManagedPtr size2
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeIsEqualMethodInfo
instance (signature ~ (PaperSize -> m Bool), MonadIO m) => O.MethodInfo PaperSizeIsEqualMethodInfo PaperSize signature where
    overloadedMethod = paperSizeIsEqual

#endif

-- method PaperSize::is_ipp
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize object"
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

foreign import ccall "gtk_paper_size_is_ipp" gtk_paper_size_is_ipp :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO CInt

-- | Returns 'P.True' if /@size@/ is an IPP standard paper size.
paperSizeIsIpp ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> m Bool
    -- ^ __Returns:__ whether /@size@/ is not an IPP custom paper size.
paperSizeIsIpp size = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    result <- gtk_paper_size_is_ipp size'
    let result' = (/= 0) result
    touchManagedPtr size
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeIsIppMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.MethodInfo PaperSizeIsIppMethodInfo PaperSize signature where
    overloadedMethod = paperSizeIsIpp

#endif

-- method PaperSize::set_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a custom #GtkPaperSize object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new width in units of @unit"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new height in units of @unit"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "unit"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Unit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the unit for @width and @height"
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

foreign import ccall "gtk_paper_size_set_size" gtk_paper_size_set_size :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    CDouble ->                              -- width : TBasicType TDouble
    CDouble ->                              -- height : TBasicType TDouble
    CUInt ->                                -- unit : TInterface (Name {namespace = "Gtk", name = "Unit"})
    IO ()

-- | Changes the dimensions of a /@size@/ to /@width@/ x /@height@/.
-- 
-- /Since: 2.10/
paperSizeSetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a custom t'GI.Gtk.Structs.PaperSize.PaperSize' object
    -> Double
    -- ^ /@width@/: the new width in units of /@unit@/
    -> Double
    -- ^ /@height@/: the new height in units of /@unit@/
    -> Gtk.Enums.Unit
    -- ^ /@unit@/: the unit for /@width@/ and /@height@/
    -> m ()
paperSizeSetSize size width height unit = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    let width' = realToFrac width
    let height' = realToFrac height
    let unit' = (fromIntegral . fromEnum) unit
    gtk_paper_size_set_size size' width' height' unit'
    touchManagedPtr size
    return ()

#if defined(ENABLE_OVERLOADING)
data PaperSizeSetSizeMethodInfo
instance (signature ~ (Double -> Double -> Gtk.Enums.Unit -> m ()), MonadIO m) => O.MethodInfo PaperSizeSetSizeMethodInfo PaperSize signature where
    overloadedMethod = paperSizeSetSize

#endif

-- method PaperSize::to_gvariant
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paper_size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paper_size_to_gvariant" gtk_paper_size_to_gvariant :: 
    Ptr PaperSize ->                        -- paper_size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    IO (Ptr GVariant)

-- | Serialize a paper size to an a{sv} variant.
-- 
-- /Since: 3.22/
paperSizeToGvariant ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@paperSize@/: a t'GI.Gtk.Structs.PaperSize.PaperSize'
    -> m GVariant
    -- ^ __Returns:__ a new, floating, t'GVariant'
paperSizeToGvariant paperSize = liftIO $ do
    paperSize' <- unsafeManagedPtrGetPtr paperSize
    result <- gtk_paper_size_to_gvariant paperSize'
    checkUnexpectedReturnNULL "paperSizeToGvariant" result
    result' <- B.GVariant.newGVariantFromPtr result
    touchManagedPtr paperSize
    return result'

#if defined(ENABLE_OVERLOADING)
data PaperSizeToGvariantMethodInfo
instance (signature ~ (m GVariant), MonadIO m) => O.MethodInfo PaperSizeToGvariantMethodInfo PaperSize signature where
    overloadedMethod = paperSizeToGvariant

#endif

-- method PaperSize::to_key_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PaperSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaperSize" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "key_file"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "KeyFile" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GKeyFile to save the paper size to"
--                 , sinceVersion = Nothing
--                 }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the group to add the settings to in @key_file"
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

foreign import ccall "gtk_paper_size_to_key_file" gtk_paper_size_to_key_file :: 
    Ptr PaperSize ->                        -- size : TInterface (Name {namespace = "Gtk", name = "PaperSize"})
    Ptr GLib.KeyFile.KeyFile ->             -- key_file : TInterface (Name {namespace = "GLib", name = "KeyFile"})
    CString ->                              -- group_name : TBasicType TUTF8
    IO ()

-- | This function adds the paper size from /@size@/ to /@keyFile@/.
-- 
-- /Since: 2.12/
paperSizeToKeyFile ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PaperSize
    -- ^ /@size@/: a t'GI.Gtk.Structs.PaperSize.PaperSize'
    -> GLib.KeyFile.KeyFile
    -- ^ /@keyFile@/: the t'GI.GLib.Structs.KeyFile.KeyFile' to save the paper size to
    -> T.Text
    -- ^ /@groupName@/: the group to add the settings to in /@keyFile@/
    -> m ()
paperSizeToKeyFile size keyFile groupName = liftIO $ do
    size' <- unsafeManagedPtrGetPtr size
    keyFile' <- unsafeManagedPtrGetPtr keyFile
    groupName' <- textToCString groupName
    gtk_paper_size_to_key_file size' keyFile' groupName'
    touchManagedPtr size
    touchManagedPtr keyFile
    freeMem groupName'
    return ()

#if defined(ENABLE_OVERLOADING)
data PaperSizeToKeyFileMethodInfo
instance (signature ~ (GLib.KeyFile.KeyFile -> T.Text -> m ()), MonadIO m) => O.MethodInfo PaperSizeToKeyFileMethodInfo PaperSize signature where
    overloadedMethod = paperSizeToKeyFile

#endif

-- method PaperSize::get_default
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_default" gtk_paper_size_get_default :: 
    IO CString

-- | Returns the name of the default paper size, which
-- depends on the current locale.
-- 
-- /Since: 2.10/
paperSizeGetDefault ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m T.Text
    -- ^ __Returns:__ the name of the default paper size. The string
    -- is owned by GTK+ and should not be modified.
paperSizeGetDefault  = liftIO $ do
    result <- gtk_paper_size_get_default
    checkUnexpectedReturnNULL "paperSizeGetDefault" result
    result' <- cstringToText result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PaperSize::get_paper_sizes
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "include_custom"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether to include custom paper sizes\n    as defined in the page setup dialog"
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
--               (TGList
--                  (TInterface Name { namespace = "Gtk" , name = "PaperSize" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paper_size_get_paper_sizes" gtk_paper_size_get_paper_sizes :: 
    CInt ->                                 -- include_custom : TBasicType TBoolean
    IO (Ptr (GList (Ptr PaperSize)))

-- | Creates a list of known paper sizes.
-- 
-- /Since: 2.12/
paperSizeGetPaperSizes ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Bool
    -- ^ /@includeCustom@/: whether to include custom paper sizes
    --     as defined in the page setup dialog
    -> m [PaperSize]
    -- ^ __Returns:__ a newly allocated list of newly
    --    allocated t'GI.Gtk.Structs.PaperSize.PaperSize' objects
paperSizeGetPaperSizes includeCustom = liftIO $ do
    let includeCustom' = (fromIntegral . fromEnum) includeCustom
    result <- gtk_paper_size_get_paper_sizes includeCustom'
    result' <- unpackGList result
    result'' <- mapM (wrapBoxed PaperSize) result'
    g_list_free result
    return result''

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePaperSizeMethod (t :: Symbol) (o :: *) :: * where
    ResolvePaperSizeMethod "copy" o = PaperSizeCopyMethodInfo
    ResolvePaperSizeMethod "free" o = PaperSizeFreeMethodInfo
    ResolvePaperSizeMethod "isCustom" o = PaperSizeIsCustomMethodInfo
    ResolvePaperSizeMethod "isEqual" o = PaperSizeIsEqualMethodInfo
    ResolvePaperSizeMethod "isIpp" o = PaperSizeIsIppMethodInfo
    ResolvePaperSizeMethod "toGvariant" o = PaperSizeToGvariantMethodInfo
    ResolvePaperSizeMethod "toKeyFile" o = PaperSizeToKeyFileMethodInfo
    ResolvePaperSizeMethod "getDefaultBottomMargin" o = PaperSizeGetDefaultBottomMarginMethodInfo
    ResolvePaperSizeMethod "getDefaultLeftMargin" o = PaperSizeGetDefaultLeftMarginMethodInfo
    ResolvePaperSizeMethod "getDefaultRightMargin" o = PaperSizeGetDefaultRightMarginMethodInfo
    ResolvePaperSizeMethod "getDefaultTopMargin" o = PaperSizeGetDefaultTopMarginMethodInfo
    ResolvePaperSizeMethod "getDisplayName" o = PaperSizeGetDisplayNameMethodInfo
    ResolvePaperSizeMethod "getHeight" o = PaperSizeGetHeightMethodInfo
    ResolvePaperSizeMethod "getName" o = PaperSizeGetNameMethodInfo
    ResolvePaperSizeMethod "getPpdName" o = PaperSizeGetPpdNameMethodInfo
    ResolvePaperSizeMethod "getWidth" o = PaperSizeGetWidthMethodInfo
    ResolvePaperSizeMethod "setSize" o = PaperSizeSetSizeMethodInfo
    ResolvePaperSizeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePaperSizeMethod t PaperSize, O.MethodInfo info PaperSize p) => OL.IsLabel t (PaperSize -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

