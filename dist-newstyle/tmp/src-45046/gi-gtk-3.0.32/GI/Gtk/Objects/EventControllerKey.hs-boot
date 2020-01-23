#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.EventControllerKey where

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

newtype EventControllerKey = EventControllerKey (ManagedPtr EventControllerKey)
instance GObject EventControllerKey where
instance B.GValue.IsGValue EventControllerKey where
class (GObject o, O.IsDescendantOf EventControllerKey o) => IsEventControllerKey o
instance (GObject o, O.IsDescendantOf EventControllerKey o) => IsEventControllerKey o
instance O.HasParentTypes EventControllerKey
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyFocusInSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyFocusOutSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyImUpdateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyKeyPressedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyKeyReleasedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyModifiersSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyForwardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyGetGroupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeyGetImContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data EventControllerKeySetImContextMethodInfo
#endif