#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Interfaces.CellAccessibleParent where

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

newtype CellAccessibleParent = CellAccessibleParent (ManagedPtr CellAccessibleParent)
class (ManagedPtrNewtype o, O.IsDescendantOf CellAccessibleParent o) => IsCellAccessibleParent o
instance (ManagedPtrNewtype o, O.IsDescendantOf CellAccessibleParent o) => IsCellAccessibleParent o
instance WrappedPtr CellAccessibleParent where
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentActivateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentEditMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentExpandCollapseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellExtentsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellPositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetChildIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetColumnHeaderCellsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetRendererStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetRowHeaderCellsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGrabFocusMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentUpdateRelationsetMethodInfo
#endif