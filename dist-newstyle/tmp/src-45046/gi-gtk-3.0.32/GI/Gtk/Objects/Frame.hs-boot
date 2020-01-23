#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.Frame where

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

newtype Frame = Frame (ManagedPtr Frame)
instance GObject Frame where
instance B.GValue.IsGValue Frame where
class (GObject o, O.IsDescendantOf Frame o) => IsFrame o
instance (GObject o, O.IsDescendantOf Frame o) => IsFrame o
instance O.HasParentTypes Frame
#if defined(ENABLE_OVERLOADING)
data FrameLabelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameLabelWidgetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameLabelXalignPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameLabelYalignPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameShadowTypePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameGetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameGetLabelAlignMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameGetLabelWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameGetShadowTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameSetLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameSetLabelAlignMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameSetLabelWidgetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FrameSetShadowTypeMethodInfo
#endif