{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.SettingsValue
    ( 

-- * Exported types
    SettingsValue(..)                       ,
    newZeroSettingsValue                    ,
    noSettingsValue                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSettingsValueMethod              ,
#endif




 -- * Properties
-- ** origin #attr:origin#
-- | Origin should be something like “filename:linenumber” for
--    rc files, or e.g. “XProperty” for other sources.

    clearSettingsValueOrigin                ,
    getSettingsValueOrigin                  ,
    setSettingsValueOrigin                  ,
#if defined(ENABLE_OVERLOADING)
    settingsValue_origin                    ,
#endif


-- ** value #attr:value#
-- | Valid types are LONG, DOUBLE and STRING corresponding to
--    the token parsed, or a GSTRING holding an unparsed statement

    getSettingsValueValue                   ,
#if defined(ENABLE_OVERLOADING)
    settingsValue_value                     ,
#endif




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
newtype SettingsValue = SettingsValue (ManagedPtr SettingsValue)
    deriving (Eq)
instance WrappedPtr SettingsValue where
    wrappedPtrCalloc = callocBytes 32
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 32 >=> wrapPtr SettingsValue)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `SettingsValue` struct initialized to zero.
newZeroSettingsValue :: MonadIO m => m SettingsValue
newZeroSettingsValue = liftIO $ wrappedPtrCalloc >>= wrapPtr SettingsValue

instance tag ~ 'AttrSet => Constructible SettingsValue tag where
    new _ attrs = do
        o <- newZeroSettingsValue
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `SettingsValue`.
noSettingsValue :: Maybe SettingsValue
noSettingsValue = Nothing

-- | Get the value of the “@origin@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settingsValue #origin
-- @
getSettingsValueOrigin :: MonadIO m => SettingsValue -> m (Maybe T.Text)
getSettingsValueOrigin s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO CString
    result <- SP.convertIfNonNull val $ \val' -> do
        val'' <- cstringToText val'
        return val''
    return result

-- | Set the value of the “@origin@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settingsValue [ #origin 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsValueOrigin :: MonadIO m => SettingsValue -> CString -> m ()
setSettingsValueOrigin s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (val :: CString)

-- | Set the value of the “@origin@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #origin
-- @
clearSettingsValueOrigin :: MonadIO m => SettingsValue -> m ()
clearSettingsValueOrigin s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (FP.nullPtr :: CString)

#if defined(ENABLE_OVERLOADING)
data SettingsValueOriginFieldInfo
instance AttrInfo SettingsValueOriginFieldInfo where
    type AttrBaseTypeConstraint SettingsValueOriginFieldInfo = (~) SettingsValue
    type AttrAllowedOps SettingsValueOriginFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint SettingsValueOriginFieldInfo = (~) CString
    type AttrTransferTypeConstraint SettingsValueOriginFieldInfo = (~)CString
    type AttrTransferType SettingsValueOriginFieldInfo = CString
    type AttrGetType SettingsValueOriginFieldInfo = Maybe T.Text
    type AttrLabel SettingsValueOriginFieldInfo = "origin"
    type AttrOrigin SettingsValueOriginFieldInfo = SettingsValue
    attrGet = getSettingsValueOrigin
    attrSet = setSettingsValueOrigin
    attrConstruct = undefined
    attrClear = clearSettingsValueOrigin
    attrTransfer _ v = do
        return v

settingsValue_origin :: AttrLabelProxy "origin"
settingsValue_origin = AttrLabelProxy

#endif


-- | Get the value of the “@value@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settingsValue #value
-- @
getSettingsValueValue :: MonadIO m => SettingsValue -> m GValue
getSettingsValueValue s = liftIO $ withManagedPtr s $ \ptr -> do
    let val = ptr `plusPtr` 8 :: (Ptr GValue)
    val' <- (newBoxed GValue) val
    return val'

#if defined(ENABLE_OVERLOADING)
data SettingsValueValueFieldInfo
instance AttrInfo SettingsValueValueFieldInfo where
    type AttrBaseTypeConstraint SettingsValueValueFieldInfo = (~) SettingsValue
    type AttrAllowedOps SettingsValueValueFieldInfo = '[ 'AttrGet]
    type AttrSetTypeConstraint SettingsValueValueFieldInfo = (~) (Ptr GValue)
    type AttrTransferTypeConstraint SettingsValueValueFieldInfo = (~)(Ptr GValue)
    type AttrTransferType SettingsValueValueFieldInfo = (Ptr GValue)
    type AttrGetType SettingsValueValueFieldInfo = GValue
    type AttrLabel SettingsValueValueFieldInfo = "value"
    type AttrOrigin SettingsValueValueFieldInfo = SettingsValue
    attrGet = getSettingsValueValue
    attrSet = undefined
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer = undefined

settingsValue_value :: AttrLabelProxy "value"
settingsValue_value = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SettingsValue
type instance O.AttributeList SettingsValue = SettingsValueAttributeList
type SettingsValueAttributeList = ('[ '("origin", SettingsValueOriginFieldInfo), '("value", SettingsValueValueFieldInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveSettingsValueMethod (t :: Symbol) (o :: *) :: * where
    ResolveSettingsValueMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSettingsValueMethod t SettingsValue, O.MethodInfo info SettingsValue p) => OL.IsLabel t (SettingsValue -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

