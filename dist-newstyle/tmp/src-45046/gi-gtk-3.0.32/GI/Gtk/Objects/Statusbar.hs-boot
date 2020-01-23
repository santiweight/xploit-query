#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Statusbar where

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

newtype Statusbar = Statusbar (ManagedPtr Statusbar)
instance GObject Statusbar where
instance B.GValue.IsGValue Statusbar where
class (GObject o, O.IsDescendantOf Statusbar o) => IsStatusbar o
instance (GObject o, O.IsDescendantOf Statusbar o) => IsStatusbar o
instance O.HasParentTypes Statusbar
#if defined(ENABLE_OVERLOADING)
data StatusbarTextPoppedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarTextPushedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarGetContextIdMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarGetMessageAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarPopMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarPushMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarRemoveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data StatusbarRemoveAllMethodInfo
#endif