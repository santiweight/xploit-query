#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.ActionGroup where

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

newtype ActionGroup = ActionGroup (ManagedPtr ActionGroup)
instance GObject ActionGroup where
instance B.GValue.IsGValue ActionGroup where
class (GObject o, O.IsDescendantOf ActionGroup o) => IsActionGroup o
instance (GObject o, O.IsDescendantOf ActionGroup o) => IsActionGroup o
instance O.HasParentTypes ActionGroup
#if defined(ENABLE_OVERLOADING)
data ActionGroupConnectProxySignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupDisconnectProxySignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupPostActivateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupPreActivateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupAccelGroupPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupNamePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSensitivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupAddActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupAddActionWithAccelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupGetAccelGroupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupGetActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupGetNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupGetSensitiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupGetVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupListActionsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupRemoveActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSetAccelGroupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSetSensitiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSetTranslateFuncMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSetTranslationDomainMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupSetVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ActionGroupTranslateStringMethodInfo
#endif