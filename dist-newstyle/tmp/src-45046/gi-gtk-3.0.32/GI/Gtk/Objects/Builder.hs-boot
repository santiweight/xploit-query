#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Builder where

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

newtype Builder = Builder (ManagedPtr Builder)
instance GObject Builder where
instance B.GValue.IsGValue Builder where
class (GObject o, O.IsDescendantOf Builder o) => IsBuilder o
instance (GObject o, O.IsDescendantOf Builder o) => IsBuilder o
instance O.HasParentTypes Builder
#if defined(ENABLE_OVERLOADING)
data BuilderTranslationDomainPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddCallbackSymbolMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddFromFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddFromResourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddFromStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddObjectsFromFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddObjectsFromResourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderAddObjectsFromStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderConnectSignalsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderConnectSignalsFullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderExposeObjectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderExtendWithTemplateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderGetApplicationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderGetObjectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderGetObjectsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderGetTranslationDomainMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderGetTypeFromNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderSetApplicationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderSetTranslationDomainMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderValueFromStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BuilderValueFromStringTypeMethodInfo
#endif