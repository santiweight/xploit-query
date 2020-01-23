#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.IconTheme where

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

newtype IconTheme = IconTheme (ManagedPtr IconTheme)
instance GObject IconTheme where
instance B.GValue.IsGValue IconTheme where
class (GObject o, O.IsDescendantOf IconTheme o) => IsIconTheme o
instance (GObject o, O.IsDescendantOf IconTheme o) => IsIconTheme o
instance O.HasParentTypes IconTheme
#if defined(ENABLE_OVERLOADING)
data IconThemeChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeAddResourcePathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeAppendSearchPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeChooseIconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeChooseIconForScaleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeGetExampleIconNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeGetIconSizesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeGetSearchPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeHasIconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeListContextsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeListIconsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLoadIconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLoadIconForScaleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLoadSurfaceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLookupByGiconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLookupByGiconForScaleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLookupIconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeLookupIconForScaleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemePrependSearchPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeRescanIfNeededMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeSetCustomThemeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeSetScreenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data IconThemeSetSearchPathMethodInfo
#endif