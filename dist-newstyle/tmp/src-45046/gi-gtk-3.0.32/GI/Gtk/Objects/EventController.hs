{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.EventController.EventController' is a base, low-level implementation for event
-- controllers. Those react to a series of @/GdkEvents/@, and possibly trigger
-- actions as a consequence of those.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EventController
    ( 

-- * Exported types
    EventController(..)                     ,
    IsEventController                       ,
    toEventController                       ,
    noEventController                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEventControllerMethod            ,
#endif


-- ** getPropagationPhase #method:getPropagationPhase#

#if defined(ENABLE_OVERLOADING)
    EventControllerGetPropagationPhaseMethodInfo,
#endif
    eventControllerGetPropagationPhase      ,


-- ** getWidget #method:getWidget#

#if defined(ENABLE_OVERLOADING)
    EventControllerGetWidgetMethodInfo      ,
#endif
    eventControllerGetWidget                ,


-- ** handleEvent #method:handleEvent#

#if defined(ENABLE_OVERLOADING)
    EventControllerHandleEventMethodInfo    ,
#endif
    eventControllerHandleEvent              ,


-- ** reset #method:reset#

#if defined(ENABLE_OVERLOADING)
    EventControllerResetMethodInfo          ,
#endif
    eventControllerReset                    ,


-- ** setPropagationPhase #method:setPropagationPhase#

#if defined(ENABLE_OVERLOADING)
    EventControllerSetPropagationPhaseMethodInfo,
#endif
    eventControllerSetPropagationPhase      ,




 -- * Properties
-- ** propagationPhase #attr:propagationPhase#
-- | The propagation phase at which this controller will handle events.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    EventControllerPropagationPhasePropertyInfo,
#endif
    constructEventControllerPropagationPhase,
#if defined(ENABLE_OVERLOADING)
    eventControllerPropagationPhase         ,
#endif
    getEventControllerPropagationPhase      ,
    setEventControllerPropagationPhase      ,


-- ** widget #attr:widget#
-- | The widget receiving the @/GdkEvents/@ that the controller will handle.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    EventControllerWidgetPropertyInfo       ,
#endif
    constructEventControllerWidget          ,
#if defined(ENABLE_OVERLOADING)
    eventControllerWidget                   ,
#endif
    getEventControllerWidget                ,




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
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype EventController = EventController (ManagedPtr EventController)
    deriving (Eq)
foreign import ccall "gtk_event_controller_get_type"
    c_gtk_event_controller_get_type :: IO GType

instance GObject EventController where
    gobjectType = c_gtk_event_controller_get_type
    

-- | Convert 'EventController' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EventController where
    toGValue o = do
        gtype <- c_gtk_event_controller_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EventController)
        B.ManagedPtr.newObject EventController ptr
        
    

-- | Type class for types which can be safely cast to `EventController`, for instance with `toEventController`.
class (GObject o, O.IsDescendantOf EventController o) => IsEventController o
instance (GObject o, O.IsDescendantOf EventController o) => IsEventController o

instance O.HasParentTypes EventController
type instance O.ParentTypes EventController = '[GObject.Object.Object]

-- | Cast to `EventController`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEventController :: (MonadIO m, IsEventController o) => o -> m EventController
toEventController = liftIO . unsafeCastTo EventController

-- | A convenience alias for `Nothing` :: `Maybe` `EventController`.
noEventController :: Maybe EventController
noEventController = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEventControllerMethod (t :: Symbol) (o :: *) :: * where
    ResolveEventControllerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEventControllerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEventControllerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEventControllerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEventControllerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEventControllerMethod "handleEvent" o = EventControllerHandleEventMethodInfo
    ResolveEventControllerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEventControllerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEventControllerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEventControllerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEventControllerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEventControllerMethod "reset" o = EventControllerResetMethodInfo
    ResolveEventControllerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEventControllerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEventControllerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEventControllerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEventControllerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEventControllerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEventControllerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEventControllerMethod "getPropagationPhase" o = EventControllerGetPropagationPhaseMethodInfo
    ResolveEventControllerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEventControllerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEventControllerMethod "getWidget" o = EventControllerGetWidgetMethodInfo
    ResolveEventControllerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEventControllerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEventControllerMethod "setPropagationPhase" o = EventControllerSetPropagationPhaseMethodInfo
    ResolveEventControllerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEventControllerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEventControllerMethod t EventController, O.MethodInfo info EventController p) => OL.IsLabel t (EventController -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "propagation-phase"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PropagationPhase"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@propagation-phase@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' eventController #propagationPhase
-- @
getEventControllerPropagationPhase :: (MonadIO m, IsEventController o) => o -> m Gtk.Enums.PropagationPhase
getEventControllerPropagationPhase obj = liftIO $ B.Properties.getObjectPropertyEnum obj "propagation-phase"

-- | Set the value of the “@propagation-phase@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' eventController [ #propagationPhase 'Data.GI.Base.Attributes.:=' value ]
-- @
setEventControllerPropagationPhase :: (MonadIO m, IsEventController o) => o -> Gtk.Enums.PropagationPhase -> m ()
setEventControllerPropagationPhase obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "propagation-phase" val

-- | Construct a `GValueConstruct` with valid value for the “@propagation-phase@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEventControllerPropagationPhase :: (IsEventController o) => Gtk.Enums.PropagationPhase -> IO (GValueConstruct o)
constructEventControllerPropagationPhase val = B.Properties.constructObjectPropertyEnum "propagation-phase" val

#if defined(ENABLE_OVERLOADING)
data EventControllerPropagationPhasePropertyInfo
instance AttrInfo EventControllerPropagationPhasePropertyInfo where
    type AttrAllowedOps EventControllerPropagationPhasePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint EventControllerPropagationPhasePropertyInfo = IsEventController
    type AttrSetTypeConstraint EventControllerPropagationPhasePropertyInfo = (~) Gtk.Enums.PropagationPhase
    type AttrTransferTypeConstraint EventControllerPropagationPhasePropertyInfo = (~) Gtk.Enums.PropagationPhase
    type AttrTransferType EventControllerPropagationPhasePropertyInfo = Gtk.Enums.PropagationPhase
    type AttrGetType EventControllerPropagationPhasePropertyInfo = Gtk.Enums.PropagationPhase
    type AttrLabel EventControllerPropagationPhasePropertyInfo = "propagation-phase"
    type AttrOrigin EventControllerPropagationPhasePropertyInfo = EventController
    attrGet = getEventControllerPropagationPhase
    attrSet = setEventControllerPropagationPhase
    attrTransfer _ v = do
        return v
    attrConstruct = constructEventControllerPropagationPhase
    attrClear = undefined
#endif

-- VVV Prop "widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' eventController #widget
-- @
getEventControllerWidget :: (MonadIO m, IsEventController o) => o -> m Gtk.Widget.Widget
getEventControllerWidget obj = liftIO $ checkUnexpectedNothing "getEventControllerWidget" $ B.Properties.getObjectPropertyObject obj "widget" Gtk.Widget.Widget

-- | Construct a `GValueConstruct` with valid value for the “@widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEventControllerWidget :: (IsEventController o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructEventControllerWidget val = B.Properties.constructObjectPropertyObject "widget" (Just val)

#if defined(ENABLE_OVERLOADING)
data EventControllerWidgetPropertyInfo
instance AttrInfo EventControllerWidgetPropertyInfo where
    type AttrAllowedOps EventControllerWidgetPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint EventControllerWidgetPropertyInfo = IsEventController
    type AttrSetTypeConstraint EventControllerWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint EventControllerWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType EventControllerWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType EventControllerWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrLabel EventControllerWidgetPropertyInfo = "widget"
    type AttrOrigin EventControllerWidgetPropertyInfo = EventController
    attrGet = getEventControllerWidget
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructEventControllerWidget
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EventController
type instance O.AttributeList EventController = EventControllerAttributeList
type EventControllerAttributeList = ('[ '("propagationPhase", EventControllerPropagationPhasePropertyInfo), '("widget", EventControllerWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
eventControllerPropagationPhase :: AttrLabelProxy "propagationPhase"
eventControllerPropagationPhase = AttrLabelProxy

eventControllerWidget :: AttrLabelProxy "widget"
eventControllerWidget = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EventController = EventControllerSignalList
type EventControllerSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method EventController::get_propagation_phase
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventController" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventController"
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
--               (TInterface Name { namespace = "Gtk" , name = "PropagationPhase" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_get_propagation_phase" gtk_event_controller_get_propagation_phase :: 
    Ptr EventController ->                  -- controller : TInterface (Name {namespace = "Gtk", name = "EventController"})
    IO CUInt

-- | Gets the propagation phase at which /@controller@/ handles events.
-- 
-- /Since: 3.14/
eventControllerGetPropagationPhase ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventController a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventController.EventController'
    -> m Gtk.Enums.PropagationPhase
    -- ^ __Returns:__ the propagation phase
eventControllerGetPropagationPhase controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    result <- gtk_event_controller_get_propagation_phase controller'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr controller
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerGetPropagationPhaseMethodInfo
instance (signature ~ (m Gtk.Enums.PropagationPhase), MonadIO m, IsEventController a) => O.MethodInfo EventControllerGetPropagationPhaseMethodInfo a signature where
    overloadedMethod = eventControllerGetPropagationPhase

#endif

-- method EventController::get_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventController" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventController"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_get_widget" gtk_event_controller_get_widget :: 
    Ptr EventController ->                  -- controller : TInterface (Name {namespace = "Gtk", name = "EventController"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the t'GI.Gtk.Objects.Widget.Widget' this controller relates to.
-- 
-- /Since: 3.14/
eventControllerGetWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventController a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventController.EventController'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget'
eventControllerGetWidget controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    result <- gtk_event_controller_get_widget controller'
    checkUnexpectedReturnNULL "eventControllerGetWidget" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr controller
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerGetWidgetMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsEventController a) => O.MethodInfo EventControllerGetWidgetMethodInfo a signature where
    overloadedMethod = eventControllerGetWidget

#endif

-- method EventController::handle_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventController" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventController"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "event"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Event" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEvent" , sinceVersion = Nothing }
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

foreign import ccall "gtk_event_controller_handle_event" gtk_event_controller_handle_event :: 
    Ptr EventController ->                  -- controller : TInterface (Name {namespace = "Gtk", name = "EventController"})
    Ptr Gdk.Event.Event ->                  -- event : TInterface (Name {namespace = "Gdk", name = "Event"})
    IO CInt

-- | Feeds an events into /@controller@/, so it can be interpreted
-- and the controller actions triggered.
-- 
-- /Since: 3.14/
eventControllerHandleEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventController a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventController.EventController'
    -> Gdk.Event.Event
    -- ^ /@event@/: a t'GI.Gdk.Unions.Event.Event'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the event was potentially useful to trigger the
    --          controller action
eventControllerHandleEvent controller event = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    event' <- unsafeManagedPtrGetPtr event
    result <- gtk_event_controller_handle_event controller' event'
    let result' = (/= 0) result
    touchManagedPtr controller
    touchManagedPtr event
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerHandleEventMethodInfo
instance (signature ~ (Gdk.Event.Event -> m Bool), MonadIO m, IsEventController a) => O.MethodInfo EventControllerHandleEventMethodInfo a signature where
    overloadedMethod = eventControllerHandleEvent

#endif

-- method EventController::reset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventController" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventController"
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

foreign import ccall "gtk_event_controller_reset" gtk_event_controller_reset :: 
    Ptr EventController ->                  -- controller : TInterface (Name {namespace = "Gtk", name = "EventController"})
    IO ()

-- | Resets the /@controller@/ to a clean state. Every interaction
-- the controller did through t'GI.Gtk.Objects.EventController.EventController'::@/handle-event/@
-- will be dropped at this point.
-- 
-- /Since: 3.14/
eventControllerReset ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventController a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventController.EventController'
    -> m ()
eventControllerReset controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    gtk_event_controller_reset controller'
    touchManagedPtr controller
    return ()

#if defined(ENABLE_OVERLOADING)
data EventControllerResetMethodInfo
instance (signature ~ (m ()), MonadIO m, IsEventController a) => O.MethodInfo EventControllerResetMethodInfo a signature where
    overloadedMethod = eventControllerReset

#endif

-- method EventController::set_propagation_phase
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventController" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventController"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "phase"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PropagationPhase" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a propagation phase"
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

foreign import ccall "gtk_event_controller_set_propagation_phase" gtk_event_controller_set_propagation_phase :: 
    Ptr EventController ->                  -- controller : TInterface (Name {namespace = "Gtk", name = "EventController"})
    CUInt ->                                -- phase : TInterface (Name {namespace = "Gtk", name = "PropagationPhase"})
    IO ()

-- | Sets the propagation phase at which a controller handles events.
-- 
-- If /@phase@/ is 'GI.Gtk.Enums.PropagationPhaseNone', no automatic event handling will be
-- performed, but other additional gesture maintenance will. In that phase,
-- the events can be managed by calling 'GI.Gtk.Objects.EventController.eventControllerHandleEvent'.
-- 
-- /Since: 3.14/
eventControllerSetPropagationPhase ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventController a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventController.EventController'
    -> Gtk.Enums.PropagationPhase
    -- ^ /@phase@/: a propagation phase
    -> m ()
eventControllerSetPropagationPhase controller phase = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    let phase' = (fromIntegral . fromEnum) phase
    gtk_event_controller_set_propagation_phase controller' phase'
    touchManagedPtr controller
    return ()

#if defined(ENABLE_OVERLOADING)
data EventControllerSetPropagationPhaseMethodInfo
instance (signature ~ (Gtk.Enums.PropagationPhase -> m ()), MonadIO m, IsEventController a) => O.MethodInfo EventControllerSetPropagationPhaseMethodInfo a signature where
    overloadedMethod = eventControllerSetPropagationPhase

#endif

