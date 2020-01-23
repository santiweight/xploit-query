{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Class structure for t'GI.Gtk.Structs.MountOperationHandlerProxy_.MountOperationHandlerProxy_'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.MountOperationHandlerProxyClass_
    ( 

-- * Exported types
    MountOperationHandlerProxyClass_(..)    ,
    newZeroMountOperationHandlerProxyClass_ ,
    noMountOperationHandlerProxyClass_      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMountOperationHandlerProxyClass_Method,
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
newtype MountOperationHandlerProxyClass_ = MountOperationHandlerProxyClass_ (ManagedPtr MountOperationHandlerProxyClass_)
    deriving (Eq)
instance WrappedPtr MountOperationHandlerProxyClass_ where
    wrappedPtrCalloc = callocBytes 408
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 408 >=> wrapPtr MountOperationHandlerProxyClass_)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `MountOperationHandlerProxyClass_` struct initialized to zero.
newZeroMountOperationHandlerProxyClass_ :: MonadIO m => m MountOperationHandlerProxyClass_
newZeroMountOperationHandlerProxyClass_ = liftIO $ wrappedPtrCalloc >>= wrapPtr MountOperationHandlerProxyClass_

instance tag ~ 'AttrSet => Constructible MountOperationHandlerProxyClass_ tag where
    new _ attrs = do
        o <- newZeroMountOperationHandlerProxyClass_
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `MountOperationHandlerProxyClass_`.
noMountOperationHandlerProxyClass_ :: Maybe MountOperationHandlerProxyClass_
noMountOperationHandlerProxyClass_ = Nothing

-- XXX Skipped attribute for "MountOperationHandlerProxyClass_:parent_class" :: Not implemented: "Field type is an unsupported struct type"

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MountOperationHandlerProxyClass_
type instance O.AttributeList MountOperationHandlerProxyClass_ = MountOperationHandlerProxyClass_AttributeList
type MountOperationHandlerProxyClass_AttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMountOperationHandlerProxyClass_Method (t :: Symbol) (o :: *) :: * where
    ResolveMountOperationHandlerProxyClass_Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMountOperationHandlerProxyClass_Method t MountOperationHandlerProxyClass_, O.MethodInfo info MountOperationHandlerProxyClass_ p) => OL.IsLabel t (MountOperationHandlerProxyClass_ -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

