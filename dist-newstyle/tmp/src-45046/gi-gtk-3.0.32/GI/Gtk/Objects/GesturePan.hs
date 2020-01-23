{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GesturePan.GesturePan' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation able to recognize
-- pan gestures, those are drags that are locked to happen along one
-- axis. The axis that a t'GI.Gtk.Objects.GesturePan.GesturePan' handles is defined at
-- construct time, and can be changed through
-- 'GI.Gtk.Objects.GesturePan.gesturePanSetOrientation'.
-- 
-- When the gesture starts to be recognized, t'GI.Gtk.Objects.GesturePan.GesturePan' will
-- attempt to determine as early as possible whether the sequence
-- is moving in the expected direction, and denying the sequence if
-- this does not happen.
-- 
-- Once a panning gesture along the expected axis is recognized,
-- the [pan]("GI.Gtk.Objects.GesturePan#signal:pan") signal will be emitted as input events
-- are received, containing the offset in the given axis.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GesturePan
    ( 

-- * Exported types
    GesturePan(..)                          ,
    IsGesturePan                            ,
    toGesturePan                            ,
    noGesturePan                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGesturePanMethod                 ,
#endif


-- ** getOrientation #method:getOrientation#

#if defined(ENABLE_OVERLOADING)
    GesturePanGetOrientationMethodInfo      ,
#endif
    gesturePanGetOrientation                ,


-- ** new #method:new#

    gesturePanNew                           ,


-- ** setOrientation #method:setOrientation#

#if defined(ENABLE_OVERLOADING)
    GesturePanSetOrientationMethodInfo      ,
#endif
    gesturePanSetOrientation                ,




 -- * Properties
-- ** orientation #attr:orientation#
-- | The expected orientation of pan gestures.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GesturePanOrientationPropertyInfo       ,
#endif
    constructGesturePanOrientation          ,
#if defined(ENABLE_OVERLOADING)
    gesturePanOrientation                   ,
#endif
    getGesturePanOrientation                ,
    setGesturePanOrientation                ,




 -- * Signals
-- ** pan #signal:pan#

    C_GesturePanPanCallback                 ,
    GesturePanPanCallback                   ,
#if defined(ENABLE_OVERLOADING)
    GesturePanPanSignalInfo                 ,
#endif
    afterGesturePanPan                      ,
    genClosure_GesturePanPan                ,
    mk_GesturePanPanCallback                ,
    noGesturePanPanCallback                 ,
    onGesturePanPan                         ,
    wrap_GesturePanPanCallback              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureDrag as Gtk.GestureDrag
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureSingle as Gtk.GestureSingle
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GesturePan = GesturePan (ManagedPtr GesturePan)
    deriving (Eq)
foreign import ccall "gtk_gesture_pan_get_type"
    c_gtk_gesture_pan_get_type :: IO GType

instance GObject GesturePan where
    gobjectType = c_gtk_gesture_pan_get_type
    

-- | Convert 'GesturePan' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GesturePan where
    toGValue o = do
        gtype <- c_gtk_gesture_pan_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GesturePan)
        B.ManagedPtr.newObject GesturePan ptr
        
    

-- | Type class for types which can be safely cast to `GesturePan`, for instance with `toGesturePan`.
class (GObject o, O.IsDescendantOf GesturePan o) => IsGesturePan o
instance (GObject o, O.IsDescendantOf GesturePan o) => IsGesturePan o

instance O.HasParentTypes GesturePan
type instance O.ParentTypes GesturePan = '[Gtk.GestureDrag.GestureDrag, Gtk.GestureSingle.GestureSingle, Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GesturePan`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGesturePan :: (MonadIO m, IsGesturePan o) => o -> m GesturePan
toGesturePan = liftIO . unsafeCastTo GesturePan

-- | A convenience alias for `Nothing` :: `Maybe` `GesturePan`.
noGesturePan :: Maybe GesturePan
noGesturePan = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGesturePanMethod (t :: Symbol) (o :: *) :: * where
    ResolveGesturePanMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGesturePanMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGesturePanMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGesturePanMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGesturePanMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGesturePanMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGesturePanMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGesturePanMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGesturePanMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGesturePanMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGesturePanMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGesturePanMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGesturePanMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGesturePanMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGesturePanMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGesturePanMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGesturePanMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGesturePanMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGesturePanMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGesturePanMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGesturePanMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGesturePanMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGesturePanMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGesturePanMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGesturePanMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGesturePanMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGesturePanMethod "getButton" o = Gtk.GestureSingle.GestureSingleGetButtonMethodInfo
    ResolveGesturePanMethod "getCurrentButton" o = Gtk.GestureSingle.GestureSingleGetCurrentButtonMethodInfo
    ResolveGesturePanMethod "getCurrentSequence" o = Gtk.GestureSingle.GestureSingleGetCurrentSequenceMethodInfo
    ResolveGesturePanMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGesturePanMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGesturePanMethod "getExclusive" o = Gtk.GestureSingle.GestureSingleGetExclusiveMethodInfo
    ResolveGesturePanMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGesturePanMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGesturePanMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGesturePanMethod "getOffset" o = Gtk.GestureDrag.GestureDragGetOffsetMethodInfo
    ResolveGesturePanMethod "getOrientation" o = GesturePanGetOrientationMethodInfo
    ResolveGesturePanMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGesturePanMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGesturePanMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGesturePanMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGesturePanMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGesturePanMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGesturePanMethod "getStartPoint" o = Gtk.GestureDrag.GestureDragGetStartPointMethodInfo
    ResolveGesturePanMethod "getTouchOnly" o = Gtk.GestureSingle.GestureSingleGetTouchOnlyMethodInfo
    ResolveGesturePanMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGesturePanMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGesturePanMethod "setButton" o = Gtk.GestureSingle.GestureSingleSetButtonMethodInfo
    ResolveGesturePanMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGesturePanMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGesturePanMethod "setExclusive" o = Gtk.GestureSingle.GestureSingleSetExclusiveMethodInfo
    ResolveGesturePanMethod "setOrientation" o = GesturePanSetOrientationMethodInfo
    ResolveGesturePanMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGesturePanMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGesturePanMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGesturePanMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGesturePanMethod "setTouchOnly" o = Gtk.GestureSingle.GestureSingleSetTouchOnlyMethodInfo
    ResolveGesturePanMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGesturePanMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGesturePanMethod t GesturePan, O.MethodInfo info GesturePan p) => OL.IsLabel t (GesturePan -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GesturePan::pan
-- | This signal is emitted once a panning gesture along the
-- expected axis is detected.
-- 
-- /Since: 3.14/
type GesturePanPanCallback =
    Gtk.Enums.PanDirection
    -- ^ /@direction@/: current direction of the pan gesture
    -> Double
    -- ^ /@offset@/: Offset along the gesture orientation
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GesturePanPanCallback`@.
noGesturePanPanCallback :: Maybe GesturePanPanCallback
noGesturePanPanCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GesturePanPanCallback =
    Ptr () ->                               -- object
    CUInt ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GesturePanPanCallback`.
foreign import ccall "wrapper"
    mk_GesturePanPanCallback :: C_GesturePanPanCallback -> IO (FunPtr C_GesturePanPanCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GesturePanPan :: MonadIO m => GesturePanPanCallback -> m (GClosure C_GesturePanPanCallback)
genClosure_GesturePanPan cb = liftIO $ do
    let cb' = wrap_GesturePanPanCallback cb
    mk_GesturePanPanCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GesturePanPanCallback` into a `C_GesturePanPanCallback`.
wrap_GesturePanPanCallback ::
    GesturePanPanCallback ->
    C_GesturePanPanCallback
wrap_GesturePanPanCallback _cb _ direction offset _ = do
    let direction' = (toEnum . fromIntegral) direction
    let offset' = realToFrac offset
    _cb  direction' offset'


-- | Connect a signal handler for the [pan](#signal:pan) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesturePan #pan callback
-- @
-- 
-- 
onGesturePanPan :: (IsGesturePan a, MonadIO m) => a -> GesturePanPanCallback -> m SignalHandlerId
onGesturePanPan obj cb = liftIO $ do
    let cb' = wrap_GesturePanPanCallback cb
    cb'' <- mk_GesturePanPanCallback cb'
    connectSignalFunPtr obj "pan" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pan](#signal:pan) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesturePan #pan callback
-- @
-- 
-- 
afterGesturePanPan :: (IsGesturePan a, MonadIO m) => a -> GesturePanPanCallback -> m SignalHandlerId
afterGesturePanPan obj cb = liftIO $ do
    let cb' = wrap_GesturePanPanCallback cb
    cb'' <- mk_GesturePanPanCallback cb'
    connectSignalFunPtr obj "pan" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GesturePanPanSignalInfo
instance SignalInfo GesturePanPanSignalInfo where
    type HaskellCallbackType GesturePanPanSignalInfo = GesturePanPanCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GesturePanPanCallback cb
        cb'' <- mk_GesturePanPanCallback cb'
        connectSignalFunPtr obj "pan" cb'' connectMode detail

#endif

-- VVV Prop "orientation"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Orientation"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@orientation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gesturePan #orientation
-- @
getGesturePanOrientation :: (MonadIO m, IsGesturePan o) => o -> m Gtk.Enums.Orientation
getGesturePanOrientation obj = liftIO $ B.Properties.getObjectPropertyEnum obj "orientation"

-- | Set the value of the “@orientation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' gesturePan [ #orientation 'Data.GI.Base.Attributes.:=' value ]
-- @
setGesturePanOrientation :: (MonadIO m, IsGesturePan o) => o -> Gtk.Enums.Orientation -> m ()
setGesturePanOrientation obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "orientation" val

-- | Construct a `GValueConstruct` with valid value for the “@orientation@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGesturePanOrientation :: (IsGesturePan o) => Gtk.Enums.Orientation -> IO (GValueConstruct o)
constructGesturePanOrientation val = B.Properties.constructObjectPropertyEnum "orientation" val

#if defined(ENABLE_OVERLOADING)
data GesturePanOrientationPropertyInfo
instance AttrInfo GesturePanOrientationPropertyInfo where
    type AttrAllowedOps GesturePanOrientationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GesturePanOrientationPropertyInfo = IsGesturePan
    type AttrSetTypeConstraint GesturePanOrientationPropertyInfo = (~) Gtk.Enums.Orientation
    type AttrTransferTypeConstraint GesturePanOrientationPropertyInfo = (~) Gtk.Enums.Orientation
    type AttrTransferType GesturePanOrientationPropertyInfo = Gtk.Enums.Orientation
    type AttrGetType GesturePanOrientationPropertyInfo = Gtk.Enums.Orientation
    type AttrLabel GesturePanOrientationPropertyInfo = "orientation"
    type AttrOrigin GesturePanOrientationPropertyInfo = GesturePan
    attrGet = getGesturePanOrientation
    attrSet = setGesturePanOrientation
    attrTransfer _ v = do
        return v
    attrConstruct = constructGesturePanOrientation
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GesturePan
type instance O.AttributeList GesturePan = GesturePanAttributeList
type GesturePanAttributeList = ('[ '("button", Gtk.GestureSingle.GestureSingleButtonPropertyInfo), '("exclusive", Gtk.GestureSingle.GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("orientation", GesturePanOrientationPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", Gtk.GestureSingle.GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gesturePanOrientation :: AttrLabelProxy "orientation"
gesturePanOrientation = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GesturePan = GesturePanSignalList
type GesturePanSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("dragBegin", Gtk.GestureDrag.GestureDragDragBeginSignalInfo), '("dragEnd", Gtk.GestureDrag.GestureDragDragEndSignalInfo), '("dragUpdate", Gtk.GestureDrag.GestureDragDragUpdateSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("pan", GesturePanPanSignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GesturePan::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "expected orientation"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "GesturePan" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_pan_new" gtk_gesture_pan_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO (Ptr GesturePan)

-- | Returns a newly created t'GI.Gtk.Objects.Gesture.Gesture' that recognizes pan gestures.
-- 
-- /Since: 3.14/
gesturePanNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> Gtk.Enums.Orientation
    -- ^ /@orientation@/: expected orientation
    -> m GesturePan
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.GesturePan.GesturePan'
gesturePanNew widget orientation = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    let orientation' = (fromIntegral . fromEnum) orientation
    result <- gtk_gesture_pan_new widget' orientation'
    checkUnexpectedReturnNULL "gesturePanNew" result
    result' <- (wrapObject GesturePan) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GesturePan::get_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GesturePan" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkGesturePan" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Orientation" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_pan_get_orientation" gtk_gesture_pan_get_orientation :: 
    Ptr GesturePan ->                       -- gesture : TInterface (Name {namespace = "Gtk", name = "GesturePan"})
    IO CUInt

-- | Returns the orientation of the pan gestures that this /@gesture@/ expects.
-- 
-- /Since: 3.14/
gesturePanGetOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesturePan a) =>
    a
    -- ^ /@gesture@/: A t'GI.Gtk.Objects.GesturePan.GesturePan'
    -> m Gtk.Enums.Orientation
    -- ^ __Returns:__ the expected orientation for pan gestures
gesturePanGetOrientation gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_pan_get_orientation gesture'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GesturePanGetOrientationMethodInfo
instance (signature ~ (m Gtk.Enums.Orientation), MonadIO m, IsGesturePan a) => O.MethodInfo GesturePanGetOrientationMethodInfo a signature where
    overloadedMethod = gesturePanGetOrientation

#endif

-- method GesturePan::set_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GesturePan" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkGesturePan" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "expected orientation"
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

foreign import ccall "gtk_gesture_pan_set_orientation" gtk_gesture_pan_set_orientation :: 
    Ptr GesturePan ->                       -- gesture : TInterface (Name {namespace = "Gtk", name = "GesturePan"})
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO ()

-- | Sets the orientation to be expected on pan gestures.
-- 
-- /Since: 3.14/
gesturePanSetOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesturePan a) =>
    a
    -- ^ /@gesture@/: A t'GI.Gtk.Objects.GesturePan.GesturePan'
    -> Gtk.Enums.Orientation
    -- ^ /@orientation@/: expected orientation
    -> m ()
gesturePanSetOrientation gesture orientation = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    let orientation' = (fromIntegral . fromEnum) orientation
    gtk_gesture_pan_set_orientation gesture' orientation'
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GesturePanSetOrientationMethodInfo
instance (signature ~ (Gtk.Enums.Orientation -> m ()), MonadIO m, IsGesturePan a) => O.MethodInfo GesturePanSetOrientationMethodInfo a signature where
    overloadedMethod = gesturePanSetOrientation

#endif

