#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.GestureSingle where

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

newtype GestureSingle = GestureSingle (ManagedPtr GestureSingle)
instance GObject GestureSingle where
instance B.GValue.IsGValue GestureSingle where
class (GObject o, O.IsDescendantOf GestureSingle o) => IsGestureSingle o
instance (GObject o, O.IsDescendantOf GestureSingle o) => IsGestureSingle o
instance O.HasParentTypes GestureSingle
#if defined(ENABLE_OVERLOADING)
data GestureSingleButtonPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleExclusivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleTouchOnlyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleGetButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleGetCurrentButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleGetCurrentSequenceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleGetExclusiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleGetTouchOnlyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleSetButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleSetExclusiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data GestureSingleSetTouchOnlyMethodInfo
#endif