#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ListBoxRow where

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

newtype ListBoxRow = ListBoxRow (ManagedPtr ListBoxRow)
instance GObject ListBoxRow where
instance B.GValue.IsGValue ListBoxRow where
class (GObject o, O.IsDescendantOf ListBoxRow o) => IsListBoxRow o
instance (GObject o, O.IsDescendantOf ListBoxRow o) => IsListBoxRow o
instance O.HasParentTypes ListBoxRow
#if defined(ENABLE_OVERLOADING)
data ListBoxRowActivateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowActivatablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowSelectablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowChangedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetActivatableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetHeaderMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetSelectableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowIsSelectedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetActivatableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetHeaderMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetSelectableMethodInfo
#endif