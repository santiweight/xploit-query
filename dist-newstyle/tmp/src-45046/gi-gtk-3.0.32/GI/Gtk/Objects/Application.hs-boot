#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Application where

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

newtype Application = Application (ManagedPtr Application)
instance GObject Application where
instance B.GValue.IsGValue Application where
class (GObject o, O.IsDescendantOf Application o) => IsApplication o
instance (GObject o, O.IsDescendantOf Application o) => IsApplication o
instance O.HasParentTypes Application
#if defined(ENABLE_OVERLOADING)
data ApplicationQueryEndSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationWindowAddedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationWindowRemovedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationActiveWindowPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationAppMenuPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationMenubarPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationRegisterSessionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationScreensaverActivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationAddAcceleratorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationAddWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetAccelsForActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetActionsForAccelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetActiveWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetAppMenuMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetMenuByIdMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetMenubarMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetWindowByIdMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationGetWindowsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationInhibitMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationIsInhibitedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationListActionDescriptionsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationPrefersAppMenuMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationRemoveAcceleratorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationRemoveWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationSetAccelsForActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationSetAppMenuMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationSetMenubarMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ApplicationUninhibitMethodInfo
#endif