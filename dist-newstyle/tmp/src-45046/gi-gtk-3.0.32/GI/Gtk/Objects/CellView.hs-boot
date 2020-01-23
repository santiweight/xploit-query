#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.CellView where

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

newtype CellView = CellView (ManagedPtr CellView)
instance GObject CellView where
instance B.GValue.IsGValue CellView where
class (GObject o, O.IsDescendantOf CellView o) => IsCellView o
instance (GObject o, O.IsDescendantOf CellView o) => IsCellView o
instance O.HasParentTypes CellView
#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundGdkPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundRgbaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundSetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewCellAreaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewCellAreaContextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewDrawSensitivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewFitModelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewModelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewGetDisplayedRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewGetDrawSensitiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewGetFitModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewGetModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewGetSizeOfRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetBackgroundColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetBackgroundRgbaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetDisplayedRowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetDrawSensitiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetFitModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellViewSetModelMethodInfo
#endif