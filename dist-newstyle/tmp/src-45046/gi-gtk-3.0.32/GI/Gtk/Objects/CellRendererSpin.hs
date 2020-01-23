{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin' renders text in a cell like t'GI.Gtk.Objects.CellRendererText.CellRendererText' from
-- which it is derived. But while t'GI.Gtk.Objects.CellRendererText.CellRendererText' offers a simple entry to
-- edit the text, t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin' offers a t'GI.Gtk.Objects.SpinButton.SpinButton' widget. Of course,
-- that means that the text has to be parseable as a floating point number.
-- 
-- The range of the spinbutton is taken from the adjustment property of the
-- cell renderer, which can be set explicitly or mapped to a column in the
-- tree model, like all properties of cell renders. t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin'
-- also has properties for the t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin':@/climb-rate/@ and the number
-- of t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin':@/digits/@ to display. Other t'GI.Gtk.Objects.SpinButton.SpinButton' properties
-- can be set in a handler for the [editingStarted]("GI.Gtk.Objects.CellRenderer#signal:editingStarted") signal.
-- 
-- The t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin' cell renderer was added in GTK+ 2.10.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererSpin
    ( 

-- * Exported types
    CellRendererSpin(..)                    ,
    IsCellRendererSpin                      ,
    toCellRendererSpin                      ,
    noCellRendererSpin                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererSpinMethod           ,
#endif


-- ** new #method:new#

    cellRendererSpinNew                     ,




 -- * Properties
-- ** adjustment #attr:adjustment#
-- | The adjustment that holds the value of the spinbutton.
-- This must be non-'P.Nothing' for the cell renderer to be editable.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinAdjustmentPropertyInfo  ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinAdjustment              ,
#endif
    clearCellRendererSpinAdjustment         ,
    constructCellRendererSpinAdjustment     ,
    getCellRendererSpinAdjustment           ,
    setCellRendererSpinAdjustment           ,


-- ** climbRate #attr:climbRate#
-- | The acceleration rate when you hold down a button.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinClimbRatePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinClimbRate               ,
#endif
    constructCellRendererSpinClimbRate      ,
    getCellRendererSpinClimbRate            ,
    setCellRendererSpinClimbRate            ,


-- ** digits #attr:digits#
-- | The number of decimal places to display.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    CellRendererSpinDigitsPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererSpinDigits                  ,
#endif
    constructCellRendererSpinDigits         ,
    getCellRendererSpinDigits               ,
    setCellRendererSpinDigits               ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRendererText as Gtk.CellRendererText

-- | Memory-managed wrapper type.
newtype CellRendererSpin = CellRendererSpin (ManagedPtr CellRendererSpin)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_spin_get_type"
    c_gtk_cell_renderer_spin_get_type :: IO GType

instance GObject CellRendererSpin where
    gobjectType = c_gtk_cell_renderer_spin_get_type
    

-- | Convert 'CellRendererSpin' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererSpin where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_spin_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererSpin)
        B.ManagedPtr.newObject CellRendererSpin ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererSpin`, for instance with `toCellRendererSpin`.
class (GObject o, O.IsDescendantOf CellRendererSpin o) => IsCellRendererSpin o
instance (GObject o, O.IsDescendantOf CellRendererSpin o) => IsCellRendererSpin o

instance O.HasParentTypes CellRendererSpin
type instance O.ParentTypes CellRendererSpin = '[Gtk.CellRendererText.CellRendererText, Gtk.CellRenderer.CellRenderer, GObject.Object.Object]

-- | Cast to `CellRendererSpin`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererSpin :: (MonadIO m, IsCellRendererSpin o) => o -> m CellRendererSpin
toCellRendererSpin = liftIO . unsafeCastTo CellRendererSpin

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererSpin`.
noCellRendererSpin :: Maybe CellRendererSpin
noCellRendererSpin = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererSpinMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererSpinMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererSpinMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererSpinMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererSpinMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererSpinMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererSpinMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererSpinMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererSpinMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererSpinMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererSpinMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererSpinMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererSpinMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererSpinMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererSpinMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererSpinMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererSpinMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererSpinMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererSpinMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererSpinMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererSpinMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererSpinMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererSpinMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererSpinMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererSpinMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererSpinMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererSpinMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererSpinMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererSpinMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererSpinMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererSpinMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererSpinMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererSpinMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererSpinMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererSpinMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererSpinMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererSpinMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererSpinMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererSpinMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererSpinMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererSpinMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererSpinMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererSpinMethod "setFixedHeightFromFont" o = Gtk.CellRendererText.CellRendererTextSetFixedHeightFromFontMethodInfo
    ResolveCellRendererSpinMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererSpinMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererSpinMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererSpinMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererSpinMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererSpinMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererSpinMethod t CellRendererSpin, O.MethodInfo info CellRendererSpin p) => OL.IsLabel t (CellRendererSpin -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "adjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpin #adjustment
-- @
getCellRendererSpinAdjustment :: (MonadIO m, IsCellRendererSpin o) => o -> m (Maybe Gtk.Adjustment.Adjustment)
getCellRendererSpinAdjustment obj = liftIO $ B.Properties.getObjectPropertyObject obj "adjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpin [ #adjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinAdjustment :: (MonadIO m, IsCellRendererSpin o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setCellRendererSpinAdjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "adjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@adjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinAdjustment :: (IsCellRendererSpin o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructCellRendererSpinAdjustment val = B.Properties.constructObjectPropertyObject "adjustment" (Just val)

-- | Set the value of the “@adjustment@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #adjustment
-- @
clearCellRendererSpinAdjustment :: (MonadIO m, IsCellRendererSpin o) => o -> m ()
clearCellRendererSpinAdjustment obj = liftIO $ B.Properties.setObjectPropertyObject obj "adjustment" (Nothing :: Maybe Gtk.Adjustment.Adjustment)

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinAdjustmentPropertyInfo
instance AttrInfo CellRendererSpinAdjustmentPropertyInfo where
    type AttrAllowedOps CellRendererSpinAdjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererSpinAdjustmentPropertyInfo = IsCellRendererSpin
    type AttrSetTypeConstraint CellRendererSpinAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint CellRendererSpinAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType CellRendererSpinAdjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType CellRendererSpinAdjustmentPropertyInfo = (Maybe Gtk.Adjustment.Adjustment)
    type AttrLabel CellRendererSpinAdjustmentPropertyInfo = "adjustment"
    type AttrOrigin CellRendererSpinAdjustmentPropertyInfo = CellRendererSpin
    attrGet = getCellRendererSpinAdjustment
    attrSet = setCellRendererSpinAdjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructCellRendererSpinAdjustment
    attrClear = clearCellRendererSpinAdjustment
#endif

-- VVV Prop "climb-rate"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@climb-rate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpin #climbRate
-- @
getCellRendererSpinClimbRate :: (MonadIO m, IsCellRendererSpin o) => o -> m Double
getCellRendererSpinClimbRate obj = liftIO $ B.Properties.getObjectPropertyDouble obj "climb-rate"

-- | Set the value of the “@climb-rate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpin [ #climbRate 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinClimbRate :: (MonadIO m, IsCellRendererSpin o) => o -> Double -> m ()
setCellRendererSpinClimbRate obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "climb-rate" val

-- | Construct a `GValueConstruct` with valid value for the “@climb-rate@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinClimbRate :: (IsCellRendererSpin o) => Double -> IO (GValueConstruct o)
constructCellRendererSpinClimbRate val = B.Properties.constructObjectPropertyDouble "climb-rate" val

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinClimbRatePropertyInfo
instance AttrInfo CellRendererSpinClimbRatePropertyInfo where
    type AttrAllowedOps CellRendererSpinClimbRatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererSpinClimbRatePropertyInfo = IsCellRendererSpin
    type AttrSetTypeConstraint CellRendererSpinClimbRatePropertyInfo = (~) Double
    type AttrTransferTypeConstraint CellRendererSpinClimbRatePropertyInfo = (~) Double
    type AttrTransferType CellRendererSpinClimbRatePropertyInfo = Double
    type AttrGetType CellRendererSpinClimbRatePropertyInfo = Double
    type AttrLabel CellRendererSpinClimbRatePropertyInfo = "climb-rate"
    type AttrOrigin CellRendererSpinClimbRatePropertyInfo = CellRendererSpin
    attrGet = getCellRendererSpinClimbRate
    attrSet = setCellRendererSpinClimbRate
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererSpinClimbRate
    attrClear = undefined
#endif

-- VVV Prop "digits"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererSpin #digits
-- @
getCellRendererSpinDigits :: (MonadIO m, IsCellRendererSpin o) => o -> m Word32
getCellRendererSpinDigits obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "digits"

-- | Set the value of the “@digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererSpin [ #digits 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererSpinDigits :: (MonadIO m, IsCellRendererSpin o) => o -> Word32 -> m ()
setCellRendererSpinDigits obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "digits" val

-- | Construct a `GValueConstruct` with valid value for the “@digits@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererSpinDigits :: (IsCellRendererSpin o) => Word32 -> IO (GValueConstruct o)
constructCellRendererSpinDigits val = B.Properties.constructObjectPropertyUInt32 "digits" val

#if defined(ENABLE_OVERLOADING)
data CellRendererSpinDigitsPropertyInfo
instance AttrInfo CellRendererSpinDigitsPropertyInfo where
    type AttrAllowedOps CellRendererSpinDigitsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererSpinDigitsPropertyInfo = IsCellRendererSpin
    type AttrSetTypeConstraint CellRendererSpinDigitsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint CellRendererSpinDigitsPropertyInfo = (~) Word32
    type AttrTransferType CellRendererSpinDigitsPropertyInfo = Word32
    type AttrGetType CellRendererSpinDigitsPropertyInfo = Word32
    type AttrLabel CellRendererSpinDigitsPropertyInfo = "digits"
    type AttrOrigin CellRendererSpinDigitsPropertyInfo = CellRendererSpin
    attrGet = getCellRendererSpinDigits
    attrSet = setCellRendererSpinDigits
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererSpinDigits
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererSpin
type instance O.AttributeList CellRendererSpin = CellRendererSpinAttributeList
type CellRendererSpinAttributeList = ('[ '("adjustment", CellRendererSpinAdjustmentPropertyInfo), '("alignSet", Gtk.CellRendererText.CellRendererTextAlignSetPropertyInfo), '("alignment", Gtk.CellRendererText.CellRendererTextAlignmentPropertyInfo), '("attributes", Gtk.CellRendererText.CellRendererTextAttributesPropertyInfo), '("background", Gtk.CellRendererText.CellRendererTextBackgroundPropertyInfo), '("backgroundGdk", Gtk.CellRendererText.CellRendererTextBackgroundGdkPropertyInfo), '("backgroundRgba", Gtk.CellRendererText.CellRendererTextBackgroundRgbaPropertyInfo), '("backgroundSet", Gtk.CellRendererText.CellRendererTextBackgroundSetPropertyInfo), '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("climbRate", CellRendererSpinClimbRatePropertyInfo), '("digits", CellRendererSpinDigitsPropertyInfo), '("editable", Gtk.CellRendererText.CellRendererTextEditablePropertyInfo), '("editableSet", Gtk.CellRendererText.CellRendererTextEditableSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("ellipsize", Gtk.CellRendererText.CellRendererTextEllipsizePropertyInfo), '("ellipsizeSet", Gtk.CellRendererText.CellRendererTextEllipsizeSetPropertyInfo), '("family", Gtk.CellRendererText.CellRendererTextFamilyPropertyInfo), '("familySet", Gtk.CellRendererText.CellRendererTextFamilySetPropertyInfo), '("font", Gtk.CellRendererText.CellRendererTextFontPropertyInfo), '("fontDesc", Gtk.CellRendererText.CellRendererTextFontDescPropertyInfo), '("foreground", Gtk.CellRendererText.CellRendererTextForegroundPropertyInfo), '("foregroundGdk", Gtk.CellRendererText.CellRendererTextForegroundGdkPropertyInfo), '("foregroundRgba", Gtk.CellRendererText.CellRendererTextForegroundRgbaPropertyInfo), '("foregroundSet", Gtk.CellRendererText.CellRendererTextForegroundSetPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("language", Gtk.CellRendererText.CellRendererTextLanguagePropertyInfo), '("languageSet", Gtk.CellRendererText.CellRendererTextLanguageSetPropertyInfo), '("markup", Gtk.CellRendererText.CellRendererTextMarkupPropertyInfo), '("maxWidthChars", Gtk.CellRendererText.CellRendererTextMaxWidthCharsPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("placeholderText", Gtk.CellRendererText.CellRendererTextPlaceholderTextPropertyInfo), '("rise", Gtk.CellRendererText.CellRendererTextRisePropertyInfo), '("riseSet", Gtk.CellRendererText.CellRendererTextRiseSetPropertyInfo), '("scale", Gtk.CellRendererText.CellRendererTextScalePropertyInfo), '("scaleSet", Gtk.CellRendererText.CellRendererTextScaleSetPropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("singleParagraphMode", Gtk.CellRendererText.CellRendererTextSingleParagraphModePropertyInfo), '("size", Gtk.CellRendererText.CellRendererTextSizePropertyInfo), '("sizePoints", Gtk.CellRendererText.CellRendererTextSizePointsPropertyInfo), '("sizeSet", Gtk.CellRendererText.CellRendererTextSizeSetPropertyInfo), '("stretch", Gtk.CellRendererText.CellRendererTextStretchPropertyInfo), '("stretchSet", Gtk.CellRendererText.CellRendererTextStretchSetPropertyInfo), '("strikethrough", Gtk.CellRendererText.CellRendererTextStrikethroughPropertyInfo), '("strikethroughSet", Gtk.CellRendererText.CellRendererTextStrikethroughSetPropertyInfo), '("style", Gtk.CellRendererText.CellRendererTextStylePropertyInfo), '("styleSet", Gtk.CellRendererText.CellRendererTextStyleSetPropertyInfo), '("text", Gtk.CellRendererText.CellRendererTextTextPropertyInfo), '("underline", Gtk.CellRendererText.CellRendererTextUnderlinePropertyInfo), '("underlineSet", Gtk.CellRendererText.CellRendererTextUnderlineSetPropertyInfo), '("variant", Gtk.CellRendererText.CellRendererTextVariantPropertyInfo), '("variantSet", Gtk.CellRendererText.CellRendererTextVariantSetPropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("weight", Gtk.CellRendererText.CellRendererTextWeightPropertyInfo), '("weightSet", Gtk.CellRendererText.CellRendererTextWeightSetPropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("widthChars", Gtk.CellRendererText.CellRendererTextWidthCharsPropertyInfo), '("wrapMode", Gtk.CellRendererText.CellRendererTextWrapModePropertyInfo), '("wrapWidth", Gtk.CellRendererText.CellRendererTextWrapWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererSpinAdjustment :: AttrLabelProxy "adjustment"
cellRendererSpinAdjustment = AttrLabelProxy

cellRendererSpinClimbRate :: AttrLabelProxy "climbRate"
cellRendererSpinClimbRate = AttrLabelProxy

cellRendererSpinDigits :: AttrLabelProxy "digits"
cellRendererSpinDigits = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererSpin = CellRendererSpinSignalList
type CellRendererSpinSignalList = ('[ '("edited", Gtk.CellRendererText.CellRendererTextEditedSignalInfo), '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererSpin::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "CellRendererSpin" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_spin_new" gtk_cell_renderer_spin_new :: 
    IO (Ptr CellRendererSpin)

-- | Creates a new t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin'.
-- 
-- /Since: 2.10/
cellRendererSpinNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererSpin
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CellRendererSpin.CellRendererSpin'
cellRendererSpinNew  = liftIO $ do
    result <- gtk_cell_renderer_spin_new
    checkUnexpectedReturnNULL "cellRendererSpinNew" result
    result' <- (newObject CellRendererSpin) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

