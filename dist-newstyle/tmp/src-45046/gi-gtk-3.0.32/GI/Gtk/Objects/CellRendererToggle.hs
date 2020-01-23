{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle' renders a toggle button in a cell. The
-- button is drawn as a radio or a checkbutton, depending on the
-- t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle':@/radio/@ property.
-- When activated, it emits the [toggled]("GI.Gtk.Objects.CellRendererToggle#signal:toggled") signal.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererToggle
    ( 

-- * Exported types
    CellRendererToggle(..)                  ,
    IsCellRendererToggle                    ,
    toCellRendererToggle                    ,
    noCellRendererToggle                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererToggleMethod         ,
#endif


-- ** getActivatable #method:getActivatable#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleGetActivatableMethodInfo,
#endif
    cellRendererToggleGetActivatable        ,


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleGetActiveMethodInfo   ,
#endif
    cellRendererToggleGetActive             ,


-- ** getRadio #method:getRadio#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleGetRadioMethodInfo    ,
#endif
    cellRendererToggleGetRadio              ,


-- ** new #method:new#

    cellRendererToggleNew                   ,


-- ** setActivatable #method:setActivatable#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleSetActivatableMethodInfo,
#endif
    cellRendererToggleSetActivatable        ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleSetActiveMethodInfo   ,
#endif
    cellRendererToggleSetActive             ,


-- ** setRadio #method:setRadio#

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleSetRadioMethodInfo    ,
#endif
    cellRendererToggleSetRadio              ,




 -- * Properties
-- ** activatable #attr:activatable#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleActivatablePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererToggleActivatable           ,
#endif
    constructCellRendererToggleActivatable  ,
    getCellRendererToggleActivatable        ,
    setCellRendererToggleActivatable        ,


-- ** active #attr:active#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleActivePropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererToggleActive                ,
#endif
    constructCellRendererToggleActive       ,
    getCellRendererToggleActive             ,
    setCellRendererToggleActive             ,


-- ** inconsistent #attr:inconsistent#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleInconsistentPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererToggleInconsistent          ,
#endif
    constructCellRendererToggleInconsistent ,
    getCellRendererToggleInconsistent       ,
    setCellRendererToggleInconsistent       ,


-- ** indicatorSize #attr:indicatorSize#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleIndicatorSizePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererToggleIndicatorSize         ,
#endif
    constructCellRendererToggleIndicatorSize,
    getCellRendererToggleIndicatorSize      ,
    setCellRendererToggleIndicatorSize      ,


-- ** radio #attr:radio#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererToggleRadioPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererToggleRadio                 ,
#endif
    constructCellRendererToggleRadio        ,
    getCellRendererToggleRadio              ,
    setCellRendererToggleRadio              ,




 -- * Signals
-- ** toggled #signal:toggled#

    C_CellRendererToggleToggledCallback     ,
    CellRendererToggleToggledCallback       ,
#if defined(ENABLE_OVERLOADING)
    CellRendererToggleToggledSignalInfo     ,
#endif
    afterCellRendererToggleToggled          ,
    genClosure_CellRendererToggleToggled    ,
    mk_CellRendererToggleToggledCallback    ,
    noCellRendererToggleToggledCallback     ,
    onCellRendererToggleToggled             ,
    wrap_CellRendererToggleToggledCallback  ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype CellRendererToggle = CellRendererToggle (ManagedPtr CellRendererToggle)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_toggle_get_type"
    c_gtk_cell_renderer_toggle_get_type :: IO GType

instance GObject CellRendererToggle where
    gobjectType = c_gtk_cell_renderer_toggle_get_type
    

-- | Convert 'CellRendererToggle' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererToggle where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_toggle_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererToggle)
        B.ManagedPtr.newObject CellRendererToggle ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererToggle`, for instance with `toCellRendererToggle`.
class (GObject o, O.IsDescendantOf CellRendererToggle o) => IsCellRendererToggle o
instance (GObject o, O.IsDescendantOf CellRendererToggle o) => IsCellRendererToggle o

instance O.HasParentTypes CellRendererToggle
type instance O.ParentTypes CellRendererToggle = '[Gtk.CellRenderer.CellRenderer, GObject.Object.Object]

-- | Cast to `CellRendererToggle`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererToggle :: (MonadIO m, IsCellRendererToggle o) => o -> m CellRendererToggle
toCellRendererToggle = liftIO . unsafeCastTo CellRendererToggle

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererToggle`.
noCellRendererToggle :: Maybe CellRendererToggle
noCellRendererToggle = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererToggleMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererToggleMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererToggleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererToggleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererToggleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererToggleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererToggleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererToggleMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererToggleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererToggleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererToggleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererToggleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererToggleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererToggleMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererToggleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererToggleMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererToggleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererToggleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererToggleMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererToggleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererToggleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererToggleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererToggleMethod "getActivatable" o = CellRendererToggleGetActivatableMethodInfo
    ResolveCellRendererToggleMethod "getActive" o = CellRendererToggleGetActiveMethodInfo
    ResolveCellRendererToggleMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererToggleMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererToggleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererToggleMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererToggleMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererToggleMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererToggleMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererToggleMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererToggleMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererToggleMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererToggleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererToggleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererToggleMethod "getRadio" o = CellRendererToggleGetRadioMethodInfo
    ResolveCellRendererToggleMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererToggleMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererToggleMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererToggleMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererToggleMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererToggleMethod "setActivatable" o = CellRendererToggleSetActivatableMethodInfo
    ResolveCellRendererToggleMethod "setActive" o = CellRendererToggleSetActiveMethodInfo
    ResolveCellRendererToggleMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererToggleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererToggleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererToggleMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererToggleMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererToggleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererToggleMethod "setRadio" o = CellRendererToggleSetRadioMethodInfo
    ResolveCellRendererToggleMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererToggleMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererToggleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererToggleMethod t CellRendererToggle, O.MethodInfo info CellRendererToggle p) => OL.IsLabel t (CellRendererToggle -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal CellRendererToggle::toggled
-- | The [toggled](#signal:toggled) signal is emitted when the cell is toggled.
-- 
-- It is the responsibility of the application to update the model
-- with the correct value to store at /@path@/.  Often this is simply the
-- opposite of the value currently stored at /@path@/.
type CellRendererToggleToggledCallback =
    T.Text
    -- ^ /@path@/: string representation of t'GI.Gtk.Structs.TreePath.TreePath' describing the
    --        event location
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CellRendererToggleToggledCallback`@.
noCellRendererToggleToggledCallback :: Maybe CellRendererToggleToggledCallback
noCellRendererToggleToggledCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CellRendererToggleToggledCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CellRendererToggleToggledCallback`.
foreign import ccall "wrapper"
    mk_CellRendererToggleToggledCallback :: C_CellRendererToggleToggledCallback -> IO (FunPtr C_CellRendererToggleToggledCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CellRendererToggleToggled :: MonadIO m => CellRendererToggleToggledCallback -> m (GClosure C_CellRendererToggleToggledCallback)
genClosure_CellRendererToggleToggled cb = liftIO $ do
    let cb' = wrap_CellRendererToggleToggledCallback cb
    mk_CellRendererToggleToggledCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CellRendererToggleToggledCallback` into a `C_CellRendererToggleToggledCallback`.
wrap_CellRendererToggleToggledCallback ::
    CellRendererToggleToggledCallback ->
    C_CellRendererToggleToggledCallback
wrap_CellRendererToggleToggledCallback _cb _ path _ = do
    path' <- cstringToText path
    _cb  path'


-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cellRendererToggle #toggled callback
-- @
-- 
-- 
onCellRendererToggleToggled :: (IsCellRendererToggle a, MonadIO m) => a -> CellRendererToggleToggledCallback -> m SignalHandlerId
onCellRendererToggleToggled obj cb = liftIO $ do
    let cb' = wrap_CellRendererToggleToggledCallback cb
    cb'' <- mk_CellRendererToggleToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cellRendererToggle #toggled callback
-- @
-- 
-- 
afterCellRendererToggleToggled :: (IsCellRendererToggle a, MonadIO m) => a -> CellRendererToggleToggledCallback -> m SignalHandlerId
afterCellRendererToggleToggled obj cb = liftIO $ do
    let cb' = wrap_CellRendererToggleToggledCallback cb
    cb'' <- mk_CellRendererToggleToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CellRendererToggleToggledSignalInfo
instance SignalInfo CellRendererToggleToggledSignalInfo where
    type HaskellCallbackType CellRendererToggleToggledSignalInfo = CellRendererToggleToggledCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CellRendererToggleToggledCallback cb
        cb'' <- mk_CellRendererToggleToggledCallback cb'
        connectSignalFunPtr obj "toggled" cb'' connectMode detail

#endif

-- VVV Prop "activatable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@activatable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererToggle #activatable
-- @
getCellRendererToggleActivatable :: (MonadIO m, IsCellRendererToggle o) => o -> m Bool
getCellRendererToggleActivatable obj = liftIO $ B.Properties.getObjectPropertyBool obj "activatable"

-- | Set the value of the “@activatable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererToggle [ #activatable 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererToggleActivatable :: (MonadIO m, IsCellRendererToggle o) => o -> Bool -> m ()
setCellRendererToggleActivatable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "activatable" val

-- | Construct a `GValueConstruct` with valid value for the “@activatable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererToggleActivatable :: (IsCellRendererToggle o) => Bool -> IO (GValueConstruct o)
constructCellRendererToggleActivatable val = B.Properties.constructObjectPropertyBool "activatable" val

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleActivatablePropertyInfo
instance AttrInfo CellRendererToggleActivatablePropertyInfo where
    type AttrAllowedOps CellRendererToggleActivatablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererToggleActivatablePropertyInfo = IsCellRendererToggle
    type AttrSetTypeConstraint CellRendererToggleActivatablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererToggleActivatablePropertyInfo = (~) Bool
    type AttrTransferType CellRendererToggleActivatablePropertyInfo = Bool
    type AttrGetType CellRendererToggleActivatablePropertyInfo = Bool
    type AttrLabel CellRendererToggleActivatablePropertyInfo = "activatable"
    type AttrOrigin CellRendererToggleActivatablePropertyInfo = CellRendererToggle
    attrGet = getCellRendererToggleActivatable
    attrSet = setCellRendererToggleActivatable
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererToggleActivatable
    attrClear = undefined
#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererToggle #active
-- @
getCellRendererToggleActive :: (MonadIO m, IsCellRendererToggle o) => o -> m Bool
getCellRendererToggleActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererToggle [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererToggleActive :: (MonadIO m, IsCellRendererToggle o) => o -> Bool -> m ()
setCellRendererToggleActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererToggleActive :: (IsCellRendererToggle o) => Bool -> IO (GValueConstruct o)
constructCellRendererToggleActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleActivePropertyInfo
instance AttrInfo CellRendererToggleActivePropertyInfo where
    type AttrAllowedOps CellRendererToggleActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererToggleActivePropertyInfo = IsCellRendererToggle
    type AttrSetTypeConstraint CellRendererToggleActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererToggleActivePropertyInfo = (~) Bool
    type AttrTransferType CellRendererToggleActivePropertyInfo = Bool
    type AttrGetType CellRendererToggleActivePropertyInfo = Bool
    type AttrLabel CellRendererToggleActivePropertyInfo = "active"
    type AttrOrigin CellRendererToggleActivePropertyInfo = CellRendererToggle
    attrGet = getCellRendererToggleActive
    attrSet = setCellRendererToggleActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererToggleActive
    attrClear = undefined
#endif

-- VVV Prop "inconsistent"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@inconsistent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererToggle #inconsistent
-- @
getCellRendererToggleInconsistent :: (MonadIO m, IsCellRendererToggle o) => o -> m Bool
getCellRendererToggleInconsistent obj = liftIO $ B.Properties.getObjectPropertyBool obj "inconsistent"

-- | Set the value of the “@inconsistent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererToggle [ #inconsistent 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererToggleInconsistent :: (MonadIO m, IsCellRendererToggle o) => o -> Bool -> m ()
setCellRendererToggleInconsistent obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inconsistent" val

-- | Construct a `GValueConstruct` with valid value for the “@inconsistent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererToggleInconsistent :: (IsCellRendererToggle o) => Bool -> IO (GValueConstruct o)
constructCellRendererToggleInconsistent val = B.Properties.constructObjectPropertyBool "inconsistent" val

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleInconsistentPropertyInfo
instance AttrInfo CellRendererToggleInconsistentPropertyInfo where
    type AttrAllowedOps CellRendererToggleInconsistentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererToggleInconsistentPropertyInfo = IsCellRendererToggle
    type AttrSetTypeConstraint CellRendererToggleInconsistentPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererToggleInconsistentPropertyInfo = (~) Bool
    type AttrTransferType CellRendererToggleInconsistentPropertyInfo = Bool
    type AttrGetType CellRendererToggleInconsistentPropertyInfo = Bool
    type AttrLabel CellRendererToggleInconsistentPropertyInfo = "inconsistent"
    type AttrOrigin CellRendererToggleInconsistentPropertyInfo = CellRendererToggle
    attrGet = getCellRendererToggleInconsistent
    attrSet = setCellRendererToggleInconsistent
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererToggleInconsistent
    attrClear = undefined
#endif

-- VVV Prop "indicator-size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@indicator-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererToggle #indicatorSize
-- @
getCellRendererToggleIndicatorSize :: (MonadIO m, IsCellRendererToggle o) => o -> m Int32
getCellRendererToggleIndicatorSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "indicator-size"

-- | Set the value of the “@indicator-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererToggle [ #indicatorSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererToggleIndicatorSize :: (MonadIO m, IsCellRendererToggle o) => o -> Int32 -> m ()
setCellRendererToggleIndicatorSize obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "indicator-size" val

-- | Construct a `GValueConstruct` with valid value for the “@indicator-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererToggleIndicatorSize :: (IsCellRendererToggle o) => Int32 -> IO (GValueConstruct o)
constructCellRendererToggleIndicatorSize val = B.Properties.constructObjectPropertyInt32 "indicator-size" val

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleIndicatorSizePropertyInfo
instance AttrInfo CellRendererToggleIndicatorSizePropertyInfo where
    type AttrAllowedOps CellRendererToggleIndicatorSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererToggleIndicatorSizePropertyInfo = IsCellRendererToggle
    type AttrSetTypeConstraint CellRendererToggleIndicatorSizePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CellRendererToggleIndicatorSizePropertyInfo = (~) Int32
    type AttrTransferType CellRendererToggleIndicatorSizePropertyInfo = Int32
    type AttrGetType CellRendererToggleIndicatorSizePropertyInfo = Int32
    type AttrLabel CellRendererToggleIndicatorSizePropertyInfo = "indicator-size"
    type AttrOrigin CellRendererToggleIndicatorSizePropertyInfo = CellRendererToggle
    attrGet = getCellRendererToggleIndicatorSize
    attrSet = setCellRendererToggleIndicatorSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererToggleIndicatorSize
    attrClear = undefined
#endif

-- VVV Prop "radio"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererToggle #radio
-- @
getCellRendererToggleRadio :: (MonadIO m, IsCellRendererToggle o) => o -> m Bool
getCellRendererToggleRadio obj = liftIO $ B.Properties.getObjectPropertyBool obj "radio"

-- | Set the value of the “@radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererToggle [ #radio 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererToggleRadio :: (MonadIO m, IsCellRendererToggle o) => o -> Bool -> m ()
setCellRendererToggleRadio obj val = liftIO $ B.Properties.setObjectPropertyBool obj "radio" val

-- | Construct a `GValueConstruct` with valid value for the “@radio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererToggleRadio :: (IsCellRendererToggle o) => Bool -> IO (GValueConstruct o)
constructCellRendererToggleRadio val = B.Properties.constructObjectPropertyBool "radio" val

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleRadioPropertyInfo
instance AttrInfo CellRendererToggleRadioPropertyInfo where
    type AttrAllowedOps CellRendererToggleRadioPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererToggleRadioPropertyInfo = IsCellRendererToggle
    type AttrSetTypeConstraint CellRendererToggleRadioPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererToggleRadioPropertyInfo = (~) Bool
    type AttrTransferType CellRendererToggleRadioPropertyInfo = Bool
    type AttrGetType CellRendererToggleRadioPropertyInfo = Bool
    type AttrLabel CellRendererToggleRadioPropertyInfo = "radio"
    type AttrOrigin CellRendererToggleRadioPropertyInfo = CellRendererToggle
    attrGet = getCellRendererToggleRadio
    attrSet = setCellRendererToggleRadio
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererToggleRadio
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererToggle
type instance O.AttributeList CellRendererToggle = CellRendererToggleAttributeList
type CellRendererToggleAttributeList = ('[ '("activatable", CellRendererToggleActivatablePropertyInfo), '("active", CellRendererToggleActivePropertyInfo), '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("inconsistent", CellRendererToggleInconsistentPropertyInfo), '("indicatorSize", CellRendererToggleIndicatorSizePropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("radio", CellRendererToggleRadioPropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererToggleActivatable :: AttrLabelProxy "activatable"
cellRendererToggleActivatable = AttrLabelProxy

cellRendererToggleActive :: AttrLabelProxy "active"
cellRendererToggleActive = AttrLabelProxy

cellRendererToggleInconsistent :: AttrLabelProxy "inconsistent"
cellRendererToggleInconsistent = AttrLabelProxy

cellRendererToggleIndicatorSize :: AttrLabelProxy "indicatorSize"
cellRendererToggleIndicatorSize = AttrLabelProxy

cellRendererToggleRadio :: AttrLabelProxy "radio"
cellRendererToggleRadio = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererToggle = CellRendererToggleSignalList
type CellRendererToggleSignalList = ('[ '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("toggled", CellRendererToggleToggledSignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererToggle::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererToggle" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_toggle_new" gtk_cell_renderer_toggle_new :: 
    IO (Ptr CellRendererToggle)

-- | Creates a new t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'. Adjust rendering
-- parameters using object properties. Object properties can be set
-- globally (with @/g_object_set()/@). Also, with t'GI.Gtk.Objects.TreeViewColumn.TreeViewColumn', you
-- can bind a property to a value in a t'GI.Gtk.Interfaces.TreeModel.TreeModel'. For example, you
-- can bind the “active” property on the cell renderer to a boolean value
-- in the model, thus causing the check button to reflect the state of
-- the model.
cellRendererToggleNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererToggle
    -- ^ __Returns:__ the new cell renderer
cellRendererToggleNew  = liftIO $ do
    result <- gtk_cell_renderer_toggle_new
    checkUnexpectedReturnNULL "cellRendererToggleNew" result
    result' <- (newObject CellRendererToggle) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellRendererToggle::get_activatable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_toggle_get_activatable" gtk_cell_renderer_toggle_get_activatable :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    IO CInt

-- | Returns whether the cell renderer is activatable. See
-- 'GI.Gtk.Objects.CellRendererToggle.cellRendererToggleSetActivatable'.
-- 
-- /Since: 2.18/
cellRendererToggleGetActivatable ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the cell renderer is activatable.
cellRendererToggleGetActivatable toggle = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    result <- gtk_cell_renderer_toggle_get_activatable toggle'
    let result' = (/= 0) result
    touchManagedPtr toggle
    return result'

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetActivatableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleGetActivatableMethodInfo a signature where
    overloadedMethod = cellRendererToggleGetActivatable

#endif

-- method CellRendererToggle::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_toggle_get_active" gtk_cell_renderer_toggle_get_active :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    IO CInt

-- | Returns whether the cell renderer is active. See
-- 'GI.Gtk.Objects.CellRendererToggle.cellRendererToggleSetActive'.
cellRendererToggleGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the cell renderer is active.
cellRendererToggleGetActive toggle = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    result <- gtk_cell_renderer_toggle_get_active toggle'
    let result' = (/= 0) result
    touchManagedPtr toggle
    return result'

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleGetActiveMethodInfo a signature where
    overloadedMethod = cellRendererToggleGetActive

#endif

-- method CellRendererToggle::get_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_toggle_get_radio" gtk_cell_renderer_toggle_get_radio :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    IO CInt

-- | Returns whether we’re rendering radio toggles rather than checkboxes.
cellRendererToggleGetRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if we’re rendering radio toggles rather than checkboxes
cellRendererToggleGetRadio toggle = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    result <- gtk_cell_renderer_toggle_get_radio toggle'
    let result' = (/= 0) result
    touchManagedPtr toggle
    return result'

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleGetRadioMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleGetRadioMethodInfo a signature where
    overloadedMethod = cellRendererToggleGetRadio

#endif

-- method CellRendererToggle::set_activatable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set." , sinceVersion = Nothing }
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

foreign import ccall "gtk_cell_renderer_toggle_set_activatable" gtk_cell_renderer_toggle_set_activatable :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Makes the cell renderer activatable.
-- 
-- /Since: 2.18/
cellRendererToggleSetActivatable ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'.
    -> Bool
    -- ^ /@setting@/: the value to set.
    -> m ()
cellRendererToggleSetActivatable toggle setting = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    let setting' = (fromIntegral . fromEnum) setting
    gtk_cell_renderer_toggle_set_activatable toggle' setting'
    touchManagedPtr toggle
    return ()

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetActivatableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleSetActivatableMethodInfo a signature where
    overloadedMethod = cellRendererToggleSetActivatable

#endif

-- method CellRendererToggle::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set." , sinceVersion = Nothing }
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

foreign import ccall "gtk_cell_renderer_toggle_set_active" gtk_cell_renderer_toggle_set_active :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Activates or deactivates a cell renderer.
cellRendererToggleSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'.
    -> Bool
    -- ^ /@setting@/: the value to set.
    -> m ()
cellRendererToggleSetActive toggle setting = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    let setting' = (fromIntegral . fromEnum) setting
    gtk_cell_renderer_toggle_set_active toggle' setting'
    touchManagedPtr toggle
    return ()

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetActiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleSetActiveMethodInfo a signature where
    overloadedMethod = cellRendererToggleSetActive

#endif

-- method CellRendererToggle::set_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toggle"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRendererToggle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRendererToggle"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "radio"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to make the toggle look like a radio button"
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

foreign import ccall "gtk_cell_renderer_toggle_set_radio" gtk_cell_renderer_toggle_set_radio :: 
    Ptr CellRendererToggle ->               -- toggle : TInterface (Name {namespace = "Gtk", name = "CellRendererToggle"})
    CInt ->                                 -- radio : TBasicType TBoolean
    IO ()

-- | If /@radio@/ is 'P.True', the cell renderer renders a radio toggle
-- (i.e. a toggle in a group of mutually-exclusive toggles).
-- If 'P.False', it renders a check toggle (a standalone boolean option).
-- This can be set globally for the cell renderer, or changed just
-- before rendering each cell in the model (for t'GI.Gtk.Objects.TreeView.TreeView', you set
-- up a per-row setting using t'GI.Gtk.Objects.TreeViewColumn.TreeViewColumn' to associate model
-- columns with cell renderer properties).
cellRendererToggleSetRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellRendererToggle a) =>
    a
    -- ^ /@toggle@/: a t'GI.Gtk.Objects.CellRendererToggle.CellRendererToggle'
    -> Bool
    -- ^ /@radio@/: 'P.True' to make the toggle look like a radio button
    -> m ()
cellRendererToggleSetRadio toggle radio = liftIO $ do
    toggle' <- unsafeManagedPtrCastPtr toggle
    let radio' = (fromIntegral . fromEnum) radio
    gtk_cell_renderer_toggle_set_radio toggle' radio'
    touchManagedPtr toggle
    return ()

#if defined(ENABLE_OVERLOADING)
data CellRendererToggleSetRadioMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCellRendererToggle a) => O.MethodInfo CellRendererToggleSetRadioMethodInfo a signature where
    overloadedMethod = cellRendererToggleSetRadio

#endif

