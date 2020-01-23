#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.AppChooserButton where

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

newtype AppChooserButton = AppChooserButton (ManagedPtr AppChooserButton)
instance GObject AppChooserButton where
instance B.GValue.IsGValue AppChooserButton where
class (GObject o, O.IsDescendantOf AppChooserButton o) => IsAppChooserButton o
instance (GObject o, O.IsDescendantOf AppChooserButton o) => IsAppChooserButton o
instance O.HasParentTypes AppChooserButton
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonCustomItemActivatedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonHeadingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonShowDefaultItemPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonShowDialogItemPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonAppendCustomItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonAppendSeparatorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonGetHeadingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonGetShowDefaultItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonGetShowDialogItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonSetActiveCustomItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonSetHeadingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonSetShowDefaultItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserButtonSetShowDialogItemMethodInfo
#endif