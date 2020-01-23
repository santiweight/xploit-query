#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.AppChooserWidget where

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

newtype AppChooserWidget = AppChooserWidget (ManagedPtr AppChooserWidget)
instance GObject AppChooserWidget where
instance B.GValue.IsGValue AppChooserWidget where
class (GObject o, O.IsDescendantOf AppChooserWidget o) => IsAppChooserWidget o
instance (GObject o, O.IsDescendantOf AppChooserWidget o) => IsAppChooserWidget o
instance O.HasParentTypes AppChooserWidget
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetApplicationActivatedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetApplicationSelectedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetPopulatePopupSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetDefaultTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetShowAllPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetShowDefaultPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetShowFallbackPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetShowOtherPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetShowRecommendedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetDefaultTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetShowAllMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetShowDefaultMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetShowFallbackMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetShowOtherMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetGetShowRecommendedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetDefaultTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetShowAllMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetShowDefaultMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetShowFallbackMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetShowOtherMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AppChooserWidgetSetShowRecommendedMethodInfo
#endif