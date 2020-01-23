#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Assistant where

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

newtype Assistant = Assistant (ManagedPtr Assistant)
instance GObject Assistant where
instance B.GValue.IsGValue Assistant where
class (GObject o, O.IsDescendantOf Assistant o) => IsAssistant o
instance (GObject o, O.IsDescendantOf Assistant o) => IsAssistant o
instance O.HasParentTypes Assistant
#if defined(ENABLE_OVERLOADING)
data AssistantApplySignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantCancelSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantCloseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantEscapeSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantPrepareSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantUseHeaderBarPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantAddActionWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantAppendPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantCommitMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetCurrentPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetNPagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetNthPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageCompleteMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageHasPaddingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageHeaderImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageSideImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantGetPageTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantInsertPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantNextPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantPrependPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantPreviousPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantRemoveActionWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantRemovePageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetCurrentPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetForwardPageFuncMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageCompleteMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageHasPaddingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageHeaderImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageSideImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantSetPageTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data AssistantUpdateButtonsStateMethodInfo
#endif