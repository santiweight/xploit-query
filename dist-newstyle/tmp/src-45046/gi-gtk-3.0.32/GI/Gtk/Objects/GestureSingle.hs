{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureSingle.GestureSingle' is a subclass of t'GI.Gtk.Objects.Gesture.Gesture', optimized (although
-- not restricted) for dealing with mouse and single-touch gestures. Under
-- interaction, these gestures stick to the first interacting sequence, which
-- is accessible through 'GI.Gtk.Objects.GestureSingle.gestureSingleGetCurrentSequence' while the
-- gesture is being interacted with.
-- 
-- By default gestures react to both 'GI.Gdk.Constants.BUTTON_PRIMARY' and touch
-- events, 'GI.Gtk.Objects.GestureSingle.gestureSingleSetTouchOnly' can be used to change the
-- touch behavior. Callers may also specify a different mouse button number
-- to interact with through 'GI.Gtk.Objects.GestureSingle.gestureSingleSetButton', or react to any
-- mouse button by setting 0. While the gesture is active, the button being
-- currently pressed can be known through 'GI.Gtk.Objects.GestureSingle.gestureSingleGetCurrentButton'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureSingle
    ( 

-- * Exported types
    GestureSingle(..)                       ,
    IsGestureSingle                         ,
    toGestureSingle                         ,
    noGestureSingle                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureSingleMethod              ,
#endif


-- ** getButton #method:getButton#

#if defined(ENABLE_OVERLOADING)
    GestureSingleGetButtonMethodInfo        ,
#endif
    gestureSingleGetButton                  ,


-- ** getCurrentButton #method:getCurrentButton#

#if defined(ENABLE_OVERLOADING)
    GestureSingleGetCurrentButtonMethodInfo ,
#endif
    gestureSingleGetCurrentButton           ,


-- ** getCurrentSequence #method:getCurrentSequence#

#if defined(ENABLE_OVERLOADING)
    GestureSingleGetCurrentSequenceMethodInfo,
#endif
    gestureSingleGetCurrentSequence         ,


-- ** getExclusive #method:getExclusive#

#if defined(ENABLE_OVERLOADING)
    GestureSingleGetExclusiveMethodInfo     ,
#endif
    gestureSingleGetExclusive               ,


-- ** getTouchOnly #method:getTouchOnly#

#if defined(ENABLE_OVERLOADING)
    GestureSingleGetTouchOnlyMethodInfo     ,
#endif
    gestureSingleGetTouchOnly               ,


-- ** setButton #method:setButton#

#if defined(ENABLE_OVERLOADING)
    GestureSingleSetButtonMethodInfo        ,
#endif
    gestureSingleSetButton                  ,


-- ** setExclusive #method:setExclusive#

#if defined(ENABLE_OVERLOADING)
    GestureSingleSetExclusiveMethodInfo     ,
#endif
    gestureSingleSetExclusive               ,


-- ** setTouchOnly #method:setTouchOnly#

#if defined(ENABLE_OVERLOADING)
    GestureSingleSetTouchOnlyMethodInfo     ,
#endif
    gestureSingleSetTouchOnly               ,




 -- * Properties
-- ** button #attr:button#
-- | Mouse button number to listen to, or 0 to listen for any button.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GestureSingleButtonPropertyInfo         ,
#endif
    constructGestureSingleButton            ,
#if defined(ENABLE_OVERLOADING)
    gestureSingleButton                     ,
#endif
    getGestureSingleButton                  ,
    setGestureSingleButton                  ,


-- ** exclusive #attr:exclusive#
-- | Whether the gesture is exclusive. Exclusive gestures only listen to pointer
-- and pointer emulated events.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GestureSingleExclusivePropertyInfo      ,
#endif
    constructGestureSingleExclusive         ,
#if defined(ENABLE_OVERLOADING)
    gestureSingleExclusive                  ,
#endif
    getGestureSingleExclusive               ,
    setGestureSingleExclusive               ,


-- ** touchOnly #attr:touchOnly#
-- | Whether the gesture handles only touch events.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GestureSingleTouchOnlyPropertyInfo      ,
#endif
    constructGestureSingleTouchOnly         ,
#if defined(ENABLE_OVERLOADING)
    gestureSingleTouchOnly                  ,
#endif
    getGestureSingleTouchOnly               ,
    setGestureSingleTouchOnly               ,




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
import qualified GI.Gdk.Structs.EventSequence as Gdk.EventSequence
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture

-- | Memory-managed wrapper type.
newtype GestureSingle = GestureSingle (ManagedPtr GestureSingle)
    deriving (Eq)
foreign import ccall "gtk_gesture_single_get_type"
    c_gtk_gesture_single_get_type :: IO GType

instance GObject GestureSingle where
    gobjectType = c_gtk_gesture_single_get_type
    

-- | Convert 'GestureSingle' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureSingle where
    toGValue o = do
        gtype <- c_gtk_gesture_single_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureSingle)
        B.ManagedPtr.newObject GestureSingle ptr
        
    

