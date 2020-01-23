#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ProgressBar where

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

newtype ProgressBar = ProgressBar (ManagedPtr ProgressBar)
instance GObject ProgressBar where
instance B.GValue.IsGValue ProgressBar where
class (GObject o, O.IsDescendantOf ProgressBar o) => IsProgressBar o
instance (GObject o, O.IsDescendantOf ProgressBar o) => IsProgressBar o
instance O.HasParentTypes ProgressBar
#if defined(ENABLE_OVERLOADING)
data ProgressBarEllipsizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarFractionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarInvertedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarPulseStepPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarShowTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetEllipsizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetFractionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetInvertedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetPulseStepMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetShowTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarGetTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarPulseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetEllipsizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetFractionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetInvertedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetPulseStepMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetShowTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ProgressBarSetTextMethodInfo
#endif