{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureSwipe.GestureSwipe' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation able to recognize
-- swipes, after a press\/move\/...\/move\/release sequence happens, the
-- [swipe]("GI.Gtk.Objects.GestureSwipe#signal:swipe") signal will be emitted, providing the velocity
-- and directionality of the sequence at the time it was lifted.
-- 
-- If the velocity is desired in intermediate points,
-- 'GI.Gtk.Objects.GestureSwipe.gestureSwipeGetVelocity' can be called on eg. a
-- [update]("GI.Gtk.Objects.Gesture#signal:update") handler.
-- 
-- All velocities are reported in pixels\/sec units.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureSwipe
    ( 

-- * Exported types
    GestureSwipe(..)                        ,
    IsGestureSwipe                          ,
    toGestureSwipe                          ,
    noGestureSwipe                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureSwipeMethod               ,
#endif


-- ** getVelocity #method:getVelocity#

#if defined(ENABLE_OVERLOADING)
    GestureSwipeGetVelocityMethodInfo       ,
#endif
    gestureSwipeGetVelocity                 ,


-- ** new #method:new#

    gestureSwipeNew                         ,




 -- * Signals
-- ** swipe #signal:swipe#

    C_GestureSwipeSwipeCallback             ,
    GestureSwipeSwipeCallback               ,
#if defined(ENABLE_OVERLOADING)
    GestureSwipeSwipeSignalInfo             ,
#endif
    afterGestureSwipeSwipe                  ,
    genClosure_GestureSwipeSwipe            ,
    mk_GestureSwipeSwipeCallback            ,
    noGestureSwipeSwipeCallback             ,
    onGestureSwipeSwipe                     ,
    wrap_GestureSwipeSwipeCallback          ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureSingle as Gtk.GestureSingle
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GestureSwipe = GestureSwipe (ManagedPtr GestureSwipe)
    deriving (Eq)
foreign import ccall "gtk_gesture_swipe_get_type"
    c_gtk_gesture_swipe_get_type :: IO GType

instance GObject GestureSwipe where
    gobjectType = c_gtk_gesture_swipe_get_type
    

-- | Convert 'GestureSwipe' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureSwipe where
    toGValue o = do
        gtype <- c_gtk_gesture_swipe_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureSwipe)
        B.ManagedPtr.newObject GestureSwipe ptr
        
    

-- | Type class for types which can be safely cast to `GestureSwipe`, for instance with `toGestureSwipe`.
class (GObject o, O.IsDescendantOf GestureSwipe o) => IsGestureSwipe o
instance (GObject o, O.IsDescendantOf GestureSwipe o) => IsGestureSwipe o

instance O.HasParentTypes GestureSwipe
type instance O.ParentTypes GestureSwipe = '[Gtk.GestureSingle.GestureSingle, Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureSwipe`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureSwipe :: (MonadIO m, IsGestureSwipe o) => o -> m GestureSwipe
toGestureSwipe = liftIO . unsafeCastTo GestureSwipe

-- | A convenience alias for `Nothing` :: `Maybe` `GestureSwipe`.
noGestureSwipe :: Maybe GestureSwipe
noGestureSwipe = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureSwipeMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureSwipeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureSwipeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureSwipeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureSwipeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureSwipeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureSwipeMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureSwipeMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureSwipeMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureSwipeMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureSwipeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureSwipeMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureSwipeMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureSwipeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureSwipeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureSwipeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureSwipeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureSwipeMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureSwipeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureSwipeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureSwipeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureSwipeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureSwipeMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureSwipeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureSwipeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureSwipeMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureSwipeMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureSwipeMethod "getButton" o = Gtk.GestureSingle.GestureSingleGetButtonMethodInfo
    ResolveGestureSwipeMethod "getCurrentButton" o = Gtk.GestureSingle.GestureSingleGetCurrentButtonMethodInfo
    ResolveGestureSwipeMethod "getCurrentSequence" o = Gtk.GestureSingle.GestureSingleGetCurrentSequenceMethodInfo
    ResolveGestureSwipeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureSwipeMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureSwipeMethod "getExclusive" o = Gtk.GestureSingle.GestureSingleGetExclusiveMethodInfo
    ResolveGestureSwipeMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureSwipeMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureSwipeMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureSwipeMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureSwipeMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureSwipeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureSwipeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureSwipeMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureSwipeMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureSwipeMethod "getTouchOnly" o = Gtk.GestureSingle.GestureSingleGetTouchOnlyMethodInfo
    ResolveGestureSwipeMethod "getVelocity" o = GestureSwipeGetVelocityMethodInfo
    ResolveGestureSwipeMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureSwipeMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureSwipeMethod "setButton" o = Gtk.GestureSingle.GestureSingleSetButtonMethodInfo
    ResolveGestureSwipeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureSwipeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureSwipeMethod "setExclusive" o = Gtk.GestureSingle.GestureSingleSetExclusiveMethodInfo
    ResolveGestureSwipeMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureSwipeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureSwipeMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureSwipeMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureSwipeMethod "setTouchOnly" o = Gtk.GestureSingle.GestureSingleSetTouchOnlyMethodInfo
    ResolveGestureSwipeMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureSwipeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureSwipeMethod t GestureSwipe, O.MethodInfo info GestureSwipe p) => OL.IsLabel t (GestureSwipe -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GestureSwipe::swipe
-- | This signal is emitted when the recognized gesture is finished, velocity
-- and direction are a product of previously recorded events.
-- 
-- /Since: 3.14/
type GestureSwipeSwipeCallback =
    Double
    -- ^ /@velocityX@/: velocity in the X axis, in pixels\/sec
    -> Double
    -- ^ /@velocityY@/: velocity in the Y axis, in pixels\/sec
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureSwipeSwipeCallback`@.
noGestureSwipeSwipeCallback :: Maybe GestureSwipeSwipeCallback
noGestureSwipeSwipeCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureSwipeSwipeCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureSwipeSwipeCallback`.
foreign import ccall "wrapper"
    mk_GestureSwipeSwipeCallback :: C_GestureSwipeSwipeCallback -> IO (FunPtr C_GestureSwipeSwipeCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureSwipeSwipe :: MonadIO m => GestureSwipeSwipeCallback -> m (GClosure C_GestureSwipeSwipeCallback)
genClosure_GestureSwipeSwipe cb = liftIO $ do
    let cb' = wrap_GestureSwipeSwipeCallback cb
    mk_GestureSwipeSwipeCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureSwipeSwipeCallback` into a `C_GestureSwipeSwipeCallback`.
wrap_GestureSwipeSwipeCallback ::
    GestureSwipeSwipeCallback ->
    C_GestureSwipeSwipeCallback
wrap_GestureSwipeSwipeCallback _cb _ velocityX velocityY _ = do
    let velocityX' = realToFrac velocityX
    let velocityY' = realToFrac velocityY
    _cb  velocityX' velocityY'


-- | Connect a signal handler for the [swipe](#signal:swipe) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureSwipe #swipe callback
-- @
-- 
-- 
onGestureSwipeSwipe :: (IsGestureSwipe a, MonadIO m) => a -> GestureSwipeSwipeCallback -> m SignalHandlerId
onGestureSwipeSwipe obj cb = liftIO $ do
    let cb' = wrap_GestureSwipeSwipeCallback cb
    cb'' <- mk_GestureSwipeSwipeCallback cb'
    connectSignalFunPtr obj "swipe" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [swipe](#signal:swipe) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureSwipe #swipe callback
-- @
-- 
-- 
afterGestureSwipeSwipe :: (IsGestureSwipe a, MonadIO m) => a -> GestureSwipeSwipeCallback -> m SignalHandlerId
afterGestureSwipeSwipe obj cb = liftIO $ do
    let cb' = wrap_GestureSwipeSwipeCallback cb
    cb'' <- mk_GestureSwipeSwipeCallback cb'
    connectSignalFunPtr obj "swipe" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureSwipeSwipeSignalInfo
instance SignalInfo GestureSwipeSwipeSignalInfo where
    type HaskellCallbackType GestureSwipeSwipeSignalInfo = GestureSwipeSwipeCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureSwipeSwipeCallback cb
        cb'' <- mk_GestureSwipeSwipeCallback cb'
        connectSignalFunPtr obj "swipe" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureSwipe
type instance O.AttributeList GestureSwipe = GestureSwipeAttributeList
type GestureSwipeAttributeList = ('[ '("button", Gtk.GestureSingle.GestureSingleButtonPropertyInfo), '("exclusive", Gtk.GestureSingle.GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", Gtk.GestureSingle.GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureSwipe = GestureSwipeSignalList
type GestureSwipeSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("swipe", GestureSwipeSwipeSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureSwipe::new
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "GestureSwipe" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_swipe_new" gtk_gesture_swipe_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GestureSwipe)

-- | Returns a newly created t'GI.Gtk.Objects.Gesture.Gesture' that recognizes swipes.
-- 
-- /Since: 3.14/
gestureSwipeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m GestureSwipe
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.GestureSwipe.GestureSwipe'
gestureSwipeNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_gesture_swipe_new widget'
    checkUnexpectedReturnNULL "gestureSwipeNew" result
    result' <- (wrapObject GestureSwipe) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GestureSwipe::get_velocity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureSwipe" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureSwipe" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "velocity_x"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return value for the velocity in the X axis, in pixels/sec"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "velocity_y"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return value for the velocity in the Y axis, in pixels/sec"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_swipe_get_velocity" gtk_gesture_swipe_get_velocity :: 
    Ptr GestureSwipe ->                     -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureSwipe"})
    Ptr CDouble ->                          -- velocity_x : TBasicType TDouble
    Ptr CDouble ->                          -- velocity_y : TBasicType TDouble
    IO CInt

-- | If the gesture is recognized, this function returns 'P.True' and fill in
-- /@velocityX@/ and /@velocityY@/ with the recorded velocity, as per the
-- last event(s) processed.
-- 
-- /Since: 3.14/
gestureSwipeGetVelocity ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureSwipe a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureSwipe.GestureSwipe'
    -> m ((Bool, Double, Double))
    -- ^ __Returns:__ whether velocity could be calculated
gestureSwipeGetVelocity gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    velocityX <- allocMem :: IO (Ptr CDouble)
    velocityY <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_swipe_get_velocity gesture' velocityX velocityY
    let result' = (/= 0) result
    velocityX' <- peek velocityX
    let velocityX'' = realToFrac velocityX'
    velocityY' <- peek velocityY
    let velocityY'' = realToFrac velocityY'
    touchManagedPtr gesture
    freeMem velocityX
    freeMem velocityY
    return (result', velocityX'', velocityY'')

#if defined(ENABLE_OVERLOADING)
data GestureSwipeGetVelocityMethodInfo
instance (signature ~ (m ((Bool, Double, Double))), MonadIO m, IsGestureSwipe a) => O.MethodInfo GestureSwipeGetVelocityMethodInfo a signature where
    overloadedMethod = gestureSwipeGetVelocity

#endif

