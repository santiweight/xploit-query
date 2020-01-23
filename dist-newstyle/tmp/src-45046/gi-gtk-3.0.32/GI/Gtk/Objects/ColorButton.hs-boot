#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ColorButton where

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

newtype ColorButton = ColorButton (ManagedPtr ColorButton)
instance GObject ColorButton where
instance B.GValue.IsGValue ColorButton where
class (GObject o, O.IsDescendantOf ColorButton o) => IsColorButton o
instance (GObject o, O.IsDescendantOf ColorButton o) => IsColorButton o
instance O.HasParentTypes ColorButton
#if defined(ENABLE_OVERLOADING)
data ColorButtonColorSetSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonAlphaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonColorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonRgbaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonShowEditorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonTitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonUseAlphaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonGetAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonGetColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonGetTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonGetUseAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonSetAlphaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonSetColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonSetTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ColorButtonSetUseAlphaMethodInfo
#endif