{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- See also 'GI.Gtk.Objects.PrintSettings.printSettingsSetPageRanges'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.PageRange
    ( 

-- * Exported types
    PageRange(..)                           ,
    newZeroPageRange                        ,
    noPageRange                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePageRangeMethod                  ,
#endif




 -- * Properties
-- ** end #attr:end#
-- | end of page range.

    getPageRangeEnd                         ,
#if defined(ENABLE_OVERLOADING)
    pageRange_end                           ,
#endif
    setPageRangeEnd                         ,


-- ** start #attr:start#
-- | start of page range.

    getPageRangeStart                       ,
#if defined(ENABLE_OVERLOADING)
    pageRange_start                         ,
#endif
    setPageRangeStart                       ,




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


-- | Memory-managed wrapper type.
newtype PageRange = PageRange (ManagedPtr PageRange)
    deriving (Eq)
instance WrappedPtr PageRange where
    wrappedPtrCalloc = callocBytes 8
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 8 >=> wrapPtr PageRange)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `PageRange` struct initialized to zero.
newZeroPageRange :: MonadIO m => m PageRange
newZeroPageRange = liftIO $ wrappedPtrCalloc >>= wrapPtr PageRange

instance tag ~ 'AttrSet => Constructible PageRange tag where
    new _ attrs = do
        o <- newZeroPageRange
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `PageRange`.
noPageRange :: Maybe PageRange
noPageRange = Nothing

-- | Get the value of the “@start@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' pageRange #start
-- @
getPageRangeStart :: MonadIO m => PageRange -> m Int32
getPageRangeStart s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO Int32
    return val

-- | Set the value of the “@start@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' pageRange [ #start 'Data.GI.Base.Attributes.:=' value ]
-- @
setPageRangeStart :: MonadIO m => PageRange -> Int32 -> m ()
setPageRangeStart s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data PageRangeStartFieldInfo
instance AttrInfo PageRangeStartFieldInfo where
    type AttrBaseTypeConstraint PageRangeStartFieldInfo = (~) PageRange
    type AttrAllowedOps PageRangeStartFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint PageRangeStartFieldInfo = (~) Int32
    type AttrTransferTypeConstraint PageRangeStartFieldInfo = (~)Int32
    type AttrTransferType PageRangeStartFieldInfo = Int32
    type AttrGetType PageRangeStartFieldInfo = Int32
    type AttrLabel PageRangeStartFieldInfo = "start"
    type AttrOrigin PageRangeStartFieldInfo = PageRange
    attrGet = getPageRangeStart
    attrSet = setPageRangeStart
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

pageRange_start :: AttrLabelProxy "start"
pageRange_start = AttrLabelProxy

#endif


-- | Get the value of the “@end@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' pageRange #end
-- @
getPageRangeEnd :: MonadIO m => PageRange -> m Int32
getPageRangeEnd s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 4) :: IO Int32
    return val

-- | Set the value of the “@end@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' pageRange [ #end 'Data.GI.Base.Attributes.:=' value ]
-- @
setPageRangeEnd :: MonadIO m => PageRange -> Int32 -> m ()
setPageRangeEnd s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 4) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data PageRangeEndFieldInfo
instance AttrInfo PageRangeEndFieldInfo where
    type AttrBaseTypeConstraint PageRangeEndFieldInfo = (~) PageRange
    type AttrAllowedOps PageRangeEndFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint PageRangeEndFieldInfo = (~) Int32
    type AttrTransferTypeConstraint PageRangeEndFieldInfo = (~)Int32
    type AttrTransferType PageRangeEndFieldInfo = Int32
    type AttrGetType PageRangeEndFieldInfo = Int32
    type AttrLabel PageRangeEndFieldInfo = "end"
    type AttrOrigin PageRangeEndFieldInfo = PageRange
    attrGet = getPageRangeEnd
    attrSet = setPageRangeEnd
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

pageRange_end :: AttrLabelProxy "end"
pageRange_end = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PageRange
type instance O.AttributeList PageRange = PageRangeAttributeList
type PageRangeAttributeList = ('[ '("start", PageRangeStartFieldInfo), '("end", PageRangeEndFieldInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePageRangeMethod (t :: Symbol) (o :: *) :: * where
    ResolvePageRangeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePageRangeMethod t PageRange, O.MethodInfo info PageRange p) => OL.IsLabel t (PageRange -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

