#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.HeaderBar where

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

newtype HeaderBar = HeaderBar (ManagedPtr HeaderBar)
instance GObject HeaderBar where
instance B.GValue.IsGValue HeaderBar where
class (GObject o, O.IsDescendantOf HeaderBar o) => IsHeaderBar o
instance (GObject o, O.IsDescendantOf HeaderBar o) => IsHeaderBar o
instance O.HasParentTypes HeaderBar
#if defined(ENABLE_OVERLOADING)
data HeaderBarCustomTitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarDecorationLayoutPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarDecorationLayoutSetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarHasSubtitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarShowCloseButtonPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSpacingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSubtitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarTitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetCustomTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetDecorationLayoutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetHasSubtitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetShowCloseButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetSubtitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarGetTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarPackEndMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarPackStartMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetCustomTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetDecorationLayoutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetHasSubtitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetShowCloseButtonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetSubtitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HeaderBarSetTitleMethodInfo
#endif