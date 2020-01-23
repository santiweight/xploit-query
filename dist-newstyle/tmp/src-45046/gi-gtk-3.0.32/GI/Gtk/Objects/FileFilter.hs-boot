#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.FileFilter where

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

newtype FileFilter = FileFilter (ManagedPtr FileFilter)
instance GObject FileFilter where
instance B.GValue.IsGValue FileFilter where
class (GObject o, O.IsDescendantOf FileFilter o) => IsFileFilter o
instance (GObject o, O.IsDescendantOf FileFilter o) => IsFileFilter o
instance O.HasParentTypes FileFilter
#if defined(ENABLE_OVERLOADING)
data FileFilterAddCustomMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterAddMimeTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterAddPatternMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterAddPixbufFormatsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterFilterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterGetNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterGetNeededMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterSetNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FileFilterToGvariantMethodInfo
#endif