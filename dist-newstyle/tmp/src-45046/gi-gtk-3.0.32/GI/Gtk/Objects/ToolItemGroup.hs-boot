#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ToolItemGroup where

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

newtype ToolItemGroup = ToolItemGroup (ManagedPtr ToolItemGroup)
instance GObject ToolItemGroup where
instance B.GValue.IsGValue ToolItemGroup where
class (GObject o, O.IsDescendantOf ToolItemGroup o) => IsToolItemGroup o
instance (GObject o, O.IsDescendantOf ToolItemGroup o) => IsToolItemGroup o
instance O.HasParentTypes ToolItemGroup
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupCollapsedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupEllipsizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupHeaderReliefPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupLabelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupLabelWidgetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetCollapsedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetDropItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetEllipsizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetHeaderReliefMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetItemPositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetLabelWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetNItemsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetNthItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupInsertMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetCollapsedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetEllipsizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetHeaderReliefMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetItemPositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetLabelWidgetMethodInfo
#endif