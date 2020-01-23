#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.AccelGroup where

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

newtype AccelGroup = AccelGroup (ManagedPtr AccelGroup)
instance GObject AccelGroup where
instance B.GValue.IsGValue AccelGroup where
class (GObject o, O.IsDescendantOf AccelGroup o) => IsAccelGroup o
instance (GObject o, O.IsDescendantOf AccelGroup o) => IsAccelGroup o
instance O.HasParentTypes AccelGroup
#if defined(ENABLE_OVERLOADING)
data AccelGroupAccelActivateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupAccelChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupIsLockedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupModifierMaskPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupActivateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupConnectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupConnectByPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupDisconnectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupDisconnectKeyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupFindMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupGetIsLockedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupGetModifierMaskMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupLockMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupQueryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AccelGroupUnlockMethodInfo
#endif