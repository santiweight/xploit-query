#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.CellRendererToggle where

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

newtype CellRendererToggle = CellRendererToggle (ManagedPtr CellRendererToggle)
instance GObject CellRendererToggle where
instance B.GValue.IsGValue CellRendererToggle where
class (GObject o, O.IsDescendantOf CellRendererToggle o) => IsCellRendererToggle o
instance (GObject o, O.IsDescendantOf CellRendererToggle o) => IsCellRendererToggle o
instance O.HasParentTypes CellRendererToggle
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleToggledSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleActivatablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleActivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleInconsistentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleIndicatorSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleRadioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetActivatableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetRadioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetActivatableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetActiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetRadioMethodInfo
#endif