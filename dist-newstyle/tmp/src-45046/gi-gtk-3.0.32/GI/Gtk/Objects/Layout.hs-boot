#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Layout where

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

newtype Layout = Layout (ManagedPtr Layout)
instance GObject Layout where
instance B.GValue.IsGValue Layout where
class (GObject o, O.IsDescendantOf Layout o) => IsLayout o
instance (GObject o, O.IsDescendantOf Layout o) => IsLayout o
instance O.HasParentTypes Layout
#if defined(ENABLE_OVERLOADING)
data LayoutHeightPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutWidthPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutGetBinWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutGetHadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutGetVadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutMoveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutPutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutSetHadjustmentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutSetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data LayoutSetVadjustmentMethodInfo
#endif