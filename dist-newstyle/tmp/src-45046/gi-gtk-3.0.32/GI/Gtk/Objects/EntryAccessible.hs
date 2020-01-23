{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EntryAccessible
    ( 

-- * Exported types
    EntryAccessible(..)                     ,
    IsEntryAccessible                       ,
    toEntryAccessible                       ,
    noEntryAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEntryAccessibleMethod            ,
#endif




    ) where

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

import qualified GI.Atk.Interfaces.Action as Atk.Action
import qualified GI.Atk.Interfaces.Component as Atk.Component
import qualified GI.Atk.Interfaces.EditableText as Atk.EditableText
import qualified GI.Atk.Interfaces.Text as Atk.Text
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype EntryAccessible = EntryAccessible (ManagedPtr EntryAccessible)
    deriving (Eq)
foreign import ccall "gtk_entry_accessible_get_type"
    c_gtk_entry_accessible_get_type :: IO GType

instance GObject EntryAccessible where
    gobjectType = c_gtk_entry_accessible_get_type
    

-- | Convert 'EntryAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EntryAccessible where
    toGValue o = do
        gtype <- c_gtk_entry_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EntryAccessible)
        B.ManagedPtr.newObject EntryAccessible ptr
        
    

-- | Type class for types which can be safely cast to `EntryAccessible`, for instance with `toEntryAccessible`.
class (GObject o, O.IsDescendantOf EntryAccessible o) => IsEntryAccessible o
instance (GObject o, O.IsDescendantOf EntryAccessible o) => IsEntryAccessible o

instance O.HasParentTypes EntryAccessible
type instance O.ParentTypes EntryAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.EditableText.EditableText, Atk.Text.Text]

-- | Cast to `EntryAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEntryAccessible :: (MonadIO m, IsEntryAccessible o) => o -> m EntryAccessible
toEntryAccessible = liftIO . unsafeCastTo EntryAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `EntryAccessible`.
noEntryAccessible :: Maybe EntryAccessible
noEntryAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEntryAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveEntryAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveEntryAccessibleMethod "addSelection" o = Atk.Text.TextAddSelectionMethodInfo
    ResolveEntryAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEntryAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEntryAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveEntryAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveEntryAccessibleMethod "copyText" o = Atk.EditableText.EditableTextCopyTextMethodInfo
    ResolveEntryAccessibleMethod "cutText" o = Atk.EditableText.EditableTextCutTextMethodInfo
    ResolveEntryAccessibleMethod "deleteText" o = Atk.EditableText.EditableTextDeleteTextMethodInfo
    ResolveEntryAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveEntryAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEntryAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEntryAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEntryAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveEntryAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveEntryAccessibleMethod "insertText" o = Atk.EditableText.EditableTextInsertTextMethodInfo
    ResolveEntryAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEntryAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEntryAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEntryAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveEntryAccessibleMethod "pasteText" o = Atk.EditableText.EditableTextPasteTextMethodInfo
    ResolveEntryAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveEntryAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEntryAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveEntryAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveEntryAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveEntryAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEntryAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveEntryAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveEntryAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveEntryAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveEntryAccessibleMethod "removeSelection" o = Atk.Text.TextRemoveSelectionMethodInfo
    ResolveEntryAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEntryAccessibleMethod "scrollSubstringTo" o = Atk.Text.TextScrollSubstringToMethodInfo
    ResolveEntryAccessibleMethod "scrollSubstringToPoint" o = Atk.Text.TextScrollSubstringToPointMethodInfo
    ResolveEntryAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveEntryAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveEntryAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEntryAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEntryAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEntryAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEntryAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEntryAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveEntryAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveEntryAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveEntryAccessibleMethod "getBoundedRanges" o = Atk.Text.TextGetBoundedRangesMethodInfo
    ResolveEntryAccessibleMethod "getCaretOffset" o = Atk.Text.TextGetCaretOffsetMethodInfo
    ResolveEntryAccessibleMethod "getCharacterAtOffset" o = Atk.Text.TextGetCharacterAtOffsetMethodInfo
    ResolveEntryAccessibleMethod "getCharacterCount" o = Atk.Text.TextGetCharacterCountMethodInfo
    ResolveEntryAccessibleMethod "getCharacterExtents" o = Atk.Text.TextGetCharacterExtentsMethodInfo
    ResolveEntryAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEntryAccessibleMethod "getDefaultAttributes" o = Atk.Text.TextGetDefaultAttributesMethodInfo
    ResolveEntryAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveEntryAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveEntryAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveEntryAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveEntryAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveEntryAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveEntryAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveEntryAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveEntryAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveEntryAccessibleMethod "getNSelections" o = Atk.Text.TextGetNSelectionsMethodInfo
    ResolveEntryAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveEntryAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveEntryAccessibleMethod "getOffsetAtPoint" o = Atk.Text.TextGetOffsetAtPointMethodInfo
    ResolveEntryAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveEntryAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveEntryAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEntryAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEntryAccessibleMethod "getRangeExtents" o = Atk.Text.TextGetRangeExtentsMethodInfo
    ResolveEntryAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveEntryAccessibleMethod "getRunAttributes" o = Atk.Text.TextGetRunAttributesMethodInfo
    ResolveEntryAccessibleMethod "getSelection" o = Atk.Text.TextGetSelectionMethodInfo
    ResolveEntryAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveEntryAccessibleMethod "getStringAtOffset" o = Atk.Text.TextGetStringAtOffsetMethodInfo
    ResolveEntryAccessibleMethod "getText" o = Atk.Text.TextGetTextMethodInfo
    ResolveEntryAccessibleMethod "getTextAfterOffset" o = Atk.Text.TextGetTextAfterOffsetMethodInfo
    ResolveEntryAccessibleMethod "getTextAtOffset" o = Atk.Text.TextGetTextAtOffsetMethodInfo
    ResolveEntryAccessibleMethod "getTextBeforeOffset" o = Atk.Text.TextGetTextBeforeOffsetMethodInfo
    ResolveEntryAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveEntryAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveEntryAccessibleMethod "setCaretOffset" o = Atk.Text.TextSetCaretOffsetMethodInfo
    ResolveEntryAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEntryAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEntryAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveEntryAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveEntryAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveEntryAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveEntryAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveEntryAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEntryAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveEntryAccessibleMethod "setRunAttributes" o = Atk.EditableText.EditableTextSetRunAttributesMethodInfo
    ResolveEntryAccessibleMethod "setSelection" o = Atk.Text.TextSetSelectionMethodInfo
    ResolveEntryAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveEntryAccessibleMethod "setTextContents" o = Atk.EditableText.EditableTextSetTextContentsMethodInfo
    ResolveEntryAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveEntryAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEntryAccessibleMethod t EntryAccessible, O.MethodInfo info EntryAccessible p) => OL.IsLabel t (EntryAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EntryAccessible
type instance O.AttributeList EntryAccessible = EntryAccessibleAttributeList
type EntryAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EntryAccessible = EntryAccessibleSignalList
type EntryAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("textAttributesChanged", Atk.Text.TextTextAttributesChangedSignalInfo), '("textCaretMoved", Atk.Text.TextTextCaretMovedSignalInfo), '("textChanged", Atk.Text.TextTextChangedSignalInfo), '("textInsert", Atk.Text.TextTextInsertSignalInfo), '("textRemove", Atk.Text.TextTextRemoveSignalInfo), '("textSelectionChanged", Atk.Text.TextTextSelectionChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

