#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Paned where

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

newtype Paned = Paned (ManagedPtr Paned)
instance GObject Paned where
instance B.GValue.IsGValue Paned where
class (GObject o, O.IsDescendantOf Paned o) => IsPaned o
instance (GObject o, O.IsDescendantOf Paned o) => IsPaned o
instance O.HasParentTypes Paned
#if defined(ENABLE_OVERLOADING)
data PanedAcceptPositionSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedCancelPositionSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedCycleChildFocusSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedCycleHandleFocusSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedMoveHandleSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedToggleHandleFocusSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedMaxPositionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedMinPositionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedPositionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedPositionSetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedWideHandlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedAdd1MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedAdd2MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedGetChild1MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedGetChild2MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedGetHandleWindowMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedGetPositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedGetWideHandleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedPack1MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedPack2MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedSetPositionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data PanedSetWideHandleMethodInfo
#endif