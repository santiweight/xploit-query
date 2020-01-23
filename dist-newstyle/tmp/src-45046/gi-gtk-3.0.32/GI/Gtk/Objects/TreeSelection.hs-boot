#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.TreeSelection where

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

newtype TreeSelection = TreeSelection (ManagedPtr TreeSelection)
instance GObject TreeSelection where
instance B.GValue.IsGValue TreeSelection where
class (GObject o, O.IsDescendantOf TreeSelection o) => IsTreeSelection o
instance (GObject o, O.IsDescendantOf TreeSelection o) => IsTreeSelection o
instance O.HasParentTypes TreeSelection
#if defined(ENABLE_OVERLOADING)
data TreeSelectionChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionModePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionCountSelectedRowsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionGetModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionGetSelectedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionGetSelectedRowsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionGetTreeViewMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionIterIsSelectedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionPathIsSelectedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSelectAllMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSelectIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSelectPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSelectRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSelectedForeachMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSetModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionSetSelectFunctionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionUnselectAllMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionUnselectIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionUnselectPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeSelectionUnselectRangeMethodInfo
#endif