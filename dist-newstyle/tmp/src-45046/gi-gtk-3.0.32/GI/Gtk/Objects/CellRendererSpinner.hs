{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkCellRendererSpinner renders a spinning animation in a cell, very
-- similar to t'GI.Gtk.Objects.Spinner.Spinner'. It can often be used as an alternative
-- to a t'GI.Gtk.Objects.CellRendererProgress.CellRendererProgress' for displaying indefinite activity,
-- instead of actual progress.
-- 
-- To start the animation in a cell, set the t'GI.Gtk.Objects.CellRendererSpinner.CellRendererSpinner':@/active/@
-- property to 'P.True' and increment the t'GI.Gtk.Objects.CellRendererSpinner.CellRendererSpinner':@/pulse/@ property
-- at regular intervals. The usual way to set the cell renderer properties
-- for each cell is to bind them to columns in your tree model using e.g.
-- 'GI.Gtk.Objects.TreeViewColumn.treeViewColumnAddAttribute'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererSpinner
    ( 

-- * Exported types
    CellRendererSpinner(..)                 ,
    IsCellRendererSpinner                   ,
    toCellRendererSpinner                   ,
    noCellRendererSpinner                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererSpinnerMethod        ,
#endif


-- ** new #method:new#

    cellRendererSpinnerNew                  ,




 -- * Properties
-- ** active #attr:active#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinnerActivePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinnerActive               ,
#endif
    constructCellRendererSpinnerActive      ,
    getCellRendererSpinnerActive            ,
    setCellRendererSpinnerActive            ,


-- ** pulse #attr:pulse#
-- | Pulse of the spinner. Increment this value to draw the next frame of the
-- spinner animation. Usually, you would update this value in a timeout.
-- 
-- By default, the t'GI.Gtk.Objects.Spinner.Spinner' widget draws one full cycle of the animation,
-- consisting of 12 frames, in 750 milliseconds.
-- 
-- /Since: 2.20/

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinnerPulsePropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinnerPulse                ,
#endif
    constructCellRendererSpinnerPulse       ,
    getCellRendererSpinnerPulse             ,
    setCellRendererSpinnerPulse             ,


-- ** size #attr:size#
-- | The t'GI.Gtk.Enums.IconSize' value that specifies the size of the rendered spinner.
-- 
-- /Since: 2.20/

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinnerSizePropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinnerSize                 ,
#endif
    constructCellRendererSpinnerSize        ,
    getCellRendererSpinnerSize              ,
    setCellRendererSpinnerSize              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype CellRendererSpinner = CellRendererSpinner (ManagedPtr CellRendererSpinner)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_spinner_get_type"
    c_gtk_cell_renderer_spinner_get_type :: IO GType

instance GObject CellRendererSpinner where
    gobjectType = c_gtk_cell_renderer_spinner_get_type
    

-- | Convert 'CellRendererSpinner' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererSpinner where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_spinner_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererSpinner)
        B.ManagedPtr.newObject CellRendererSpinner ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererSpinner`, for instance with `toCellRendererSpinner`.
class (GObject o, O.IsDescendantOf CellRendererSpinner o) => IsCellRendererSpinner o
instance (GObject o, O.IsDescendantOf CellRendererSpinner o) => IsCellRendererSpinner o

instance O.HasParentTypes CellRendererSpinner
type instance O.ParentTypes CellRendererSpinner = '[Gtk.CellRenderer.CellRenderer, GObject.Object.Object]

-- | Cast to `CellRendererSpinner`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererSpinner :: (MonadIO m, IsCellRendererSpinner o) => o -> m CellRendererSpinner
toCellRendererSpinner = liftIO . unsafeCastTo CellRendererSpinner

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererSpinner`.
noCellRendererSpinner :: Maybe CellRendererSpinner
noCellRendererSpinner = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererSpinnerMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererSpinnerMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererSpinnerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererSpinnerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererSpinnerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererSpinnerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererSpinnerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererSpinnerMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererSpinnerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererSpinnerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererSpinnerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererSpinnerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererSpinnerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererSpinnerMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererSpinnerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererSpinnerMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererSpinnerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererSpinnerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererSpinnerMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererSpinnerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererSpinnerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererSpinnerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererSpinnerMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererSpinnerMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererSpinnerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererSpinnerMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererSpinnerMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererSpinnerMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererSpinnerMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererSpinnerMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererSpinnerMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererSpinnerMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererSpinnerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererSpinnerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererSpinnerMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererSpinnerMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererSpinnerMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererSpinnerMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererSpinnerMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererSpinnerMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererSpinnerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererSpinnerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererSpinnerMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererSpinnerMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererSpinnerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererSpinnerMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererSpinnerMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererSpinnerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererSpinnerMethod t CellRendererSpinner, O.MethodInfo info CellRendererSpinner p) => OL.IsLabel t (CellRendererSpinner -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpinner #active
-- @
getCellRendererSpinnerActive :: (MonadIO m, IsCellRendererSpinner o) => o -> m Bool
getCellRendererSpinnerActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpinner [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinnerActive :: (MonadIO m, IsCellRendererSpinner o) => o -> Bool -> m ()
setCellRendererSpinnerActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinnerActive :: (IsCellRendererSpinner o) => Bool -> IO (GValueConstruct o)
constructCellRendererSpinnerActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinnerActivePropertyInfo
instance AttrInfo CellRendererSpinnerActivePropertyInfo where
    type AttrAllowedOps CellRendererSpinnerActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererSpinnerActivePropertyInfo = IsCellRendererSpinner
    type AttrSetTypeConstraint CellRendererSpinnerActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererSpinnerActivePropertyInfo = (~) Bool
    type AttrTransferType CellRendererSpinnerActivePropertyInfo = Bool
    type AttrGetType CellRendererSpinnerActivePropertyInfo = Bool
    type AttrLabel CellRendererSpinnerActivePropertyInfo = "active"
    type AttrOrigin CellRendererSpinnerActivePropertyInfo = CellRendererSpinner
    attrGet = getCellRendererSpinnerActive
    attrSet = setCellRendererSpinnerActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererSpinnerActive
    attrClear = undefined
#endif

-- VVV Prop "pulse"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@pulse@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpinner #pulse
-- @
getCellRendererSpinnerPulse :: (MonadIO m, IsCellRendererSpinner o) => o -> m Word32
getCellRendererSpinnerPulse obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "pulse"

-- | Set the value of the “@pulse@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpinner [ #pulse 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinnerPulse :: (MonadIO m, IsCellRendererSpinner o) => o -> Word32 -> m ()
setCellRendererSpinnerPulse obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "pulse" val

-- | Construct a `GValueConstruct` with valid value for the “@pulse@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinnerPulse :: (IsCellRendererSpinner o) => Word32 -> IO (GValueConstruct o)
constructCellRendererSpinnerPulse val = B.Properties.constructObjectPropertyUInt32 "pulse" val

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinnerPulsePropertyInfo
instance AttrInfo CellRendererSpinnerPulsePropertyInfo where
    type AttrAllowedOps CellRendererSpinnerPulsePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererSpinnerPulsePropertyInfo = IsCellRendererSpinner
    type AttrSetTypeConstraint CellRendererSpinnerPulsePropertyInfo = (~) Word32
    type AttrTransferTypeConstraint CellRendererSpinnerPulsePropertyInfo = (~) Word32
    type AttrTransferType CellRendererSpinnerPulsePropertyInfo = Word32
    type AttrGetType CellRendererSpinnerPulsePropertyInfo = Word32
    type AttrLabel CellRendererSpinnerPulsePropertyInfo = "pulse"
    type AttrOrigin CellRendererSpinnerPulsePropertyInfo = CellRendererSpinner
    attrGet = getCellRendererSpinnerPulse
    attrSet = setCellRendererSpinnerPulse
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererSpinnerPulse
    attrClear = undefined
#endif

-- VVV Prop "size"
   -- Type: TInterface (Name {namespace = "Gtk", name = "IconSize"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpinner #size
-- @
getCellRendererSpinnerSize :: (MonadIO m, IsCellRendererSpinner o) => o -> m Gtk.Enums.IconSize
getCellRendererSpinnerSize obj = liftIO $ B.Properties.getObjectPropertyEnum obj "size"

-- | Set the value of the “@size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpinner [ #size 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinnerSize :: (MonadIO m, IsCellRendererSpinner o) => o -> Gtk.Enums.IconSize -> m ()
setCellRendererSpinnerSize obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "size" val

-- | Construct a `GValueConstruct` with valid value for the “@size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinnerSize :: (IsCellRendererSpinner o) => Gtk.Enums.IconSize -> IO (GValueConstruct o)
constructCellRendererSpinnerSize val = B.Properties.constructObjectPropertyEnum "size" val

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinnerSizePropertyInfo
instance AttrInfo CellRendererSpinnerSizePropertyInfo where
    type AttrAllowedOps CellRendererSpinnerSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererSpinnerSizePropertyInfo = IsCellRendererSpinner
    type AttrSetTypeConstraint CellRendererSpinnerSizePropertyInfo = (~) Gtk.Enums.IconSize
    type AttrTransferTypeConstraint CellRendererSpinnerSizePropertyInfo = (~) Gtk.Enums.IconSize
    type AttrTransferType CellRendererSpinnerSizePropertyInfo = Gtk.Enums.IconSize
    type AttrGetType CellRendererSpinnerSizePropertyInfo = Gtk.Enums.IconSize
    type AttrLabel CellRendererSpinnerSizePropertyInfo = "size"
    type AttrOrigin CellRendererSpinnerSizePropertyInfo = CellRendererSpinner
    attrGet = getCellRendererSpinnerSize
    attrSet = setCellRendererSpinnerSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererSpinnerSize
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererSpinner
type instance O.AttributeList CellRendererSpinner = CellRendererSpinnerAttributeList
type CellRendererSpinnerAttributeList = ('[ '("active", CellRendererSpinnerActivePropertyInfo), '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("pulse", CellRendererSpinnerPulsePropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("size", CellRendererSpinnerSizePropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererSpinnerActive :: AttrLabelProxy "active"
cellRendererSpinnerActive = AttrLabelProxy

cellRendererSpinnerPulse :: AttrLabelProxy "pulse"
cellRendererSpinnerPulse = AttrLabelProxy

cellRendererSpinnerSize :: AttrLabelProxy "size"
cellRendererSpinnerSize = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererSpinner = CellRendererSpinnerSignalList
type CellRendererSpinnerSignalList = ('[ '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererSpinner::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererSpinner" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_spinner_new" gtk_cell_renderer_spinner_new :: 
    IO (Ptr CellRendererSpinner)

-- | Returns a new cell renderer which will show a spinner to indicate
-- activity.
-- 
-- /Since: 2.20/
cellRendererSpinnerNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererSpinner
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CellRenderer.CellRenderer'
cellRendererSpinnerNew  = liftIO $ do
    result <- gtk_cell_renderer_spinner_new
    checkUnexpectedReturnNULL "cellRendererSpinnerNew" result
    result' <- (newObject CellRendererSpinner) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

