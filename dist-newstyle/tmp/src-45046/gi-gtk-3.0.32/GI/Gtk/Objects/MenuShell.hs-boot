#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.MenuShell where

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

newtype MenuShell = MenuShell (ManagedPtr MenuShell)
instance GObject MenuShell where
instance B.GValue.IsGValue MenuShell where
class (GObject o, O.IsDescendantOf MenuShell o) => IsMenuShell o
instance (GObject o, O.IsDescendantOf MenuShell o) => IsMenuShell o
instance O.HasParentTypes MenuShell
#if defined(ENABLE_OVERLOADING)
data MenuShellActivateCurrentSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellCancelSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellCycleFocusSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellDeactivateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellInsertSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellMoveCurrentSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellMoveSelectedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellSelectionDoneSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellTakeFocusPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellActivateItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellAppendMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellBindModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellCancelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellDeactivateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellDeselectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellGetParentShellMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellGetSelectedItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellGetTakeFocusMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellInsertMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellPrependMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellSelectFirstMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellSelectItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data MenuShellSetTakeFocusMethodInfo
#endif