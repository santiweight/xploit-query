#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Adjustment where

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

newtype Adjustment = Adjustment (ManagedPtr Adjustment)
instance GObject Adjustment where
instance B.GValue.IsGValue Adjustment where
class (GObject o, O.IsDescendantOf Adjustment o) => IsAdjustment o
instance (GObject o, O.IsDescendantOf Adjustment o) => IsAdjustment o
instance O.HasParentTypes Adjustment
#if defined(ENABLE_OVERLOADING)
data AdjustmentChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentValueChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentLowerPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentPageIncrementPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentPageSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentStepIncrementPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentUpperPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentValuePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentChangedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentClampPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentConfigureMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetLowerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetMinimumIncrementMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetPageIncrementMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetPageSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetStepIncrementMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetUpperMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentGetValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetLowerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetPageIncrementMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetPageSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetStepIncrementMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetUpperMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentSetValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AdjustmentValueChangedMethodInfo
#endif