-- | Type class for types which can be safely cast to `GestureSingle`, for instance with `toGestureSingle`.
class (GObject o, O.IsDescendantOf GestureSingle o) => IsGestureSingle o
instance (GObject o, O.IsDescendantOf GestureSingle o) => IsGestureSingle o

instance O.HasParentTypes GestureSingle
type instance O.ParentTypes GestureSingle = '[Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureSingle`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureSingle :: (MonadIO m, IsGestureSingle o) => o -> m GestureSingle
toGestureSingle = liftIO . unsafeCastTo GestureSingle

-- | A convenience alias for `Nothing` :: `Maybe` `GestureSingle`.
noGestureSingle :: Maybe GestureSingle
noGestureSingle = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureSingleMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureSingleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureSingleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureSingleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureSingleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureSingleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureSingleMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureSingleMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureSingleMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureSingleMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureSingleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureSingleMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureSingleMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureSingleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureSingleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureSingleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureSingleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureSingleMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureSingleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureSingleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureSingleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureSingleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureSingleMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureSingleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureSingleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureSingleMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureSingleMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureSingleMethod "getButton" o = GestureSingleGetButtonMethodInfo
    ResolveGestureSingleMethod "getCurrentButton" o = GestureSingleGetCurrentButtonMethodInfo
    ResolveGestureSingleMethod "getCurrentSequence" o = GestureSingleGetCurrentSequenceMethodInfo
    ResolveGestureSingleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureSingleMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureSingleMethod "getExclusive" o = GestureSingleGetExclusiveMethodInfo
    ResolveGestureSingleMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureSingleMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureSingleMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureSingleMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureSingleMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureSingleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureSingleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureSingleMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureSingleMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureSingleMethod "getTouchOnly" o = GestureSingleGetTouchOnlyMethodInfo
    ResolveGestureSingleMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureSingleMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureSingleMethod "setButton" o = GestureSingleSetButtonMethodInfo
    ResolveGestureSingleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureSingleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureSingleMethod "setExclusive" o = GestureSingleSetExclusiveMethodInfo
    ResolveGestureSingleMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureSingleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureSingleMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureSingleMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureSingleMethod "setTouchOnly" o = GestureSingleSetTouchOnlyMethodInfo
    ResolveGestureSingleMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureSingleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureSingleMethod t GestureSingle, O.MethodInfo info GestureSingle p) => OL.IsLabel t (GestureSingle -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "button"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gestureSingle #button
-- @
getGestureSingleButton :: (MonadIO m, IsGestureSingle o) => o -> m Word32
getGestureSingleButton obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "button"

-- | Set the value of the “@button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' gestureSingle [ #button 'Data.GI.Base.Attributes.:=' value ]
-- @
setGestureSingleButton :: (MonadIO m, IsGestureSingle o) => o -> Word32 -> m ()
setGestureSingleButton obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "button" val

-- | Construct a `GValueConstruct` with valid value for the “@button@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGestureSingleButton :: (IsGestureSingle o) => Word32 -> IO (GValueConstruct o)
constructGestureSingleButton val = B.Properties.constructObjectPropertyUInt32 "button" val

#if defined(ENABLE_OVERLOADING)
data GestureSingleButtonPropertyInfo
instance AttrInfo GestureSingleButtonPropertyInfo where
    type AttrAllowedOps GestureSingleButtonPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GestureSingleButtonPropertyInfo = IsGestureSingle
    type AttrSetTypeConstraint GestureSingleButtonPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint GestureSingleButtonPropertyInfo = (~) Word32
    type AttrTransferType GestureSingleButtonPropertyInfo = Word32
    type AttrGetType GestureSingleButtonPropertyInfo = Word32
    type AttrLabel GestureSingleButtonPropertyInfo = "button"
    type AttrOrigin GestureSingleButtonPropertyInfo = GestureSingle
    attrGet = getGestureSingleButton
    attrSet = setGestureSingleButton
    attrTransfer _ v = do
        return v
    attrConstruct = constructGestureSingleButton
    attrClear = undefined
#endif

-- VVV Prop "exclusive"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@exclusive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gestureSingle #exclusive
-- @
getGestureSingleExclusive :: (MonadIO m, IsGestureSingle o) => o -> m Bool
getGestureSingleExclusive obj = liftIO $ B.Properties.getObjectPropertyBool obj "exclusive"

-- | Set the value of the “@exclusive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' gestureSingle [ #exclusive 'Data.GI.Base.Attributes.:=' value ]
-- @
setGestureSingleExclusive :: (MonadIO m, IsGestureSingle o) => o -> Bool -> m ()
setGestureSingleExclusive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "exclusive" val

-- | Construct a `GValueConstruct` with valid value for the “@exclusive@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGestureSingleExclusive :: (IsGestureSingle o) => Bool -> IO (GValueConstruct o)
constructGestureSingleExclusive val = B.Properties.constructObjectPropertyBool "exclusive" val

#if defined(ENABLE_OVERLOADING)
data GestureSingleExclusivePropertyInfo
instance AttrInfo GestureSingleExclusivePropertyInfo where
    type AttrAllowedOps GestureSingleExclusivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GestureSingleExclusivePropertyInfo = IsGestureSingle
    type AttrSetTypeConstraint GestureSingleExclusivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint GestureSingleExclusivePropertyInfo = (~) Bool
    type AttrTransferType GestureSingleExclusivePropertyInfo = Bool
    type AttrGetType GestureSingleExclusivePropertyInfo = Bool
    type AttrLabel GestureSingleExclusivePropertyInfo = "exclusive"
    type AttrOrigin GestureSingleExclusivePropertyInfo = GestureSingle
    attrGet = getGestureSingleExclusive
    attrSet = setGestureSingleExclusive
    attrTransfer _ v = do
        return v
    attrConstruct = constructGestureSingleExclusive
    attrClear = undefined
#endif

-- VVV Prop "touch-only"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@touch-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gestureSingle #touchOnly
-- @
getGestureSingleTouchOnly :: (MonadIO m, IsGestureSingle o) => o -> m Bool
getGestureSingleTouchOnly obj = liftIO $ B.Properties.getObjectPropertyBool obj "touch-only"

-- | Set the value of the “@touch-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' gestureSingle [ #touchOnly 'Data.GI.Base.Attributes.:=' value ]
-- @
setGestureSingleTouchOnly :: (MonadIO m, IsGestureSingle o) => o -> Bool -> m ()
setGestureSingleTouchOnly obj val = liftIO $ B.Properties.setObjectPropertyBool obj "touch-only" val

-- | Construct a `GValueConstruct` with valid value for the “@touch-only@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGestureSingleTouchOnly :: (IsGestureSingle o) => Bool -> IO (GValueConstruct o)
constructGestureSingleTouchOnly val = B.Properties.constructObjectPropertyBool "touch-only" val

#if defined(ENABLE_OVERLOADING)
data GestureSingleTouchOnlyPropertyInfo
instance AttrInfo GestureSingleTouchOnlyPropertyInfo where
    type AttrAllowedOps GestureSingleTouchOnlyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GestureSingleTouchOnlyPropertyInfo = IsGestureSingle
    type AttrSetTypeConstraint GestureSingleTouchOnlyPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint GestureSingleTouchOnlyPropertyInfo = (~) Bool
    type AttrTransferType GestureSingleTouchOnlyPropertyInfo = Bool
    type AttrGetType GestureSingleTouchOnlyPropertyInfo = Bool
    type AttrLabel GestureSingleTouchOnlyPropertyInfo = "touch-only"
    type AttrOrigin GestureSingleTouchOnlyPropertyInfo = GestureSingle
    attrGet = getGestureSingleTouchOnly
    attrSet = setGestureSingleTouchOnly
    attrTransfer _ v = do
        return v
    attrConstruct = constructGestureSingleTouchOnly
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureSingle
type instance O.AttributeList GestureSingle = GestureSingleAttributeList
type GestureSingleAttributeList = ('[ '("button", GestureSingleButtonPropertyInfo), '("exclusive", GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gestureSingleButton :: AttrLabelProxy "button"
gestureSingleButton = AttrLabelProxy

gestureSingleExclusive :: AttrLabelProxy "exclusive"
gestureSingleExclusive = AttrLabelProxy

gestureSingleTouchOnly :: AttrLabelProxy "touchOnly"
gestureSingleTouchOnly = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureSingle = GestureSingleSignalList
type GestureSingleSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureSingle::get_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_single_get_button" gtk_gesture_single_get_button :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    IO Word32

-- | Returns the button number /@gesture@/ listens for, or 0 if /@gesture@/
-- reacts to any button press.
-- 
-- /Since: 3.14/
gestureSingleGetButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> m Word32
    -- ^ __Returns:__ The button number, or 0 for any button
gestureSingleGetButton gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_single_get_button gesture'
    touchManagedPtr gesture
    return result

#if defined(ENABLE_OVERLOADING)
data GestureSingleGetButtonMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleGetButtonMethodInfo a signature where
    overloadedMethod = gestureSingleGetButton

#endif

-- method GestureSingle::get_current_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_single_get_current_button" gtk_gesture_single_get_current_button :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    IO Word32

-- | Returns the button number currently interacting with /@gesture@/, or 0 if there
-- is none.
-- 
-- /Since: 3.14/
gestureSingleGetCurrentButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> m Word32
    -- ^ __Returns:__ The current button number
gestureSingleGetCurrentButton gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_single_get_current_button gesture'
    touchManagedPtr gesture
    return result

#if defined(ENABLE_OVERLOADING)
data GestureSingleGetCurrentButtonMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleGetCurrentButtonMethodInfo a signature where
    overloadedMethod = gestureSingleGetCurrentButton

#endif

-- method GestureSingle::get_current_sequence
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
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
-- returnType: Just
--               (TInterface Name { namespace = "Gdk" , name = "EventSequence" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_single_get_current_sequence" gtk_gesture_single_get_current_sequence :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    IO (Ptr Gdk.EventSequence.EventSequence)

-- | Returns the event sequence currently interacting with /@gesture@/.
-- This is only meaningful if 'GI.Gtk.Objects.Gesture.gestureIsActive' returns 'P.True'.
-- 
-- /Since: 3.14/
gestureSingleGetCurrentSequence ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> m (Maybe Gdk.EventSequence.EventSequence)
    -- ^ __Returns:__ the current sequence
gestureSingleGetCurrentSequence gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_single_get_current_sequence gesture'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Gdk.EventSequence.EventSequence) result'
        return result''
    touchManagedPtr gesture
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureSingleGetCurrentSequenceMethodInfo
instance (signature ~ (m (Maybe Gdk.EventSequence.EventSequence)), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleGetCurrentSequenceMethodInfo a signature where
    overloadedMethod = gestureSingleGetCurrentSequence

#endif

-- method GestureSingle::get_exclusive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
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

foreign import ccall "gtk_gesture_single_get_exclusive" gtk_gesture_single_get_exclusive :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    IO CInt

-- | Gets whether a gesture is exclusive. For more information, see
-- 'GI.Gtk.Objects.GestureSingle.gestureSingleSetExclusive'.
-- 
-- /Since: 3.14/
gestureSingleGetExclusive ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> m Bool
    -- ^ __Returns:__ Whether the gesture is exclusive
gestureSingleGetExclusive gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_single_get_exclusive gesture'
    let result' = (/= 0) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureSingleGetExclusiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleGetExclusiveMethodInfo a signature where
    overloadedMethod = gestureSingleGetExclusive

#endif

-- method GestureSingle::get_touch_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
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

foreign import ccall "gtk_gesture_single_get_touch_only" gtk_gesture_single_get_touch_only :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    IO CInt

-- | Returns 'P.True' if the gesture is only triggered by touch events.
-- 
-- /Since: 3.14/
gestureSingleGetTouchOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the gesture only handles touch events
gestureSingleGetTouchOnly gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_single_get_touch_only gesture'
    let result' = (/= 0) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureSingleGetTouchOnlyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleGetTouchOnlyMethodInfo a signature where
    overloadedMethod = gestureSingleGetTouchOnly

#endif

-- method GestureSingle::set_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "button"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "button number to listen to, or 0 for any button"
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

foreign import ccall "gtk_gesture_single_set_button" gtk_gesture_single_set_button :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    Word32 ->                               -- button : TBasicType TUInt
    IO ()

-- | Sets the button number /@gesture@/ listens to. If non-0, every
-- button press from a different button number will be ignored.
-- Touch events implicitly match with button 1.
-- 
-- /Since: 3.14/
gestureSingleSetButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> Word32
    -- ^ /@button@/: button number to listen to, or 0 for any button
    -> m ()
gestureSingleSetButton gesture button = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    gtk_gesture_single_set_button gesture' button
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureSingleSetButtonMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleSetButtonMethodInfo a signature where
    overloadedMethod = gestureSingleSetButton

#endif

-- method GestureSingle::set_exclusive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "exclusive"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make @gesture exclusive"
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

foreign import ccall "gtk_gesture_single_set_exclusive" gtk_gesture_single_set_exclusive :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    CInt ->                                 -- exclusive : TBasicType TBoolean
    IO ()

-- | Sets whether /@gesture@/ is exclusive. An exclusive gesture will
-- only handle pointer and \"pointer emulated\" touch events, so at
-- any given time, there is only one sequence able to interact with
-- those.
-- 
-- /Since: 3.14/
gestureSingleSetExclusive ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> Bool
    -- ^ /@exclusive@/: 'P.True' to make /@gesture@/ exclusive
    -> m ()
gestureSingleSetExclusive gesture exclusive = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    let exclusive' = (fromIntegral . fromEnum) exclusive
    gtk_gesture_single_set_exclusive gesture' exclusive'
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureSingleSetExclusiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleSetExclusiveMethodInfo a signature where
    overloadedMethod = gestureSingleSetExclusive

#endif

-- method GestureSingle::set_touch_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSingle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSingle"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "touch_only"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether @gesture handles only touch events"
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

foreign import ccall "gtk_gesture_single_set_touch_only" gtk_gesture_single_set_touch_only :: 
    Ptr GestureSingle ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSingle"})
    CInt ->                                 -- touch_only : TBasicType TBoolean
    IO ()

-- | If /@touchOnly@/ is 'P.True', /@gesture@/ will only handle events of type
-- @/GDK_TOUCH_BEGIN/@, @/GDK_TOUCH_UPDATE/@ or @/GDK_TOUCH_END/@. If 'P.False',
-- mouse events will be handled too.
-- 
-- /Since: 3.14/
gestureSingleSetTouchOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSingle a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSingle.GestureSingle'
    -> Bool
    -- ^ /@touchOnly@/: whether /@gesture@/ handles only touch events
    -> m ()
gestureSingleSetTouchOnly gesture touchOnly = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    let touchOnly' = (fromIntegral . fromEnum) touchOnly
    gtk_gesture_single_set_touch_only gesture' touchOnly'
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureSingleSetTouchOnlyMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsGestureSingle a) => O.MethodInfo GestureSingleSetTouchOnlyMethodInfo a signature where
    overloadedMethod = gestureSingleSetTouchOnly

#endif

