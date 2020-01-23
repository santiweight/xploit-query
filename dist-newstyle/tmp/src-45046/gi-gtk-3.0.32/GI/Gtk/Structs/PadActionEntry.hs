{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Struct defining a pad action entry.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.PadActionEntry
    ( 

-- * Exported types
    PadActionEntry(..)                      ,
    newZeroPadActionEntry                   ,
    noPadActionEntry                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePadActionEntryMethod             ,
#endif




 -- * Properties
-- ** actionName #attr:actionName#
-- | action name that will be activated in the t'GI.Gio.Interfaces.ActionGroup.ActionGroup'.

    clearPadActionEntryActionName           ,
    getPadActionEntryActionName             ,
#if defined(ENABLE_OVERLOADING)
    padActionEntry_actionName               ,
#endif
    setPadActionEntryActionName             ,


-- ** index #attr:index#
-- | the 0-indexed button\/ring\/strip number that will trigger this action
--   entry.

    getPadActionEntryIndex                  ,
#if defined(ENABLE_OVERLOADING)
    padActionEntry_index                    ,
#endif
    setPadActionEntryIndex                  ,


-- ** label #attr:label#
-- | Human readable description of this action entry, this string should
--   be deemed user-visible.

    clearPadActionEntryLabel                ,
    getPadActionEntryLabel                  ,
#if defined(ENABLE_OVERLOADING)
    padActionEntry_label                    ,
#endif
    setPadActionEntryLabel                  ,


-- ** mode #attr:mode#
-- | the mode that will trigger this action entry, or -1 for all modes.

    getPadActionEntryMode                   ,
#if defined(ENABLE_OVERLOADING)
    padActionEntry_mode                     ,
#endif
    setPadActionEntryMode                   ,


-- ** type #attr:type#
-- | the type of pad feature that will trigger this action entry.

    getPadActionEntryType                   ,
#if defined(ENABLE_OVERLOADING)
    padActionEntry_type                     ,
#endif
    setPadActionEntryType                   ,




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

import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums

-- | Memory-managed wrapper type.
newtype PadActionEntry = PadActionEntry (ManagedPtr PadActionEntry)
    deriving (Eq)
instance WrappedPtr PadActionEntry where
    wrappedPtrCalloc = callocBytes 32
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 32 >=> wrapPtr PadActionEntry)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `PadActionEntry` struct initialized to zero.
newZeroPadActionEntry :: MonadIO m => m PadActionEntry
newZeroPadActionEntry = liftIO $ wrappedPtrCalloc >>= wrapPtr PadActionEntry

instance tag ~ 'AttrSet => Constructible PadActionEntry tag where
    new _ attrs = do
        o <- newZeroPadActionEntry
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `PadActionEntry`.
noPadActionEntry :: Maybe PadActionEntry
noPadActionEntry = Nothing

-- | Get the value of the “@type@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' padActionEntry #type
-- @
getPadActionEntryType :: MonadIO m => PadActionEntry -> m Gtk.Enums.PadActionType
getPadActionEntryType s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO CUInt
    let val' = (toEnum . fromIntegral) val
    return val'

-- | Set the value of the “@type@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' padActionEntry [ #type 'Data.GI.Base.Attributes.:=' value ]
-- @
setPadActionEntryType :: MonadIO m => PadActionEntry -> Gtk.Enums.PadActionType -> m ()
setPadActionEntryType s val = liftIO $ withManagedPtr s $ \ptr -> do
    let val' = (fromIntegral . fromEnum) val
    poke (ptr `plusPtr` 0) (val' :: CUInt)

#if defined(ENABLE_OVERLOADING)
data PadActionEntryTypeFieldInfo
instance AttrInfo PadActionEntryTypeFieldInfo where
    type AttrBaseTypeConstraint PadActionEntryTypeFieldInfo = (~) PadActionEntry
    type AttrAllowedOps PadActionEntryTypeFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint PadActionEntryTypeFieldInfo = (~) Gtk.Enums.PadActionType
    type AttrTransferTypeConstraint PadActionEntryTypeFieldInfo = (~)Gtk.Enums.PadActionType
    type AttrTransferType PadActionEntryTypeFieldInfo = Gtk.Enums.PadActionType
    type AttrGetType PadActionEntryTypeFieldInfo = Gtk.Enums.PadActionType
    type AttrLabel PadActionEntryTypeFieldInfo = "type"
    type AttrOrigin PadActionEntryTypeFieldInfo = PadActionEntry
    attrGet = getPadActionEntryType
    attrSet = setPadActionEntryType
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

padActionEntry_type :: AttrLabelProxy "type"
padActionEntry_type = AttrLabelProxy

#endif


-- | Get the value of the “@index@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' padActionEntry #index
-- @
getPadActionEntryIndex :: MonadIO m => PadActionEntry -> m Int32
getPadActionEntryIndex s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 4) :: IO Int32
    return val

-- | Set the value of the “@index@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' padActionEntry [ #index 'Data.GI.Base.Attributes.:=' value ]
-- @
setPadActionEntryIndex :: MonadIO m => PadActionEntry -> Int32 -> m ()
setPadActionEntryIndex s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 4) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data PadActionEntryIndexFieldInfo
instance AttrInfo PadActionEntryIndexFieldInfo where
    type AttrBaseTypeConstraint PadActionEntryIndexFieldInfo = (~) PadActionEntry
    type AttrAllowedOps PadActionEntryIndexFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint PadActionEntryIndexFieldInfo = (~) Int32
    type AttrTransferTypeConstraint PadActionEntryIndexFieldInfo = (~)Int32
    type AttrTransferType PadActionEntryIndexFieldInfo = Int32
    type AttrGetType PadActionEntryIndexFieldInfo = Int32
    type AttrLabel PadActionEntryIndexFieldInfo = "index"
    type AttrOrigin PadActionEntryIndexFieldInfo = PadActionEntry
    attrGet = getPadActionEntryIndex
    attrSet = setPadActionEntryIndex
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

