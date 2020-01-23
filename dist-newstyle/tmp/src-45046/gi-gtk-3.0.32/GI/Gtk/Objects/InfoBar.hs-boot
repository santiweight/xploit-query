#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.InfoBar where

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

newtype InfoBar = InfoBar (ManagedPtr InfoBar)
instance GObject InfoBar where
instance B.GValue.IsGValue InfoBar where
class (GObject o, O.IsDescendantOf InfoBar o) => IsInfoBar o
instance (GObject o, O.IsDescendantOf InfoBar o) => IsInfoBar o
instance O.HasParentTypes InfoBar
#if defined(ENABLE_OVERLOADING)
data InfoBarCloseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarResponseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarMessageTypePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarRevealedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarShowCloseButtonPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarAddActionWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarAddButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarGetActionAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarGetContentAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarGetMessageTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarGetRevealedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarGetShowCloseButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarSetDefaultResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarSetMessageTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarSetResponseSensitiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarSetRevealedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data InfoBarSetShowCloseButtonMethodInfo
#endif