#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.NumerableIcon where

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

newtype NumerableIcon = NumerableIcon (ManagedPtr NumerableIcon)
instance GObject NumerableIcon where
instance B.GValue.IsGValue NumerableIcon where
class (GObject o, O.IsDescendantOf NumerableIcon o) => IsNumerableIcon o
instance (GObject o, O.IsDescendantOf NumerableIcon o) => IsNumerableIcon o
instance O.HasParentTypes NumerableIcon
#if defined(ENABLE_OVERLOADING)
data NumerableIconBackgroundIconPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconBackgroundIconNamePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconCountPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconLabelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconStyleContextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconGetBackgroundGiconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconGetBackgroundIconNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconGetCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconGetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconGetStyleContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconSetBackgroundGiconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconSetBackgroundIconNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconSetCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconSetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data NumerableIconSetStyleContextMethodInfo
#endif