padActionEntry_index :: AttrLabelProxy "index"
padActionEntry_index = AttrLabelProxy

#endif


-- | Get the value of the “@mode@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' padActionEntry #mode
-- @
getPadActionEntryMode :: MonadIO m => PadActionEntry -> m Int32
getPadActionEntryMode s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 8) :: IO Int32
    return val

-- | Set the value of the “@mode@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' padActionEntry [ #mode 'Data.GI.Base.Attributes.:=' value ]
-- @
setPadActionEntryMode :: MonadIO m => PadActionEntry -> Int32 -> m ()
setPadActionEntryMode s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 8) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data PadActionEntryModeFieldInfo
instance AttrInfo PadActionEntryModeFieldInfo where
    type AttrBaseTypeConstraint PadActionEntryModeFieldInfo = (~) PadActionEntry
    type AttrAllowedOps PadActionEntryModeFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint PadActionEntryModeFieldInfo = (~) Int32
    type AttrTransferTypeConstraint PadActionEntryModeFieldInfo = (~)Int32
    type AttrTransferType PadActionEntryModeFieldInfo = Int32
    type AttrGetType PadActionEntryModeFieldInfo = Int32
    type AttrLabel PadActionEntryModeFieldInfo = "mode"
    type AttrOrigin PadActionEntryModeFieldInfo = PadActionEntry
    attrGet = getPadActionEntryMode
    attrSet = setPadActionEntryMode
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

padActionEntry_mode :: AttrLabelProxy "mode"
padActionEntry_mode = AttrLabelProxy

#endif


-- | Get the value of the “@label@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' padActionEntry #label
-- @
getPadActionEntryLabel :: MonadIO m => PadActionEntry -> m (Maybe T.Text)
getPadActionEntryLabel s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 16) :: IO CString
    result <- SP.convertIfNonNull val $ \val' -> do
        val'' <- cstringToText val'
        return val''
    return result

-- | Set the value of the “@label@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' padActionEntry [ #label 'Data.GI.Base.Attributes.:=' value ]
-- @
setPadActionEntryLabel :: MonadIO m => PadActionEntry -> CString -> m ()
setPadActionEntryLabel s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 16) (val :: CString)

