{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.WindowGeometryInfo
    ( 

-- * Exported types
    WindowGeometryInfo(..)                  ,
    noWindowGeometryInfo                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveWindowGeometryInfoMethod         ,
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
newtype WindowGeometryInfo = WindowGeometryInfo (ManagedPtr WindowGeometryInfo)
    deriving (Eq)
-- XXX Wrapping a foreign struct/union with no known destructor or size, leak?
instance WrappedPtr WindowGeometryInfo where
    wrappedPtrCalloc = return nullPtr
    wrappedPtrCopy = return
    wrappedPtrFree = Nothing

-- | A convenience alias for `Nothing` :: `Maybe` `WindowGeometryInfo`.
noWindowGeometryInfo :: Maybe WindowGeometryInfo
noWindowGeometryInfo = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WindowGeometryInfo
type instance O.AttributeList WindowGeometryInfo = WindowGeometryInfoAttributeList
type WindowGeometryInfoAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveWindowGeometryInfoMethod (t :: Symbol) (o :: *) :: * where
    ResolveWindowGeometryInfoMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWindowGeometryInfoMethod t WindowGeometryInfo, O.MethodInfo info WindowGeometryInfo p) => OL.IsLabel t (WindowGeometryInfo -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

