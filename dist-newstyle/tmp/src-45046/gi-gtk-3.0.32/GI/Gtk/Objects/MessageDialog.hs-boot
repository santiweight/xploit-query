#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.MessageDialog where

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

newtype MessageDialog = MessageDialog (ManagedPtr MessageDialog)
instance GObject MessageDialog where
instance B.GValue.IsGValue MessageDialog where
class (GObject o, O.IsDescendantOf MessageDialog o) => IsMessageDialog o
instance (GObject o, O.IsDescendantOf MessageDialog o) => IsMessageDialog o
instance O.HasParentTypes MessageDialog
#if defined(ENABLE_OVERLOADING)
data MessageDialogButtonsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogImagePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogMessageAreaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogMessageTypePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogSecondaryTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogSecondaryUseMarkupPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogUseMarkupPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogGetImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogGetMessageAreaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogSetImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MessageDialogSetMarkupMethodInfo
#endif