-- | Set the value of the “@label@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #label
-- @
clearPadActionEntryLabel :: MonadIO m => PadActionEntry -> m ()
clearPadActionEntryLabel s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 16) (FP.nullPtr :: CString)

#if defined(ENABLE_OVERLOADING)
data PadActionEntryLabelFieldInfo
instance AttrInfo PadActionEntryLabelFieldInfo where
    type AttrBaseTypeConstraint PadActionEntryLabelFieldInfo = (~) PadActionEntry
    type AttrAllowedOps PadActionEntryLabelFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint PadActionEntryLabelFieldInfo = (~) CString
    type AttrTransferTypeConstraint PadActionEntryLabelFieldInfo = (~)CString
    type AttrTransferType PadActionEntryLabelFieldInfo = CString
    type AttrGetType PadActionEntryLabelFieldInfo = Maybe T.Text
    type AttrLabel PadActionEntryLabelFieldInfo = "label"
    type AttrOrigin PadActionEntryLabelFieldInfo = PadActionEntry
    attrGet = getPadActionEntryLabel
    attrSet = setPadActionEntryLabel
    attrConstruct = undefined
    attrClear = clearPadActionEntryLabel
    attrTransfer _ v = do
        return v

padActionEntry_label :: AttrLabelProxy "label"
padActionEntry_label = AttrLabelProxy

#endif


-- | Get the value of the “@action_name@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' padActionEntry #actionName
-- @
getPadActionEntryActionName :: MonadIO m => PadActionEntry -> m (Maybe T.Text)
getPadActionEntryActionName s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 24) :: IO CString
    result <- SP.convertIfNonNull val $ \val' -> do
        val'' <- cstringToText val'
        return val''
    return result

-- | Set the value of the “@action_name@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' padActionEntry [ #actionName 'Data.GI.Base.Attributes.:=' value ]
-- @
setPadActionEntryActionName :: MonadIO m => PadActionEntry -> CString -> m ()
setPadActionEntryActionName s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 24) (val :: CString)

-- | Set the value of the “@action_name@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #actionName
-- @
clearPadActionEntryActionName :: MonadIO m => PadActionEntry -> m ()
clearPadActionEntryActionName s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 24) (FP.nullPtr :: CString)

#if defined(ENABLE_OVERLOADING)
data PadActionEntryActionNameFieldInfo
instance AttrInfo PadActionEntryActionNameFieldInfo where
    type AttrBaseTypeConstraint PadActionEntryActionNameFieldInfo = (~) PadActionEntry
    type AttrAllowedOps PadActionEntryActionNameFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint PadActionEntryActionNameFieldInfo = (~) CString
    type AttrTransferTypeConstraint PadActionEntryActionNameFieldInfo = (~)CString
    type AttrTransferType PadActionEntryActionNameFieldInfo = CString
    type AttrGetType PadActionEntryActionNameFieldInfo = Maybe T.Text
    type AttrLabel PadActionEntryActionNameFieldInfo = "action_name"
    type AttrOrigin PadActionEntryActionNameFieldInfo = PadActionEntry
    attrGet = getPadActionEntryActionName
    attrSet = setPadActionEntryActionName
    attrConstruct = undefined
    attrClear = clearPadActionEntryActionName
    attrTransfer _ v = do
        return v

padActionEntry_actionName :: AttrLabelProxy "actionName"
padActionEntry_actionName = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PadActionEntry
type instance O.AttributeList PadActionEntry = PadActionEntryAttributeList
type PadActionEntryAttributeList = ('[ '("type", PadActionEntryTypeFieldInfo), '("index", PadActionEntryIndexFieldInfo), '("mode", PadActionEntryModeFieldInfo), '("label", PadActionEntryLabelFieldInfo), '("actionName", PadActionEntryActionNameFieldInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePadActionEntryMethod (t :: Symbol) (o :: *) :: * where
    ResolvePadActionEntryMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePadActionEntryMethod t PadActionEntry, O.MethodInfo info PadActionEntry p) => OL.IsLabel t (PadActionEntry -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

