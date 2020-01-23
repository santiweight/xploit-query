{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.SearchEntry.SearchEntry' is a subclass of t'GI.Gtk.Objects.Entry.Entry' that has been
-- tailored for use as a search entry.
-- 
-- It will show an inactive symbolic “find” icon when the search
-- entry is empty, and a symbolic “clear” icon when there is text.
-- Clicking on the “clear” icon will empty the search entry.
-- 
-- Note that the search\/clear icon is shown using a secondary
-- icon, and thus does not work if you are using the secondary
-- icon position for some other purpose.
-- 
-- To make filtering appear more reactive, it is a good idea to
-- not react to every change in the entry text immediately, but
-- only after a short delay. To support this, t'GI.Gtk.Objects.SearchEntry.SearchEntry'
-- emits the [searchChanged]("GI.Gtk.Objects.SearchEntry#signal:searchChanged") signal which can
-- be used instead of the [changed]("GI.Gtk.Interfaces.Editable#signal:changed") signal.
-- 
-- The [previousMatch]("GI.Gtk.Objects.SearchEntry#signal:previousMatch"), [nextMatch]("GI.Gtk.Objects.SearchEntry#signal:nextMatch")
-- and [stopSearch]("GI.Gtk.Objects.SearchEntry#signal:stopSearch") signals can be used to implement
-- moving between search results and ending the search.
-- 
-- Often, GtkSearchEntry will be fed events by means of being
-- placed inside a t'GI.Gtk.Objects.SearchBar.SearchBar'. If that is not the case,
-- you can use 'GI.Gtk.Objects.SearchEntry.searchEntryHandleEvent' to pass events.
-- 
-- /Since: 3.6/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SearchEntry
    ( 

-- * Exported types
    SearchEntry(..)                         ,
    IsSearchEntry                           ,
    toSearchEntry                           ,
    noSearchEntry                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSearchEntryMethod                ,
#endif


-- ** handleEvent #method:handleEvent#

#if defined(ENABLE_OVERLOADING)
    SearchEntryHandleEventMethodInfo        ,
#endif
    searchEntryHandleEvent                  ,


-- ** new #method:new#

    searchEntryNew                          ,




 -- * Signals
-- ** nextMatch #signal:nextMatch#

    C_SearchEntryNextMatchCallback          ,
    SearchEntryNextMatchCallback            ,
#if defined(ENABLE_OVERLOADING)
    SearchEntryNextMatchSignalInfo          ,
#endif
    afterSearchEntryNextMatch               ,
    genClosure_SearchEntryNextMatch         ,
    mk_SearchEntryNextMatchCallback         ,
    noSearchEntryNextMatchCallback          ,
    onSearchEntryNextMatch                  ,
    wrap_SearchEntryNextMatchCallback       ,


-- ** previousMatch #signal:previousMatch#

    C_SearchEntryPreviousMatchCallback      ,
    SearchEntryPreviousMatchCallback        ,
#if defined(ENABLE_OVERLOADING)
    SearchEntryPreviousMatchSignalInfo      ,
#endif
    afterSearchEntryPreviousMatch           ,
    genClosure_SearchEntryPreviousMatch     ,
    mk_SearchEntryPreviousMatchCallback     ,
    noSearchEntryPreviousMatchCallback      ,
    onSearchEntryPreviousMatch              ,
    wrap_SearchEntryPreviousMatchCallback   ,


-- ** searchChanged #signal:searchChanged#

    C_SearchEntrySearchChangedCallback      ,
    SearchEntrySearchChangedCallback        ,
#if defined(ENABLE_OVERLOADING)
    SearchEntrySearchChangedSignalInfo      ,
#endif
    afterSearchEntrySearchChanged           ,
    genClosure_SearchEntrySearchChanged     ,
    mk_SearchEntrySearchChangedCallback     ,
    noSearchEntrySearchChangedCallback      ,
    onSearchEntrySearchChanged              ,
    wrap_SearchEntrySearchChangedCallback   ,


-- ** stopSearch #signal:stopSearch#

    C_SearchEntryStopSearchCallback         ,
    SearchEntryStopSearchCallback           ,
#if defined(ENABLE_OVERLOADING)
    SearchEntryStopSearchSignalInfo         ,
#endif
    afterSearchEntryStopSearch              ,
    genClosure_SearchEntryStopSearch        ,
    mk_SearchEntryStopSearchCallback        ,
    noSearchEntryStopSearchCallback         ,
    onSearchEntryStopSearch                 ,
    wrap_SearchEntryStopSearchCallback      ,




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

import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellEditable as Gtk.CellEditable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Editable as Gtk.Editable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Entry as Gtk.Entry
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype SearchEntry = SearchEntry (ManagedPtr SearchEntry)
    deriving (Eq)
foreign import ccall "gtk_search_entry_get_type"
    c_gtk_search_entry_get_type :: IO GType

instance GObject SearchEntry where
    gobjectType = c_gtk_search_entry_get_type
    

-- | Convert 'SearchEntry' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SearchEntry where
    toGValue o = do
        gtype <- c_gtk_search_entry_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SearchEntry)
        B.ManagedPtr.newObject SearchEntry ptr
        
    

-- | Type class for types which can be safely cast to `SearchEntry`, for instance with `toSearchEntry`.
class (GObject o, O.IsDescendantOf SearchEntry o) => IsSearchEntry o
instance (GObject o, O.IsDescendantOf SearchEntry o) => IsSearchEntry o

instance O.HasParentTypes SearchEntry
type instance O.ParentTypes SearchEntry = '[Gtk.Entry.Entry, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.CellEditable.CellEditable, Gtk.Editable.Editable]

-- | Cast to `SearchEntry`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSearchEntry :: (MonadIO m, IsSearchEntry o) => o -> m SearchEntry
toSearchEntry = liftIO . unsafeCastTo SearchEntry

-- | A convenience alias for `Nothing` :: `Maybe` `SearchEntry`.
noSearchEntry :: Maybe SearchEntry
noSearchEntry = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSearchEntryMethod (t :: Symbol) (o :: *) :: * where
    ResolveSearchEntryMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSearchEntryMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSearchEntryMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSearchEntryMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSearchEntryMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSearchEntryMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSearchEntryMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSearchEntryMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSearchEntryMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSearchEntryMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSearchEntryMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSearchEntryMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveSearchEntryMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSearchEntryMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSearchEntryMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSearchEntryMethod "copyClipboard" o = Gtk.Editable.EditableCopyClipboardMethodInfo
    ResolveSearchEntryMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSearchEntryMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSearchEntryMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSearchEntryMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSearchEntryMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSearchEntryMethod "cutClipboard" o = Gtk.Editable.EditableCutClipboardMethodInfo
    ResolveSearchEntryMethod "deleteSelection" o = Gtk.Editable.EditableDeleteSelectionMethodInfo
    ResolveSearchEntryMethod "deleteText" o = Gtk.Editable.EditableDeleteTextMethodInfo
    ResolveSearchEntryMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSearchEntryMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSearchEntryMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSearchEntryMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSearchEntryMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSearchEntryMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSearchEntryMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSearchEntryMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSearchEntryMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSearchEntryMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSearchEntryMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSearchEntryMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSearchEntryMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSearchEntryMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSearchEntryMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSearchEntryMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSearchEntryMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSearchEntryMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSearchEntryMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSearchEntryMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSearchEntryMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSearchEntryMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSearchEntryMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSearchEntryMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSearchEntryMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSearchEntryMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSearchEntryMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSearchEntryMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSearchEntryMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSearchEntryMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSearchEntryMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSearchEntryMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSearchEntryMethod "editingDone" o = Gtk.CellEditable.CellEditableEditingDoneMethodInfo
    ResolveSearchEntryMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSearchEntryMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSearchEntryMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSearchEntryMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSearchEntryMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSearchEntryMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSearchEntryMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSearchEntryMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSearchEntryMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSearchEntryMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSearchEntryMethod "grabFocusWithoutSelecting" o = Gtk.Entry.EntryGrabFocusWithoutSelectingMethodInfo
    ResolveSearchEntryMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSearchEntryMethod "handleEvent" o = SearchEntryHandleEventMethodInfo
    ResolveSearchEntryMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSearchEntryMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSearchEntryMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSearchEntryMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSearchEntryMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSearchEntryMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSearchEntryMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSearchEntryMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSearchEntryMethod "imContextFilterKeypress" o = Gtk.Entry.EntryImContextFilterKeypressMethodInfo
    ResolveSearchEntryMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSearchEntryMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSearchEntryMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSearchEntryMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSearchEntryMethod "insertText" o = Gtk.Editable.EditableInsertTextMethodInfo
    ResolveSearchEntryMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSearchEntryMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSearchEntryMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSearchEntryMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSearchEntryMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSearchEntryMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSearchEntryMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSearchEntryMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSearchEntryMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSearchEntryMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSearchEntryMethod "layoutIndexToTextIndex" o = Gtk.Entry.EntryLayoutIndexToTextIndexMethodInfo
    ResolveSearchEntryMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSearchEntryMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSearchEntryMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSearchEntryMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSearchEntryMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSearchEntryMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSearchEntryMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSearchEntryMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSearchEntryMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSearchEntryMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSearchEntryMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSearchEntryMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSearchEntryMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSearchEntryMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSearchEntryMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSearchEntryMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSearchEntryMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSearchEntryMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSearchEntryMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSearchEntryMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSearchEntryMethod "pasteClipboard" o = Gtk.Editable.EditablePasteClipboardMethodInfo
    ResolveSearchEntryMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSearchEntryMethod "progressPulse" o = Gtk.Entry.EntryProgressPulseMethodInfo
    ResolveSearchEntryMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSearchEntryMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSearchEntryMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSearchEntryMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSearchEntryMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSearchEntryMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSearchEntryMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSearchEntryMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSearchEntryMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSearchEntryMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSearchEntryMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSearchEntryMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSearchEntryMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSearchEntryMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSearchEntryMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSearchEntryMethod "removeWidget" o = Gtk.CellEditable.CellEditableRemoveWidgetMethodInfo
    ResolveSearchEntryMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSearchEntryMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSearchEntryMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSearchEntryMethod "resetImContext" o = Gtk.Entry.EntryResetImContextMethodInfo
    ResolveSearchEntryMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSearchEntryMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSearchEntryMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSearchEntryMethod "selectRegion" o = Gtk.Editable.EditableSelectRegionMethodInfo
    ResolveSearchEntryMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSearchEntryMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSearchEntryMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSearchEntryMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSearchEntryMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSearchEntryMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSearchEntryMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSearchEntryMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSearchEntryMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSearchEntryMethod "startEditing" o = Gtk.CellEditable.CellEditableStartEditingMethodInfo
    ResolveSearchEntryMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSearchEntryMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSearchEntryMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSearchEntryMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSearchEntryMethod "textIndexToLayoutIndex" o = Gtk.Entry.EntryTextIndexToLayoutIndexMethodInfo
    ResolveSearchEntryMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSearchEntryMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSearchEntryMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSearchEntryMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSearchEntryMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSearchEntryMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSearchEntryMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSearchEntryMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSearchEntryMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSearchEntryMethod "unsetInvisibleChar" o = Gtk.Entry.EntryUnsetInvisibleCharMethodInfo
    ResolveSearchEntryMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSearchEntryMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSearchEntryMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSearchEntryMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSearchEntryMethod "getActivatesDefault" o = Gtk.Entry.EntryGetActivatesDefaultMethodInfo
    ResolveSearchEntryMethod "getAlignment" o = Gtk.Entry.EntryGetAlignmentMethodInfo
    ResolveSearchEntryMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSearchEntryMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSearchEntryMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSearchEntryMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSearchEntryMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSearchEntryMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSearchEntryMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSearchEntryMethod "getAttributes" o = Gtk.Entry.EntryGetAttributesMethodInfo
    ResolveSearchEntryMethod "getBuffer" o = Gtk.Entry.EntryGetBufferMethodInfo
    ResolveSearchEntryMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSearchEntryMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSearchEntryMethod "getChars" o = Gtk.Editable.EditableGetCharsMethodInfo
    ResolveSearchEntryMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSearchEntryMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSearchEntryMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSearchEntryMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSearchEntryMethod "getCompletion" o = Gtk.Entry.EntryGetCompletionMethodInfo
    ResolveSearchEntryMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSearchEntryMethod "getCurrentIconDragSource" o = Gtk.Entry.EntryGetCurrentIconDragSourceMethodInfo
    ResolveSearchEntryMethod "getCursorHadjustment" o = Gtk.Entry.EntryGetCursorHadjustmentMethodInfo
    ResolveSearchEntryMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSearchEntryMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSearchEntryMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSearchEntryMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSearchEntryMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSearchEntryMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSearchEntryMethod "getEditable" o = Gtk.Editable.EditableGetEditableMethodInfo
    ResolveSearchEntryMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSearchEntryMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSearchEntryMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSearchEntryMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSearchEntryMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSearchEntryMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSearchEntryMethod "getHasFrame" o = Gtk.Entry.EntryGetHasFrameMethodInfo
    ResolveSearchEntryMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSearchEntryMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSearchEntryMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSearchEntryMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSearchEntryMethod "getIconActivatable" o = Gtk.Entry.EntryGetIconActivatableMethodInfo
    ResolveSearchEntryMethod "getIconArea" o = Gtk.Entry.EntryGetIconAreaMethodInfo
    ResolveSearchEntryMethod "getIconAtPos" o = Gtk.Entry.EntryGetIconAtPosMethodInfo
    ResolveSearchEntryMethod "getIconGicon" o = Gtk.Entry.EntryGetIconGiconMethodInfo
    ResolveSearchEntryMethod "getIconName" o = Gtk.Entry.EntryGetIconNameMethodInfo
    ResolveSearchEntryMethod "getIconPixbuf" o = Gtk.Entry.EntryGetIconPixbufMethodInfo
    ResolveSearchEntryMethod "getIconSensitive" o = Gtk.Entry.EntryGetIconSensitiveMethodInfo
    ResolveSearchEntryMethod "getIconStock" o = Gtk.Entry.EntryGetIconStockMethodInfo
    ResolveSearchEntryMethod "getIconStorageType" o = Gtk.Entry.EntryGetIconStorageTypeMethodInfo
    ResolveSearchEntryMethod "getIconTooltipMarkup" o = Gtk.Entry.EntryGetIconTooltipMarkupMethodInfo
    ResolveSearchEntryMethod "getIconTooltipText" o = Gtk.Entry.EntryGetIconTooltipTextMethodInfo
    ResolveSearchEntryMethod "getInnerBorder" o = Gtk.Entry.EntryGetInnerBorderMethodInfo
    ResolveSearchEntryMethod "getInputHints" o = Gtk.Entry.EntryGetInputHintsMethodInfo
    ResolveSearchEntryMethod "getInputPurpose" o = Gtk.Entry.EntryGetInputPurposeMethodInfo
    ResolveSearchEntryMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSearchEntryMethod "getInvisibleChar" o = Gtk.Entry.EntryGetInvisibleCharMethodInfo
    ResolveSearchEntryMethod "getLayout" o = Gtk.Entry.EntryGetLayoutMethodInfo
    ResolveSearchEntryMethod "getLayoutOffsets" o = Gtk.Entry.EntryGetLayoutOffsetsMethodInfo
    ResolveSearchEntryMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSearchEntryMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSearchEntryMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSearchEntryMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSearchEntryMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSearchEntryMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSearchEntryMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSearchEntryMethod "getMaxLength" o = Gtk.Entry.EntryGetMaxLengthMethodInfo
    ResolveSearchEntryMethod "getMaxWidthChars" o = Gtk.Entry.EntryGetMaxWidthCharsMethodInfo
    ResolveSearchEntryMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSearchEntryMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSearchEntryMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSearchEntryMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSearchEntryMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSearchEntryMethod "getOverwriteMode" o = Gtk.Entry.EntryGetOverwriteModeMethodInfo
    ResolveSearchEntryMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSearchEntryMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSearchEntryMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSearchEntryMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSearchEntryMethod "getPlaceholderText" o = Gtk.Entry.EntryGetPlaceholderTextMethodInfo
    ResolveSearchEntryMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSearchEntryMethod "getPosition" o = Gtk.Editable.EditableGetPositionMethodInfo
    ResolveSearchEntryMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSearchEntryMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSearchEntryMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSearchEntryMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSearchEntryMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSearchEntryMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSearchEntryMethod "getProgressFraction" o = Gtk.Entry.EntryGetProgressFractionMethodInfo
    ResolveSearchEntryMethod "getProgressPulseStep" o = Gtk.Entry.EntryGetProgressPulseStepMethodInfo
    ResolveSearchEntryMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSearchEntryMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSearchEntryMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSearchEntryMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSearchEntryMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSearchEntryMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSearchEntryMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSearchEntryMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSearchEntryMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSearchEntryMethod "getSelectionBounds" o = Gtk.Editable.EditableGetSelectionBoundsMethodInfo
    ResolveSearchEntryMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSearchEntryMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSearchEntryMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSearchEntryMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSearchEntryMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSearchEntryMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSearchEntryMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSearchEntryMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSearchEntryMethod "getTabs" o = Gtk.Entry.EntryGetTabsMethodInfo
    ResolveSearchEntryMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSearchEntryMethod "getText" o = Gtk.Entry.EntryGetTextMethodInfo
    ResolveSearchEntryMethod "getTextArea" o = Gtk.Entry.EntryGetTextAreaMethodInfo
    ResolveSearchEntryMethod "getTextLength" o = Gtk.Entry.EntryGetTextLengthMethodInfo
    ResolveSearchEntryMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSearchEntryMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSearchEntryMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSearchEntryMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSearchEntryMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSearchEntryMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSearchEntryMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSearchEntryMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSearchEntryMethod "getVisibility" o = Gtk.Entry.EntryGetVisibilityMethodInfo
    ResolveSearchEntryMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSearchEntryMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSearchEntryMethod "getWidthChars" o = Gtk.Entry.EntryGetWidthCharsMethodInfo
    ResolveSearchEntryMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSearchEntryMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSearchEntryMethod "setActivatesDefault" o = Gtk.Entry.EntrySetActivatesDefaultMethodInfo
    ResolveSearchEntryMethod "setAlignment" o = Gtk.Entry.EntrySetAlignmentMethodInfo
    ResolveSearchEntryMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSearchEntryMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSearchEntryMethod "setAttributes" o = Gtk.Entry.EntrySetAttributesMethodInfo
    ResolveSearchEntryMethod "setBuffer" o = Gtk.Entry.EntrySetBufferMethodInfo
    ResolveSearchEntryMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSearchEntryMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSearchEntryMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSearchEntryMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSearchEntryMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSearchEntryMethod "setCompletion" o = Gtk.Entry.EntrySetCompletionMethodInfo
    ResolveSearchEntryMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSearchEntryMethod "setCursorHadjustment" o = Gtk.Entry.EntrySetCursorHadjustmentMethodInfo
    ResolveSearchEntryMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSearchEntryMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSearchEntryMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSearchEntryMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSearchEntryMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSearchEntryMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSearchEntryMethod "setEditable" o = Gtk.Editable.EditableSetEditableMethodInfo
    ResolveSearchEntryMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSearchEntryMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSearchEntryMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSearchEntryMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSearchEntryMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSearchEntryMethod "setHasFrame" o = Gtk.Entry.EntrySetHasFrameMethodInfo
    ResolveSearchEntryMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSearchEntryMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSearchEntryMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSearchEntryMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSearchEntryMethod "setIconActivatable" o = Gtk.Entry.EntrySetIconActivatableMethodInfo
    ResolveSearchEntryMethod "setIconDragSource" o = Gtk.Entry.EntrySetIconDragSourceMethodInfo
    ResolveSearchEntryMethod "setIconFromGicon" o = Gtk.Entry.EntrySetIconFromGiconMethodInfo
    ResolveSearchEntryMethod "setIconFromIconName" o = Gtk.Entry.EntrySetIconFromIconNameMethodInfo
    ResolveSearchEntryMethod "setIconFromPixbuf" o = Gtk.Entry.EntrySetIconFromPixbufMethodInfo
    ResolveSearchEntryMethod "setIconFromStock" o = Gtk.Entry.EntrySetIconFromStockMethodInfo
    ResolveSearchEntryMethod "setIconSensitive" o = Gtk.Entry.EntrySetIconSensitiveMethodInfo
    ResolveSearchEntryMethod "setIconTooltipMarkup" o = Gtk.Entry.EntrySetIconTooltipMarkupMethodInfo
    ResolveSearchEntryMethod "setIconTooltipText" o = Gtk.Entry.EntrySetIconTooltipTextMethodInfo
    ResolveSearchEntryMethod "setInnerBorder" o = Gtk.Entry.EntrySetInnerBorderMethodInfo
    ResolveSearchEntryMethod "setInputHints" o = Gtk.Entry.EntrySetInputHintsMethodInfo
    ResolveSearchEntryMethod "setInputPurpose" o = Gtk.Entry.EntrySetInputPurposeMethodInfo
    ResolveSearchEntryMethod "setInvisibleChar" o = Gtk.Entry.EntrySetInvisibleCharMethodInfo
    ResolveSearchEntryMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSearchEntryMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSearchEntryMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSearchEntryMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSearchEntryMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSearchEntryMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSearchEntryMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSearchEntryMethod "setMaxLength" o = Gtk.Entry.EntrySetMaxLengthMethodInfo
    ResolveSearchEntryMethod "setMaxWidthChars" o = Gtk.Entry.EntrySetMaxWidthCharsMethodInfo
    ResolveSearchEntryMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSearchEntryMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSearchEntryMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSearchEntryMethod "setOverwriteMode" o = Gtk.Entry.EntrySetOverwriteModeMethodInfo
    ResolveSearchEntryMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSearchEntryMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSearchEntryMethod "setPlaceholderText" o = Gtk.Entry.EntrySetPlaceholderTextMethodInfo
    ResolveSearchEntryMethod "setPosition" o = Gtk.Editable.EditableSetPositionMethodInfo
    ResolveSearchEntryMethod "setProgressFraction" o = Gtk.Entry.EntrySetProgressFractionMethodInfo
    ResolveSearchEntryMethod "setProgressPulseStep" o = Gtk.Entry.EntrySetProgressPulseStepMethodInfo
    ResolveSearchEntryMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSearchEntryMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSearchEntryMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSearchEntryMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSearchEntryMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSearchEntryMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSearchEntryMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSearchEntryMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSearchEntryMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSearchEntryMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSearchEntryMethod "setTabs" o = Gtk.Entry.EntrySetTabsMethodInfo
    ResolveSearchEntryMethod "setText" o = Gtk.Entry.EntrySetTextMethodInfo
    ResolveSearchEntryMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSearchEntryMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSearchEntryMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSearchEntryMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSearchEntryMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSearchEntryMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSearchEntryMethod "setVisibility" o = Gtk.Entry.EntrySetVisibilityMethodInfo
    ResolveSearchEntryMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSearchEntryMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSearchEntryMethod "setWidthChars" o = Gtk.Entry.EntrySetWidthCharsMethodInfo
    ResolveSearchEntryMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSearchEntryMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSearchEntryMethod t SearchEntry, O.MethodInfo info SearchEntry p) => OL.IsLabel t (SearchEntry -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal SearchEntry::next-match
-- | The [nextMatch](#signal:nextMatch) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a move to the next match
-- for the current search string.
-- 
-- Applications should connect to it, to implement moving between
-- matches.
-- 
-- The default bindings for this signal is Ctrl-g.
-- 
-- /Since: 3.16/
type SearchEntryNextMatchCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SearchEntryNextMatchCallback`@.
noSearchEntryNextMatchCallback :: Maybe SearchEntryNextMatchCallback
noSearchEntryNextMatchCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SearchEntryNextMatchCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SearchEntryNextMatchCallback`.
foreign import ccall "wrapper"
    mk_SearchEntryNextMatchCallback :: C_SearchEntryNextMatchCallback -> IO (FunPtr C_SearchEntryNextMatchCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SearchEntryNextMatch :: MonadIO m => SearchEntryNextMatchCallback -> m (GClosure C_SearchEntryNextMatchCallback)
genClosure_SearchEntryNextMatch cb = liftIO $ do
    let cb' = wrap_SearchEntryNextMatchCallback cb
    mk_SearchEntryNextMatchCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SearchEntryNextMatchCallback` into a `C_SearchEntryNextMatchCallback`.
wrap_SearchEntryNextMatchCallback ::
    SearchEntryNextMatchCallback ->
    C_SearchEntryNextMatchCallback
wrap_SearchEntryNextMatchCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [nextMatch](#signal:nextMatch) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' searchEntry #nextMatch callback
-- @
-- 
-- 
onSearchEntryNextMatch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryNextMatchCallback -> m SignalHandlerId
onSearchEntryNextMatch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryNextMatchCallback cb
    cb'' <- mk_SearchEntryNextMatchCallback cb'
    connectSignalFunPtr obj "next-match" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [nextMatch](#signal:nextMatch) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' searchEntry #nextMatch callback
-- @
-- 
-- 
afterSearchEntryNextMatch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryNextMatchCallback -> m SignalHandlerId
afterSearchEntryNextMatch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryNextMatchCallback cb
    cb'' <- mk_SearchEntryNextMatchCallback cb'
    connectSignalFunPtr obj "next-match" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SearchEntryNextMatchSignalInfo
instance SignalInfo SearchEntryNextMatchSignalInfo where
    type HaskellCallbackType SearchEntryNextMatchSignalInfo = SearchEntryNextMatchCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SearchEntryNextMatchCallback cb
        cb'' <- mk_SearchEntryNextMatchCallback cb'
        connectSignalFunPtr obj "next-match" cb'' connectMode detail

#endif

-- signal SearchEntry::previous-match
-- | The [previousMatch](#signal:previousMatch) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a move to the previous match
-- for the current search string.
-- 
-- Applications should connect to it, to implement moving between
-- matches.
-- 
-- The default bindings for this signal is Ctrl-Shift-g.
-- 
-- /Since: 3.16/
type SearchEntryPreviousMatchCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SearchEntryPreviousMatchCallback`@.
noSearchEntryPreviousMatchCallback :: Maybe SearchEntryPreviousMatchCallback
noSearchEntryPreviousMatchCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SearchEntryPreviousMatchCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SearchEntryPreviousMatchCallback`.
foreign import ccall "wrapper"
    mk_SearchEntryPreviousMatchCallback :: C_SearchEntryPreviousMatchCallback -> IO (FunPtr C_SearchEntryPreviousMatchCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SearchEntryPreviousMatch :: MonadIO m => SearchEntryPreviousMatchCallback -> m (GClosure C_SearchEntryPreviousMatchCallback)
genClosure_SearchEntryPreviousMatch cb = liftIO $ do
    let cb' = wrap_SearchEntryPreviousMatchCallback cb
    mk_SearchEntryPreviousMatchCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SearchEntryPreviousMatchCallback` into a `C_SearchEntryPreviousMatchCallback`.
wrap_SearchEntryPreviousMatchCallback ::
    SearchEntryPreviousMatchCallback ->
    C_SearchEntryPreviousMatchCallback
wrap_SearchEntryPreviousMatchCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [previousMatch](#signal:previousMatch) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' searchEntry #previousMatch callback
-- @
-- 
-- 
onSearchEntryPreviousMatch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryPreviousMatchCallback -> m SignalHandlerId
onSearchEntryPreviousMatch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryPreviousMatchCallback cb
    cb'' <- mk_SearchEntryPreviousMatchCallback cb'
    connectSignalFunPtr obj "previous-match" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [previousMatch](#signal:previousMatch) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' searchEntry #previousMatch callback
-- @
-- 
-- 
afterSearchEntryPreviousMatch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryPreviousMatchCallback -> m SignalHandlerId
afterSearchEntryPreviousMatch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryPreviousMatchCallback cb
    cb'' <- mk_SearchEntryPreviousMatchCallback cb'
    connectSignalFunPtr obj "previous-match" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SearchEntryPreviousMatchSignalInfo
instance SignalInfo SearchEntryPreviousMatchSignalInfo where
    type HaskellCallbackType SearchEntryPreviousMatchSignalInfo = SearchEntryPreviousMatchCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SearchEntryPreviousMatchCallback cb
        cb'' <- mk_SearchEntryPreviousMatchCallback cb'
        connectSignalFunPtr obj "previous-match" cb'' connectMode detail

#endif

-- signal SearchEntry::search-changed
-- | The [searchChanged]("GI.Gtk.Objects.SearchEntry#signal:searchChanged") signal is emitted with a short
-- delay of 150 milliseconds after the last change to the entry text.
-- 
-- /Since: 3.10/
type SearchEntrySearchChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SearchEntrySearchChangedCallback`@.
noSearchEntrySearchChangedCallback :: Maybe SearchEntrySearchChangedCallback
noSearchEntrySearchChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SearchEntrySearchChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SearchEntrySearchChangedCallback`.
foreign import ccall "wrapper"
    mk_SearchEntrySearchChangedCallback :: C_SearchEntrySearchChangedCallback -> IO (FunPtr C_SearchEntrySearchChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SearchEntrySearchChanged :: MonadIO m => SearchEntrySearchChangedCallback -> m (GClosure C_SearchEntrySearchChangedCallback)
genClosure_SearchEntrySearchChanged cb = liftIO $ do
    let cb' = wrap_SearchEntrySearchChangedCallback cb
    mk_SearchEntrySearchChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SearchEntrySearchChangedCallback` into a `C_SearchEntrySearchChangedCallback`.
wrap_SearchEntrySearchChangedCallback ::
    SearchEntrySearchChangedCallback ->
    C_SearchEntrySearchChangedCallback
wrap_SearchEntrySearchChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [searchChanged](#signal:searchChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' searchEntry #searchChanged callback
-- @
-- 
-- 
onSearchEntrySearchChanged :: (IsSearchEntry a, MonadIO m) => a -> SearchEntrySearchChangedCallback -> m SignalHandlerId
onSearchEntrySearchChanged obj cb = liftIO $ do
    let cb' = wrap_SearchEntrySearchChangedCallback cb
    cb'' <- mk_SearchEntrySearchChangedCallback cb'
    connectSignalFunPtr obj "search-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [searchChanged](#signal:searchChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' searchEntry #searchChanged callback
-- @
-- 
-- 
afterSearchEntrySearchChanged :: (IsSearchEntry a, MonadIO m) => a -> SearchEntrySearchChangedCallback -> m SignalHandlerId
afterSearchEntrySearchChanged obj cb = liftIO $ do
    let cb' = wrap_SearchEntrySearchChangedCallback cb
    cb'' <- mk_SearchEntrySearchChangedCallback cb'
    connectSignalFunPtr obj "search-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SearchEntrySearchChangedSignalInfo
instance SignalInfo SearchEntrySearchChangedSignalInfo where
    type HaskellCallbackType SearchEntrySearchChangedSignalInfo = SearchEntrySearchChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SearchEntrySearchChangedCallback cb
        cb'' <- mk_SearchEntrySearchChangedCallback cb'
        connectSignalFunPtr obj "search-changed" cb'' connectMode detail

#endif

-- signal SearchEntry::stop-search
-- | The [stopSearch](#signal:stopSearch) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user stops a search via keyboard input.
-- 
-- Applications should connect to it, to implement hiding the search
-- entry in this case.
-- 
-- The default bindings for this signal is Escape.
-- 
-- /Since: 3.16/
type SearchEntryStopSearchCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SearchEntryStopSearchCallback`@.
noSearchEntryStopSearchCallback :: Maybe SearchEntryStopSearchCallback
noSearchEntryStopSearchCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SearchEntryStopSearchCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SearchEntryStopSearchCallback`.
foreign import ccall "wrapper"
    mk_SearchEntryStopSearchCallback :: C_SearchEntryStopSearchCallback -> IO (FunPtr C_SearchEntryStopSearchCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SearchEntryStopSearch :: MonadIO m => SearchEntryStopSearchCallback -> m (GClosure C_SearchEntryStopSearchCallback)
genClosure_SearchEntryStopSearch cb = liftIO $ do
    let cb' = wrap_SearchEntryStopSearchCallback cb
    mk_SearchEntryStopSearchCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SearchEntryStopSearchCallback` into a `C_SearchEntryStopSearchCallback`.
wrap_SearchEntryStopSearchCallback ::
    SearchEntryStopSearchCallback ->
    C_SearchEntryStopSearchCallback
wrap_SearchEntryStopSearchCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [stopSearch](#signal:stopSearch) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' searchEntry #stopSearch callback
-- @
-- 
-- 
onSearchEntryStopSearch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryStopSearchCallback -> m SignalHandlerId
onSearchEntryStopSearch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryStopSearchCallback cb
    cb'' <- mk_SearchEntryStopSearchCallback cb'
    connectSignalFunPtr obj "stop-search" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [stopSearch](#signal:stopSearch) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' searchEntry #stopSearch callback
-- @
-- 
-- 
afterSearchEntryStopSearch :: (IsSearchEntry a, MonadIO m) => a -> SearchEntryStopSearchCallback -> m SignalHandlerId
afterSearchEntryStopSearch obj cb = liftIO $ do
    let cb' = wrap_SearchEntryStopSearchCallback cb
    cb'' <- mk_SearchEntryStopSearchCallback cb'
    connectSignalFunPtr obj "stop-search" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SearchEntryStopSearchSignalInfo
instance SignalInfo SearchEntryStopSearchSignalInfo where
    type HaskellCallbackType SearchEntryStopSearchSignalInfo = SearchEntryStopSearchCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SearchEntryStopSearchCallback cb
        cb'' <- mk_SearchEntryStopSearchCallback cb'
        connectSignalFunPtr obj "stop-search" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SearchEntry
type instance O.AttributeList SearchEntry = SearchEntryAttributeList
type SearchEntryAttributeList = ('[ '("activatesDefault", Gtk.Entry.EntryActivatesDefaultPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("attributes", Gtk.Entry.EntryAttributesPropertyInfo), '("buffer", Gtk.Entry.EntryBufferPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("capsLockWarning", Gtk.Entry.EntryCapsLockWarningPropertyInfo), '("completion", Gtk.Entry.EntryCompletionPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("cursorPosition", Gtk.Entry.EntryCursorPositionPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editable", Gtk.Entry.EntryEditablePropertyInfo), '("editingCanceled", Gtk.CellEditable.CellEditableEditingCanceledPropertyInfo), '("enableEmojiCompletion", Gtk.Entry.EntryEnableEmojiCompletionPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasFrame", Gtk.Entry.EntryHasFramePropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("imModule", Gtk.Entry.EntryImModulePropertyInfo), '("innerBorder", Gtk.Entry.EntryInnerBorderPropertyInfo), '("inputHints", Gtk.Entry.EntryInputHintsPropertyInfo), '("inputPurpose", Gtk.Entry.EntryInputPurposePropertyInfo), '("invisibleChar", Gtk.Entry.EntryInvisibleCharPropertyInfo), '("invisibleCharSet", Gtk.Entry.EntryInvisibleCharSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxLength", Gtk.Entry.EntryMaxLengthPropertyInfo), '("maxWidthChars", Gtk.Entry.EntryMaxWidthCharsPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("overwriteMode", Gtk.Entry.EntryOverwriteModePropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("placeholderText", Gtk.Entry.EntryPlaceholderTextPropertyInfo), '("populateAll", Gtk.Entry.EntryPopulateAllPropertyInfo), '("primaryIconActivatable", Gtk.Entry.EntryPrimaryIconActivatablePropertyInfo), '("primaryIconGicon", Gtk.Entry.EntryPrimaryIconGiconPropertyInfo), '("primaryIconName", Gtk.Entry.EntryPrimaryIconNamePropertyInfo), '("primaryIconPixbuf", Gtk.Entry.EntryPrimaryIconPixbufPropertyInfo), '("primaryIconSensitive", Gtk.Entry.EntryPrimaryIconSensitivePropertyInfo), '("primaryIconStock", Gtk.Entry.EntryPrimaryIconStockPropertyInfo), '("primaryIconStorageType", Gtk.Entry.EntryPrimaryIconStorageTypePropertyInfo), '("primaryIconTooltipMarkup", Gtk.Entry.EntryPrimaryIconTooltipMarkupPropertyInfo), '("primaryIconTooltipText", Gtk.Entry.EntryPrimaryIconTooltipTextPropertyInfo), '("progressFraction", Gtk.Entry.EntryProgressFractionPropertyInfo), '("progressPulseStep", Gtk.Entry.EntryProgressPulseStepPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("scrollOffset", Gtk.Entry.EntryScrollOffsetPropertyInfo), '("secondaryIconActivatable", Gtk.Entry.EntrySecondaryIconActivatablePropertyInfo), '("secondaryIconGicon", Gtk.Entry.EntrySecondaryIconGiconPropertyInfo), '("secondaryIconName", Gtk.Entry.EntrySecondaryIconNamePropertyInfo), '("secondaryIconPixbuf", Gtk.Entry.EntrySecondaryIconPixbufPropertyInfo), '("secondaryIconSensitive", Gtk.Entry.EntrySecondaryIconSensitivePropertyInfo), '("secondaryIconStock", Gtk.Entry.EntrySecondaryIconStockPropertyInfo), '("secondaryIconStorageType", Gtk.Entry.EntrySecondaryIconStorageTypePropertyInfo), '("secondaryIconTooltipMarkup", Gtk.Entry.EntrySecondaryIconTooltipMarkupPropertyInfo), '("secondaryIconTooltipText", Gtk.Entry.EntrySecondaryIconTooltipTextPropertyInfo), '("selectionBound", Gtk.Entry.EntrySelectionBoundPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", Gtk.Entry.EntryShadowTypePropertyInfo), '("showEmojiIcon", Gtk.Entry.EntryShowEmojiIconPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tabs", Gtk.Entry.EntryTabsPropertyInfo), '("text", Gtk.Entry.EntryTextPropertyInfo), '("textLength", Gtk.Entry.EntryTextLengthPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("truncateMultiline", Gtk.Entry.EntryTruncateMultilinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visibility", Gtk.Entry.EntryVisibilityPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthChars", Gtk.Entry.EntryWidthCharsPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Entry.EntryXalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SearchEntry = SearchEntrySignalList
type SearchEntrySignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Entry.EntryActivateSignalInfo), '("backspace", Gtk.Entry.EntryBackspaceSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changed", Gtk.Editable.EditableChangedSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("copyClipboard", Gtk.Entry.EntryCopyClipboardSignalInfo), '("cutClipboard", Gtk.Entry.EntryCutClipboardSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deleteFromCursor", Gtk.Entry.EntryDeleteFromCursorSignalInfo), '("deleteText", Gtk.Editable.EditableDeleteTextSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("editingDone", Gtk.CellEditable.CellEditableEditingDoneSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("iconPress", Gtk.Entry.EntryIconPressSignalInfo), '("iconRelease", Gtk.Entry.EntryIconReleaseSignalInfo), '("insertAtCursor", Gtk.Entry.EntryInsertAtCursorSignalInfo), '("insertEmoji", Gtk.Entry.EntryInsertEmojiSignalInfo), '("insertText", Gtk.Editable.EditableInsertTextSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCursor", Gtk.Entry.EntryMoveCursorSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("nextMatch", SearchEntryNextMatchSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("pasteClipboard", Gtk.Entry.EntryPasteClipboardSignalInfo), '("populatePopup", Gtk.Entry.EntryPopulatePopupSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("preeditChanged", Gtk.Entry.EntryPreeditChangedSignalInfo), '("previousMatch", SearchEntryPreviousMatchSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("removeWidget", Gtk.CellEditable.CellEditableRemoveWidgetSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("searchChanged", SearchEntrySearchChangedSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("stopSearch", SearchEntryStopSearchSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleOverwrite", Gtk.Entry.EntryToggleOverwriteSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method SearchEntry::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "SearchEntry" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_search_entry_new" gtk_search_entry_new :: 
    IO (Ptr SearchEntry)

-- | Creates a t'GI.Gtk.Objects.SearchEntry.SearchEntry', with a find icon when the search field is
-- empty, and a clear icon when it isn\'t.
-- 
-- /Since: 3.6/
searchEntryNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m SearchEntry
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.SearchEntry.SearchEntry'
searchEntryNew  = liftIO $ do
    result <- gtk_search_entry_new
    checkUnexpectedReturnNULL "searchEntryNew" result
    result' <- (newObject SearchEntry) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SearchEntry::handle_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "entry"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchEntry" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchEntry" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "event"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Event" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a key event" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_search_entry_handle_event" gtk_search_entry_handle_event :: 
    Ptr SearchEntry ->                      -- entry : TInterface (Name {namespace = "Gtk", name = "SearchEntry"})
    Ptr Gdk.Event.Event ->                  -- event : TInterface (Name {namespace = "Gdk", name = "Event"})
    IO CInt

-- | This function should be called when the top-level window
-- which contains the search entry received a key event. If
-- the entry is part of a t'GI.Gtk.Objects.SearchBar.SearchBar', it is preferable
-- to call 'GI.Gtk.Objects.SearchBar.searchBarHandleEvent' instead, which will
-- reveal the entry in addition to passing the event to this
-- function.
-- 
-- If the key event is handled by the search entry and starts
-- or continues a search, 'GI.Gdk.Constants.EVENT_STOP' will be returned.
-- The caller should ensure that the entry is shown in this
-- case, and not propagate the event further.
-- 
-- /Since: 3.16/
searchEntryHandleEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchEntry a) =>
    a
    -- ^ /@entry@/: a t'GI.Gtk.Objects.SearchEntry.SearchEntry'
    -> Gdk.Event.Event
    -- ^ /@event@/: a key event
    -> m Bool
    -- ^ __Returns:__ 'GI.Gdk.Constants.EVENT_STOP' if the key press event resulted
    --     in a search beginning or continuing, 'GI.Gdk.Constants.EVENT_PROPAGATE'
    --     otherwise.
searchEntryHandleEvent entry event = liftIO $ do
    entry' <- unsafeManagedPtrCastPtr entry
    event' <- unsafeManagedPtrGetPtr event
    result <- gtk_search_entry_handle_event entry' event'
    let result' = (/= 0) result
    touchManagedPtr entry
    touchManagedPtr event
    return result'

#if defined(ENABLE_OVERLOADING)
data SearchEntryHandleEventMethodInfo
instance (signature ~ (Gdk.Event.Event -> m Bool), MonadIO m, IsSearchEntry a) => O.MethodInfo SearchEntryHandleEventMethodInfo a signature where
    overloadedMethod = searchEntryHandleEvent

#endif

