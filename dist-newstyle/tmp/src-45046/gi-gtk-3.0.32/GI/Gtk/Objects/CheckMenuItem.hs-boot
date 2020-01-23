#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.CheckMenuItem where

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

newtype CheckMenuItem = CheckMenuItem (ManagedPtr CheckMenuItem)
instance GObject CheckMenuItem where
instance B.GValue.IsGValue CheckMenuItem where
class (GObject o, O.IsDescendantOf CheckMenuItem o) => IsCheckMenuItem o
instance (GObject o, O.IsDescendantOf CheckMenuItem o) => IsCheckMenuItem o
instance O.HasParentTypes CheckMenuItem
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemToggledSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemActivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemDrawAsRadioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemInconsistentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetDrawAsRadioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetInconsistentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetDrawAsRadioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetInconsistentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CheckMenuItemToggledMethodInfo
#endif