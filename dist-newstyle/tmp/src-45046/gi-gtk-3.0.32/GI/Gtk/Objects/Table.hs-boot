#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Table where

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

newtype Table = Table (ManagedPtr Table)
instance GObject Table where
instance B.GValue.IsGValue Table where
class (GObject o, O.IsDescendantOf Table o) => IsTable o
instance (GObject o, O.IsDescendantOf Table o) => IsTable o
instance O.HasParentTypes Table
#if defined(ENABLE_OVERLOADING)
data TableColumnSpacingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableHomogeneousPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableNColumnsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableNRowsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableRowSpacingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableAttachMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableAttachDefaultsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetColSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetDefaultColSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetDefaultRowSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetRowSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableResizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSetColSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSetColSpacingsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSetHomogeneousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSetRowSpacingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSetRowSpacingsMethodInfo
#endif