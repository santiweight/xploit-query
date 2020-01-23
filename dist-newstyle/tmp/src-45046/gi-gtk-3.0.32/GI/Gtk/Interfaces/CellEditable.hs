{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Interfaces.CellEditable.CellEditable' interface must be implemented for widgets to be usable
-- to edit the contents of a t'GI.Gtk.Objects.TreeView.TreeView' cell. It provides a way to specify how
-- temporary widgets should be configured for editing, get the new value, etc.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.CellEditable
    ( 

-- * Exported types
    CellEditable(..)                        ,
    noCellEditable                          ,
    IsCellEditable                          ,
    toCellEditable                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellEditableMethod               ,
#endif


-- ** editingDone #method:editingDone#

#if defined(ENABLE_OVERLOADING)
    CellEditableEditingDoneMethodInfo       ,
#endif
    cellEditableEditingDone                 ,


-- ** removeWidget #method:removeWidget#

#if defined(ENABLE_OVERLOADING)
    CellEditableRemoveWidgetMethodInfo      ,
#endif
    cellEditableRemoveWidget                ,


-- ** startEditing #method:startEditing#

#if defined(ENABLE_OVERLOADING)
    CellEditableStartEditingMethodInfo      ,
#endif
    cellEditableStartEditing                ,




 -- * Properties
-- ** editingCanceled #attr:editingCanceled#
-- | Indicates whether editing on the cell has been canceled.
-- 
-- /Since: 2.20/

#if defined(ENABLE_OVERLOADING)
    CellEditableEditingCanceledPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellEditableEditingCanceled             ,
#endif
    constructCellEditableEditingCanceled    ,
    getCellEditableEditingCanceled          ,
    setCellEditableEditingCanceled          ,




 -- * Signals
-- ** editingDone #signal:editingDone#

    C_CellEditableEditingDoneCallback       ,
    CellEditableEditingDoneCallback         ,
#if defined(ENABLE_OVERLOADING)
    CellEditableEditingDoneSignalInfo       ,
#endif
    afterCellEditableEditingDone            ,
    genClosure_CellEditableEditingDone      ,
    mk_CellEditableEditingDoneCallback      ,
    noCellEditableEditingDoneCallback       ,
    onCellEditableEditingDone               ,
    wrap_CellEditableEditingDoneCallback    ,


-- ** removeWidget #signal:removeWidget#

    C_CellEditableRemoveWidgetCallback      ,
    CellEditableRemoveWidgetCallback        ,
#if defined(ENABLE_OVERLOADING)
    CellEditableRemoveWidgetSignalInfo      ,
#endif
    afterCellEditableRemoveWidget           ,
    genClosure_CellEditableRemoveWidget     ,
    mk_CellEditableRemoveWidgetCallback     ,
    noCellEditableRemoveWidgetCallback      ,
    onCellEditableRemoveWidget              ,
    wrap_CellEditableRemoveWidgetCallback   ,




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

import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- interface CellEditable 
-- | Memory-managed wrapper type.
newtype CellEditable = CellEditable (ManagedPtr CellEditable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `CellEditable`.
noCellEditable :: Maybe CellEditable
noCellEditable = Nothing

-- signal CellEditable::editing-done
-- | This signal is a sign for the cell renderer to update its
-- value from the /@cellEditable@/.
-- 
-- Implementations of t'GI.Gtk.Interfaces.CellEditable.CellEditable' are responsible for
-- emitting this signal when they are done editing, e.g.
-- t'GI.Gtk.Objects.Entry.Entry' emits this signal when the user presses Enter. Typical things to
-- do in a handler for [editingDone](#signal:editingDone) are to capture the edited value,
-- disconnect the /@cellEditable@/ from signals on the t'GI.Gtk.Objects.CellRenderer.CellRenderer', etc.
-- 
-- 'GI.Gtk.Interfaces.CellEditable.cellEditableEditingDone' is a convenience method
-- for emitting [editingDone]("GI.Gtk.Interfaces.CellEditable#signal:editingDone").
type CellEditableEditingDoneCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CellEditableEditingDoneCallback`@.
noCellEditableEditingDoneCallback :: Maybe CellEditableEditingDoneCallback
noCellEditableEditingDoneCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CellEditableEditingDoneCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CellEditableEditingDoneCallback`.
foreign import ccall "wrapper"
    mk_CellEditableEditingDoneCallback :: C_CellEditableEditingDoneCallback -> IO (FunPtr C_CellEditableEditingDoneCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CellEditableEditingDone :: MonadIO m => CellEditableEditingDoneCallback -> m (GClosure C_CellEditableEditingDoneCallback)
genClosure_CellEditableEditingDone cb = liftIO $ do
    let cb' = wrap_CellEditableEditingDoneCallback cb
    mk_CellEditableEditingDoneCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CellEditableEditingDoneCallback` into a `C_CellEditableEditingDoneCallback`.
wrap_CellEditableEditingDoneCallback ::
    CellEditableEditingDoneCallback ->
    C_CellEditableEditingDoneCallback
wrap_CellEditableEditingDoneCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [editingDone](#signal:editingDone) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cellEditable #editingDone callback
-- @
-- 
-- 
onCellEditableEditingDone :: (IsCellEditable a, MonadIO m) => a -> CellEditableEditingDoneCallback -> m SignalHandlerId
onCellEditableEditingDone obj cb = liftIO $ do
    let cb' = wrap_CellEditableEditingDoneCallback cb
    cb'' <- mk_CellEditableEditingDoneCallback cb'
    connectSignalFunPtr obj "editing-done" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [editingDone](#signal:editingDone) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cellEditable #editingDone callback
-- @
-- 
-- 
afterCellEditableEditingDone :: (IsCellEditable a, MonadIO m) => a -> CellEditableEditingDoneCallback -> m SignalHandlerId
afterCellEditableEditingDone obj cb = liftIO $ do
    let cb' = wrap_CellEditableEditingDoneCallback cb
    cb'' <- mk_CellEditableEditingDoneCallback cb'
    connectSignalFunPtr obj "editing-done" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CellEditableEditingDoneSignalInfo
instance SignalInfo CellEditableEditingDoneSignalInfo where
    type HaskellCallbackType CellEditableEditingDoneSignalInfo = CellEditableEditingDoneCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CellEditableEditingDoneCallback cb
        cb'' <- mk_CellEditableEditingDoneCallback cb'
        connectSignalFunPtr obj "editing-done" cb'' connectMode detail

#endif

-- signal CellEditable::remove-widget
-- | This signal is meant to indicate that the cell is finished
-- editing, and the /@cellEditable@/ widget is being removed and may
-- subsequently be destroyed.
-- 
-- Implementations of t'GI.Gtk.Interfaces.CellEditable.CellEditable' are responsible for
-- emitting this signal when they are done editing. It must
-- be emitted after the [editingDone]("GI.Gtk.Interfaces.CellEditable#signal:editingDone") signal,
-- to give the cell renderer a chance to update the cell\'s value
-- before the widget is removed.
-- 
-- 'GI.Gtk.Interfaces.CellEditable.cellEditableRemoveWidget' is a convenience method
-- for emitting [removeWidget]("GI.Gtk.Interfaces.CellEditable#signal:removeWidget").
type CellEditableRemoveWidgetCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CellEditableRemoveWidgetCallback`@.
noCellEditableRemoveWidgetCallback :: Maybe CellEditableRemoveWidgetCallback
noCellEditableRemoveWidgetCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CellEditableRemoveWidgetCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CellEditableRemoveWidgetCallback`.
foreign import ccall "wrapper"
    mk_CellEditableRemoveWidgetCallback :: C_CellEditableRemoveWidgetCallback -> IO (FunPtr C_CellEditableRemoveWidgetCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CellEditableRemoveWidget :: MonadIO m => CellEditableRemoveWidgetCallback -> m (GClosure C_CellEditableRemoveWidgetCallback)
genClosure_CellEditableRemoveWidget cb = liftIO $ do
    let cb' = wrap_CellEditableRemoveWidgetCallback cb
    mk_CellEditableRemoveWidgetCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CellEditableRemoveWidgetCallback` into a `C_CellEditableRemoveWidgetCallback`.
wrap_CellEditableRemoveWidgetCallback ::
    CellEditableRemoveWidgetCallback ->
    C_CellEditableRemoveWidgetCallback
wrap_CellEditableRemoveWidgetCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [removeWidget](#signal:removeWidget) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cellEditable #removeWidget callback
-- @
-- 
-- 
onCellEditableRemoveWidget :: (IsCellEditable a, MonadIO m) => a -> CellEditableRemoveWidgetCallback -> m SignalHandlerId
onCellEditableRemoveWidget obj cb = liftIO $ do
    let cb' = wrap_CellEditableRemoveWidgetCallback cb
    cb'' <- mk_CellEditableRemoveWidgetCallback cb'
    connectSignalFunPtr obj "remove-widget" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [removeWidget](#signal:removeWidget) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cellEditable #removeWidget callback
-- @
-- 
-- 
afterCellEditableRemoveWidget :: (IsCellEditable a, MonadIO m) => a -> CellEditableRemoveWidgetCallback -> m SignalHandlerId
afterCellEditableRemoveWidget obj cb = liftIO $ do
    let cb' = wrap_CellEditableRemoveWidgetCallback cb
    cb'' <- mk_CellEditableRemoveWidgetCallback cb'
    connectSignalFunPtr obj "remove-widget" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CellEditableRemoveWidgetSignalInfo
instance SignalInfo CellEditableRemoveWidgetSignalInfo where
    type HaskellCallbackType CellEditableRemoveWidgetSignalInfo = CellEditableRemoveWidgetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CellEditableRemoveWidgetCallback cb
        cb'' <- mk_CellEditableRemoveWidgetCallback cb'
        connectSignalFunPtr obj "remove-widget" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellEditable = CellEditableSignalList
type CellEditableSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("editingDone", CellEditableEditingDoneSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("removeWidget", CellEditableRemoveWidgetSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_cell_editable_get_type"
    c_gtk_cell_editable_get_type :: IO GType

instance GObject CellEditable where
    gobjectType = c_gtk_cell_editable_get_type
    

-- | Convert 'CellEditable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellEditable where
    toGValue o = do
        gtype <- c_gtk_cell_editable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellEditable)
        B.ManagedPtr.newObject CellEditable ptr
        
    

-- | Type class for types which can be safely cast to `CellEditable`, for instance with `toCellEditable`.
class (GObject o, O.IsDescendantOf CellEditable o) => IsCellEditable o
instance (GObject o, O.IsDescendantOf CellEditable o) => IsCellEditable o

instance O.HasParentTypes CellEditable
type instance O.ParentTypes CellEditable = '[GObject.Object.Object, Gtk.Widget.Widget]

-- | Cast to `CellEditable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellEditable :: (MonadIO m, IsCellEditable o) => o -> m CellEditable
toCellEditable = liftIO . unsafeCastTo CellEditable

-- VVV Prop "editing-canceled"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@editing-canceled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellEditable #editingCanceled
-- @
getCellEditableEditingCanceled :: (MonadIO m, IsCellEditable o) => o -> m Bool
getCellEditableEditingCanceled obj = liftIO $ B.Properties.getObjectPropertyBool obj "editing-canceled"

-- | Set the value of the “@editing-canceled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellEditable [ #editingCanceled 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellEditableEditingCanceled :: (MonadIO m, IsCellEditable o) => o -> Bool -> m ()
setCellEditableEditingCanceled obj val = liftIO $ B.Properties.setObjectPropertyBool obj "editing-canceled" val

-- | Construct a `GValueConstruct` with valid value for the “@editing-canceled@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellEditableEditingCanceled :: (IsCellEditable o) => Bool -> IO (GValueConstruct o)
constructCellEditableEditingCanceled val = B.Properties.constructObjectPropertyBool "editing-canceled" val

#if defined(ENABLE_OVERLOADING)
data CellEditableEditingCanceledPropertyInfo
instance AttrInfo CellEditableEditingCanceledPropertyInfo where
    type AttrAllowedOps CellEditableEditingCanceledPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellEditableEditingCanceledPropertyInfo = IsCellEditable
    type AttrSetTypeConstraint CellEditableEditingCanceledPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellEditableEditingCanceledPropertyInfo = (~) Bool
    type AttrTransferType CellEditableEditingCanceledPropertyInfo = Bool
    type AttrGetType CellEditableEditingCanceledPropertyInfo = Bool
    type AttrLabel CellEditableEditingCanceledPropertyInfo = "editing-canceled"
    type AttrOrigin CellEditableEditingCanceledPropertyInfo = CellEditable
    attrGet = getCellEditableEditingCanceled
    attrSet = setCellEditableEditingCanceled
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellEditableEditingCanceled
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellEditable
type instance O.AttributeList CellEditable = CellEditableAttributeList
type CellEditableAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editingCanceled", CellEditableEditingCanceledPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellEditableEditingCanceled :: AttrLabelProxy "editingCanceled"
cellEditableEditingCanceled = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveCellEditableMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellEditableMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveCellEditableMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveCellEditableMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCellEditableMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveCellEditableMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveCellEditableMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveCellEditableMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveCellEditableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellEditableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellEditableMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveCellEditableMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveCellEditableMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveCellEditableMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveCellEditableMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveCellEditableMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCellEditableMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveCellEditableMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveCellEditableMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCellEditableMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCellEditableMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCellEditableMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveCellEditableMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveCellEditableMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveCellEditableMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveCellEditableMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveCellEditableMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveCellEditableMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveCellEditableMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveCellEditableMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveCellEditableMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveCellEditableMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveCellEditableMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveCellEditableMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveCellEditableMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveCellEditableMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveCellEditableMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveCellEditableMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveCellEditableMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveCellEditableMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveCellEditableMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveCellEditableMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveCellEditableMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveCellEditableMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveCellEditableMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveCellEditableMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveCellEditableMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveCellEditableMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveCellEditableMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveCellEditableMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveCellEditableMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveCellEditableMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveCellEditableMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveCellEditableMethod "editingDone" o = CellEditableEditingDoneMethodInfo
    ResolveCellEditableMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveCellEditableMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveCellEditableMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveCellEditableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellEditableMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveCellEditableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellEditableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellEditableMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveCellEditableMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveCellEditableMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveCellEditableMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveCellEditableMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveCellEditableMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveCellEditableMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveCellEditableMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveCellEditableMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveCellEditableMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveCellEditableMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveCellEditableMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveCellEditableMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveCellEditableMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveCellEditableMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveCellEditableMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveCellEditableMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveCellEditableMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveCellEditableMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveCellEditableMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveCellEditableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellEditableMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveCellEditableMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveCellEditableMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveCellEditableMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveCellEditableMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveCellEditableMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveCellEditableMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveCellEditableMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveCellEditableMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveCellEditableMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveCellEditableMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveCellEditableMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveCellEditableMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveCellEditableMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveCellEditableMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveCellEditableMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveCellEditableMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveCellEditableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellEditableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellEditableMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveCellEditableMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveCellEditableMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveCellEditableMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveCellEditableMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveCellEditableMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCellEditableMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveCellEditableMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveCellEditableMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveCellEditableMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveCellEditableMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveCellEditableMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveCellEditableMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveCellEditableMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveCellEditableMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveCellEditableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellEditableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellEditableMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveCellEditableMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveCellEditableMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveCellEditableMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveCellEditableMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveCellEditableMethod "removeWidget" o = CellEditableRemoveWidgetMethodInfo
    ResolveCellEditableMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveCellEditableMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveCellEditableMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveCellEditableMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveCellEditableMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveCellEditableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellEditableMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveCellEditableMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveCellEditableMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveCellEditableMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveCellEditableMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveCellEditableMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveCellEditableMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveCellEditableMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveCellEditableMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveCellEditableMethod "startEditing" o = CellEditableStartEditingMethodInfo
    ResolveCellEditableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellEditableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellEditableMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveCellEditableMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveCellEditableMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveCellEditableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellEditableMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveCellEditableMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveCellEditableMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveCellEditableMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveCellEditableMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveCellEditableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellEditableMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveCellEditableMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveCellEditableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellEditableMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveCellEditableMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveCellEditableMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveCellEditableMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveCellEditableMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveCellEditableMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveCellEditableMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveCellEditableMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveCellEditableMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveCellEditableMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveCellEditableMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveCellEditableMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveCellEditableMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveCellEditableMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveCellEditableMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveCellEditableMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveCellEditableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellEditableMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveCellEditableMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveCellEditableMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveCellEditableMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveCellEditableMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveCellEditableMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveCellEditableMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveCellEditableMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveCellEditableMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveCellEditableMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveCellEditableMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveCellEditableMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveCellEditableMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveCellEditableMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveCellEditableMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveCellEditableMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCellEditableMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveCellEditableMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveCellEditableMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveCellEditableMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveCellEditableMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveCellEditableMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveCellEditableMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveCellEditableMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveCellEditableMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveCellEditableMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveCellEditableMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveCellEditableMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveCellEditableMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveCellEditableMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveCellEditableMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveCellEditableMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveCellEditableMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveCellEditableMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveCellEditableMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveCellEditableMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveCellEditableMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveCellEditableMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveCellEditableMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveCellEditableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellEditableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellEditableMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveCellEditableMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveCellEditableMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveCellEditableMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveCellEditableMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveCellEditableMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveCellEditableMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveCellEditableMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveCellEditableMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveCellEditableMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveCellEditableMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveCellEditableMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveCellEditableMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveCellEditableMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveCellEditableMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveCellEditableMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveCellEditableMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveCellEditableMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveCellEditableMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveCellEditableMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveCellEditableMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveCellEditableMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveCellEditableMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveCellEditableMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveCellEditableMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveCellEditableMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveCellEditableMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveCellEditableMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveCellEditableMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveCellEditableMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveCellEditableMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCellEditableMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveCellEditableMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveCellEditableMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveCellEditableMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveCellEditableMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveCellEditableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellEditableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellEditableMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveCellEditableMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveCellEditableMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveCellEditableMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveCellEditableMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveCellEditableMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveCellEditableMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveCellEditableMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveCellEditableMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveCellEditableMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveCellEditableMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveCellEditableMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveCellEditableMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveCellEditableMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveCellEditableMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveCellEditableMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveCellEditableMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveCellEditableMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveCellEditableMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveCellEditableMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveCellEditableMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveCellEditableMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveCellEditableMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveCellEditableMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveCellEditableMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveCellEditableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellEditableMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveCellEditableMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveCellEditableMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveCellEditableMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveCellEditableMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveCellEditableMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveCellEditableMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveCellEditableMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveCellEditableMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveCellEditableMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveCellEditableMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveCellEditableMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveCellEditableMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveCellEditableMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveCellEditableMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveCellEditableMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveCellEditableMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveCellEditableMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveCellEditableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellEditableMethod t CellEditable, O.MethodInfo info CellEditable p) => OL.IsLabel t (CellEditable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method CellEditable::editing_done
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellEditable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkCellEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_editable_editing_done" gtk_cell_editable_editing_done :: 
    Ptr CellEditable ->                     -- cell_editable : TInterface (Name {namespace = "Gtk", name = "CellEditable"})
    IO ()

-- | Emits the [editingDone]("GI.Gtk.Interfaces.CellEditable#signal:editingDone") signal.
cellEditableEditingDone ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellEditable a) =>
    a
    -- ^ /@cellEditable@/: A t'GI.Gtk.Interfaces.CellEditable.CellEditable'
    -> m ()
cellEditableEditingDone cellEditable = liftIO $ do
    cellEditable' <- unsafeManagedPtrCastPtr cellEditable
    gtk_cell_editable_editing_done cellEditable'
    touchManagedPtr cellEditable
    return ()

#if defined(ENABLE_OVERLOADING)
data CellEditableEditingDoneMethodInfo
instance (signature ~ (m ()), MonadIO m, IsCellEditable a) => O.MethodInfo CellEditableEditingDoneMethodInfo a signature where
    overloadedMethod = cellEditableEditingDone

#endif

-- method CellEditable::remove_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellEditable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkCellEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_editable_remove_widget" gtk_cell_editable_remove_widget :: 
    Ptr CellEditable ->                     -- cell_editable : TInterface (Name {namespace = "Gtk", name = "CellEditable"})
    IO ()

-- | Emits the [removeWidget]("GI.Gtk.Interfaces.CellEditable#signal:removeWidget") signal.
cellEditableRemoveWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellEditable a) =>
    a
    -- ^ /@cellEditable@/: A t'GI.Gtk.Interfaces.CellEditable.CellEditable'
    -> m ()
cellEditableRemoveWidget cellEditable = liftIO $ do
    cellEditable' <- unsafeManagedPtrCastPtr cellEditable
    gtk_cell_editable_remove_widget cellEditable'
    touchManagedPtr cellEditable
    return ()

#if defined(ENABLE_OVERLOADING)
data CellEditableRemoveWidgetMethodInfo
instance (signature ~ (m ()), MonadIO m, IsCellEditable a) => O.MethodInfo CellEditableRemoveWidgetMethodInfo a signature where
    overloadedMethod = cellEditableRemoveWidget

#endif

-- method CellEditable::start_editing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellEditable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkCellEditable" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The #GdkEvent that began the editing process, or\n  %NULL if editing was initiated programmatically"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_editable_start_editing" gtk_cell_editable_start_editing :: 
    Ptr CellEditable ->                     -- cell_editable : TInterface (Name {namespace = "Gtk", name = "CellEditable"})
    Ptr Gdk.Event.Event ->                  -- event : TInterface (Name {namespace = "Gdk", name = "Event"})
    IO ()

-- | Begins editing on a /@cellEditable@/.
-- 
-- The t'GI.Gtk.Objects.CellRenderer.CellRenderer' for the cell creates and returns a t'GI.Gtk.Interfaces.CellEditable.CellEditable' from
-- 'GI.Gtk.Objects.CellRenderer.cellRendererStartEditing', configured for the t'GI.Gtk.Objects.CellRenderer.CellRenderer' type.
-- 
-- 'GI.Gtk.Interfaces.CellEditable.cellEditableStartEditing' can then set up /@cellEditable@/ suitably for
-- editing a cell, e.g. making the Esc key emit [editingDone]("GI.Gtk.Interfaces.CellEditable#signal:editingDone").
-- 
-- Note that the /@cellEditable@/ is created on-demand for the current edit; its
-- lifetime is temporary and does not persist across other edits and\/or cells.
cellEditableStartEditing ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellEditable a) =>
    a
    -- ^ /@cellEditable@/: A t'GI.Gtk.Interfaces.CellEditable.CellEditable'
    -> Maybe (Gdk.Event.Event)
    -- ^ /@event@/: The t'GI.Gdk.Unions.Event.Event' that began the editing process, or
    --   'P.Nothing' if editing was initiated programmatically
    -> m ()
cellEditableStartEditing cellEditable event = liftIO $ do
    cellEditable' <- unsafeManagedPtrCastPtr cellEditable
    maybeEvent <- case event of
        Nothing -> return nullPtr
        Just jEvent -> do
            jEvent' <- unsafeManagedPtrGetPtr jEvent
            return jEvent'
    gtk_cell_editable_start_editing cellEditable' maybeEvent
    touchManagedPtr cellEditable
    whenJust event touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CellEditableStartEditingMethodInfo
instance (signature ~ (Maybe (Gdk.Event.Event) -> m ()), MonadIO m, IsCellEditable a) => O.MethodInfo CellEditableStartEditingMethodInfo a signature where
    overloadedMethod = cellEditableStartEditing

#endif

