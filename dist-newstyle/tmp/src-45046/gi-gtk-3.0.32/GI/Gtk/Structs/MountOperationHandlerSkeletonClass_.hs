{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Class structure for t'GI.Gtk.Structs.MountOperationHandlerSkeleton_.MountOperationHandlerSkeleton_'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.MountOperationHandlerSkeletonClass_
    ( 

-- * Exported types
    MountOperationHandlerSkeletonClass_(..) ,
    newZeroMountOperationHandlerSkeletonClass_,
    noMountOperationHandlerSkeletonClass_   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMountOperationHandlerSkeletonClass_Method,
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
newtype MountOperationHandlerSkeletonClass_ = MountOperationHandlerSkeletonClass_ (ManagedPtr MountOperationHandlerSkeletonClass_)
    deriving (Eq)
instance WrappedPtr MountOperationHandlerSkeletonClass_ where
    wrappedPtrCalloc = callocBytes 304
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 304 >=> wrapPtr MountOperationHandlerSkeletonClass_)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `MountOperationHandlerSkeletonClass_` struct initialized to zero.
newZeroMountOperationHandlerSkeletonClass_ :: MonadIO m => m MountOperationHandlerSkeletonClass_
newZeroMountOperationHandlerSkeletonClass_ = liftIO $ wrappedPtrCalloc >>= wrapPtr MountOperationHandlerSkeletonClass_

instance tag ~ 'AttrSet => Constructible MountOperationHandlerSkeletonClass_ tag where
    new _ attrs = do
        o <- newZeroMountOperationHandlerSkeletonClass_
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `MountOperationHandlerSkeletonClass_`.
noMountOperationHandlerSkeletonClass_ :: Maybe MountOperationHandlerSkeletonClass_
noMountOperationHandlerSkeletonClass_ = Nothing

-- XXX Skipped attribute for "MountOperationHandlerSkeletonClass_:parent_class" :: Not implemented: "Field type is an unsupported struct type"

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MountOperationHandlerSkeletonClass_
type instance O.AttributeList MountOperationHandlerSkeletonClass_ = MountOperationHandlerSkeletonClass_AttributeList
type MountOperationHandlerSkeletonClass_AttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMountOperationHandlerSkeletonClass_Method (t :: Symbol) (o :: *) :: * where
    ResolveMountOperationHandlerSkeletonClass_Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMountOperationHandlerSkeletonClass_Method t MountOperationHandlerSkeletonClass_, O.MethodInfo info MountOperationHandlerSkeletonClass_ p) => OL.IsLabel t (MountOperationHandlerSkeletonClass_ -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

