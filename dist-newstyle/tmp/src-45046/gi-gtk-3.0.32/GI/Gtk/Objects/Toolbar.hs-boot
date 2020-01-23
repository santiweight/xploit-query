#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Toolbar where

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

newtype Toolbar = Toolbar (ManagedPtr Toolbar)
instance GObject Toolbar where
instance B.GValue.IsGValue Toolbar where
class (GObject o, O.IsDescendantOf Toolbar o) => IsToolbar o
instance (GObject o, O.IsDescendantOf Toolbar o) => IsToolbar o
instance O.HasParentTypes Toolbar
#if defined(ENABLE_OVERLOADING)
data ToolbarFocusHomeOrEndSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarOrientationChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarPopupContextMenuSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarStyleChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarIconSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarIconSizeSetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarShowArrowPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarToolbarStylePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetDropIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetIconSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetItemIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetNItemsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetNthItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetReliefStyleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetShowArrowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarGetStyleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarInsertMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarSetDropHighlightItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarSetIconSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarSetShowArrowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarSetStyleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarUnsetIconSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ToolbarUnsetStyleMethodInfo
#endif