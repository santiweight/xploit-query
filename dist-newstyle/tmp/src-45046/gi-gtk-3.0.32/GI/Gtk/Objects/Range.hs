{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.Range.Range' is the common base class for widgets which visualize an
-- adjustment, e.g t'GI.Gtk.Objects.Scale.Scale' or t'GI.Gtk.Objects.Scrollbar.Scrollbar'.
-- 
-- Apart from signals for monitoring the parameters of the adjustment,
-- t'GI.Gtk.Objects.Range.Range' provides properties and methods for influencing the sensitivity
-- of the “steppers”. It also provides properties and methods for setting a
-- “fill level” on range widgets. See 'GI.Gtk.Objects.Range.rangeSetFillLevel'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Range
    ( 

-- * Exported types
    Range(..)                               ,
    IsRange                                 ,
    toRange                                 ,
    noRange                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRangeMethod                      ,
#endif


-- ** getAdjustment #method:getAdjustment#

#if defined(ENABLE_OVERLOADING)
    RangeGetAdjustmentMethodInfo            ,
#endif
    rangeGetAdjustment                      ,


-- ** getFillLevel #method:getFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeGetFillLevelMethodInfo             ,
#endif
    rangeGetFillLevel                       ,


-- ** getFlippable #method:getFlippable#

#if defined(ENABLE_OVERLOADING)
    RangeGetFlippableMethodInfo             ,
#endif
    rangeGetFlippable                       ,


-- ** getInverted #method:getInverted#

#if defined(ENABLE_OVERLOADING)
    RangeGetInvertedMethodInfo              ,
#endif
    rangeGetInverted                        ,


-- ** getLowerStepperSensitivity #method:getLowerStepperSensitivity#

#if defined(ENABLE_OVERLOADING)
    RangeGetLowerStepperSensitivityMethodInfo,
#endif
    rangeGetLowerStepperSensitivity         ,


-- ** getMinSliderSize #method:getMinSliderSize#

#if defined(ENABLE_OVERLOADING)
    RangeGetMinSliderSizeMethodInfo         ,
#endif
    rangeGetMinSliderSize                   ,


-- ** getRangeRect #method:getRangeRect#

#if defined(ENABLE_OVERLOADING)
    RangeGetRangeRectMethodInfo             ,
#endif
    rangeGetRangeRect                       ,


-- ** getRestrictToFillLevel #method:getRestrictToFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeGetRestrictToFillLevelMethodInfo   ,
#endif
    rangeGetRestrictToFillLevel             ,


-- ** getRoundDigits #method:getRoundDigits#

#if defined(ENABLE_OVERLOADING)
    RangeGetRoundDigitsMethodInfo           ,
#endif
    rangeGetRoundDigits                     ,


-- ** getShowFillLevel #method:getShowFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeGetShowFillLevelMethodInfo         ,
#endif
    rangeGetShowFillLevel                   ,


-- ** getSliderRange #method:getSliderRange#

#if defined(ENABLE_OVERLOADING)
    RangeGetSliderRangeMethodInfo           ,
#endif
    rangeGetSliderRange                     ,


-- ** getSliderSizeFixed #method:getSliderSizeFixed#

#if defined(ENABLE_OVERLOADING)
    RangeGetSliderSizeFixedMethodInfo       ,
#endif
    rangeGetSliderSizeFixed                 ,


-- ** getUpperStepperSensitivity #method:getUpperStepperSensitivity#

#if defined(ENABLE_OVERLOADING)
    RangeGetUpperStepperSensitivityMethodInfo,
#endif
    rangeGetUpperStepperSensitivity         ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    RangeGetValueMethodInfo                 ,
#endif
    rangeGetValue                           ,


-- ** setAdjustment #method:setAdjustment#

#if defined(ENABLE_OVERLOADING)
    RangeSetAdjustmentMethodInfo            ,
#endif
    rangeSetAdjustment                      ,


-- ** setFillLevel #method:setFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeSetFillLevelMethodInfo             ,
#endif
    rangeSetFillLevel                       ,


-- ** setFlippable #method:setFlippable#

#if defined(ENABLE_OVERLOADING)
    RangeSetFlippableMethodInfo             ,
#endif
    rangeSetFlippable                       ,


-- ** setIncrements #method:setIncrements#

#if defined(ENABLE_OVERLOADING)
    RangeSetIncrementsMethodInfo            ,
#endif
    rangeSetIncrements                      ,


-- ** setInverted #method:setInverted#

#if defined(ENABLE_OVERLOADING)
    RangeSetInvertedMethodInfo              ,
#endif
    rangeSetInverted                        ,


-- ** setLowerStepperSensitivity #method:setLowerStepperSensitivity#

#if defined(ENABLE_OVERLOADING)
    RangeSetLowerStepperSensitivityMethodInfo,
#endif
    rangeSetLowerStepperSensitivity         ,


-- ** setMinSliderSize #method:setMinSliderSize#

#if defined(ENABLE_OVERLOADING)
    RangeSetMinSliderSizeMethodInfo         ,
#endif
    rangeSetMinSliderSize                   ,


-- ** setRange #method:setRange#

#if defined(ENABLE_OVERLOADING)
    RangeSetRangeMethodInfo                 ,
#endif
    rangeSetRange                           ,


-- ** setRestrictToFillLevel #method:setRestrictToFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeSetRestrictToFillLevelMethodInfo   ,
#endif
    rangeSetRestrictToFillLevel             ,


-- ** setRoundDigits #method:setRoundDigits#

#if defined(ENABLE_OVERLOADING)
    RangeSetRoundDigitsMethodInfo           ,
#endif
    rangeSetRoundDigits                     ,


-- ** setShowFillLevel #method:setShowFillLevel#

#if defined(ENABLE_OVERLOADING)
    RangeSetShowFillLevelMethodInfo         ,
#endif
    rangeSetShowFillLevel                   ,


-- ** setSliderSizeFixed #method:setSliderSizeFixed#

#if defined(ENABLE_OVERLOADING)
    RangeSetSliderSizeFixedMethodInfo       ,
#endif
    rangeSetSliderSizeFixed                 ,


-- ** setUpperStepperSensitivity #method:setUpperStepperSensitivity#

#if defined(ENABLE_OVERLOADING)
    RangeSetUpperStepperSensitivityMethodInfo,
#endif
    rangeSetUpperStepperSensitivity         ,


-- ** setValue #method:setValue#

#if defined(ENABLE_OVERLOADING)
    RangeSetValueMethodInfo                 ,
#endif
    rangeSetValue                           ,




 -- * Properties
-- ** adjustment #attr:adjustment#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RangeAdjustmentPropertyInfo             ,
#endif
    constructRangeAdjustment                ,
    getRangeAdjustment                      ,
#if defined(ENABLE_OVERLOADING)
    rangeAdjustment                         ,
#endif
    setRangeAdjustment                      ,


-- ** fillLevel #attr:fillLevel#
-- | The fill level (e.g. prebuffering of a network stream).
-- See 'GI.Gtk.Objects.Range.rangeSetFillLevel'.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    RangeFillLevelPropertyInfo              ,
#endif
    constructRangeFillLevel                 ,
    getRangeFillLevel                       ,
#if defined(ENABLE_OVERLOADING)
    rangeFillLevel                          ,
#endif
    setRangeFillLevel                       ,


-- ** inverted #attr:inverted#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RangeInvertedPropertyInfo               ,
#endif
    constructRangeInverted                  ,
    getRangeInverted                        ,
#if defined(ENABLE_OVERLOADING)
    rangeInverted                           ,
#endif
    setRangeInverted                        ,


-- ** lowerStepperSensitivity #attr:lowerStepperSensitivity#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RangeLowerStepperSensitivityPropertyInfo,
#endif
    constructRangeLowerStepperSensitivity   ,
    getRangeLowerStepperSensitivity         ,
#if defined(ENABLE_OVERLOADING)
    rangeLowerStepperSensitivity            ,
#endif
    setRangeLowerStepperSensitivity         ,


-- ** restrictToFillLevel #attr:restrictToFillLevel#
-- | The restrict-to-fill-level property controls whether slider
-- movement is restricted to an upper boundary set by the
-- fill level. See 'GI.Gtk.Objects.Range.rangeSetRestrictToFillLevel'.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    RangeRestrictToFillLevelPropertyInfo    ,
#endif
    constructRangeRestrictToFillLevel       ,
    getRangeRestrictToFillLevel             ,
#if defined(ENABLE_OVERLOADING)
    rangeRestrictToFillLevel                ,
#endif
    setRangeRestrictToFillLevel             ,


-- ** roundDigits #attr:roundDigits#
-- | The number of digits to round the value to when
-- it changes, or -1. See [changeValue]("GI.Gtk.Objects.Range#signal:changeValue").
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    RangeRoundDigitsPropertyInfo            ,
#endif
    constructRangeRoundDigits               ,
    getRangeRoundDigits                     ,
#if defined(ENABLE_OVERLOADING)
    rangeRoundDigits                        ,
#endif
    setRangeRoundDigits                     ,


-- ** showFillLevel #attr:showFillLevel#
-- | The show-fill-level property controls whether fill level indicator
-- graphics are displayed on the trough. See
-- 'GI.Gtk.Objects.Range.rangeSetShowFillLevel'.
-- 
-- /Since: 2.12/

#if defined(ENABLE_OVERLOADING)
    RangeShowFillLevelPropertyInfo          ,
#endif
    constructRangeShowFillLevel             ,
    getRangeShowFillLevel                   ,
#if defined(ENABLE_OVERLOADING)
    rangeShowFillLevel                      ,
#endif
    setRangeShowFillLevel                   ,


-- ** upperStepperSensitivity #attr:upperStepperSensitivity#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RangeUpperStepperSensitivityPropertyInfo,
#endif
    constructRangeUpperStepperSensitivity   ,
    getRangeUpperStepperSensitivity         ,
#if defined(ENABLE_OVERLOADING)
    rangeUpperStepperSensitivity            ,
#endif
    setRangeUpperStepperSensitivity         ,




 -- * Signals
-- ** adjustBounds #signal:adjustBounds#

    C_RangeAdjustBoundsCallback             ,
    RangeAdjustBoundsCallback               ,
#if defined(ENABLE_OVERLOADING)
    RangeAdjustBoundsSignalInfo             ,
#endif
    afterRangeAdjustBounds                  ,
    genClosure_RangeAdjustBounds            ,
    mk_RangeAdjustBoundsCallback            ,
    noRangeAdjustBoundsCallback             ,
    onRangeAdjustBounds                     ,
    wrap_RangeAdjustBoundsCallback          ,


-- ** changeValue #signal:changeValue#

    C_RangeChangeValueCallback              ,
    RangeChangeValueCallback                ,
#if defined(ENABLE_OVERLOADING)
    RangeChangeValueSignalInfo              ,
#endif
    afterRangeChangeValue                   ,
    genClosure_RangeChangeValue             ,
    mk_RangeChangeValueCallback             ,
    noRangeChangeValueCallback              ,
    onRangeChangeValue                      ,
    wrap_RangeChangeValueCallback           ,


-- ** moveSlider #signal:moveSlider#

    C_RangeMoveSliderCallback               ,
    RangeMoveSliderCallback                 ,
#if defined(ENABLE_OVERLOADING)
    RangeMoveSliderSignalInfo               ,
#endif
    afterRangeMoveSlider                    ,
    genClosure_RangeMoveSlider              ,
    mk_RangeMoveSliderCallback              ,
    noRangeMoveSliderCallback               ,
    onRangeMoveSlider                       ,
    wrap_RangeMoveSliderCallback            ,


-- ** valueChanged #signal:valueChanged#

    C_RangeValueChangedCallback             ,
    RangeValueChangedCallback               ,
#if defined(ENABLE_OVERLOADING)
    RangeValueChangedSignalInfo             ,
#endif
    afterRangeValueChanged                  ,
    genClosure_RangeValueChanged            ,
    mk_RangeValueChangedCallback            ,
    noRangeValueChangedCallback             ,
    onRangeValueChanged                     ,
    wrap_RangeValueChangedCallback          ,




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
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Range = Range (ManagedPtr Range)
    deriving (Eq)
foreign import ccall "gtk_range_get_type"
    c_gtk_range_get_type :: IO GType

instance GObject Range where
    gobjectType = c_gtk_range_get_type
    

-- | Convert 'Range' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Range where
    toGValue o = do
        gtype <- c_gtk_range_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Range)
        B.ManagedPtr.newObject Range ptr
        
    

-- | Type class for types which can be safely cast to `Range`, for instance with `toRange`.
class (GObject o, O.IsDescendantOf Range o) => IsRange o
instance (GObject o, O.IsDescendantOf Range o) => IsRange o

instance O.HasParentTypes Range
type instance O.ParentTypes Range = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Range`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRange :: (MonadIO m, IsRange o) => o -> m Range
toRange = liftIO . unsafeCastTo Range

-- | A convenience alias for `Nothing` :: `Maybe` `Range`.
noRange :: Maybe Range
noRange = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRangeMethod (t :: Symbol) (o :: *) :: * where
    ResolveRangeMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveRangeMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveRangeMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveRangeMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveRangeMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveRangeMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveRangeMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveRangeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRangeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRangeMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveRangeMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveRangeMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveRangeMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveRangeMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveRangeMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveRangeMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveRangeMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveRangeMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveRangeMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveRangeMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveRangeMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveRangeMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveRangeMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveRangeMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveRangeMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveRangeMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveRangeMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveRangeMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveRangeMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveRangeMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveRangeMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveRangeMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveRangeMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveRangeMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveRangeMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveRangeMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveRangeMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveRangeMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveRangeMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveRangeMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveRangeMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveRangeMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveRangeMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveRangeMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveRangeMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveRangeMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveRangeMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveRangeMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveRangeMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveRangeMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveRangeMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveRangeMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveRangeMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveRangeMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveRangeMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveRangeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRangeMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveRangeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRangeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRangeMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveRangeMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveRangeMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveRangeMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveRangeMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveRangeMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveRangeMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveRangeMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveRangeMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveRangeMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveRangeMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveRangeMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveRangeMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveRangeMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveRangeMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveRangeMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveRangeMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveRangeMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveRangeMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveRangeMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveRangeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRangeMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveRangeMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveRangeMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveRangeMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveRangeMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveRangeMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveRangeMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveRangeMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveRangeMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveRangeMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveRangeMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveRangeMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveRangeMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveRangeMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveRangeMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveRangeMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveRangeMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveRangeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRangeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRangeMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveRangeMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveRangeMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveRangeMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveRangeMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveRangeMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveRangeMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveRangeMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveRangeMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveRangeMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveRangeMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveRangeMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveRangeMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveRangeMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveRangeMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveRangeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRangeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRangeMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveRangeMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveRangeMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveRangeMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveRangeMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveRangeMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveRangeMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveRangeMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveRangeMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveRangeMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveRangeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRangeMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveRangeMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveRangeMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveRangeMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveRangeMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveRangeMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveRangeMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveRangeMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveRangeMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveRangeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRangeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRangeMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveRangeMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveRangeMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveRangeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRangeMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveRangeMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveRangeMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveRangeMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveRangeMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveRangeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRangeMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveRangeMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveRangeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRangeMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveRangeMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveRangeMethod "getAdjustment" o = RangeGetAdjustmentMethodInfo
    ResolveRangeMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveRangeMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveRangeMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveRangeMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveRangeMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveRangeMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveRangeMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveRangeMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveRangeMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveRangeMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveRangeMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveRangeMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveRangeMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveRangeMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveRangeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRangeMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveRangeMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveRangeMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveRangeMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveRangeMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveRangeMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveRangeMethod "getFillLevel" o = RangeGetFillLevelMethodInfo
    ResolveRangeMethod "getFlippable" o = RangeGetFlippableMethodInfo
    ResolveRangeMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveRangeMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveRangeMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveRangeMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveRangeMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveRangeMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveRangeMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveRangeMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveRangeMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveRangeMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveRangeMethod "getInverted" o = RangeGetInvertedMethodInfo
    ResolveRangeMethod "getLowerStepperSensitivity" o = RangeGetLowerStepperSensitivityMethodInfo
    ResolveRangeMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveRangeMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveRangeMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveRangeMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveRangeMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveRangeMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveRangeMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveRangeMethod "getMinSliderSize" o = RangeGetMinSliderSizeMethodInfo
    ResolveRangeMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveRangeMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveRangeMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveRangeMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveRangeMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveRangeMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveRangeMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveRangeMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveRangeMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveRangeMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveRangeMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveRangeMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveRangeMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveRangeMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveRangeMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveRangeMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveRangeMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveRangeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRangeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRangeMethod "getRangeRect" o = RangeGetRangeRectMethodInfo
    ResolveRangeMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveRangeMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveRangeMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveRangeMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveRangeMethod "getRestrictToFillLevel" o = RangeGetRestrictToFillLevelMethodInfo
    ResolveRangeMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveRangeMethod "getRoundDigits" o = RangeGetRoundDigitsMethodInfo
    ResolveRangeMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveRangeMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveRangeMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveRangeMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveRangeMethod "getShowFillLevel" o = RangeGetShowFillLevelMethodInfo
    ResolveRangeMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveRangeMethod "getSliderRange" o = RangeGetSliderRangeMethodInfo
    ResolveRangeMethod "getSliderSizeFixed" o = RangeGetSliderSizeFixedMethodInfo
    ResolveRangeMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveRangeMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveRangeMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveRangeMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveRangeMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveRangeMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveRangeMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveRangeMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveRangeMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveRangeMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveRangeMethod "getUpperStepperSensitivity" o = RangeGetUpperStepperSensitivityMethodInfo
    ResolveRangeMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveRangeMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveRangeMethod "getValue" o = RangeGetValueMethodInfo
    ResolveRangeMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveRangeMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveRangeMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveRangeMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveRangeMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveRangeMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveRangeMethod "setAdjustment" o = RangeSetAdjustmentMethodInfo
    ResolveRangeMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveRangeMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveRangeMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveRangeMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveRangeMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveRangeMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveRangeMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveRangeMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveRangeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRangeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRangeMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveRangeMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveRangeMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveRangeMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveRangeMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveRangeMethod "setFillLevel" o = RangeSetFillLevelMethodInfo
    ResolveRangeMethod "setFlippable" o = RangeSetFlippableMethodInfo
    ResolveRangeMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveRangeMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveRangeMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveRangeMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveRangeMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveRangeMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveRangeMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveRangeMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveRangeMethod "setIncrements" o = RangeSetIncrementsMethodInfo
    ResolveRangeMethod "setInverted" o = RangeSetInvertedMethodInfo
    ResolveRangeMethod "setLowerStepperSensitivity" o = RangeSetLowerStepperSensitivityMethodInfo
    ResolveRangeMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveRangeMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveRangeMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveRangeMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveRangeMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveRangeMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveRangeMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveRangeMethod "setMinSliderSize" o = RangeSetMinSliderSizeMethodInfo
    ResolveRangeMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveRangeMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveRangeMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveRangeMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveRangeMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveRangeMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveRangeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRangeMethod "setRange" o = RangeSetRangeMethodInfo
    ResolveRangeMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveRangeMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveRangeMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveRangeMethod "setRestrictToFillLevel" o = RangeSetRestrictToFillLevelMethodInfo
    ResolveRangeMethod "setRoundDigits" o = RangeSetRoundDigitsMethodInfo
    ResolveRangeMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveRangeMethod "setShowFillLevel" o = RangeSetShowFillLevelMethodInfo
    ResolveRangeMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveRangeMethod "setSliderSizeFixed" o = RangeSetSliderSizeFixedMethodInfo
    ResolveRangeMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveRangeMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveRangeMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveRangeMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveRangeMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveRangeMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveRangeMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveRangeMethod "setUpperStepperSensitivity" o = RangeSetUpperStepperSensitivityMethodInfo
    ResolveRangeMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveRangeMethod "setValue" o = RangeSetValueMethodInfo
    ResolveRangeMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveRangeMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveRangeMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveRangeMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveRangeMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveRangeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRangeMethod t Range, O.MethodInfo info Range p) => OL.IsLabel t (Range -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Range::adjust-bounds
-- | Emitted before clamping a value, to give the application a
-- chance to adjust the bounds.
type RangeAdjustBoundsCallback =
    Double
    -- ^ /@value@/: the value before we clamp
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RangeAdjustBoundsCallback`@.
noRangeAdjustBoundsCallback :: Maybe RangeAdjustBoundsCallback
noRangeAdjustBoundsCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RangeAdjustBoundsCallback =
    Ptr () ->                               -- object
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RangeAdjustBoundsCallback`.
foreign import ccall "wrapper"
    mk_RangeAdjustBoundsCallback :: C_RangeAdjustBoundsCallback -> IO (FunPtr C_RangeAdjustBoundsCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RangeAdjustBounds :: MonadIO m => RangeAdjustBoundsCallback -> m (GClosure C_RangeAdjustBoundsCallback)
genClosure_RangeAdjustBounds cb = liftIO $ do
    let cb' = wrap_RangeAdjustBoundsCallback cb
    mk_RangeAdjustBoundsCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RangeAdjustBoundsCallback` into a `C_RangeAdjustBoundsCallback`.
wrap_RangeAdjustBoundsCallback ::
    RangeAdjustBoundsCallback ->
    C_RangeAdjustBoundsCallback
wrap_RangeAdjustBoundsCallback _cb _ value _ = do
    let value' = realToFrac value
    _cb  value'


-- | Connect a signal handler for the [adjustBounds](#signal:adjustBounds) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' range #adjustBounds callback
-- @
-- 
-- 
onRangeAdjustBounds :: (IsRange a, MonadIO m) => a -> RangeAdjustBoundsCallback -> m SignalHandlerId
onRangeAdjustBounds obj cb = liftIO $ do
    let cb' = wrap_RangeAdjustBoundsCallback cb
    cb'' <- mk_RangeAdjustBoundsCallback cb'
    connectSignalFunPtr obj "adjust-bounds" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [adjustBounds](#signal:adjustBounds) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' range #adjustBounds callback
-- @
-- 
-- 
afterRangeAdjustBounds :: (IsRange a, MonadIO m) => a -> RangeAdjustBoundsCallback -> m SignalHandlerId
afterRangeAdjustBounds obj cb = liftIO $ do
    let cb' = wrap_RangeAdjustBoundsCallback cb
    cb'' <- mk_RangeAdjustBoundsCallback cb'
    connectSignalFunPtr obj "adjust-bounds" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RangeAdjustBoundsSignalInfo
instance SignalInfo RangeAdjustBoundsSignalInfo where
    type HaskellCallbackType RangeAdjustBoundsSignalInfo = RangeAdjustBoundsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RangeAdjustBoundsCallback cb
        cb'' <- mk_RangeAdjustBoundsCallback cb'
        connectSignalFunPtr obj "adjust-bounds" cb'' connectMode detail

#endif

-- signal Range::change-value
-- | The [changeValue]("GI.Gtk.Objects.Range#signal:changeValue") signal is emitted when a scroll action is
-- performed on a range.  It allows an application to determine the
-- type of scroll event that occurred and the resultant new value.
-- The application can handle the event itself and return 'P.True' to
-- prevent further processing.  Or, by returning 'P.False', it can pass
-- the event to other handlers until the default GTK+ handler is
-- reached.
-- 
-- The value parameter is unrounded.  An application that overrides
-- the GtkRange[changeValue](#signal:changeValue) signal is responsible for clamping the
-- value to the desired number of decimal digits; the default GTK+
-- handler clamps the value based on t'GI.Gtk.Objects.Range.Range':@/round-digits/@.
-- 
-- /Since: 2.6/
type RangeChangeValueCallback =
    Gtk.Enums.ScrollType
    -- ^ /@scroll@/: the type of scroll action that was performed
    -> Double
    -- ^ /@value@/: the new value resulting from the scroll action
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to prevent other handlers from being invoked for
    --     the signal, 'P.False' to propagate the signal further

-- | A convenience synonym for @`Nothing` :: `Maybe` `RangeChangeValueCallback`@.
noRangeChangeValueCallback :: Maybe RangeChangeValueCallback
noRangeChangeValueCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RangeChangeValueCallback =
    Ptr () ->                               -- object
    CUInt ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_RangeChangeValueCallback`.
foreign import ccall "wrapper"
    mk_RangeChangeValueCallback :: C_RangeChangeValueCallback -> IO (FunPtr C_RangeChangeValueCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RangeChangeValue :: MonadIO m => RangeChangeValueCallback -> m (GClosure C_RangeChangeValueCallback)
genClosure_RangeChangeValue cb = liftIO $ do
    let cb' = wrap_RangeChangeValueCallback cb
    mk_RangeChangeValueCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RangeChangeValueCallback` into a `C_RangeChangeValueCallback`.
wrap_RangeChangeValueCallback ::
    RangeChangeValueCallback ->
    C_RangeChangeValueCallback
wrap_RangeChangeValueCallback _cb _ scroll value _ = do
    let scroll' = (toEnum . fromIntegral) scroll
    let value' = realToFrac value
    result <- _cb  scroll' value'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [changeValue](#signal:changeValue) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' range #changeValue callback
-- @
-- 
-- 
onRangeChangeValue :: (IsRange a, MonadIO m) => a -> RangeChangeValueCallback -> m SignalHandlerId
onRangeChangeValue obj cb = liftIO $ do
    let cb' = wrap_RangeChangeValueCallback cb
    cb'' <- mk_RangeChangeValueCallback cb'
    connectSignalFunPtr obj "change-value" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changeValue](#signal:changeValue) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' range #changeValue callback
-- @
-- 
-- 
afterRangeChangeValue :: (IsRange a, MonadIO m) => a -> RangeChangeValueCallback -> m SignalHandlerId
afterRangeChangeValue obj cb = liftIO $ do
    let cb' = wrap_RangeChangeValueCallback cb
    cb'' <- mk_RangeChangeValueCallback cb'
    connectSignalFunPtr obj "change-value" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RangeChangeValueSignalInfo
instance SignalInfo RangeChangeValueSignalInfo where
    type HaskellCallbackType RangeChangeValueSignalInfo = RangeChangeValueCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RangeChangeValueCallback cb
        cb'' <- mk_RangeChangeValueCallback cb'
        connectSignalFunPtr obj "change-value" cb'' connectMode detail

#endif

-- signal Range::move-slider
-- | Virtual function that moves the slider. Used for keybindings.
type RangeMoveSliderCallback =
    Gtk.Enums.ScrollType
    -- ^ /@step@/: how to move the slider
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RangeMoveSliderCallback`@.
noRangeMoveSliderCallback :: Maybe RangeMoveSliderCallback
noRangeMoveSliderCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RangeMoveSliderCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RangeMoveSliderCallback`.
foreign import ccall "wrapper"
    mk_RangeMoveSliderCallback :: C_RangeMoveSliderCallback -> IO (FunPtr C_RangeMoveSliderCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RangeMoveSlider :: MonadIO m => RangeMoveSliderCallback -> m (GClosure C_RangeMoveSliderCallback)
genClosure_RangeMoveSlider cb = liftIO $ do
    let cb' = wrap_RangeMoveSliderCallback cb
    mk_RangeMoveSliderCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RangeMoveSliderCallback` into a `C_RangeMoveSliderCallback`.
wrap_RangeMoveSliderCallback ::
    RangeMoveSliderCallback ->
    C_RangeMoveSliderCallback
wrap_RangeMoveSliderCallback _cb _ step _ = do
    let step' = (toEnum . fromIntegral) step
    _cb  step'


-- | Connect a signal handler for the [moveSlider](#signal:moveSlider) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' range #moveSlider callback
-- @
-- 
-- 
onRangeMoveSlider :: (IsRange a, MonadIO m) => a -> RangeMoveSliderCallback -> m SignalHandlerId
onRangeMoveSlider obj cb = liftIO $ do
    let cb' = wrap_RangeMoveSliderCallback cb
    cb'' <- mk_RangeMoveSliderCallback cb'
    connectSignalFunPtr obj "move-slider" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveSlider](#signal:moveSlider) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' range #moveSlider callback
-- @
-- 
-- 
afterRangeMoveSlider :: (IsRange a, MonadIO m) => a -> RangeMoveSliderCallback -> m SignalHandlerId
afterRangeMoveSlider obj cb = liftIO $ do
    let cb' = wrap_RangeMoveSliderCallback cb
    cb'' <- mk_RangeMoveSliderCallback cb'
    connectSignalFunPtr obj "move-slider" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RangeMoveSliderSignalInfo
instance SignalInfo RangeMoveSliderSignalInfo where
    type HaskellCallbackType RangeMoveSliderSignalInfo = RangeMoveSliderCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RangeMoveSliderCallback cb
        cb'' <- mk_RangeMoveSliderCallback cb'
        connectSignalFunPtr obj "move-slider" cb'' connectMode detail

#endif

-- signal Range::value-changed
-- | Emitted when the range value changes.
type RangeValueChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RangeValueChangedCallback`@.
noRangeValueChangedCallback :: Maybe RangeValueChangedCallback
noRangeValueChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RangeValueChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RangeValueChangedCallback`.
foreign import ccall "wrapper"
    mk_RangeValueChangedCallback :: C_RangeValueChangedCallback -> IO (FunPtr C_RangeValueChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RangeValueChanged :: MonadIO m => RangeValueChangedCallback -> m (GClosure C_RangeValueChangedCallback)
genClosure_RangeValueChanged cb = liftIO $ do
    let cb' = wrap_RangeValueChangedCallback cb
    mk_RangeValueChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RangeValueChangedCallback` into a `C_RangeValueChangedCallback`.
wrap_RangeValueChangedCallback ::
    RangeValueChangedCallback ->
    C_RangeValueChangedCallback
wrap_RangeValueChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' range #valueChanged callback
-- @
-- 
-- 
onRangeValueChanged :: (IsRange a, MonadIO m) => a -> RangeValueChangedCallback -> m SignalHandlerId
onRangeValueChanged obj cb = liftIO $ do
    let cb' = wrap_RangeValueChangedCallback cb
    cb'' <- mk_RangeValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' range #valueChanged callback
-- @
-- 
-- 
afterRangeValueChanged :: (IsRange a, MonadIO m) => a -> RangeValueChangedCallback -> m SignalHandlerId
afterRangeValueChanged obj cb = liftIO $ do
    let cb' = wrap_RangeValueChangedCallback cb
    cb'' <- mk_RangeValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RangeValueChangedSignalInfo
instance SignalInfo RangeValueChangedSignalInfo where
    type HaskellCallbackType RangeValueChangedSignalInfo = RangeValueChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RangeValueChangedCallback cb
        cb'' <- mk_RangeValueChangedCallback cb'
        connectSignalFunPtr obj "value-changed" cb'' connectMode detail

#endif

-- VVV Prop "adjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #adjustment
-- @
getRangeAdjustment :: (MonadIO m, IsRange o) => o -> m Gtk.Adjustment.Adjustment
getRangeAdjustment obj = liftIO $ checkUnexpectedNothing "getRangeAdjustment" $ B.Properties.getObjectPropertyObject obj "adjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #adjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeAdjustment :: (MonadIO m, IsRange o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setRangeAdjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "adjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@adjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeAdjustment :: (IsRange o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructRangeAdjustment val = B.Properties.constructObjectPropertyObject "adjustment" (Just val)

#if defined(ENABLE_OVERLOADING)
data RangeAdjustmentPropertyInfo
instance AttrInfo RangeAdjustmentPropertyInfo where
    type AttrAllowedOps RangeAdjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeAdjustmentPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint RangeAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType RangeAdjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType RangeAdjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel RangeAdjustmentPropertyInfo = "adjustment"
    type AttrOrigin RangeAdjustmentPropertyInfo = Range
    attrGet = getRangeAdjustment
    attrSet = setRangeAdjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructRangeAdjustment
    attrClear = undefined
#endif

-- VVV Prop "fill-level"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #fillLevel
-- @
getRangeFillLevel :: (MonadIO m, IsRange o) => o -> m Double
getRangeFillLevel obj = liftIO $ B.Properties.getObjectPropertyDouble obj "fill-level"

-- | Set the value of the “@fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #fillLevel 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeFillLevel :: (MonadIO m, IsRange o) => o -> Double -> m ()
setRangeFillLevel obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "fill-level" val

-- | Construct a `GValueConstruct` with valid value for the “@fill-level@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeFillLevel :: (IsRange o) => Double -> IO (GValueConstruct o)
constructRangeFillLevel val = B.Properties.constructObjectPropertyDouble "fill-level" val

#if defined(ENABLE_OVERLOADING)
data RangeFillLevelPropertyInfo
instance AttrInfo RangeFillLevelPropertyInfo where
    type AttrAllowedOps RangeFillLevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeFillLevelPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeFillLevelPropertyInfo = (~) Double
    type AttrTransferTypeConstraint RangeFillLevelPropertyInfo = (~) Double
    type AttrTransferType RangeFillLevelPropertyInfo = Double
    type AttrGetType RangeFillLevelPropertyInfo = Double
    type AttrLabel RangeFillLevelPropertyInfo = "fill-level"
    type AttrOrigin RangeFillLevelPropertyInfo = Range
    attrGet = getRangeFillLevel
    attrSet = setRangeFillLevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeFillLevel
    attrClear = undefined
#endif

-- VVV Prop "inverted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #inverted
-- @
getRangeInverted :: (MonadIO m, IsRange o) => o -> m Bool
getRangeInverted obj = liftIO $ B.Properties.getObjectPropertyBool obj "inverted"

-- | Set the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #inverted 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeInverted :: (MonadIO m, IsRange o) => o -> Bool -> m ()
setRangeInverted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inverted" val

-- | Construct a `GValueConstruct` with valid value for the “@inverted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeInverted :: (IsRange o) => Bool -> IO (GValueConstruct o)
constructRangeInverted val = B.Properties.constructObjectPropertyBool "inverted" val

#if defined(ENABLE_OVERLOADING)
data RangeInvertedPropertyInfo
instance AttrInfo RangeInvertedPropertyInfo where
    type AttrAllowedOps RangeInvertedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeInvertedPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeInvertedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint RangeInvertedPropertyInfo = (~) Bool
    type AttrTransferType RangeInvertedPropertyInfo = Bool
    type AttrGetType RangeInvertedPropertyInfo = Bool
    type AttrLabel RangeInvertedPropertyInfo = "inverted"
    type AttrOrigin RangeInvertedPropertyInfo = Range
    attrGet = getRangeInverted
    attrSet = setRangeInverted
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeInverted
    attrClear = undefined
#endif

-- VVV Prop "lower-stepper-sensitivity"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@lower-stepper-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #lowerStepperSensitivity
-- @
getRangeLowerStepperSensitivity :: (MonadIO m, IsRange o) => o -> m Gtk.Enums.SensitivityType
getRangeLowerStepperSensitivity obj = liftIO $ B.Properties.getObjectPropertyEnum obj "lower-stepper-sensitivity"

-- | Set the value of the “@lower-stepper-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #lowerStepperSensitivity 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeLowerStepperSensitivity :: (MonadIO m, IsRange o) => o -> Gtk.Enums.SensitivityType -> m ()
setRangeLowerStepperSensitivity obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "lower-stepper-sensitivity" val

-- | Construct a `GValueConstruct` with valid value for the “@lower-stepper-sensitivity@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeLowerStepperSensitivity :: (IsRange o) => Gtk.Enums.SensitivityType -> IO (GValueConstruct o)
constructRangeLowerStepperSensitivity val = B.Properties.constructObjectPropertyEnum "lower-stepper-sensitivity" val

#if defined(ENABLE_OVERLOADING)
data RangeLowerStepperSensitivityPropertyInfo
instance AttrInfo RangeLowerStepperSensitivityPropertyInfo where
    type AttrAllowedOps RangeLowerStepperSensitivityPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeLowerStepperSensitivityPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeLowerStepperSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferTypeConstraint RangeLowerStepperSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferType RangeLowerStepperSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrGetType RangeLowerStepperSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrLabel RangeLowerStepperSensitivityPropertyInfo = "lower-stepper-sensitivity"
    type AttrOrigin RangeLowerStepperSensitivityPropertyInfo = Range
    attrGet = getRangeLowerStepperSensitivity
    attrSet = setRangeLowerStepperSensitivity
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeLowerStepperSensitivity
    attrClear = undefined
#endif

-- VVV Prop "restrict-to-fill-level"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@restrict-to-fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #restrictToFillLevel
-- @
getRangeRestrictToFillLevel :: (MonadIO m, IsRange o) => o -> m Bool
getRangeRestrictToFillLevel obj = liftIO $ B.Properties.getObjectPropertyBool obj "restrict-to-fill-level"

-- | Set the value of the “@restrict-to-fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #restrictToFillLevel 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeRestrictToFillLevel :: (MonadIO m, IsRange o) => o -> Bool -> m ()
setRangeRestrictToFillLevel obj val = liftIO $ B.Properties.setObjectPropertyBool obj "restrict-to-fill-level" val

-- | Construct a `GValueConstruct` with valid value for the “@restrict-to-fill-level@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeRestrictToFillLevel :: (IsRange o) => Bool -> IO (GValueConstruct o)
constructRangeRestrictToFillLevel val = B.Properties.constructObjectPropertyBool "restrict-to-fill-level" val

#if defined(ENABLE_OVERLOADING)
data RangeRestrictToFillLevelPropertyInfo
instance AttrInfo RangeRestrictToFillLevelPropertyInfo where
    type AttrAllowedOps RangeRestrictToFillLevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeRestrictToFillLevelPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeRestrictToFillLevelPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint RangeRestrictToFillLevelPropertyInfo = (~) Bool
    type AttrTransferType RangeRestrictToFillLevelPropertyInfo = Bool
    type AttrGetType RangeRestrictToFillLevelPropertyInfo = Bool
    type AttrLabel RangeRestrictToFillLevelPropertyInfo = "restrict-to-fill-level"
    type AttrOrigin RangeRestrictToFillLevelPropertyInfo = Range
    attrGet = getRangeRestrictToFillLevel
    attrSet = setRangeRestrictToFillLevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeRestrictToFillLevel
    attrClear = undefined
#endif

-- VVV Prop "round-digits"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@round-digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #roundDigits
-- @
getRangeRoundDigits :: (MonadIO m, IsRange o) => o -> m Int32
getRangeRoundDigits obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "round-digits"

-- | Set the value of the “@round-digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #roundDigits 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeRoundDigits :: (MonadIO m, IsRange o) => o -> Int32 -> m ()
setRangeRoundDigits obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "round-digits" val

-- | Construct a `GValueConstruct` with valid value for the “@round-digits@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeRoundDigits :: (IsRange o) => Int32 -> IO (GValueConstruct o)
constructRangeRoundDigits val = B.Properties.constructObjectPropertyInt32 "round-digits" val

#if defined(ENABLE_OVERLOADING)
data RangeRoundDigitsPropertyInfo
instance AttrInfo RangeRoundDigitsPropertyInfo where
    type AttrAllowedOps RangeRoundDigitsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeRoundDigitsPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeRoundDigitsPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint RangeRoundDigitsPropertyInfo = (~) Int32
    type AttrTransferType RangeRoundDigitsPropertyInfo = Int32
    type AttrGetType RangeRoundDigitsPropertyInfo = Int32
    type AttrLabel RangeRoundDigitsPropertyInfo = "round-digits"
    type AttrOrigin RangeRoundDigitsPropertyInfo = Range
    attrGet = getRangeRoundDigits
    attrSet = setRangeRoundDigits
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeRoundDigits
    attrClear = undefined
#endif

-- VVV Prop "show-fill-level"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #showFillLevel
-- @
getRangeShowFillLevel :: (MonadIO m, IsRange o) => o -> m Bool
getRangeShowFillLevel obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-fill-level"

-- | Set the value of the “@show-fill-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #showFillLevel 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeShowFillLevel :: (MonadIO m, IsRange o) => o -> Bool -> m ()
setRangeShowFillLevel obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-fill-level" val

-- | Construct a `GValueConstruct` with valid value for the “@show-fill-level@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeShowFillLevel :: (IsRange o) => Bool -> IO (GValueConstruct o)
constructRangeShowFillLevel val = B.Properties.constructObjectPropertyBool "show-fill-level" val

#if defined(ENABLE_OVERLOADING)
data RangeShowFillLevelPropertyInfo
instance AttrInfo RangeShowFillLevelPropertyInfo where
    type AttrAllowedOps RangeShowFillLevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeShowFillLevelPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeShowFillLevelPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint RangeShowFillLevelPropertyInfo = (~) Bool
    type AttrTransferType RangeShowFillLevelPropertyInfo = Bool
    type AttrGetType RangeShowFillLevelPropertyInfo = Bool
    type AttrLabel RangeShowFillLevelPropertyInfo = "show-fill-level"
    type AttrOrigin RangeShowFillLevelPropertyInfo = Range
    attrGet = getRangeShowFillLevel
    attrSet = setRangeShowFillLevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeShowFillLevel
    attrClear = undefined
#endif

-- VVV Prop "upper-stepper-sensitivity"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@upper-stepper-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' range #upperStepperSensitivity
-- @
getRangeUpperStepperSensitivity :: (MonadIO m, IsRange o) => o -> m Gtk.Enums.SensitivityType
getRangeUpperStepperSensitivity obj = liftIO $ B.Properties.getObjectPropertyEnum obj "upper-stepper-sensitivity"

-- | Set the value of the “@upper-stepper-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' range [ #upperStepperSensitivity 'Data.GI.Base.Attributes.:=' value ]
-- @
setRangeUpperStepperSensitivity :: (MonadIO m, IsRange o) => o -> Gtk.Enums.SensitivityType -> m ()
setRangeUpperStepperSensitivity obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "upper-stepper-sensitivity" val

-- | Construct a `GValueConstruct` with valid value for the “@upper-stepper-sensitivity@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRangeUpperStepperSensitivity :: (IsRange o) => Gtk.Enums.SensitivityType -> IO (GValueConstruct o)
constructRangeUpperStepperSensitivity val = B.Properties.constructObjectPropertyEnum "upper-stepper-sensitivity" val

#if defined(ENABLE_OVERLOADING)
data RangeUpperStepperSensitivityPropertyInfo
instance AttrInfo RangeUpperStepperSensitivityPropertyInfo where
    type AttrAllowedOps RangeUpperStepperSensitivityPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RangeUpperStepperSensitivityPropertyInfo = IsRange
    type AttrSetTypeConstraint RangeUpperStepperSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferTypeConstraint RangeUpperStepperSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferType RangeUpperStepperSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrGetType RangeUpperStepperSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrLabel RangeUpperStepperSensitivityPropertyInfo = "upper-stepper-sensitivity"
    type AttrOrigin RangeUpperStepperSensitivityPropertyInfo = Range
    attrGet = getRangeUpperStepperSensitivity
    attrSet = setRangeUpperStepperSensitivity
    attrTransfer _ v = do
        return v
    attrConstruct = constructRangeUpperStepperSensitivity
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Range
type instance O.AttributeList Range = RangeAttributeList
type RangeAttributeList = ('[ '("adjustment", RangeAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fillLevel", RangeFillLevelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", RangeInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("lowerStepperSensitivity", RangeLowerStepperSensitivityPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("restrictToFillLevel", RangeRestrictToFillLevelPropertyInfo), '("roundDigits", RangeRoundDigitsPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showFillLevel", RangeShowFillLevelPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("upperStepperSensitivity", RangeUpperStepperSensitivityPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
rangeAdjustment :: AttrLabelProxy "adjustment"
rangeAdjustment = AttrLabelProxy

rangeFillLevel :: AttrLabelProxy "fillLevel"
rangeFillLevel = AttrLabelProxy

rangeInverted :: AttrLabelProxy "inverted"
rangeInverted = AttrLabelProxy

rangeLowerStepperSensitivity :: AttrLabelProxy "lowerStepperSensitivity"
rangeLowerStepperSensitivity = AttrLabelProxy

rangeRestrictToFillLevel :: AttrLabelProxy "restrictToFillLevel"
rangeRestrictToFillLevel = AttrLabelProxy

rangeRoundDigits :: AttrLabelProxy "roundDigits"
rangeRoundDigits = AttrLabelProxy

rangeShowFillLevel :: AttrLabelProxy "showFillLevel"
rangeShowFillLevel = AttrLabelProxy

rangeUpperStepperSensitivity :: AttrLabelProxy "upperStepperSensitivity"
rangeUpperStepperSensitivity = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Range = RangeSignalList
type RangeSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("adjustBounds", RangeAdjustBoundsSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", RangeChangeValueSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSlider", RangeMoveSliderSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", RangeValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Range::get_adjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_adjustment" gtk_range_get_adjustment :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Get the t'GI.Gtk.Objects.Adjustment.Adjustment' which is the “model” object for t'GI.Gtk.Objects.Range.Range'.
-- See 'GI.Gtk.Objects.Range.rangeSetAdjustment' for details.
-- The return value does not have a reference added, so should not
-- be unreferenced.
rangeGetAdjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Adjustment.Adjustment'
rangeGetAdjustment range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_adjustment range'
    checkUnexpectedReturnNULL "rangeGetAdjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetAdjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsRange a) => O.MethodInfo RangeGetAdjustmentMethodInfo a signature where
    overloadedMethod = rangeGetAdjustment

#endif

-- method Range::get_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_fill_level" gtk_range_get_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CDouble

-- | Gets the current position of the fill level indicator.
-- 
-- /Since: 2.12/
rangeGetFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: A t'GI.Gtk.Objects.Range.Range'
    -> m Double
    -- ^ __Returns:__ The current fill level
rangeGetFillLevel range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_fill_level range'
    let result' = realToFrac result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetFillLevelMethodInfo
instance (signature ~ (m Double), MonadIO m, IsRange a) => O.MethodInfo RangeGetFillLevelMethodInfo a signature where
    overloadedMethod = rangeGetFillLevel

#endif

-- method Range::get_flippable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_get_flippable" gtk_range_get_flippable :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CInt

-- | Gets the value set by 'GI.Gtk.Objects.Range.rangeSetFlippable'.
-- 
-- /Since: 2.18/
rangeGetFlippable ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the range is flippable
rangeGetFlippable range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_flippable range'
    let result' = (/= 0) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetFlippableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRange a) => O.MethodInfo RangeGetFlippableMethodInfo a signature where
    overloadedMethod = rangeGetFlippable

#endif

-- method Range::get_inverted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_get_inverted" gtk_range_get_inverted :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CInt

-- | Gets the value set by 'GI.Gtk.Objects.Range.rangeSetInverted'.
rangeGetInverted ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the range is inverted
rangeGetInverted range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_inverted range'
    let result' = (/= 0) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetInvertedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRange a) => O.MethodInfo RangeGetInvertedMethodInfo a signature where
    overloadedMethod = rangeGetInverted

#endif

-- method Range::get_lower_stepper_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SensitivityType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_lower_stepper_sensitivity" gtk_range_get_lower_stepper_sensitivity :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CUInt

-- | Gets the sensitivity policy for the stepper that points to the
-- \'lower\' end of the GtkRange’s adjustment.
-- 
-- /Since: 2.10/
rangeGetLowerStepperSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Gtk.Enums.SensitivityType
    -- ^ __Returns:__ The lower stepper’s sensitivity policy.
rangeGetLowerStepperSensitivity range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_lower_stepper_sensitivity range'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetLowerStepperSensitivityMethodInfo
instance (signature ~ (m Gtk.Enums.SensitivityType), MonadIO m, IsRange a) => O.MethodInfo RangeGetLowerStepperSensitivityMethodInfo a signature where
    overloadedMethod = rangeGetLowerStepperSensitivity

#endif

-- method Range::get_min_slider_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_min_slider_size" gtk_range_get_min_slider_size :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO Int32

{-# DEPRECATED rangeGetMinSliderSize ["(Since version 3.20)","Use the min-height\\/min-width CSS properties on the slider","  node."] #-}
-- | This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- See 'GI.Gtk.Objects.Range.rangeSetMinSliderSize'.
-- 
-- /Since: 2.20/
rangeGetMinSliderSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Int32
    -- ^ __Returns:__ The minimum size of the range’s slider.
rangeGetMinSliderSize range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_min_slider_size range'
    touchManagedPtr range
    return result

#if defined(ENABLE_OVERLOADING)
data RangeGetMinSliderSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRange a) => O.MethodInfo RangeGetMinSliderSizeMethodInfo a signature where
    overloadedMethod = rangeGetMinSliderSize

#endif

-- method Range::get_range_rect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "range_rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the range rectangle"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_range_rect" gtk_range_get_range_rect :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    Ptr Gdk.Rectangle.Rectangle ->          -- range_rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | This function returns the area that contains the range’s trough
-- and its steppers, in widget->window coordinates.
-- 
-- This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- /Since: 2.20/
rangeGetRangeRect ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m (Gdk.Rectangle.Rectangle)
rangeGetRangeRect range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    rangeRect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    gtk_range_get_range_rect range' rangeRect
    rangeRect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rangeRect
    touchManagedPtr range
    return rangeRect'

#if defined(ENABLE_OVERLOADING)
data RangeGetRangeRectMethodInfo
instance (signature ~ (m (Gdk.Rectangle.Rectangle)), MonadIO m, IsRange a) => O.MethodInfo RangeGetRangeRectMethodInfo a signature where
    overloadedMethod = rangeGetRangeRect

#endif

-- method Range::get_restrict_to_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkRange" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_get_restrict_to_fill_level" gtk_range_get_restrict_to_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CInt

-- | Gets whether the range is restricted to the fill level.
-- 
-- /Since: 2.12/
rangeGetRestrictToFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: A t'GI.Gtk.Objects.Range.Range'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@range@/ is restricted to the fill level.
rangeGetRestrictToFillLevel range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_restrict_to_fill_level range'
    let result' = (/= 0) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetRestrictToFillLevelMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRange a) => O.MethodInfo RangeGetRestrictToFillLevelMethodInfo a signature where
    overloadedMethod = rangeGetRestrictToFillLevel

#endif

-- method Range::get_round_digits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_round_digits" gtk_range_get_round_digits :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO Int32

-- | Gets the number of digits to round the value to when
-- it changes. See [changeValue]("GI.Gtk.Objects.Range#signal:changeValue").
-- 
-- /Since: 2.24/
rangeGetRoundDigits ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Int32
    -- ^ __Returns:__ the number of digits to round to
rangeGetRoundDigits range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_round_digits range'
    touchManagedPtr range
    return result

#if defined(ENABLE_OVERLOADING)
data RangeGetRoundDigitsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRange a) => O.MethodInfo RangeGetRoundDigitsMethodInfo a signature where
    overloadedMethod = rangeGetRoundDigits

#endif

-- method Range::get_show_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkRange" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_get_show_fill_level" gtk_range_get_show_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CInt

-- | Gets whether the range displays the fill level graphically.
-- 
-- /Since: 2.12/
rangeGetShowFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: A t'GI.Gtk.Objects.Range.Range'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@range@/ shows the fill level.
rangeGetShowFillLevel range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_show_fill_level range'
    let result' = (/= 0) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetShowFillLevelMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRange a) => O.MethodInfo RangeGetShowFillLevelMethodInfo a signature where
    overloadedMethod = rangeGetShowFillLevel

#endif

-- method Range::get_slider_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "slider_start"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for the slider's\n    start, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "slider_end"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for the slider's\n    end, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_slider_range" gtk_range_get_slider_range :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    Ptr Int32 ->                            -- slider_start : TBasicType TInt
    Ptr Int32 ->                            -- slider_end : TBasicType TInt
    IO ()

-- | This function returns sliders range along the long dimension,
-- in widget->window coordinates.
-- 
-- This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- /Since: 2.20/
rangeGetSliderRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m ((Int32, Int32))
rangeGetSliderRange range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    sliderStart <- allocMem :: IO (Ptr Int32)
    sliderEnd <- allocMem :: IO (Ptr Int32)
    gtk_range_get_slider_range range' sliderStart sliderEnd
    sliderStart' <- peek sliderStart
    sliderEnd' <- peek sliderEnd
    touchManagedPtr range
    freeMem sliderStart
    freeMem sliderEnd
    return (sliderStart', sliderEnd')

#if defined(ENABLE_OVERLOADING)
data RangeGetSliderRangeMethodInfo
instance (signature ~ (m ((Int32, Int32))), MonadIO m, IsRange a) => O.MethodInfo RangeGetSliderRangeMethodInfo a signature where
    overloadedMethod = rangeGetSliderRange

#endif

-- method Range::get_slider_size_fixed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_get_slider_size_fixed" gtk_range_get_slider_size_fixed :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CInt

-- | This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- See 'GI.Gtk.Objects.Range.rangeSetSliderSizeFixed'.
-- 
-- /Since: 2.20/
rangeGetSliderSizeFixed ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Bool
    -- ^ __Returns:__ whether the range’s slider has a fixed size.
rangeGetSliderSizeFixed range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_slider_size_fixed range'
    let result' = (/= 0) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetSliderSizeFixedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRange a) => O.MethodInfo RangeGetSliderSizeFixedMethodInfo a signature where
    overloadedMethod = rangeGetSliderSizeFixed

#endif

-- method Range::get_upper_stepper_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SensitivityType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_upper_stepper_sensitivity" gtk_range_get_upper_stepper_sensitivity :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CUInt

-- | Gets the sensitivity policy for the stepper that points to the
-- \'upper\' end of the GtkRange’s adjustment.
-- 
-- /Since: 2.10/
rangeGetUpperStepperSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Gtk.Enums.SensitivityType
    -- ^ __Returns:__ The upper stepper’s sensitivity policy.
rangeGetUpperStepperSensitivity range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_upper_stepper_sensitivity range'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetUpperStepperSensitivityMethodInfo
instance (signature ~ (m Gtk.Enums.SensitivityType), MonadIO m, IsRange a) => O.MethodInfo RangeGetUpperStepperSensitivityMethodInfo a signature where
    overloadedMethod = rangeGetUpperStepperSensitivity

#endif

-- method Range::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_range_get_value" gtk_range_get_value :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    IO CDouble

-- | Gets the current value of the range.
rangeGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> m Double
    -- ^ __Returns:__ current value of the range.
rangeGetValue range = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    result <- gtk_range_get_value range'
    let result' = realToFrac result
    touchManagedPtr range
    return result'

#if defined(ENABLE_OVERLOADING)
data RangeGetValueMethodInfo
instance (signature ~ (m Double), MonadIO m, IsRange a) => O.MethodInfo RangeGetValueMethodInfo a signature where
    overloadedMethod = rangeGetValue

#endif

-- method Range::set_adjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAdjustment" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_set_adjustment" gtk_range_set_adjustment :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Sets the adjustment to be used as the “model” object for this range
-- widget. The adjustment indicates the current range value, the
-- minimum and maximum range values, the step\/page increments used
-- for keybindings and scrolling, and the page size. The page size
-- is normally 0 for t'GI.Gtk.Objects.Scale.Scale' and nonzero for t'GI.Gtk.Objects.Scrollbar.Scrollbar', and
-- indicates the size of the visible area of the widget being scrolled.
-- The page size affects the size of the scrollbar slider.
rangeSetAdjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> b
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m ()
rangeSetAdjustment range adjustment = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_range_set_adjustment range' adjustment'
    touchManagedPtr range
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetAdjustmentMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsRange a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo RangeSetAdjustmentMethodInfo a signature where
    overloadedMethod = rangeSetAdjustment

#endif

-- method Range::set_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fill_level"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new position of the fill level indicator"
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

foreign import ccall "gtk_range_set_fill_level" gtk_range_set_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CDouble ->                              -- fill_level : TBasicType TDouble
    IO ()

-- | Set the new position of the fill level indicator.
-- 
-- The “fill level” is probably best described by its most prominent
-- use case, which is an indicator for the amount of pre-buffering in
-- a streaming media player. In that use case, the value of the range
-- would indicate the current play position, and the fill level would
-- be the position up to which the file\/stream has been downloaded.
-- 
-- This amount of prebuffering can be displayed on the range’s trough
-- and is themeable separately from the trough. To enable fill level
-- display, use 'GI.Gtk.Objects.Range.rangeSetShowFillLevel'. The range defaults
-- to not showing the fill level.
-- 
-- Additionally, it’s possible to restrict the range’s slider position
-- to values which are smaller than the fill level. This is controller
-- by 'GI.Gtk.Objects.Range.rangeSetRestrictToFillLevel' and is by default
-- enabled.
-- 
-- /Since: 2.12/
rangeSetFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Double
    -- ^ /@fillLevel@/: the new position of the fill level indicator
    -> m ()
rangeSetFillLevel range fillLevel = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let fillLevel' = realToFrac fillLevel
    gtk_range_set_fill_level range' fillLevel'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetFillLevelMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetFillLevelMethodInfo a signature where
    overloadedMethod = rangeSetFillLevel

#endif

-- method Range::set_flippable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "flippable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make the range flippable"
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

foreign import ccall "gtk_range_set_flippable" gtk_range_set_flippable :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CInt ->                                 -- flippable : TBasicType TBoolean
    IO ()

-- | If a range is flippable, it will switch its direction if it is
-- horizontal and its direction is 'GI.Gtk.Enums.TextDirectionRtl'.
-- 
-- See 'GI.Gtk.Objects.Widget.widgetGetDirection'.
-- 
-- /Since: 2.18/
rangeSetFlippable ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Bool
    -- ^ /@flippable@/: 'P.True' to make the range flippable
    -> m ()
rangeSetFlippable range flippable = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let flippable' = (fromIntegral . fromEnum) flippable
    gtk_range_set_flippable range' flippable'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetFlippableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetFlippableMethodInfo a signature where
    overloadedMethod = rangeSetFlippable

#endif

-- method Range::set_increments
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "step size" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "page size" , sinceVersion = Nothing }
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

foreign import ccall "gtk_range_set_increments" gtk_range_set_increments :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CDouble ->                              -- step : TBasicType TDouble
    CDouble ->                              -- page : TBasicType TDouble
    IO ()

-- | Sets the step and page sizes for the range.
-- The step size is used when the user clicks the t'GI.Gtk.Objects.Scrollbar.Scrollbar'
-- arrows or moves t'GI.Gtk.Objects.Scale.Scale' via arrow keys. The page size
-- is used for example when moving via Page Up or Page Down keys.
rangeSetIncrements ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Double
    -- ^ /@step@/: step size
    -> Double
    -- ^ /@page@/: page size
    -> m ()
rangeSetIncrements range step page = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let step' = realToFrac step
    let page' = realToFrac page
    gtk_range_set_increments range' step' page'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetIncrementsMethodInfo
instance (signature ~ (Double -> Double -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetIncrementsMethodInfo a signature where
    overloadedMethod = rangeSetIncrements

#endif

-- method Range::set_inverted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "%TRUE to invert the range"
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

foreign import ccall "gtk_range_set_inverted" gtk_range_set_inverted :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Ranges normally move from lower to higher values as the
-- slider moves from top to bottom or left to right. Inverted
-- ranges have higher values at the top or on the right rather than
-- on the bottom or left.
rangeSetInverted ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Bool
    -- ^ /@setting@/: 'P.True' to invert the range
    -> m ()
rangeSetInverted range setting = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let setting' = (fromIntegral . fromEnum) setting
    gtk_range_set_inverted range' setting'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetInvertedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetInvertedMethodInfo a signature where
    overloadedMethod = rangeSetInverted

#endif

-- method Range::set_lower_stepper_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sensitivity"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SensitivityType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the lower stepper\8217s sensitivity policy."
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

foreign import ccall "gtk_range_set_lower_stepper_sensitivity" gtk_range_set_lower_stepper_sensitivity :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CUInt ->                                -- sensitivity : TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
    IO ()

-- | Sets the sensitivity policy for the stepper that points to the
-- \'lower\' end of the GtkRange’s adjustment.
-- 
-- /Since: 2.10/
rangeSetLowerStepperSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Gtk.Enums.SensitivityType
    -- ^ /@sensitivity@/: the lower stepper’s sensitivity policy.
    -> m ()
rangeSetLowerStepperSensitivity range sensitivity = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let sensitivity' = (fromIntegral . fromEnum) sensitivity
    gtk_range_set_lower_stepper_sensitivity range' sensitivity'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetLowerStepperSensitivityMethodInfo
instance (signature ~ (Gtk.Enums.SensitivityType -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetLowerStepperSensitivityMethodInfo a signature where
    overloadedMethod = rangeSetLowerStepperSensitivity

#endif

-- method Range::set_min_slider_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "min_size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The slider\8217s minimum size"
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

foreign import ccall "gtk_range_set_min_slider_size" gtk_range_set_min_slider_size :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    Int32 ->                                -- min_size : TBasicType TInt
    IO ()

{-# DEPRECATED rangeSetMinSliderSize ["(Since version 3.20)","Use the min-height\\/min-width CSS properties on the slider","  node."] #-}
-- | Sets the minimum size of the range’s slider.
-- 
-- This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- /Since: 2.20/
rangeSetMinSliderSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Int32
    -- ^ /@minSize@/: The slider’s minimum size
    -> m ()
rangeSetMinSliderSize range minSize = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    gtk_range_set_min_slider_size range' minSize
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetMinSliderSizeMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetMinSliderSizeMethodInfo a signature where
    overloadedMethod = rangeSetMinSliderSize

#endif

-- method Range::set_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "min"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "minimum range value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "max"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "maximum range value"
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

foreign import ccall "gtk_range_set_range" gtk_range_set_range :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CDouble ->                              -- min : TBasicType TDouble
    CDouble ->                              -- max : TBasicType TDouble
    IO ()

-- | Sets the allowable values in the t'GI.Gtk.Objects.Range.Range', and clamps the range
-- value to be between /@min@/ and /@max@/. (If the range has a non-zero
-- page size, it is clamped between /@min@/ and /@max@/ - page-size.)
rangeSetRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Double
    -- ^ /@min@/: minimum range value
    -> Double
    -- ^ /@max@/: maximum range value
    -> m ()
rangeSetRange range min max = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let min' = realToFrac min
    let max' = realToFrac max
    gtk_range_set_range range' min' max'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetRangeMethodInfo
instance (signature ~ (Double -> Double -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetRangeMethodInfo a signature where
    overloadedMethod = rangeSetRange

#endif

-- method Range::set_restrict_to_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "restrict_to_fill_level"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Whether the fill level restricts slider movement."
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

foreign import ccall "gtk_range_set_restrict_to_fill_level" gtk_range_set_restrict_to_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CInt ->                                 -- restrict_to_fill_level : TBasicType TBoolean
    IO ()

-- | Sets whether the slider is restricted to the fill level. See
-- 'GI.Gtk.Objects.Range.rangeSetFillLevel' for a general description of the fill
-- level concept.
-- 
-- /Since: 2.12/
rangeSetRestrictToFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: A t'GI.Gtk.Objects.Range.Range'
    -> Bool
    -- ^ /@restrictToFillLevel@/: Whether the fill level restricts slider movement.
    -> m ()
rangeSetRestrictToFillLevel range restrictToFillLevel = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let restrictToFillLevel' = (fromIntegral . fromEnum) restrictToFillLevel
    gtk_range_set_restrict_to_fill_level range' restrictToFillLevel'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetRestrictToFillLevelMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetRestrictToFillLevelMethodInfo a signature where
    overloadedMethod = rangeSetRestrictToFillLevel

#endif

-- method Range::set_round_digits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "round_digits"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the precision in digits, or -1"
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

foreign import ccall "gtk_range_set_round_digits" gtk_range_set_round_digits :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    Int32 ->                                -- round_digits : TBasicType TInt
    IO ()

-- | Sets the number of digits to round the value to when
-- it changes. See [changeValue]("GI.Gtk.Objects.Range#signal:changeValue").
-- 
-- /Since: 2.24/
rangeSetRoundDigits ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Int32
    -- ^ /@roundDigits@/: the precision in digits, or -1
    -> m ()
rangeSetRoundDigits range roundDigits = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    gtk_range_set_round_digits range' roundDigits
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetRoundDigitsMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetRoundDigitsMethodInfo a signature where
    overloadedMethod = rangeSetRoundDigits

#endif

-- method Range::set_show_fill_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_fill_level"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Whether a fill level indicator graphics is shown."
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

foreign import ccall "gtk_range_set_show_fill_level" gtk_range_set_show_fill_level :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CInt ->                                 -- show_fill_level : TBasicType TBoolean
    IO ()

-- | Sets whether a graphical fill level is show on the trough. See
-- 'GI.Gtk.Objects.Range.rangeSetFillLevel' for a general description of the fill
-- level concept.
-- 
-- /Since: 2.12/
rangeSetShowFillLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: A t'GI.Gtk.Objects.Range.Range'
    -> Bool
    -- ^ /@showFillLevel@/: Whether a fill level indicator graphics is shown.
    -> m ()
rangeSetShowFillLevel range showFillLevel = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let showFillLevel' = (fromIntegral . fromEnum) showFillLevel
    gtk_range_set_show_fill_level range' showFillLevel'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetShowFillLevelMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetShowFillLevelMethodInfo a signature where
    overloadedMethod = rangeSetShowFillLevel

#endif

-- method Range::set_slider_size_fixed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size_fixed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make the slider size constant"
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

foreign import ccall "gtk_range_set_slider_size_fixed" gtk_range_set_slider_size_fixed :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CInt ->                                 -- size_fixed : TBasicType TBoolean
    IO ()

-- | Sets whether the range’s slider has a fixed size, or a size that
-- depends on its adjustment’s page size.
-- 
-- This function is useful mainly for t'GI.Gtk.Objects.Range.Range' subclasses.
-- 
-- /Since: 2.20/
rangeSetSliderSizeFixed ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Bool
    -- ^ /@sizeFixed@/: 'P.True' to make the slider size constant
    -> m ()
rangeSetSliderSizeFixed range sizeFixed = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let sizeFixed' = (fromIntegral . fromEnum) sizeFixed
    gtk_range_set_slider_size_fixed range' sizeFixed'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetSliderSizeFixedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetSliderSizeFixedMethodInfo a signature where
    overloadedMethod = rangeSetSliderSizeFixed

#endif

-- method Range::set_upper_stepper_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sensitivity"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SensitivityType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the upper stepper\8217s sensitivity policy."
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

foreign import ccall "gtk_range_set_upper_stepper_sensitivity" gtk_range_set_upper_stepper_sensitivity :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CUInt ->                                -- sensitivity : TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
    IO ()

-- | Sets the sensitivity policy for the stepper that points to the
-- \'upper\' end of the GtkRange’s adjustment.
-- 
-- /Since: 2.10/
rangeSetUpperStepperSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Gtk.Enums.SensitivityType
    -- ^ /@sensitivity@/: the upper stepper’s sensitivity policy.
    -> m ()
rangeSetUpperStepperSensitivity range sensitivity = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let sensitivity' = (fromIntegral . fromEnum) sensitivity
    gtk_range_set_upper_stepper_sensitivity range' sensitivity'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetUpperStepperSensitivityMethodInfo
instance (signature ~ (Gtk.Enums.SensitivityType -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetUpperStepperSensitivityMethodInfo a signature where
    overloadedMethod = rangeSetUpperStepperSensitivity

#endif

-- method Range::set_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "range"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Range" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRange" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "new value of the range"
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

foreign import ccall "gtk_range_set_value" gtk_range_set_value :: 
    Ptr Range ->                            -- range : TInterface (Name {namespace = "Gtk", name = "Range"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets the current value of the range; if the value is outside the
-- minimum or maximum range values, it will be clamped to fit inside
-- them. The range emits the [valueChanged]("GI.Gtk.Objects.Range#signal:valueChanged") signal if the
-- value changes.
rangeSetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsRange a) =>
    a
    -- ^ /@range@/: a t'GI.Gtk.Objects.Range.Range'
    -> Double
    -- ^ /@value@/: new value of the range
    -> m ()
rangeSetValue range value = liftIO $ do
    range' <- unsafeManagedPtrCastPtr range
    let value' = realToFrac value
    gtk_range_set_value range' value'
    touchManagedPtr range
    return ()

#if defined(ENABLE_OVERLOADING)
data RangeSetValueMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsRange a) => O.MethodInfo RangeSetValueMethodInfo a signature where
    overloadedMethod = rangeSetValue

#endif

