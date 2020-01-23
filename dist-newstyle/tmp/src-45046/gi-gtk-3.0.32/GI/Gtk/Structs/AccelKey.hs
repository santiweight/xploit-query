{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.AccelKey
    ( 

-- * Exported types
    AccelKey(..)                            ,
    newZeroAccelKey                         ,
    noAccelKey                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAccelKeyMethod                   ,
#endif




 -- * Properties
-- ** accelFlags #attr:accelFlags#
-- | The accelerator flags

#if defined(ENABLE_OVERLOADING)
    accelKey_accelFlags                     ,
#endif
    getAccelKeyAccelFlags                   ,
    setAccelKeyAccelFlags                   ,


-- ** accelKey #attr:accelKey#
-- | The accelerator keyval

#if defined(ENABLE_OVERLOADING)
    accelKey_accelKey                       ,
#endif
    getAccelKeyAccelKey                     ,
    setAccelKeyAccelKey                     ,


-- ** accelMods #attr:accelMods#
-- | The accelerator modifiers

#if defined(ENABLE_OVERLOADING)
    accelKey_accelMods                      ,
#endif
    getAccelKeyAccelMods                    ,
    setAccelKeyAccelMods                    ,




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

import qualified GI.Gdk.Flags as Gdk.Flags

-- | Memory-managed wrapper type.
newtype AccelKey = AccelKey (ManagedPtr AccelKey)
    deriving (Eq)
instance WrappedPtr AccelKey where
    wrappedPtrCalloc = callocBytes 12
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 12 >=> wrapPtr AccelKey)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `AccelKey` struct initialized to zero.
newZeroAccelKey :: MonadIO m => m AccelKey
newZeroAccelKey = liftIO $ wrappedPtrCalloc >>= wrapPtr AccelKey

instance tag ~ 'AttrSet => Constructible AccelKey tag where
    new _ attrs = do
        o <- newZeroAccelKey
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `AccelKey`.
noAccelKey :: Maybe AccelKey
noAccelKey = Nothing

-- | Get the value of the “@accel_key@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accelKey #accelKey
-- @
getAccelKeyAccelKey :: MonadIO m => AccelKey -> m Word32
getAccelKeyAccelKey s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO Word32
    return val

-- | Set the value of the “@accel_key@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' accelKey [ #accelKey 'Data.GI.Base.Attributes.:=' value ]
-- @
setAccelKeyAccelKey :: MonadIO m => AccelKey -> Word32 -> m ()
setAccelKeyAccelKey s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (val :: Word32)

#if defined(ENABLE_OVERLOADING)
data AccelKeyAccelKeyFieldInfo
instance AttrInfo AccelKeyAccelKeyFieldInfo where
    type AttrBaseTypeConstraint AccelKeyAccelKeyFieldInfo = (~) AccelKey
    type AttrAllowedOps AccelKeyAccelKeyFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint AccelKeyAccelKeyFieldInfo = (~) Word32
    type AttrTransferTypeConstraint AccelKeyAccelKeyFieldInfo = (~)Word32
    type AttrTransferType AccelKeyAccelKeyFieldInfo = Word32
    type AttrGetType AccelKeyAccelKeyFieldInfo = Word32
    type AttrLabel AccelKeyAccelKeyFieldInfo = "accel_key"
    type AttrOrigin AccelKeyAccelKeyFieldInfo = AccelKey
    attrGet = getAccelKeyAccelKey
    attrSet = setAccelKeyAccelKey
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

accelKey_accelKey :: AttrLabelProxy "accelKey"
accelKey_accelKey = AttrLabelProxy

#endif


-- | Get the value of the “@accel_mods@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accelKey #accelMods
-- @
getAccelKeyAccelMods :: MonadIO m => AccelKey -> m [Gdk.Flags.ModifierType]
getAccelKeyAccelMods s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 4) :: IO CUInt
    let val' = wordToGFlags val
    return val'

