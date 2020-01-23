{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureRotate.GestureRotate' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation able to recognize
-- 2-finger rotations, whenever the angle between both handled sequences
-- changes, the [angleChanged]("GI.Gtk.Objects.GestureRotate#signal:angleChanged") signal is emitted.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureRotate
    ( 

-- * Exported types
    GestureRotate(..)                       ,
    IsGestureRotate                         ,
    toGestureRotate                         ,
    noGestureRotate                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureRotateMethod              ,
#endif


-- ** getAngleDelta #method:getAngleDelta#

#if defined(ENABLE_OVERLOADING)
    GestureRotateGetAngleDeltaMethodInfo    ,
#endif
    gestureRotateGetAngleDelta              ,


-- ** new #method:new#

    gestureRotateNew                        ,




 -- * Signals
-- ** angleChanged #signal:angleChanged#

    C_GestureRotateAngleChangedCallback     ,
    GestureRotateAngleChangedCallback       ,
#if defined(ENABLE_OVERLOADING)
    GestureRotateAngleChangedSignalInfo     ,
#endif
    afterGestureRotateAngleChanged          ,
    genClosure_GestureRotateAngleChanged    ,
    mk_GestureRotateAngleChangedCallback    ,
    noGestureRotateAngleChangedCallback     ,
    onGestureRotateAngleChanged             ,
    wrap_GestureRotateAngleChangedCallback  ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GestureRotate = GestureRotate (ManagedPtr GestureRotate)
    deriving (Eq)
foreign import ccall "gtk_gesture_rotate_get_type"
    c_gtk_gesture_rotate_get_type :: IO GType

instance GObject GestureRotate where
    gobjectType = c_gtk_gesture_rotate_get_type
    

-- | Convert 'GestureRotate' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureRotate where
    toGValue o = do
        gtype <- c_gtk_gesture_rotate_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureRotate)
        B.ManagedPtr.newObject GestureRotate ptr
        
    

-- | Type class for types which can be safely cast to `GestureRotate`, for instance with `toGestureRotate`.
class (GObject o, O.IsDescendantOf GestureRotate o) => IsGestureRotate o
instance (GObject o, O.IsDescendantOf GestureRotate o) => IsGestureRotate o

instance O.HasParentTypes GestureRotate
type instance O.ParentTypes GestureRotate = '[Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureRotate`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureRotate :: (MonadIO m, IsGestureRotate o) => o -> m GestureRotate
toGestureRotate = liftIO . unsafeCastTo GestureRotate

-- | A convenience alias for `Nothing` :: `Maybe` `GestureRotate`.
noGestureRotate :: Maybe GestureRotate
noGestureRotate = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureRotateMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureRotateMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureRotateMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureRotateMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureRotateMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureRotateMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureRotateMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureRotateMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureRotateMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureRotateMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureRotateMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureRotateMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureRotateMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureRotateMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureRotateMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureRotateMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureRotateMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureRotateMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureRotateMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureRotateMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureRotateMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureRotateMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureRotateMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureRotateMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureRotateMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureRotateMethod "getAngleDelta" o = GestureRotateGetAngleDeltaMethodInfo
    ResolveGestureRotateMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureRotateMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureRotateMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureRotateMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureRotateMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureRotateMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureRotateMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureRotateMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureRotateMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureRotateMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureRotateMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureRotateMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureRotateMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureRotateMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureRotateMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureRotateMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureRotateMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureRotateMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureRotateMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureRotateMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureRotateMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureRotateMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureRotateMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureRotateMethod t GestureRotate, O.MethodInfo info GestureRotate p) => OL.IsLabel t (GestureRotate -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GestureRotate::angle-changed
-- | This signal is emitted when the angle between both tracked points
-- changes.
-- 
-- /Since: 3.14/
type GestureRotateAngleChangedCallback =
    Double
    -- ^ /@angle@/: Current angle in radians
    -> Double
    -- ^ /@angleDelta@/: Difference with the starting angle, in radians
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureRotateAngleChangedCallback`@.
noGestureRotateAngleChangedCallback :: Maybe GestureRotateAngleChangedCallback
noGestureRotateAngleChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureRotateAngleChangedCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureRotateAngleChangedCallback`.
foreign import ccall "wrapper"
    mk_GestureRotateAngleChangedCallback :: C_GestureRotateAngleChangedCallback -> IO (FunPtr C_GestureRotateAngleChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureRotateAngleChanged :: MonadIO m => GestureRotateAngleChangedCallback -> m (GClosure C_GestureRotateAngleChangedCallback)
genClosure_GestureRotateAngleChanged cb = liftIO $ do
    let cb' = wrap_GestureRotateAngleChangedCallback cb
    mk_GestureRotateAngleChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureRotateAngleChangedCallback` into a `C_GestureRotateAngleChangedCallback`.
wrap_GestureRotateAngleChangedCallback ::
    GestureRotateAngleChangedCallback ->
    C_GestureRotateAngleChangedCallback
wrap_GestureRotateAngleChangedCallback _cb _ angle angleDelta _ = do
    let angle' = realToFrac angle
    let angleDelta' = realToFrac angleDelta
    _cb  angle' angleDelta'


-- | Connect a signal handler for the [angleChanged](#signal:angleChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureRotate #angleChanged callback
-- @
-- 
-- 
onGestureRotateAngleChanged :: (IsGestureRotate a, MonadIO m) => a -> GestureRotateAngleChangedCallback -> m SignalHandlerId
onGestureRotateAngleChanged obj cb = liftIO $ do
    let cb' = wrap_GestureRotateAngleChangedCallback cb
    cb'' <- mk_GestureRotateAngleChangedCallback cb'
    connectSignalFunPtr obj "angle-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [angleChanged](#signal:angleChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureRotate #angleChanged callback
-- @
-- 
-- 
afterGestureRotateAngleChanged :: (IsGestureRotate a, MonadIO m) => a -> GestureRotateAngleChangedCallback -> m SignalHandlerId
afterGestureRotateAngleChanged obj cb = liftIO $ do
    let cb' = wrap_GestureRotateAngleChangedCallback cb
    cb'' <- mk_GestureRotateAngleChangedCallback cb'
    connectSignalFunPtr obj "angle-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureRotateAngleChangedSignalInfo
instance SignalInfo GestureRotateAngleChangedSignalInfo where
    type HaskellCallbackType GestureRotateAngleChangedSignalInfo = GestureRotateAngleChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureRotateAngleChangedCallback cb
        cb'' <- mk_GestureRotateAngleChangedCallback cb'
        connectSignalFunPtr obj "angle-changed" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureRotate
type instance O.AttributeList GestureRotate = GestureRotateAttributeList
type GestureRotateAttributeList = ('[ '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureRotate = GestureRotateSignalList
type GestureRotateSignalList = ('[ '("angleChanged", GestureRotateAngleChangedSignalInfo), '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureRotate::new
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
--               (TInterface Name { namespace = "Gtk" , name = "GestureRotate" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_rotate_new" gtk_gesture_rotate_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GestureRotate)

-- | Returns a newly created t'GI.Gtk.Objects.Gesture.Gesture' that recognizes 2-touch
-- rotation gestures.
-- 
-- /Since: 3.14/
gestureRotateNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m GestureRotate
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.GestureRotate.GestureRotate'
gestureRotateNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_gesture_rotate_new widget'
    checkUnexpectedReturnNULL "gestureRotateNew" result
    result' <- (wrapObject GestureRotate) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GestureRotate::get_angle_delta
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureRotate" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureRotate"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_rotate_get_angle_delta" gtk_gesture_rotate_get_angle_delta :: 
    Ptr GestureRotate ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureRotate"})
    IO CDouble

-- | If /@gesture@/ is active, this function returns the angle difference
-- in radians since the gesture was first recognized. If /@gesture@/ is
-- not active, 0 is returned.
-- 
-- /Since: 3.14/
gestureRotateGetAngleDelta ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureRotate a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureRotate.GestureRotate'
    -> m Double
    -- ^ __Returns:__ the angle delta in radians
gestureRotateGetAngleDelta gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_rotate_get_angle_delta gesture'
    let result' = realToFrac result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureRotateGetAngleDeltaMethodInfo
instance (signature ~ (m Double), MonadIO m, IsGestureRotate a) => O.MethodInfo GestureRotateGetAngleDeltaMethodInfo a signature where
    overloadedMethod = gestureRotateGetAngleDelta

#endif

