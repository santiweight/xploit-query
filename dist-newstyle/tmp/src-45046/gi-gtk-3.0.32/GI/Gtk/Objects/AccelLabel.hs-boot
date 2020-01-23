#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.AccelLabel where

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

newtype AccelLabel = AccelLabel (ManagedPtr AccelLabel)
instance GObject AccelLabel where
instance B.GValue.IsGValue AccelLabel where
class (GObject o, O.IsDescendantOf AccelLabel o) => IsAccelLabel o
instance (GObject o, O.IsDescendantOf AccelLabel o) => IsAccelLabel o
instance O.HasParentTypes AccelLabel
#if defined(ENABLE_OVERLOADING)
data AccelLabelAccelClosurePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelAccelWidgetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelGetAccelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelGetAccelWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelGetAccelWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelRefetchMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelSetAccelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelSetAccelClosureMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelLabelSetAccelWidgetMethodInfo
#endif