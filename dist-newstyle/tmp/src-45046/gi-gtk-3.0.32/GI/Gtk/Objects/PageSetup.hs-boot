#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.PageSetup where

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

newtype PageSetup = PageSetup (ManagedPtr PageSetup)
instance GObject PageSetup where
instance B.GValue.IsGValue PageSetup where
class (GObject o, O.IsDescendantOf PageSetup o) => IsPageSetup o
instance (GObject o, O.IsDescendantOf PageSetup o) => IsPageSetup o
instance O.HasParentTypes PageSetup
#if defined(ENABLE_OVERLOADING)
data PageSetupCopyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetBottomMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetLeftMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetOrientationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetPageHeightMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetPageWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetPaperHeightMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetPaperSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetPaperWidthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetRightMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupGetTopMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupLoadFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupLoadKeyFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetBottomMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetLeftMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetOrientationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetPaperSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetPaperSizeAndDefaultMarginsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetRightMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupSetTopMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupToFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupToGvariantMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PageSetupToKeyFileMethodInfo
#endif