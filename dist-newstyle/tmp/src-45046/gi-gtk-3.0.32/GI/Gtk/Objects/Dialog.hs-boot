#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Dialog where

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

newtype Dialog = Dialog (ManagedPtr Dialog)
instance GObject Dialog where
instance B.GValue.IsGValue Dialog where
class (GObject o, O.IsDescendantOf Dialog o) => IsDialog o
instance (GObject o, O.IsDescendantOf Dialog o) => IsDialog o
instance O.HasParentTypes Dialog
#if defined(ENABLE_OVERLOADING)
data DialogCloseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogResponseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogUseHeaderBarPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogAddActionWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogAddButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogGetActionAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogGetContentAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogGetHeaderBarMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogGetResponseForWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogGetWidgetForResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogRunMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogSetAlternativeButtonOrderFromArrayMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogSetDefaultResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data DialogSetResponseSensitiveMethodInfo
#endif