{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Structs.MountOperationHandlerProxy_.MountOperationHandlerProxy_' structure contains only private data and should only be accessed using the provided API.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.MountOperationHandlerProxy_
    ( 

-- * Exported types
    MountOperationHandlerProxy_(..)         ,
    newZeroMountOperationHandlerProxy_      ,
    noMountOperationHandlerProxy_           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMountOperationHandlerProxy_Method,
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
newtype MountOperationHandlerProxy_ = MountOperationHandlerProxy_ (ManagedPtr MountOperationHandlerProxy_)
    deriving (Eq)
instance WrappedPtr MountOperationHandlerProxy_ where
    wrappedPtrCalloc = callocBytes 40
    wrappedPtrCopy = \p -> withManagedPtr p (copyBytes 40 >=> wrapPtr MountOperationHandlerProxy_)
    wrappedPtrFree = Just ptr_to_g_free

-- | Construct a `MountOperationHandlerProxy_` struct initialized to zero.
newZeroMountOperationHandlerProxy_ :: MonadIO m => m MountOperationHandlerProxy_
newZeroMountOperationHandlerProxy_ = liftIO $ wrappedPtrCalloc >>= wrapPtr MountOperationHandlerProxy_

instance tag ~ 'AttrSet => Constructible MountOperationHandlerProxy_ tag where
    new _ attrs = do
        o <- newZeroMountOperationHandlerProxy_
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `MountOperationHandlerProxy_`.
noMountOperationHandlerProxy_ :: Maybe MountOperationHandlerProxy_
noMountOperationHandlerProxy_ = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MountOperationHandlerProxy_
type instance O.AttributeList MountOperationHandlerProxy_ = MountOperationHandlerProxy_AttributeList
type MountOperationHandlerProxy_AttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMountOperationHandlerProxy_Method (t :: Symbol) (o :: *) :: * where
    ResolveMountOperationHandlerProxy_Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMountOperationHandlerProxy_Method t MountOperationHandlerProxy_, O.MethodInfo info MountOperationHandlerProxy_ p) => OL.IsLabel t (MountOperationHandlerProxy_ -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

