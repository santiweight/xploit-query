{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.LabelAccessible
    ( 

-- * Exported types
    LabelAccessible(..)                     ,
    IsLabelAccessible                       ,
    toLabelAccessible                       ,
    noLabelAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveLabelAccessibleMethod            ,
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

import qualified GI.Atk.Interfaces.Component as Atk.Component
import qualified GI.Atk.Interfaces.Hypertext as Atk.Hypertext
import qualified GI.Atk.Interfaces.Text as Atk.Text
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype LabelAccessible = LabelAccessible (ManagedPtr LabelAccessible)
    deriving (Eq)
foreign import ccall "gtk_label_accessible_get_type"
    c_gtk_label_accessible_get_type :: IO GType

instance GObject LabelAccessible where
    gobjectType = c_gtk_label_accessible_get_type
    

-- | Convert 'LabelAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue LabelAccessible where
    toGValue o = do
        gtype <- c_gtk_label_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr LabelAccessible)
        B.ManagedPtr.newObject LabelAccessible ptr
        
    

-- | Type class for types which can be safely cast to `LabelAccessible`, for instance with `toLabelAccessible`.
class (GObject o, O.IsDescendantOf LabelAccessible o) => IsLabelAccessible o
instance (GObject o, O.IsDescendantOf LabelAccessible o) => IsLabelAccessible o

instance O.HasParentTypes LabelAccessible
type instance O.ParentTypes LabelAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Hypertext.Hypertext, Atk.Text.Text]

-- | Cast to `LabelAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toLabelAccessible :: (MonadIO m, IsLabelAccessible o) => o -> m LabelAccessible
toLabelAccessible = liftIO . unsafeCastTo LabelAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `LabelAccessible`.
noLabelAccessible :: Maybe LabelAccessible
noLabelAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveLabelAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveLabelAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveLabelAccessibleMethod "addSelection" o = Atk.Text.TextAddSelectionMethodInfo
    ResolveLabelAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveLabelAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveLabelAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveLabelAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveLabelAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveLabelAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveLabelAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveLabelAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveLabelAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveLabelAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveLabelAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveLabelAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveLabelAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveLabelAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveLabelAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveLabelAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveLabelAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveLabelAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveLabelAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveLabelAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveLabelAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveLabelAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveLabelAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveLabelAccessibleMethod "removeSelection" o = Atk.Text.TextRemoveSelectionMethodInfo
    ResolveLabelAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveLabelAccessibleMethod "scrollSubstringTo" o = Atk.Text.TextScrollSubstringToMethodInfo
    ResolveLabelAccessibleMethod "scrollSubstringToPoint" o = Atk.Text.TextScrollSubstringToPointMethodInfo
    ResolveLabelAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveLabelAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveLabelAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveLabelAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveLabelAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveLabelAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveLabelAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveLabelAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveLabelAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveLabelAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveLabelAccessibleMethod "getBoundedRanges" o = Atk.Text.TextGetBoundedRangesMethodInfo
    ResolveLabelAccessibleMethod "getCaretOffset" o = Atk.Text.TextGetCaretOffsetMethodInfo
    ResolveLabelAccessibleMethod "getCharacterAtOffset" o = Atk.Text.TextGetCharacterAtOffsetMethodInfo
    ResolveLabelAccessibleMethod "getCharacterCount" o = Atk.Text.TextGetCharacterCountMethodInfo
    ResolveLabelAccessibleMethod "getCharacterExtents" o = Atk.Text.TextGetCharacterExtentsMethodInfo
    ResolveLabelAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveLabelAccessibleMethod "getDefaultAttributes" o = Atk.Text.TextGetDefaultAttributesMethodInfo
    ResolveLabelAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveLabelAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveLabelAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveLabelAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveLabelAccessibleMethod "getLink" o = Atk.Hypertext.HypertextGetLinkMethodInfo
    ResolveLabelAccessibleMethod "getLinkIndex" o = Atk.Hypertext.HypertextGetLinkIndexMethodInfo
    ResolveLabelAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveLabelAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveLabelAccessibleMethod "getNLinks" o = Atk.Hypertext.HypertextGetNLinksMethodInfo
    ResolveLabelAccessibleMethod "getNSelections" o = Atk.Text.TextGetNSelectionsMethodInfo
    ResolveLabelAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveLabelAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveLabelAccessibleMethod "getOffsetAtPoint" o = Atk.Text.TextGetOffsetAtPointMethodInfo
    ResolveLabelAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveLabelAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveLabelAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveLabelAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveLabelAccessibleMethod "getRangeExtents" o = Atk.Text.TextGetRangeExtentsMethodInfo
    ResolveLabelAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveLabelAccessibleMethod "getRunAttributes" o = Atk.Text.TextGetRunAttributesMethodInfo
    ResolveLabelAccessibleMethod "getSelection" o = Atk.Text.TextGetSelectionMethodInfo
    ResolveLabelAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveLabelAccessibleMethod "getStringAtOffset" o = Atk.Text.TextGetStringAtOffsetMethodInfo
    ResolveLabelAccessibleMethod "getText" o = Atk.Text.TextGetTextMethodInfo
    ResolveLabelAccessibleMethod "getTextAfterOffset" o = Atk.Text.TextGetTextAfterOffsetMethodInfo
    ResolveLabelAccessibleMethod "getTextAtOffset" o = Atk.Text.TextGetTextAtOffsetMethodInfo
    ResolveLabelAccessibleMethod "getTextBeforeOffset" o = Atk.Text.TextGetTextBeforeOffsetMethodInfo
    ResolveLabelAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveLabelAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveLabelAccessibleMethod "setCaretOffset" o = Atk.Text.TextSetCaretOffsetMethodInfo
    ResolveLabelAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveLabelAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveLabelAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveLabelAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveLabelAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveLabelAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveLabelAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveLabelAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveLabelAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveLabelAccessibleMethod "setSelection" o = Atk.Text.TextSetSelectionMethodInfo
    ResolveLabelAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveLabelAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveLabelAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveLabelAccessibleMethod t LabelAccessible, O.MethodInfo info LabelAccessible p) => OL.IsLabel t (LabelAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList LabelAccessible
type instance O.AttributeList LabelAccessible = LabelAccessibleAttributeList
type LabelAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList LabelAccessible = LabelAccessibleSignalList
type LabelAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("linkSelected", Atk.Hypertext.HypertextLinkSelectedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("textAttributesChanged", Atk.Text.TextTextAttributesChangedSignalInfo), '("textCaretMoved", Atk.Text.TextTextCaretMovedSignalInfo), '("textChanged", Atk.Text.TextTextChangedSignalInfo), '("textInsert", Atk.Text.TextTextInsertSignalInfo), '("textRemove", Atk.Text.TextTextRemoveSignalInfo), '("textSelectionChanged", Atk.Text.TextTextSelectionChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

