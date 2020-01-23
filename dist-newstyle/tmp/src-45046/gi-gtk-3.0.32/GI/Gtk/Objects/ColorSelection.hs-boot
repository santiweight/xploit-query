#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ColorSelection where

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

newtype ColorSelection = ColorSelection (ManagedPtr ColorSelection)
instance GObject ColorSelection where
instance B.GValue.IsGValue ColorSelection where
class (GObject o, O.IsDescendantOf ColorSelection o) => IsColorSelection o
instance (GObject o, O.IsDescendantOf ColorSelection o) => IsColorSelection o
instance O.HasParentTypes ColorSelection
#if defined(ENABLE_OVERLOADING)
data ColorSelectionColorChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionCurrentAlphaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionCurrentColorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionCurrentRgbaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionHasOpacityControlPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionHasPalettePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetCurrentAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetCurrentColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetCurrentRgbaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetHasOpacityControlMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetHasPaletteMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetPreviousAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetPreviousColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionGetPreviousRgbaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionIsAdjustingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetCurrentAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetCurrentColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetCurrentRgbaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetHasOpacityControlMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetHasPaletteMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetPreviousAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetPreviousColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorSelectionSetPreviousRgbaMethodInfo
#endif