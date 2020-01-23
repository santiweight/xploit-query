#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.RecentManager where

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

newtype RecentManager = RecentManager (ManagedPtr RecentManager)
instance GObject RecentManager where
instance B.GValue.IsGValue RecentManager where
class (GObject o, O.IsDescendantOf RecentManager o) => IsRecentManager o
instance (GObject o, O.IsDescendantOf RecentManager o) => IsRecentManager o
instance O.HasParentTypes RecentManager
#if defined(ENABLE_OVERLOADING)
data RecentManagerChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerFilenamePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerAddFullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerAddItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerGetItemsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerHasItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerLookupItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerMoveItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerPurgeItemsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data RecentManagerRemoveItemMethodInfo
#endif