#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.IMContext where

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

newtype IMContext = IMContext (ManagedPtr IMContext)
instance GObject IMContext where
instance B.GValue.IsGValue IMContext where
class (GObject o, O.IsDescendantOf IMContext o) => IsIMContext o
instance (GObject o, O.IsDescendantOf IMContext o) => IsIMContext o
instance O.HasParentTypes IMContext
#if defined(ENABLE_OVERLOADING)
data IMContextCommitSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextDeleteSurroundingSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextPreeditChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextPreeditEndSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextPreeditStartSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextRetrieveSurroundingSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextInputHintsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextInputPurposePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextDeleteSurroundingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextFilterKeypressMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextFocusInMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextFocusOutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextGetPreeditStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextGetSurroundingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextResetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextSetClientWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextSetCursorLocationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextSetSurroundingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IMContextSetUsePreeditMethodInfo
#endif