#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Grid where

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

newtype Grid = Grid (ManagedPtr Grid)
instance GObject Grid where
instance B.GValue.IsGValue Grid where
class (GObject o, O.IsDescendantOf Grid o) => IsGrid o
instance (GObject o, O.IsDescendantOf Grid o) => IsGrid o
instance O.HasParentTypes Grid
#if defined(ENABLE_OVERLOADING)
data GridBaselineRowPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridColumnHomogeneousPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridColumnSpacingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridRowHomogeneousPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridRowSpacingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridAttachMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridAttachNextToMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetBaselineRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetChildAtMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetColumnHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetColumnSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetRowBaselinePositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetRowHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridGetRowSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridInsertColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridInsertNextToMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridInsertRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridRemoveColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridRemoveRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetBaselineRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetColumnHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetColumnSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetRowBaselinePositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetRowHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GridSetRowSpacingMethodInfo
#endif