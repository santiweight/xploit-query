#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Range where

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

newtype Range = Range (ManagedPtr Range)
instance GObject Range where
instance B.GValue.IsGValue Range where
class (GObject o, O.IsDescendantOf Range o) => IsRange o
instance (GObject o, O.IsDescendantOf Range o) => IsRange o
instance O.HasParentTypes Range
#if defined(ENABLE_OVERLOADING)
data RangeAdjustBoundsSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeChangeValueSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeMoveSliderSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeValueChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeAdjustmentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeFillLevelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeInvertedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeLowerStepperSensitivityPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeRestrictToFillLevelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeRoundDigitsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeShowFillLevelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeUpperStepperSensitivityPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetAdjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetFlippableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetInvertedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetLowerStepperSensitivityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetMinSliderSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetRangeRectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetRestrictToFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetRoundDigitsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetShowFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetSliderRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetSliderSizeFixedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetUpperStepperSensitivityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeGetValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetAdjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetFlippableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetIncrementsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetInvertedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetLowerStepperSensitivityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetMinSliderSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetRestrictToFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetRoundDigitsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetShowFillLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetSliderSizeFixedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetUpperStepperSensitivityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RangeSetValueMethodInfo
#endif