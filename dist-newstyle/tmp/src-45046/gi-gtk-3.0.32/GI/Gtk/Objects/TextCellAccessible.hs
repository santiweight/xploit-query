{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TextCellAccessible
    ( 

-- * Exported types
    TextCellAccessible(..)                  ,
    IsTextCellAccessible                    ,
    toTextCellAccessible                    ,
    noTextCellAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTextCellAccessibleMethod         ,
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
import qualified GI.Atk.Interfaces.TableCell as Atk.TableCell
import qualified GI.Atk.Interfaces.Text as Atk.Text
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAccessible as Gtk.CellAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.RendererCellAccessible as Gtk.RendererCellAccessible

-- | Memory-managed wrapper type.
newtype TextCellAccessible = TextCellAccessible (ManagedPtr TextCellAccessible)
    deriving (Eq)
foreign import ccall "gtk_text_cell_accessible_get_type"
    c_gtk_text_cell_accessible_get_type :: IO GType

instance GObject TextCellAccessible where
    gobjectType = c_gtk_text_cell_accessible_get_type
    

-- | Convert 'TextCellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TextCellAccessible where
    toGValue o = do
        gtype <- c_gtk_text_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TextCellAccessible)
        B.ManagedPtr.newObject TextCellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `TextCellAccessible`, for instance with `toTextCellAccessible`.
class (GObject o, O.IsDescendantOf TextCellAccessible o) => IsTextCellAccessible o
instance (GObject o, O.IsDescendantOf TextCellAccessible o) => IsTextCellAccessible o

instance O.HasParentTypes TextCellAccessible
type instance O.ParentTypes TextCellAccessible = '[Gtk.RendererCellAccessible.RendererCellAccessible, Gtk.CellAccessible.CellAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.TableCell.TableCell, Atk.Text.Text]

-- | Cast to `TextCellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTextCellAccessible :: (MonadIO m, IsTextCellAccessible o) => o -> m TextCellAccessible
toTextCellAccessible = liftIO . unsafeCastTo TextCellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `TextCellAccessible`.
noTextCellAccessible :: Maybe TextCellAccessible
noTextCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTextCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveTextCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveTextCellAccessibleMethod "addSelection" o = Atk.Text.TextAddSelectionMethodInfo
    ResolveTextCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTextCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTextCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveTextCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveTextCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveTextCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTextCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTextCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTextCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveTextCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveTextCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTextCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTextCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTextCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveTextCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveTextCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTextCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveTextCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveTextCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveTextCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTextCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveTextCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveTextCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveTextCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveTextCellAccessibleMethod "removeSelection" o = Atk.Text.TextRemoveSelectionMethodInfo
    ResolveTextCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTextCellAccessibleMethod "scrollSubstringTo" o = Atk.Text.TextScrollSubstringToMethodInfo
    ResolveTextCellAccessibleMethod "scrollSubstringToPoint" o = Atk.Text.TextScrollSubstringToPointMethodInfo
    ResolveTextCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveTextCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveTextCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTextCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTextCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTextCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTextCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTextCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveTextCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveTextCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveTextCellAccessibleMethod "getBoundedRanges" o = Atk.Text.TextGetBoundedRangesMethodInfo
    ResolveTextCellAccessibleMethod "getCaretOffset" o = Atk.Text.TextGetCaretOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getCharacterAtOffset" o = Atk.Text.TextGetCharacterAtOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getCharacterCount" o = Atk.Text.TextGetCharacterCountMethodInfo
    ResolveTextCellAccessibleMethod "getCharacterExtents" o = Atk.Text.TextGetCharacterExtentsMethodInfo
    ResolveTextCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveTextCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveTextCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTextCellAccessibleMethod "getDefaultAttributes" o = Atk.Text.TextGetDefaultAttributesMethodInfo
    ResolveTextCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveTextCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveTextCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveTextCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveTextCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveTextCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveTextCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveTextCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveTextCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveTextCellAccessibleMethod "getNSelections" o = Atk.Text.TextGetNSelectionsMethodInfo
    ResolveTextCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveTextCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveTextCellAccessibleMethod "getOffsetAtPoint" o = Atk.Text.TextGetOffsetAtPointMethodInfo
    ResolveTextCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveTextCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveTextCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTextCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTextCellAccessibleMethod "getRangeExtents" o = Atk.Text.TextGetRangeExtentsMethodInfo
    ResolveTextCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveTextCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveTextCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveTextCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveTextCellAccessibleMethod "getRunAttributes" o = Atk.Text.TextGetRunAttributesMethodInfo
    ResolveTextCellAccessibleMethod "getSelection" o = Atk.Text.TextGetSelectionMethodInfo
    ResolveTextCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveTextCellAccessibleMethod "getStringAtOffset" o = Atk.Text.TextGetStringAtOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveTextCellAccessibleMethod "getText" o = Atk.Text.TextGetTextMethodInfo
    ResolveTextCellAccessibleMethod "getTextAfterOffset" o = Atk.Text.TextGetTextAfterOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getTextAtOffset" o = Atk.Text.TextGetTextAtOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getTextBeforeOffset" o = Atk.Text.TextGetTextBeforeOffsetMethodInfo
    ResolveTextCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveTextCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveTextCellAccessibleMethod "setCaretOffset" o = Atk.Text.TextSetCaretOffsetMethodInfo
    ResolveTextCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTextCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTextCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveTextCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveTextCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveTextCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveTextCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveTextCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTextCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveTextCellAccessibleMethod "setSelection" o = Atk.Text.TextSetSelectionMethodInfo
    ResolveTextCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveTextCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveTextCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTextCellAccessibleMethod t TextCellAccessible, O.MethodInfo info TextCellAccessible p) => OL.IsLabel t (TextCellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TextCellAccessible
type instance O.AttributeList TextCellAccessible = TextCellAccessibleAttributeList
type TextCellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("renderer", Gtk.RendererCellAccessible.RendererCellAccessibleRendererPropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TextCellAccessible = TextCellAccessibleSignalList
type TextCellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("textAttributesChanged", Atk.Text.TextTextAttributesChangedSignalInfo), '("textCaretMoved", Atk.Text.TextTextCaretMovedSignalInfo), '("textChanged", Atk.Text.TextTextChangedSignalInfo), '("textInsert", Atk.Text.TextTextInsertSignalInfo), '("textRemove", Atk.Text.TextTextRemoveSignalInfo), '("textSelectionChanged", Atk.Text.TextTextSelectionChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

