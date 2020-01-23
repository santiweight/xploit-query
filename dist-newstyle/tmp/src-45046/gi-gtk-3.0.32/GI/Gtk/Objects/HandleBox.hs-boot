#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.HandleBox where

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

newtype HandleBox = HandleBox (ManagedPtr HandleBox)
instance GObject HandleBox where
instance B.GValue.IsGValue HandleBox where
class (GObject o, O.IsDescendantOf HandleBox o) => IsHandleBox o
instance (GObject o, O.IsDescendantOf HandleBox o) => IsHandleBox o
instance O.HasParentTypes HandleBox
#if defined(ENABLE_OVERLOADING)
data HandleBoxChildAttachedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxChildDetachedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxChildDetachedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxHandlePositionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxShadowTypePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxSnapEdgePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxSnapEdgeSetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxGetChildDetachedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxGetHandlePositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxGetShadowTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxGetSnapEdgeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxSetHandlePositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxSetShadowTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HandleBoxSetSnapEdgeMethodInfo
#endif