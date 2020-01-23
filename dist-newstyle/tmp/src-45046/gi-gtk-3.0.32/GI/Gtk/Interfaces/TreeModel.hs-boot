#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Interfaces.TreeModel where

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

newtype TreeModel = TreeModel (ManagedPtr TreeModel)
#if defined(ENABLE_OVERLOADING)
data TreeModelRowChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowDeletedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowHasChildToggledSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowInsertedSignalInfo
#endif
instance GObject TreeModel where
instance B.GValue.IsGValue TreeModel where
class (GObject o, O.IsDescendantOf TreeModel o) => IsTreeModel o
instance (GObject o, O.IsDescendantOf TreeModel o) => IsTreeModel o
instance O.HasParentTypes TreeModel
#if defined(ENABLE_OVERLOADING)
data TreeModelFilterNewMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelForeachMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetColumnTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetFlagsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetIterFirstMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetIterFromStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetNColumnsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetPathMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetStringFromIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelGetValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterChildrenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterHasChildMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterNChildrenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterNextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterNthChildMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterParentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelIterPreviousMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRefNodeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowChangedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowDeletedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowHasChildToggledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowInsertedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelRowsReorderedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelSortNewWithModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TreeModelUnrefNodeMethodInfo
#endif