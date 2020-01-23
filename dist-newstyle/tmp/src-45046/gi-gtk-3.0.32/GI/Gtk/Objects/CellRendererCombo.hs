{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo' renders text in a cell like t'GI.Gtk.Objects.CellRendererText.CellRendererText' from
-- which it is derived. But while t'GI.Gtk.Objects.CellRendererText.CellRendererText' offers a simple entry to
-- edit the text, t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo' offers a t'GI.Gtk.Objects.ComboBox.ComboBox'
-- widget to edit the text. The values to display in the combo box are taken from
-- the tree model specified in the t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo':@/model/@ property.
-- 
-- The combo cell renderer takes care of adding a text cell renderer to the combo
-- box and sets it to display the column specified by its
-- t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo':@/text-column/@ property. Further properties of the combo box
-- can be set in a handler for the [editingStarted]("GI.Gtk.Objects.CellRenderer#signal:editingStarted") signal.
-- 
-- The t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo' cell renderer was added in GTK+ 2.6.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererCombo
    ( 

-- * Exported types
    CellRendererCombo(..)                   ,
    IsCellRendererCombo                     ,
    toCellRendererCombo                     ,
    noCellRendererCombo                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererComboMethod          ,
#endif


-- ** new #method:new#

    cellRendererComboNew                    ,




 -- * Properties
-- ** hasEntry #attr:hasEntry#
-- | If 'P.True', the cell renderer will include an entry and allow to enter
-- values other than the ones in the popup list.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    CellRendererComboHasEntryPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererComboHasEntry               ,
#endif
    constructCellRendererComboHasEntry      ,
    getCellRendererComboHasEntry            ,
    setCellRendererComboHasEntry            ,


-- ** model #attr:model#
-- | Holds a tree model containing the possible values for the combo box.
-- Use the text_column property to specify the column holding the values.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    CellRendererComboModelPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererComboModel                  ,
#endif
    clearCellRendererComboModel             ,
    constructCellRendererComboModel         ,
    getCellRendererComboModel               ,
    setCellRendererComboModel               ,


-- ** textColumn #attr:textColumn#
-- | Specifies the model column which holds the possible values for the
-- combo box.
-- 
-- Note that this refers to the model specified in the model property,
-- not the model backing the tree view to which
-- this cell renderer is attached.
-- 
-- t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo' automatically adds a text cell renderer for
-- this column to its combo box.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    CellRendererComboTextColumnPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererComboTextColumn             ,
#endif
    constructCellRendererComboTextColumn    ,
    getCellRendererComboTextColumn          ,
    setCellRendererComboTextColumn          ,




 -- * Signals
-- ** changed #signal:changed#

    C_CellRendererComboChangedCallback      ,
    CellRendererComboChangedCallback        ,
#if defined(ENABLE_OVERLOADING)
    CellRendererComboChangedSignalInfo      ,
#endif
    afterCellRendererComboChanged           ,
    genClosure_CellRendererComboChanged     ,
    mk_CellRendererComboChangedCallback     ,
    noCellRendererComboChangedCallback      ,
    onCellRendererComboChanged              ,
    wrap_CellRendererComboChangedCallback   ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRendererText as Gtk.CellRendererText
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreeIter as Gtk.TreeIter

-- | Memory-managed wrapper type.
newtype CellRendererCombo = CellRendererCombo (ManagedPtr CellRendererCombo)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_combo_get_type"
    c_gtk_cell_renderer_combo_get_type :: IO GType

instance GObject CellRendererCombo where
    gobjectType = c_gtk_cell_renderer_combo_get_type
    

-- | Convert 'CellRendererCombo' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererCombo where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_combo_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererCombo)
        B.ManagedPtr.newObject CellRendererCombo ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererCombo`, for instance with `toCellRendererCombo`.
class (GObject o, O.IsDescendantOf CellRendererCombo o) => IsCellRendererCombo o
instance (GObject o, O.IsDescendantOf CellRendererCombo o) => IsCellRendererCombo o

instance O.HasParentTypes CellRendererCombo
type instance O.ParentTypes CellRendererCombo = '[Gtk.CellRendererText.CellRendererText, Gtk.CellRenderer.CellRenderer, GObject.Object.Object]

-- | Cast to `CellRendererCombo`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererCombo :: (MonadIO m, IsCellRendererCombo o) => o -> m CellRendererCombo
toCellRendererCombo = liftIO . unsafeCastTo CellRendererCombo

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererCombo`.
noCellRendererCombo :: Maybe CellRendererCombo
noCellRendererCombo = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererComboMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererComboMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererComboMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererComboMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererComboMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererComboMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererComboMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererComboMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererComboMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererComboMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererComboMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererComboMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererComboMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererComboMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererComboMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererComboMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererComboMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererComboMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererComboMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererComboMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererComboMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererComboMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererComboMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererComboMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererComboMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererComboMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererComboMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererComboMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererComboMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererComboMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererComboMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererComboMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererComboMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererComboMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererComboMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererComboMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererComboMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererComboMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererComboMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererComboMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererComboMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererComboMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererComboMethod "setFixedHeightFromFont" o = Gtk.CellRendererText.CellRendererTextSetFixedHeightFromFontMethodInfo
    ResolveCellRendererComboMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererComboMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererComboMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererComboMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererComboMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererComboMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererComboMethod t CellRendererCombo, O.MethodInfo info CellRendererCombo p) => OL.IsLabel t (CellRendererCombo -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal CellRendererCombo::changed
-- | This signal is emitted each time after the user selected an item in
-- the combo box, either by using the mouse or the arrow keys.  Contrary
-- to GtkComboBox, GtkCellRendererCombo[changed](#signal:changed) is not emitted for
-- changes made to a selected item in the entry.  The argument /@newIter@/
-- corresponds to the newly selected item in the combo box and it is relative
-- to the GtkTreeModel set via the model property on GtkCellRendererCombo.
-- 
-- Note that as soon as you change the model displayed in the tree view,
-- the tree view will immediately cease the editing operating.  This
-- means that you most probably want to refrain from changing the model
-- until the combo cell renderer emits the edited or editing_canceled signal.
-- 
-- /Since: 2.14/
type CellRendererComboChangedCallback =
    T.Text
    -- ^ /@pathString@/: a string of the path identifying the edited cell
    --               (relative to the tree view model)
    -> Gtk.TreeIter.TreeIter
    -- ^ /@newIter@/: the new iter selected in the combo box
    --            (relative to the combo box model)
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CellRendererComboChangedCallback`@.
noCellRendererComboChangedCallback :: Maybe CellRendererComboChangedCallback
noCellRendererComboChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CellRendererComboChangedCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr Gtk.TreeIter.TreeIter ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CellRendererComboChangedCallback`.
foreign import ccall "wrapper"
    mk_CellRendererComboChangedCallback :: C_CellRendererComboChangedCallback -> IO (FunPtr C_CellRendererComboChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CellRendererComboChanged :: MonadIO m => CellRendererComboChangedCallback -> m (GClosure C_CellRendererComboChangedCallback)
genClosure_CellRendererComboChanged cb = liftIO $ do
    let cb' = wrap_CellRendererComboChangedCallback cb
    mk_CellRendererComboChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CellRendererComboChangedCallback` into a `C_CellRendererComboChangedCallback`.
wrap_CellRendererComboChangedCallback ::
    CellRendererComboChangedCallback ->
    C_CellRendererComboChangedCallback
wrap_CellRendererComboChangedCallback _cb _ pathString newIter _ = do
    pathString' <- cstringToText pathString
    B.ManagedPtr.withTransient Gtk.TreeIter.TreeIter newIter $ \newIter' -> do
        _cb  pathString' newIter'


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cellRendererCombo #changed callback
-- @
-- 
-- 
onCellRendererComboChanged :: (IsCellRendererCombo a, MonadIO m) => a -> CellRendererComboChangedCallback -> m SignalHandlerId
onCellRendererComboChanged obj cb = liftIO $ do
    let cb' = wrap_CellRendererComboChangedCallback cb
    cb'' <- mk_CellRendererComboChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cellRendererCombo #changed callback
-- @
-- 
-- 
afterCellRendererComboChanged :: (IsCellRendererCombo a, MonadIO m) => a -> CellRendererComboChangedCallback -> m SignalHandlerId
afterCellRendererComboChanged obj cb = liftIO $ do
    let cb' = wrap_CellRendererComboChangedCallback cb
    cb'' <- mk_CellRendererComboChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CellRendererComboChangedSignalInfo
instance SignalInfo CellRendererComboChangedSignalInfo where
    type HaskellCallbackType CellRendererComboChangedSignalInfo = CellRendererComboChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CellRendererComboChangedCallback cb
        cb'' <- mk_CellRendererComboChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- VVV Prop "has-entry"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@has-entry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererCombo #hasEntry
-- @
getCellRendererComboHasEntry :: (MonadIO m, IsCellRendererCombo o) => o -> m Bool
getCellRendererComboHasEntry obj = liftIO $ B.Properties.getObjectPropertyBool obj "has-entry"

-- | Set the value of the “@has-entry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererCombo [ #hasEntry 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererComboHasEntry :: (MonadIO m, IsCellRendererCombo o) => o -> Bool -> m ()
setCellRendererComboHasEntry obj val = liftIO $ B.Properties.setObjectPropertyBool obj "has-entry" val

-- | Construct a `GValueConstruct` with valid value for the “@has-entry@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererComboHasEntry :: (IsCellRendererCombo o) => Bool -> IO (GValueConstruct o)
constructCellRendererComboHasEntry val = B.Properties.constructObjectPropertyBool "has-entry" val

#if defined(ENABLE_OVERLOADING)
data CellRendererComboHasEntryPropertyInfo
instance AttrInfo CellRendererComboHasEntryPropertyInfo where
    type AttrAllowedOps CellRendererComboHasEntryPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererComboHasEntryPropertyInfo = IsCellRendererCombo
    type AttrSetTypeConstraint CellRendererComboHasEntryPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererComboHasEntryPropertyInfo = (~) Bool
    type AttrTransferType CellRendererComboHasEntryPropertyInfo = Bool
    type AttrGetType CellRendererComboHasEntryPropertyInfo = Bool
    type AttrLabel CellRendererComboHasEntryPropertyInfo = "has-entry"
    type AttrOrigin CellRendererComboHasEntryPropertyInfo = CellRendererCombo
    attrGet = getCellRendererComboHasEntry
    attrSet = setCellRendererComboHasEntry
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererComboHasEntry
    attrClear = undefined
#endif

-- VVV Prop "model"
   -- Type: TInterface (Name {namespace = "Gtk", name = "TreeModel"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererCombo #model
-- @
getCellRendererComboModel :: (MonadIO m, IsCellRendererCombo o) => o -> m (Maybe Gtk.TreeModel.TreeModel)
getCellRendererComboModel obj = liftIO $ B.Properties.getObjectPropertyObject obj "model" Gtk.TreeModel.TreeModel

-- | Set the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererCombo [ #model 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererComboModel :: (MonadIO m, IsCellRendererCombo o, Gtk.TreeModel.IsTreeModel a) => o -> a -> m ()
setCellRendererComboModel obj val = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererComboModel :: (IsCellRendererCombo o, Gtk.TreeModel.IsTreeModel a) => a -> IO (GValueConstruct o)
constructCellRendererComboModel val = B.Properties.constructObjectPropertyObject "model" (Just val)

-- | Set the value of the “@model@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #model
-- @
clearCellRendererComboModel :: (MonadIO m, IsCellRendererCombo o) => o -> m ()
clearCellRendererComboModel obj = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Nothing :: Maybe Gtk.TreeModel.TreeModel)

#if defined(ENABLE_OVERLOADING)
data CellRendererComboModelPropertyInfo
instance AttrInfo CellRendererComboModelPropertyInfo where
    type AttrAllowedOps CellRendererComboModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererComboModelPropertyInfo = IsCellRendererCombo
    type AttrSetTypeConstraint CellRendererComboModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferTypeConstraint CellRendererComboModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferType CellRendererComboModelPropertyInfo = Gtk.TreeModel.TreeModel
    type AttrGetType CellRendererComboModelPropertyInfo = (Maybe Gtk.TreeModel.TreeModel)
    type AttrLabel CellRendererComboModelPropertyInfo = "model"
    type AttrOrigin CellRendererComboModelPropertyInfo = CellRendererCombo
    attrGet = getCellRendererComboModel
    attrSet = setCellRendererComboModel
    attrTransfer _ v = do
        unsafeCastTo Gtk.TreeModel.TreeModel v
    attrConstruct = constructCellRendererComboModel
    attrClear = clearCellRendererComboModel
#endif

-- VVV Prop "text-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererCombo #textColumn
-- @
getCellRendererComboTextColumn :: (MonadIO m, IsCellRendererCombo o) => o -> m Int32
getCellRendererComboTextColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "text-column"

-- | Set the value of the “@text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererCombo [ #textColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererComboTextColumn :: (MonadIO m, IsCellRendererCombo o) => o -> Int32 -> m ()
setCellRendererComboTextColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "text-column" val

-- | Construct a `GValueConstruct` with valid value for the “@text-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererComboTextColumn :: (IsCellRendererCombo o) => Int32 -> IO (GValueConstruct o)
constructCellRendererComboTextColumn val = B.Properties.constructObjectPropertyInt32 "text-column" val

#if defined(ENABLE_OVERLOADING)
data CellRendererComboTextColumnPropertyInfo
instance AttrInfo CellRendererComboTextColumnPropertyInfo where
    type AttrAllowedOps CellRendererComboTextColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererComboTextColumnPropertyInfo = IsCellRendererCombo
    type AttrSetTypeConstraint CellRendererComboTextColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CellRendererComboTextColumnPropertyInfo = (~) Int32
    type AttrTransferType CellRendererComboTextColumnPropertyInfo = Int32
    type AttrGetType CellRendererComboTextColumnPropertyInfo = Int32
    type AttrLabel CellRendererComboTextColumnPropertyInfo = "text-column"
    type AttrOrigin CellRendererComboTextColumnPropertyInfo = CellRendererCombo
    attrGet = getCellRendererComboTextColumn
    attrSet = setCellRendererComboTextColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererComboTextColumn
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererCombo
type instance O.AttributeList CellRendererCombo = CellRendererComboAttributeList
type CellRendererComboAttributeList = ('[ '("alignSet", Gtk.CellRendererText.CellRendererTextAlignSetPropertyInfo), '("alignment", Gtk.CellRendererText.CellRendererTextAlignmentPropertyInfo), '("attributes", Gtk.CellRendererText.CellRendererTextAttributesPropertyInfo), '("background", Gtk.CellRendererText.CellRendererTextBackgroundPropertyInfo), '("backgroundGdk", Gtk.CellRendererText.CellRendererTextBackgroundGdkPropertyInfo), '("backgroundRgba", Gtk.CellRendererText.CellRendererTextBackgroundRgbaPropertyInfo), '("backgroundSet", Gtk.CellRendererText.CellRendererTextBackgroundSetPropertyInfo), '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("editable", Gtk.CellRendererText.CellRendererTextEditablePropertyInfo), '("editableSet", Gtk.CellRendererText.CellRendererTextEditableSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("ellipsize", Gtk.CellRendererText.CellRendererTextEllipsizePropertyInfo), '("ellipsizeSet", Gtk.CellRendererText.CellRendererTextEllipsizeSetPropertyInfo), '("family", Gtk.CellRendererText.CellRendererTextFamilyPropertyInfo), '("familySet", Gtk.CellRendererText.CellRendererTextFamilySetPropertyInfo), '("font", Gtk.CellRendererText.CellRendererTextFontPropertyInfo), '("fontDesc", Gtk.CellRendererText.CellRendererTextFontDescPropertyInfo), '("foreground", Gtk.CellRendererText.CellRendererTextForegroundPropertyInfo), '("foregroundGdk", Gtk.CellRendererText.CellRendererTextForegroundGdkPropertyInfo), '("foregroundRgba", Gtk.CellRendererText.CellRendererTextForegroundRgbaPropertyInfo), '("foregroundSet", Gtk.CellRendererText.CellRendererTextForegroundSetPropertyInfo), '("hasEntry", CellRendererComboHasEntryPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("language", Gtk.CellRendererText.CellRendererTextLanguagePropertyInfo), '("languageSet", Gtk.CellRendererText.CellRendererTextLanguageSetPropertyInfo), '("markup", Gtk.CellRendererText.CellRendererTextMarkupPropertyInfo), '("maxWidthChars", Gtk.CellRendererText.CellRendererTextMaxWidthCharsPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("model", CellRendererComboModelPropertyInfo), '("placeholderText", Gtk.CellRendererText.CellRendererTextPlaceholderTextPropertyInfo), '("rise", Gtk.CellRendererText.CellRendererTextRisePropertyInfo), '("riseSet", Gtk.CellRendererText.CellRendererTextRiseSetPropertyInfo), '("scale", Gtk.CellRendererText.CellRendererTextScalePropertyInfo), '("scaleSet", Gtk.CellRendererText.CellRendererTextScaleSetPropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("singleParagraphMode", Gtk.CellRendererText.CellRendererTextSingleParagraphModePropertyInfo), '("size", Gtk.CellRendererText.CellRendererTextSizePropertyInfo), '("sizePoints", Gtk.CellRendererText.CellRendererTextSizePointsPropertyInfo), '("sizeSet", Gtk.CellRendererText.CellRendererTextSizeSetPropertyInfo), '("stretch", Gtk.CellRendererText.CellRendererTextStretchPropertyInfo), '("stretchSet", Gtk.CellRendererText.CellRendererTextStretchSetPropertyInfo), '("strikethrough", Gtk.CellRendererText.CellRendererTextStrikethroughPropertyInfo), '("strikethroughSet", Gtk.CellRendererText.CellRendererTextStrikethroughSetPropertyInfo), '("style", Gtk.CellRendererText.CellRendererTextStylePropertyInfo), '("styleSet", Gtk.CellRendererText.CellRendererTextStyleSetPropertyInfo), '("text", Gtk.CellRendererText.CellRendererTextTextPropertyInfo), '("textColumn", CellRendererComboTextColumnPropertyInfo), '("underline", Gtk.CellRendererText.CellRendererTextUnderlinePropertyInfo), '("underlineSet", Gtk.CellRendererText.CellRendererTextUnderlineSetPropertyInfo), '("variant", Gtk.CellRendererText.CellRendererTextVariantPropertyInfo), '("variantSet", Gtk.CellRendererText.CellRendererTextVariantSetPropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("weight", Gtk.CellRendererText.CellRendererTextWeightPropertyInfo), '("weightSet", Gtk.CellRendererText.CellRendererTextWeightSetPropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("widthChars", Gtk.CellRendererText.CellRendererTextWidthCharsPropertyInfo), '("wrapMode", Gtk.CellRendererText.CellRendererTextWrapModePropertyInfo), '("wrapWidth", Gtk.CellRendererText.CellRendererTextWrapWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererComboHasEntry :: AttrLabelProxy "hasEntry"
cellRendererComboHasEntry = AttrLabelProxy

cellRendererComboModel :: AttrLabelProxy "model"
cellRendererComboModel = AttrLabelProxy

cellRendererComboTextColumn :: AttrLabelProxy "textColumn"
cellRendererComboTextColumn = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererCombo = CellRendererComboSignalList
type CellRendererComboSignalList = ('[ '("changed", CellRendererComboChangedSignalInfo), '("edited", Gtk.CellRendererText.CellRendererTextEditedSignalInfo), '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererCombo::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererCombo" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_combo_new" gtk_cell_renderer_combo_new :: 
    IO (Ptr CellRendererCombo)

-- | Creates a new t'GI.Gtk.Objects.CellRendererCombo.CellRendererCombo'.
-- Adjust how text is drawn using object properties.
-- Object properties can be set globally (with @/g_object_set()/@).
-- Also, with t'GI.Gtk.Objects.TreeViewColumn.TreeViewColumn', you can bind a property to a value
-- in a t'GI.Gtk.Interfaces.TreeModel.TreeModel'. For example, you can bind the “text” property
-- on the cell renderer to a string value in the model, thus rendering
-- a different string in each row of the t'GI.Gtk.Objects.TreeView.TreeView'.
-- 
-- /Since: 2.6/
cellRendererComboNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererCombo
    -- ^ __Returns:__ the new cell renderer
cellRendererComboNew  = liftIO $ do
    result <- gtk_cell_renderer_combo_new
    checkUnexpectedReturnNULL "cellRendererComboNew" result
    result' <- (newObject CellRendererCombo) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

