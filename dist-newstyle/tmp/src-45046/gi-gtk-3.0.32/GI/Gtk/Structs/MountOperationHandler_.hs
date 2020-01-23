{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Abstract interface type for the D-Bus interface \<link linkend=\"gdbus-interface-org-Gtk-MountOperationHandler.top_of_page\">org.Gtk.MountOperationHandler\<\/link>.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.MountOperationHandler_
    ( 

-- * Exported types
    MountOperationHandler_(..)              ,
    noMountOperationHandler_                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMountOperationHandler_Method     ,
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
newtype MountOperationHandler_ = MountOperationHandler_ (ManagedPtr MountOperationHandler_)
    deriving (Eq)
-- XXX Wrapping a foreign struct/union with no known destructor or size, leak?
instance WrappedPtr MountOperationHandler_ where
    wrappedPtrCalloc = return nullPtr
    wrappedPtrCopy = return
    wrappedPtrFree = Nothing

-- | A convenience alias for `Nothing` :: `Maybe` `MountOperationHandler_`.
noMountOperationHandler_ :: Maybe MountOperationHandler_
noMountOperationHandler_ = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MountOperationHandler_
type instance O.AttributeList MountOperationHandler_ = MountOperationHandler_AttributeList
type MountOperationHandler_AttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMountOperationHandler_Method (t :: Symbol) (o :: *) :: * where
    ResolveMountOperationHandler_Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMountOperationHandler_Method t MountOperationHandler_, O.MethodInfo info MountOperationHandler_ p) => OL.IsLabel t (MountOperationHandler_ -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

