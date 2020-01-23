#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ThemingEngine where

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

newtype ThemingEngine = ThemingEngine (ManagedPtr ThemingEngine)
instance GObject ThemingEngine where
instance B.GValue.IsGValue ThemingEngine where
class (GObject o, O.IsDescendantOf ThemingEngine o) => IsThemingEngine o
instance (GObject o, O.IsDescendantOf ThemingEngine o) => IsThemingEngine o
instance O.HasParentTypes ThemingEngine
#if defined(ENABLE_OVERLOADING)
data ThemingEngineNamePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetBackgroundColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetBorderMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetBorderColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetDirectionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetFontMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetJunctionSidesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetMarginMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetPaddingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetPropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetScreenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineGetStylePropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineHasClassMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineHasRegionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineLookupColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ThemingEngineStateIsRunningMethodInfo
#endif