#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ToggleButton where

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

newtype ToggleButton = ToggleButton (ManagedPtr ToggleButton)
instance GObject ToggleButton where
instance B.GValue.IsGValue ToggleButton where
class (GObject o, O.IsDescendantOf ToggleButton o) => IsToggleButton o
instance (GObject o, O.IsDescendantOf ToggleButton o) => IsToggleButton o
instance O.HasParentTypes ToggleButton
#if defined(ENABLE_OVERLOADING)
data ToggleButtonToggledSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonActivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonDrawIndicatorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonInconsistentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonGetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonGetInconsistentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonGetModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonSetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonSetInconsistentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonSetModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToggleButtonToggledMethodInfo
#endif