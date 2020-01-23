{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.CellRendererProgress.CellRendererProgress' renders a numeric value as a progress par in a cell.
-- Additionally, it can display a text on top of the progress bar.
-- 
-- The t'GI.Gtk.Objects.CellRendererProgress.CellRendererProgress' cell renderer was added in GTK+ 2.6.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererProgress
    ( 

-- * Exported types
    CellRendererProgress(..)                ,
    IsCellRendererProgress                  ,
    toCellRendererProgress                  ,
    noCellRendererProgress                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererProgressMethod       ,
#endif


-- ** new #method:new#

    cellRendererProgressNew                 ,




 -- * Properties
-- ** inverted #attr:inverted#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressInvertedPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressInverted            ,
#endif
    constructCellRendererProgressInverted   ,
    getCellRendererProgressInverted         ,
    setCellRendererProgressInverted         ,


-- ** pulse #attr:pulse#
-- | Setting this to a non-negative value causes the cell renderer to
-- enter \"activity mode\", where a block bounces back and forth to
-- indicate that some progress is made, without specifying exactly how
-- much.
-- 
-- Each increment of the property causes the block to move by a little
-- bit.
-- 
-- To indicate that the activity has not started yet, set the property
-- to zero. To indicate completion, set the property to @/G_MAXINT/@.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressPulsePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressPulse               ,
#endif
    constructCellRendererProgressPulse      ,
    getCellRendererProgressPulse            ,
    setCellRendererProgressPulse            ,


-- ** text #attr:text#
-- | The \"text\" property determines the label which will be drawn
-- over the progress bar. Setting this property to 'P.Nothing' causes the default
-- label to be displayed. Setting this property to an empty string causes
-- no label to be displayed.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressTextPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressText                ,
#endif
    clearCellRendererProgressText           ,
    constructCellRendererProgressText       ,
    getCellRendererProgressText             ,
    setCellRendererProgressText             ,


-- ** textXalign #attr:textXalign#
-- | The \"text-xalign\" property controls the horizontal alignment of the
-- text in the progress bar.  Valid values range from 0 (left) to 1
-- (right).  Reserved for RTL layouts.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressTextXalignPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressTextXalign          ,
#endif
    constructCellRendererProgressTextXalign ,
    getCellRendererProgressTextXalign       ,
    setCellRendererProgressTextXalign       ,


-- ** textYalign #attr:textYalign#
-- | The \"text-yalign\" property controls the vertical alignment of the
-- text in the progress bar.  Valid values range from 0 (top) to 1
-- (bottom).
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressTextYalignPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressTextYalign          ,
#endif
    constructCellRendererProgressTextYalign ,
    getCellRendererProgressTextYalign       ,
    setCellRendererProgressTextYalign       ,


-- ** value #attr:value#
-- | The \"value\" property determines the percentage to which the
-- progress bar will be \"filled in\".
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    CellRendererProgressValuePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererProgressValue               ,
#endif
    constructCellRendererProgressValue      ,
    getCellRendererProgressValue            ,
    setCellRendererProgressValue            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype CellRendererProgress = CellRendererProgress (ManagedPtr CellRendererProgress)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_progress_get_type"
    c_gtk_cell_renderer_progress_get_type :: IO GType

instance GObject CellRendererProgress where
    gobjectType = c_gtk_cell_renderer_progress_get_type
    

-- | Convert 'CellRendererProgress' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererProgress where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_progress_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererProgress)
        B.ManagedPtr.newObject CellRendererProgress ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererProgress`, for instance with `toCellRendererProgress`.
class (GObject o, O.IsDescendantOf CellRendererProgress o) => IsCellRendererProgress o
instance (GObject o, O.IsDescendantOf CellRendererProgress o) => IsCellRendererProgress o

instance O.HasParentTypes CellRendererProgress
type instance O.ParentTypes CellRendererProgress = '[Gtk.CellRenderer.CellRenderer, GObject.Object.Object, Gtk.Orientable.Orientable]

-- | Cast to `CellRendererProgress`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererProgress :: (MonadIO m, IsCellRendererProgress o) => o -> m CellRendererProgress
toCellRendererProgress = liftIO . unsafeCastTo CellRendererProgress

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererProgress`.
noCellRendererProgress :: Maybe CellRendererProgress
noCellRendererProgress = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererProgressMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererProgressMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererProgressMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererProgressMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererProgressMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererProgressMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererProgressMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererProgressMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererProgressMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererProgressMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererProgressMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererProgressMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererProgressMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererProgressMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererProgressMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererProgressMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererProgressMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererProgressMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererProgressMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererProgressMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererProgressMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererProgressMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererProgressMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererProgressMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererProgressMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererProgressMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererProgressMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveCellRendererProgressMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererProgressMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererProgressMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererProgressMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererProgressMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererProgressMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererProgressMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererProgressMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererProgressMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererProgressMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererProgressMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererProgressMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererProgressMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererProgressMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererProgressMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererProgressMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererProgressMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererProgressMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveCellRendererProgressMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererProgressMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererProgressMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererProgressMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererProgressMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererProgressMethod t CellRendererProgress, O.MethodInfo info CellRendererProgress p) => OL.IsLabel t (CellRendererProgress -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "inverted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #inverted
-- @
getCellRendererProgressInverted :: (MonadIO m, IsCellRendererProgress o) => o -> m Bool
getCellRendererProgressInverted obj = liftIO $ B.Properties.getObjectPropertyBool obj "inverted"

-- | Set the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #inverted 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressInverted :: (MonadIO m, IsCellRendererProgress o) => o -> Bool -> m ()
setCellRendererProgressInverted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inverted" val

-- | Construct a `GValueConstruct` with valid value for the “@inverted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressInverted :: (IsCellRendererProgress o) => Bool -> IO (GValueConstruct o)
constructCellRendererProgressInverted val = B.Properties.constructObjectPropertyBool "inverted" val

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressInvertedPropertyInfo
instance AttrInfo CellRendererProgressInvertedPropertyInfo where
    type AttrAllowedOps CellRendererProgressInvertedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererProgressInvertedPropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressInvertedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererProgressInvertedPropertyInfo = (~) Bool
    type AttrTransferType CellRendererProgressInvertedPropertyInfo = Bool
    type AttrGetType CellRendererProgressInvertedPropertyInfo = Bool
    type AttrLabel CellRendererProgressInvertedPropertyInfo = "inverted"
    type AttrOrigin CellRendererProgressInvertedPropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressInverted
    attrSet = setCellRendererProgressInverted
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressInverted
    attrClear = undefined
#endif

-- VVV Prop "pulse"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@pulse@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #pulse
-- @
getCellRendererProgressPulse :: (MonadIO m, IsCellRendererProgress o) => o -> m Int32
getCellRendererProgressPulse obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "pulse"

-- | Set the value of the “@pulse@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #pulse 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressPulse :: (MonadIO m, IsCellRendererProgress o) => o -> Int32 -> m ()
setCellRendererProgressPulse obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "pulse" val

-- | Construct a `GValueConstruct` with valid value for the “@pulse@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressPulse :: (IsCellRendererProgress o) => Int32 -> IO (GValueConstruct o)
constructCellRendererProgressPulse val = B.Properties.constructObjectPropertyInt32 "pulse" val

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressPulsePropertyInfo
instance AttrInfo CellRendererProgressPulsePropertyInfo where
    type AttrAllowedOps CellRendererProgressPulsePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererProgressPulsePropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressPulsePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CellRendererProgressPulsePropertyInfo = (~) Int32
    type AttrTransferType CellRendererProgressPulsePropertyInfo = Int32
    type AttrGetType CellRendererProgressPulsePropertyInfo = Int32
    type AttrLabel CellRendererProgressPulsePropertyInfo = "pulse"
    type AttrOrigin CellRendererProgressPulsePropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressPulse
    attrSet = setCellRendererProgressPulse
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressPulse
    attrClear = undefined
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #text
-- @
getCellRendererProgressText :: (MonadIO m, IsCellRendererProgress o) => o -> m (Maybe T.Text)
getCellRendererProgressText obj = liftIO $ B.Properties.getObjectPropertyString obj "text"

-- | Set the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #text 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressText :: (MonadIO m, IsCellRendererProgress o) => o -> T.Text -> m ()
setCellRendererProgressText obj val = liftIO $ B.Properties.setObjectPropertyString obj "text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressText :: (IsCellRendererProgress o) => T.Text -> IO (GValueConstruct o)
constructCellRendererProgressText val = B.Properties.constructObjectPropertyString "text" (Just val)

-- | Set the value of the “@text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #text
-- @
clearCellRendererProgressText :: (MonadIO m, IsCellRendererProgress o) => o -> m ()
clearCellRendererProgressText obj = liftIO $ B.Properties.setObjectPropertyString obj "text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressTextPropertyInfo
instance AttrInfo CellRendererProgressTextPropertyInfo where
    type AttrAllowedOps CellRendererProgressTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererProgressTextPropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint CellRendererProgressTextPropertyInfo = (~) T.Text
    type AttrTransferType CellRendererProgressTextPropertyInfo = T.Text
    type AttrGetType CellRendererProgressTextPropertyInfo = (Maybe T.Text)
    type AttrLabel CellRendererProgressTextPropertyInfo = "text"
    type AttrOrigin CellRendererProgressTextPropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressText
    attrSet = setCellRendererProgressText
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressText
    attrClear = clearCellRendererProgressText
#endif

-- VVV Prop "text-xalign"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text-xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #textXalign
-- @
getCellRendererProgressTextXalign :: (MonadIO m, IsCellRendererProgress o) => o -> m Float
getCellRendererProgressTextXalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "text-xalign"

-- | Set the value of the “@text-xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #textXalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressTextXalign :: (MonadIO m, IsCellRendererProgress o) => o -> Float -> m ()
setCellRendererProgressTextXalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "text-xalign" val

-- | Construct a `GValueConstruct` with valid value for the “@text-xalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressTextXalign :: (IsCellRendererProgress o) => Float -> IO (GValueConstruct o)
constructCellRendererProgressTextXalign val = B.Properties.constructObjectPropertyFloat "text-xalign" val

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressTextXalignPropertyInfo
instance AttrInfo CellRendererProgressTextXalignPropertyInfo where
    type AttrAllowedOps CellRendererProgressTextXalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererProgressTextXalignPropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressTextXalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint CellRendererProgressTextXalignPropertyInfo = (~) Float
    type AttrTransferType CellRendererProgressTextXalignPropertyInfo = Float
    type AttrGetType CellRendererProgressTextXalignPropertyInfo = Float
    type AttrLabel CellRendererProgressTextXalignPropertyInfo = "text-xalign"
    type AttrOrigin CellRendererProgressTextXalignPropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressTextXalign
    attrSet = setCellRendererProgressTextXalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressTextXalign
    attrClear = undefined
#endif

-- VVV Prop "text-yalign"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text-yalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #textYalign
-- @
getCellRendererProgressTextYalign :: (MonadIO m, IsCellRendererProgress o) => o -> m Float
getCellRendererProgressTextYalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "text-yalign"

-- | Set the value of the “@text-yalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #textYalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressTextYalign :: (MonadIO m, IsCellRendererProgress o) => o -> Float -> m ()
setCellRendererProgressTextYalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "text-yalign" val

-- | Construct a `GValueConstruct` with valid value for the “@text-yalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressTextYalign :: (IsCellRendererProgress o) => Float -> IO (GValueConstruct o)
constructCellRendererProgressTextYalign val = B.Properties.constructObjectPropertyFloat "text-yalign" val

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressTextYalignPropertyInfo
instance AttrInfo CellRendererProgressTextYalignPropertyInfo where
    type AttrAllowedOps CellRendererProgressTextYalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererProgressTextYalignPropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressTextYalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint CellRendererProgressTextYalignPropertyInfo = (~) Float
    type AttrTransferType CellRendererProgressTextYalignPropertyInfo = Float
    type AttrGetType CellRendererProgressTextYalignPropertyInfo = Float
    type AttrLabel CellRendererProgressTextYalignPropertyInfo = "text-yalign"
    type AttrOrigin CellRendererProgressTextYalignPropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressTextYalign
    attrSet = setCellRendererProgressTextYalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressTextYalign
    attrClear = undefined
#endif

-- VVV Prop "value"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererProgress #value
-- @
getCellRendererProgressValue :: (MonadIO m, IsCellRendererProgress o) => o -> m Int32
getCellRendererProgressValue obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "value"

-- | Set the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererProgress [ #value 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererProgressValue :: (MonadIO m, IsCellRendererProgress o) => o -> Int32 -> m ()
setCellRendererProgressValue obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "value" val

-- | Construct a `GValueConstruct` with valid value for the “@value@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererProgressValue :: (IsCellRendererProgress o) => Int32 -> IO (GValueConstruct o)
constructCellRendererProgressValue val = B.Properties.constructObjectPropertyInt32 "value" val

#if defined(ENABLE_OVERLOADING)
data CellRendererProgressValuePropertyInfo
instance AttrInfo CellRendererProgressValuePropertyInfo where
    type AttrAllowedOps CellRendererProgressValuePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererProgressValuePropertyInfo = IsCellRendererProgress
    type AttrSetTypeConstraint CellRendererProgressValuePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CellRendererProgressValuePropertyInfo = (~) Int32
    type AttrTransferType CellRendererProgressValuePropertyInfo = Int32
    type AttrGetType CellRendererProgressValuePropertyInfo = Int32
    type AttrLabel CellRendererProgressValuePropertyInfo = "value"
    type AttrOrigin CellRendererProgressValuePropertyInfo = CellRendererProgress
    attrGet = getCellRendererProgressValue
    attrSet = setCellRendererProgressValue
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererProgressValue
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererProgress
type instance O.AttributeList CellRendererProgress = CellRendererProgressAttributeList
type CellRendererProgressAttributeList = ('[ '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("inverted", CellRendererProgressInvertedPropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("pulse", CellRendererProgressPulsePropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("text", CellRendererProgressTextPropertyInfo), '("textXalign", CellRendererProgressTextXalignPropertyInfo), '("textYalign", CellRendererProgressTextYalignPropertyInfo), '("value", CellRendererProgressValuePropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererProgressInverted :: AttrLabelProxy "inverted"
cellRendererProgressInverted = AttrLabelProxy

cellRendererProgressPulse :: AttrLabelProxy "pulse"
cellRendererProgressPulse = AttrLabelProxy

cellRendererProgressText :: AttrLabelProxy "text"
cellRendererProgressText = AttrLabelProxy

cellRendererProgressTextXalign :: AttrLabelProxy "textXalign"
cellRendererProgressTextXalign = AttrLabelProxy

cellRendererProgressTextYalign :: AttrLabelProxy "textYalign"
cellRendererProgressTextYalign = AttrLabelProxy

cellRendererProgressValue :: AttrLabelProxy "value"
cellRendererProgressValue = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererProgress = CellRendererProgressSignalList
type CellRendererProgressSignalList = ('[ '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererProgress::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererProgress" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_progress_new" gtk_cell_renderer_progress_new :: 
    IO (Ptr CellRendererProgress)

-- | Creates a new t'GI.Gtk.Objects.CellRendererProgress.CellRendererProgress'.
-- 
-- /Since: 2.6/
cellRendererProgressNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererProgress
    -- ^ __Returns:__ the new cell renderer
cellRendererProgressNew  = liftIO $ do
    result <- gtk_cell_renderer_progress_new
    checkUnexpectedReturnNULL "cellRendererProgressNew" result
    result' <- (newObject CellRendererProgress) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