-- | Set the value of the “@accel_mods@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' accelKey [ #accelMods 'Data.GI.Base.Attributes.:=' value ]
-- @
setAccelKeyAccelMods :: MonadIO m => AccelKey -> [Gdk.Flags.ModifierType] -> m ()
setAccelKeyAccelMods s val = liftIO $ withManagedPtr s $ \ptr -> do
    let val' = gflagsToWord val
    poke (ptr `plusPtr` 4) (val' :: CUInt)

#if defined(ENABLE_OVERLOADING)
data AccelKeyAccelModsFieldInfo
instance AttrInfo AccelKeyAccelModsFieldInfo where
    type AttrBaseTypeConstraint AccelKeyAccelModsFieldInfo = (~) AccelKey
    type AttrAllowedOps AccelKeyAccelModsFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint AccelKeyAccelModsFieldInfo = (~) [Gdk.Flags.ModifierType]
    type AttrTransferTypeConstraint AccelKeyAccelModsFieldInfo = (~)[Gdk.Flags.ModifierType]
    type AttrTransferType AccelKeyAccelModsFieldInfo = [Gdk.Flags.ModifierType]
    type AttrGetType AccelKeyAccelModsFieldInfo = [Gdk.Flags.ModifierType]
    type AttrLabel AccelKeyAccelModsFieldInfo = "accel_mods"
    type AttrOrigin AccelKeyAccelModsFieldInfo = AccelKey
    attrGet = getAccelKeyAccelMods
    attrSet = setAccelKeyAccelMods
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

accelKey_accelMods :: AttrLabelProxy "accelMods"
accelKey_accelMods = AttrLabelProxy

#endif


-- | Get the value of the “@accel_flags@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accelKey #accelFlags
-- @
getAccelKeyAccelFlags :: MonadIO m => AccelKey -> m Word32
getAccelKeyAccelFlags s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 8) :: IO Word32
    return val

-- | Set the value of the “@accel_flags@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' accelKey [ #accelFlags 'Data.GI.Base.Attributes.:=' value ]
-- @
setAccelKeyAccelFlags :: MonadIO m => AccelKey -> Word32 -> m ()
setAccelKeyAccelFlags s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 8) (val :: Word32)

#if defined(ENABLE_OVERLOADING)
data AccelKeyAccelFlagsFieldInfo
instance AttrInfo AccelKeyAccelFlagsFieldInfo where
    type AttrBaseTypeConstraint AccelKeyAccelFlagsFieldInfo = (~) AccelKey
    type AttrAllowedOps AccelKeyAccelFlagsFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint AccelKeyAccelFlagsFieldInfo = (~) Word32
    type AttrTransferTypeConstraint AccelKeyAccelFlagsFieldInfo = (~)Word32
    type AttrTransferType AccelKeyAccelFlagsFieldInfo = Word32
    type AttrGetType AccelKeyAccelFlagsFieldInfo = Word32
    type AttrLabel AccelKeyAccelFlagsFieldInfo = "accel_flags"
    type AttrOrigin AccelKeyAccelFlagsFieldInfo = AccelKey
    attrGet = getAccelKeyAccelFlags
    attrSet = setAccelKeyAccelFlags
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

accelKey_accelFlags :: AttrLabelProxy "accelFlags"
accelKey_accelFlags = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AccelKey
type instance O.AttributeList AccelKey = AccelKeyAttributeList
type AccelKeyAttributeList = ('[ '("accelKey", AccelKeyAccelKeyFieldInfo), '("accelMods", AccelKeyAccelModsFieldInfo), '("accelFlags", AccelKeyAccelFlagsFieldInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveAccelKeyMethod (t :: Symbol) (o :: *) :: * where
    ResolveAccelKeyMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAccelKeyMethod t AccelKey, O.MethodInfo info AccelKey p) => OL.IsLabel t (AccelKey -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

