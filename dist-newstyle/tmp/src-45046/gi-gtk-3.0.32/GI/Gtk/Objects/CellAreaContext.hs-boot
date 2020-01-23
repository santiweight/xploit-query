#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.CellAreaContext where

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

newtype CellAreaContext = CellAreaContext (ManagedPtr CellAreaContext)
instance GObject CellAreaContext where
instance B.GValue.IsGValue CellAreaContext where
class (GObject o, O.IsDescendantOf CellAreaContext o) => IsCellAreaContext o
instance (GObject o, O.IsDescendantOf CellAreaContext o) => IsCellAreaContext o
instance O.HasParentTypes CellAreaContext
#if defined(ENABLE_OVERLOADING)
data CellAreaContextAreaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextMinimumHeightPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextMinimumWidthPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextNaturalHeightPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextNaturalWidthPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextAllocateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetAllocationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetPreferredHeightMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetPreferredHeightForWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetPreferredWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextGetPreferredWidthForHeightMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextPushPreferredHeightMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextPushPreferredWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAreaContextResetMethodInfo
#endif