#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Interfaces.Scrollable where

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

newtype Scrollable = Scrollable (ManagedPtr Scrollable)
instance GObject Scrollable where
instance B.GValue.IsGValue Scrollable where
class (GObject o, O.IsDescendantOf Scrollable o) => IsScrollable o
instance (GObject o, O.IsDescendantOf Scrollable o) => IsScrollable o
instance O.HasParentTypes Scrollable
#if defined(ENABLE_OVERLOADING)
data ScrollableHadjustmentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableHscrollPolicyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableVadjustmentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableVscrollPolicyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableGetBorderMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableGetHadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableGetHscrollPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableGetVadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableGetVscrollPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableSetHadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableSetHscrollPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableSetVadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ScrollableSetVscrollPolicyMethodInfo
#endif