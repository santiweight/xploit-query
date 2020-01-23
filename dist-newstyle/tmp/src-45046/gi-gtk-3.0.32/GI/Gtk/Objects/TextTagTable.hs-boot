#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.TextTagTable where

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

newtype TextTagTable = TextTagTable (ManagedPtr TextTagTable)
instance GObject TextTagTable where
instance B.GValue.IsGValue TextTagTable where
class (GObject o, O.IsDescendantOf TextTagTable o) => IsTextTagTable o
instance (GObject o, O.IsDescendantOf TextTagTable o) => IsTextTagTable o
instance O.HasParentTypes TextTagTable
#if defined(ENABLE_OVERLOADING)
data TextTagTableTagAddedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableTagChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableTagRemovedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableAddMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableForeachMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableLookupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextTagTableRemoveMethodInfo
#endif