#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Gtk.Objects.TextBuffer where

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

newtype TextBuffer = TextBuffer (ManagedPtr TextBuffer)
instance GObject TextBuffer where
instance B.GValue.IsGValue TextBuffer where
class (GObject o, O.IsDescendantOf TextBuffer o) => IsTextBuffer o
instance (GObject o, O.IsDescendantOf TextBuffer o) => IsTextBuffer o
instance O.HasParentTypes TextBuffer
#if defined(ENABLE_OVERLOADING)
data TextBufferApplyTagSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferBeginUserActionSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteRangeSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferEndUserActionSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertChildAnchorSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertPixbufSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertTextSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferMarkDeletedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferMarkSetSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferModifiedChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferPasteDoneSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRemoveTagSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCopyTargetListPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCursorPositionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferHasSelectionPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferPasteTargetListPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferTagTablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferAddMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferAddSelectionClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferApplyTagMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferApplyTagByNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferBackspaceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferBeginUserActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCopyClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCreateChildAnchorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCreateMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferCutClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteInteractiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteMarkByNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeleteSelectionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeserializeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeserializeGetCanCreateTagsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferDeserializeSetCanCreateTagsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferEndUserActionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetBoundsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetCharCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetCopyTargetListMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetDeserializeFormatsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetEndIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetHasSelectionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetInsertMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtChildAnchorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtLineMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtLineIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtLineOffsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetIterAtOffsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetLineCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetModifiedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetPasteTargetListMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetSelectionBoundMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetSelectionBoundsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetSerializeFormatsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetSliceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetStartIterMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetTagTableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferGetTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertAtCursorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertChildAnchorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertInteractiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertInteractiveAtCursorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertMarkupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertPixbufMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferInsertRangeInteractiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferMoveMarkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferMoveMarkByNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferPasteClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferPlaceCursorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRegisterDeserializeFormatMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRegisterDeserializeTagsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRegisterSerializeFormatMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRegisterSerializeTagsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRemoveAllTagsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRemoveSelectionClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRemoveTagMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferRemoveTagByNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferSelectRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferSerializeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferSetModifiedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferSetTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferUnregisterDeserializeFormatMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TextBufferUnregisterSerializeFormatMethodInfo
#endif