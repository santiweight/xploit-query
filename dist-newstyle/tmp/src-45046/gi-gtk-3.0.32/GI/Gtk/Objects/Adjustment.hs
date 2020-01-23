{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Adjustment.Adjustment' object represents a value which has an associated lower
-- and upper bound, together with step and page increments, and a page size.
-- It is used within several GTK+ widgets, including t'GI.Gtk.Objects.SpinButton.SpinButton', t'GI.Gtk.Objects.Viewport.Viewport',
-- and t'GI.Gtk.Objects.Range.Range' (which is a base class for t'GI.Gtk.Objects.Scrollbar.Scrollbar' and t'GI.Gtk.Objects.Scale.Scale').
-- 
-- The t'GI.Gtk.Objects.Adjustment.Adjustment' object does not update the value itself. Instead
-- it is left up to the owner of the t'GI.Gtk.Objects.Adjustment.Adjustment' to control the value.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Adjustment
    ( 

-- * Exported types
    Adjustment(..)                          ,
    IsAdjustment                            ,
    toAdjustment                            ,
    noAdjustment                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAdjustmentMethod                 ,
#endif


-- ** changed #method:changed#

#if defined(ENABLE_OVERLOADING)
    AdjustmentChangedMethodInfo             ,
#endif
    adjustmentChanged                       ,


-- ** clampPage #method:clampPage#

#if defined(ENABLE_OVERLOADING)
    AdjustmentClampPageMethodInfo           ,
#endif
    adjustmentClampPage                     ,


-- ** configure #method:configure#

#if defined(ENABLE_OVERLOADING)
    AdjustmentConfigureMethodInfo           ,
#endif
    adjustmentConfigure                     ,


-- ** getLower #method:getLower#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetLowerMethodInfo            ,
#endif
    adjustmentGetLower                      ,


-- ** getMinimumIncrement #method:getMinimumIncrement#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetMinimumIncrementMethodInfo ,
#endif
    adjustmentGetMinimumIncrement           ,


-- ** getPageIncrement #method:getPageIncrement#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetPageIncrementMethodInfo    ,
#endif
    adjustmentGetPageIncrement              ,


-- ** getPageSize #method:getPageSize#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetPageSizeMethodInfo         ,
#endif
    adjustmentGetPageSize                   ,


-- ** getStepIncrement #method:getStepIncrement#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetStepIncrementMethodInfo    ,
#endif
    adjustmentGetStepIncrement              ,


-- ** getUpper #method:getUpper#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetUpperMethodInfo            ,
#endif
    adjustmentGetUpper                      ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    AdjustmentGetValueMethodInfo            ,
#endif
    adjustmentGetValue                      ,


-- ** new #method:new#

    adjustmentNew                           ,


-- ** setLower #method:setLower#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetLowerMethodInfo            ,
#endif
    adjustmentSetLower                      ,


-- ** setPageIncrement #method:setPageIncrement#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetPageIncrementMethodInfo    ,
#endif
    adjustmentSetPageIncrement              ,


-- ** setPageSize #method:setPageSize#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetPageSizeMethodInfo         ,
#endif
    adjustmentSetPageSize                   ,


-- ** setStepIncrement #method:setStepIncrement#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetStepIncrementMethodInfo    ,
#endif
    adjustmentSetStepIncrement              ,


-- ** setUpper #method:setUpper#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetUpperMethodInfo            ,
#endif
    adjustmentSetUpper                      ,


-- ** setValue #method:setValue#

#if defined(ENABLE_OVERLOADING)
    AdjustmentSetValueMethodInfo            ,
#endif
    adjustmentSetValue                      ,


-- ** valueChanged #method:valueChanged#

#if defined(ENABLE_OVERLOADING)
    AdjustmentValueChangedMethodInfo        ,
#endif
    adjustmentValueChanged                  ,




 -- * Properties
-- ** lower #attr:lower#
-- | The minimum value of the adjustment.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentLowerPropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentLower                         ,
#endif
    constructAdjustmentLower                ,
    getAdjustmentLower                      ,
    setAdjustmentLower                      ,


-- ** pageIncrement #attr:pageIncrement#
-- | The page increment of the adjustment.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentPageIncrementPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentPageIncrement                 ,
#endif
    constructAdjustmentPageIncrement        ,
    getAdjustmentPageIncrement              ,
    setAdjustmentPageIncrement              ,


-- ** pageSize #attr:pageSize#
-- | The page size of the adjustment.
-- Note that the page-size is irrelevant and should be set to zero
-- if the adjustment is used for a simple scalar value, e.g. in a
-- t'GI.Gtk.Objects.SpinButton.SpinButton'.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentPageSizePropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentPageSize                      ,
#endif
    constructAdjustmentPageSize             ,
    getAdjustmentPageSize                   ,
    setAdjustmentPageSize                   ,


-- ** stepIncrement #attr:stepIncrement#
-- | The step increment of the adjustment.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentStepIncrementPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentStepIncrement                 ,
#endif
    constructAdjustmentStepIncrement        ,
    getAdjustmentStepIncrement              ,
    setAdjustmentStepIncrement              ,


-- ** upper #attr:upper#
-- | The maximum value of the adjustment.
-- Note that values will be restricted by
-- @upper - page-size@ if the page-size
-- property is nonzero.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentUpperPropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentUpper                         ,
#endif
    constructAdjustmentUpper                ,
    getAdjustmentUpper                      ,
    setAdjustmentUpper                      ,


-- ** value #attr:value#
-- | The value of the adjustment.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AdjustmentValuePropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    adjustmentValue                         ,
#endif
    constructAdjustmentValue                ,
    getAdjustmentValue                      ,
    setAdjustmentValue                      ,




 -- * Signals
-- ** changed #signal:changed#

    AdjustmentChangedCallback               ,
#if defined(ENABLE_OVERLOADING)
    AdjustmentChangedSignalInfo             ,
#endif
    C_AdjustmentChangedCallback             ,
    afterAdjustmentChanged                  ,
    genClosure_AdjustmentChanged            ,
    mk_AdjustmentChangedCallback            ,
    noAdjustmentChangedCallback             ,
    onAdjustmentChanged                     ,
    wrap_AdjustmentChangedCallback          ,


-- ** valueChanged #signal:valueChanged#

    AdjustmentValueChangedCallback          ,
#if defined(ENABLE_OVERLOADING)
    AdjustmentValueChangedSignalInfo        ,
#endif
    C_AdjustmentValueChangedCallback        ,
    afterAdjustmentValueChanged             ,
    genClosure_AdjustmentValueChanged       ,
    mk_AdjustmentValueChangedCallback       ,
    noAdjustmentValueChangedCallback        ,
    onAdjustmentValueChanged                ,
    wrap_AdjustmentValueChangedCallback     ,




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

-- | Memory-managed wrapper type.
newtype Adjustment = Adjustment (ManagedPtr Adjustment)
    deriving (Eq)
foreign import ccall "gtk_adjustment_get_type"
    c_gtk_adjustment_get_type :: IO GType

instance GObject Adjustment where
    gobjectType = c_gtk_adjustment_get_type
    

-- | Convert 'Adjustment' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Adjustment where
    toGValue o = do
        gtype <- c_gtk_adjustment_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Adjustment)
        B.ManagedPtr.newObject Adjustment ptr
        
    

-- | Type class for types which can be safely cast to `Adjustment`, for instance with `toAdjustment`.
class (GObject o, O.IsDescendantOf Adjustment o) => IsAdjustment o
instance (GObject o, O.IsDescendantOf Adjustment o) => IsAdjustment o

instance O.HasParentTypes Adjustment
type instance O.ParentTypes Adjustment = '[GObject.Object.Object]

-- | Cast to `Adjustment`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAdjustment :: (MonadIO m, IsAdjustment o) => o -> m Adjustment
toAdjustment = liftIO . unsafeCastTo Adjustment

-- | A convenience alias for `Nothing` :: `Maybe` `Adjustment`.
noAdjustment :: Maybe Adjustment
noAdjustment = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAdjustmentMethod (t :: Symbol) (o :: *) :: * where
    ResolveAdjustmentMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAdjustmentMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAdjustmentMethod "changed" o = AdjustmentChangedMethodInfo
    ResolveAdjustmentMethod "clampPage" o = AdjustmentClampPageMethodInfo
    ResolveAdjustmentMethod "configure" o = AdjustmentConfigureMethodInfo
    ResolveAdjustmentMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAdjustmentMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAdjustmentMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAdjustmentMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAdjustmentMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAdjustmentMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAdjustmentMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAdjustmentMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAdjustmentMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAdjustmentMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAdjustmentMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAdjustmentMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAdjustmentMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAdjustmentMethod "valueChanged" o = AdjustmentValueChangedMethodInfo
    ResolveAdjustmentMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAdjustmentMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAdjustmentMethod "getLower" o = AdjustmentGetLowerMethodInfo
    ResolveAdjustmentMethod "getMinimumIncrement" o = AdjustmentGetMinimumIncrementMethodInfo
    ResolveAdjustmentMethod "getPageIncrement" o = AdjustmentGetPageIncrementMethodInfo
    ResolveAdjustmentMethod "getPageSize" o = AdjustmentGetPageSizeMethodInfo
    ResolveAdjustmentMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAdjustmentMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAdjustmentMethod "getStepIncrement" o = AdjustmentGetStepIncrementMethodInfo
    ResolveAdjustmentMethod "getUpper" o = AdjustmentGetUpperMethodInfo
    ResolveAdjustmentMethod "getValue" o = AdjustmentGetValueMethodInfo
    ResolveAdjustmentMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAdjustmentMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAdjustmentMethod "setLower" o = AdjustmentSetLowerMethodInfo
    ResolveAdjustmentMethod "setPageIncrement" o = AdjustmentSetPageIncrementMethodInfo
    ResolveAdjustmentMethod "setPageSize" o = AdjustmentSetPageSizeMethodInfo
    ResolveAdjustmentMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAdjustmentMethod "setStepIncrement" o = AdjustmentSetStepIncrementMethodInfo
    ResolveAdjustmentMethod "setUpper" o = AdjustmentSetUpperMethodInfo
    ResolveAdjustmentMethod "setValue" o = AdjustmentSetValueMethodInfo
    ResolveAdjustmentMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAdjustmentMethod t Adjustment, O.MethodInfo info Adjustment p) => OL.IsLabel t (Adjustment -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Adjustment::changed
-- | Emitted when one or more of the t'GI.Gtk.Objects.Adjustment.Adjustment' properties have been
-- changed, other than the t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ property.
type AdjustmentChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AdjustmentChangedCallback`@.
noAdjustmentChangedCallback :: Maybe AdjustmentChangedCallback
noAdjustmentChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AdjustmentChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AdjustmentChangedCallback`.
foreign import ccall "wrapper"
    mk_AdjustmentChangedCallback :: C_AdjustmentChangedCallback -> IO (FunPtr C_AdjustmentChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AdjustmentChanged :: MonadIO m => AdjustmentChangedCallback -> m (GClosure C_AdjustmentChangedCallback)
genClosure_AdjustmentChanged cb = liftIO $ do
    let cb' = wrap_AdjustmentChangedCallback cb
    mk_AdjustmentChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AdjustmentChangedCallback` into a `C_AdjustmentChangedCallback`.
wrap_AdjustmentChangedCallback ::
    AdjustmentChangedCallback ->
    C_AdjustmentChangedCallback
wrap_AdjustmentChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' adjustment #changed callback
-- @
-- 
-- 
onAdjustmentChanged :: (IsAdjustment a, MonadIO m) => a -> AdjustmentChangedCallback -> m SignalHandlerId
onAdjustmentChanged obj cb = liftIO $ do
    let cb' = wrap_AdjustmentChangedCallback cb
    cb'' <- mk_AdjustmentChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' adjustment #changed callback
-- @
-- 
-- 
afterAdjustmentChanged :: (IsAdjustment a, MonadIO m) => a -> AdjustmentChangedCallback -> m SignalHandlerId
afterAdjustmentChanged obj cb = liftIO $ do
    let cb' = wrap_AdjustmentChangedCallback cb
    cb'' <- mk_AdjustmentChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AdjustmentChangedSignalInfo
instance SignalInfo AdjustmentChangedSignalInfo where
    type HaskellCallbackType AdjustmentChangedSignalInfo = AdjustmentChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AdjustmentChangedCallback cb
        cb'' <- mk_AdjustmentChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- signal Adjustment::value-changed
-- | Emitted when the t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ property has been changed.
type AdjustmentValueChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AdjustmentValueChangedCallback`@.
noAdjustmentValueChangedCallback :: Maybe AdjustmentValueChangedCallback
noAdjustmentValueChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AdjustmentValueChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AdjustmentValueChangedCallback`.
foreign import ccall "wrapper"
    mk_AdjustmentValueChangedCallback :: C_AdjustmentValueChangedCallback -> IO (FunPtr C_AdjustmentValueChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AdjustmentValueChanged :: MonadIO m => AdjustmentValueChangedCallback -> m (GClosure C_AdjustmentValueChangedCallback)
genClosure_AdjustmentValueChanged cb = liftIO $ do
    let cb' = wrap_AdjustmentValueChangedCallback cb
    mk_AdjustmentValueChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AdjustmentValueChangedCallback` into a `C_AdjustmentValueChangedCallback`.
wrap_AdjustmentValueChangedCallback ::
    AdjustmentValueChangedCallback ->
    C_AdjustmentValueChangedCallback
wrap_AdjustmentValueChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' adjustment #valueChanged callback
-- @
-- 
-- 
onAdjustmentValueChanged :: (IsAdjustment a, MonadIO m) => a -> AdjustmentValueChangedCallback -> m SignalHandlerId
onAdjustmentValueChanged obj cb = liftIO $ do
    let cb' = wrap_AdjustmentValueChangedCallback cb
    cb'' <- mk_AdjustmentValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' adjustment #valueChanged callback
-- @
-- 
-- 
afterAdjustmentValueChanged :: (IsAdjustment a, MonadIO m) => a -> AdjustmentValueChangedCallback -> m SignalHandlerId
afterAdjustmentValueChanged obj cb = liftIO $ do
    let cb' = wrap_AdjustmentValueChangedCallback cb
    cb'' <- mk_AdjustmentValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AdjustmentValueChangedSignalInfo
instance SignalInfo AdjustmentValueChangedSignalInfo where
    type HaskellCallbackType AdjustmentValueChangedSignalInfo = AdjustmentValueChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AdjustmentValueChangedCallback cb
        cb'' <- mk_AdjustmentValueChangedCallback cb'
        connectSignalFunPtr obj "value-changed" cb'' connectMode detail

#endif

-- VVV Prop "lower"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@lower@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #lower
-- @
getAdjustmentLower :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentLower obj = liftIO $ B.Properties.getObjectPropertyDouble obj "lower"

-- | Set the value of the “@lower@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #lower 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentLower :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentLower obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "lower" val

-- | Construct a `GValueConstruct` with valid value for the “@lower@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentLower :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentLower val = B.Properties.constructObjectPropertyDouble "lower" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentLowerPropertyInfo
instance AttrInfo AdjustmentLowerPropertyInfo where
    type AttrAllowedOps AdjustmentLowerPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentLowerPropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentLowerPropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentLowerPropertyInfo = (~) Double
    type AttrTransferType AdjustmentLowerPropertyInfo = Double
    type AttrGetType AdjustmentLowerPropertyInfo = Double
    type AttrLabel AdjustmentLowerPropertyInfo = "lower"
    type AttrOrigin AdjustmentLowerPropertyInfo = Adjustment
    attrGet = getAdjustmentLower
    attrSet = setAdjustmentLower
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentLower
    attrClear = undefined
#endif

-- VVV Prop "page-increment"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@page-increment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #pageIncrement
-- @
getAdjustmentPageIncrement :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentPageIncrement obj = liftIO $ B.Properties.getObjectPropertyDouble obj "page-increment"

-- | Set the value of the “@page-increment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #pageIncrement 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentPageIncrement :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentPageIncrement obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "page-increment" val

-- | Construct a `GValueConstruct` with valid value for the “@page-increment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentPageIncrement :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentPageIncrement val = B.Properties.constructObjectPropertyDouble "page-increment" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentPageIncrementPropertyInfo
instance AttrInfo AdjustmentPageIncrementPropertyInfo where
    type AttrAllowedOps AdjustmentPageIncrementPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentPageIncrementPropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentPageIncrementPropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentPageIncrementPropertyInfo = (~) Double
    type AttrTransferType AdjustmentPageIncrementPropertyInfo = Double
    type AttrGetType AdjustmentPageIncrementPropertyInfo = Double
    type AttrLabel AdjustmentPageIncrementPropertyInfo = "page-increment"
    type AttrOrigin AdjustmentPageIncrementPropertyInfo = Adjustment
    attrGet = getAdjustmentPageIncrement
    attrSet = setAdjustmentPageIncrement
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentPageIncrement
    attrClear = undefined
#endif

-- VVV Prop "page-size"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@page-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #pageSize
-- @
getAdjustmentPageSize :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentPageSize obj = liftIO $ B.Properties.getObjectPropertyDouble obj "page-size"

-- | Set the value of the “@page-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #pageSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentPageSize :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentPageSize obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "page-size" val

-- | Construct a `GValueConstruct` with valid value for the “@page-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentPageSize :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentPageSize val = B.Properties.constructObjectPropertyDouble "page-size" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentPageSizePropertyInfo
instance AttrInfo AdjustmentPageSizePropertyInfo where
    type AttrAllowedOps AdjustmentPageSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentPageSizePropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentPageSizePropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentPageSizePropertyInfo = (~) Double
    type AttrTransferType AdjustmentPageSizePropertyInfo = Double
    type AttrGetType AdjustmentPageSizePropertyInfo = Double
    type AttrLabel AdjustmentPageSizePropertyInfo = "page-size"
    type AttrOrigin AdjustmentPageSizePropertyInfo = Adjustment
    attrGet = getAdjustmentPageSize
    attrSet = setAdjustmentPageSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentPageSize
    attrClear = undefined
#endif

-- VVV Prop "step-increment"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@step-increment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #stepIncrement
-- @
getAdjustmentStepIncrement :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentStepIncrement obj = liftIO $ B.Properties.getObjectPropertyDouble obj "step-increment"

-- | Set the value of the “@step-increment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #stepIncrement 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentStepIncrement :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentStepIncrement obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "step-increment" val

-- | Construct a `GValueConstruct` with valid value for the “@step-increment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentStepIncrement :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentStepIncrement val = B.Properties.constructObjectPropertyDouble "step-increment" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentStepIncrementPropertyInfo
instance AttrInfo AdjustmentStepIncrementPropertyInfo where
    type AttrAllowedOps AdjustmentStepIncrementPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentStepIncrementPropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentStepIncrementPropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentStepIncrementPropertyInfo = (~) Double
    type AttrTransferType AdjustmentStepIncrementPropertyInfo = Double
    type AttrGetType AdjustmentStepIncrementPropertyInfo = Double
    type AttrLabel AdjustmentStepIncrementPropertyInfo = "step-increment"
    type AttrOrigin AdjustmentStepIncrementPropertyInfo = Adjustment
    attrGet = getAdjustmentStepIncrement
    attrSet = setAdjustmentStepIncrement
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentStepIncrement
    attrClear = undefined
#endif

-- VVV Prop "upper"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@upper@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #upper
-- @
getAdjustmentUpper :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentUpper obj = liftIO $ B.Properties.getObjectPropertyDouble obj "upper"

-- | Set the value of the “@upper@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #upper 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentUpper :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentUpper obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "upper" val

-- | Construct a `GValueConstruct` with valid value for the “@upper@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentUpper :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentUpper val = B.Properties.constructObjectPropertyDouble "upper" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentUpperPropertyInfo
instance AttrInfo AdjustmentUpperPropertyInfo where
    type AttrAllowedOps AdjustmentUpperPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentUpperPropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentUpperPropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentUpperPropertyInfo = (~) Double
    type AttrTransferType AdjustmentUpperPropertyInfo = Double
    type AttrGetType AdjustmentUpperPropertyInfo = Double
    type AttrLabel AdjustmentUpperPropertyInfo = "upper"
    type AttrOrigin AdjustmentUpperPropertyInfo = Adjustment
    attrGet = getAdjustmentUpper
    attrSet = setAdjustmentUpper
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentUpper
    attrClear = undefined
#endif

-- VVV Prop "value"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' adjustment #value
-- @
getAdjustmentValue :: (MonadIO m, IsAdjustment o) => o -> m Double
getAdjustmentValue obj = liftIO $ B.Properties.getObjectPropertyDouble obj "value"

-- | Set the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' adjustment [ #value 'Data.GI.Base.Attributes.:=' value ]
-- @
setAdjustmentValue :: (MonadIO m, IsAdjustment o) => o -> Double -> m ()
setAdjustmentValue obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "value" val

-- | Construct a `GValueConstruct` with valid value for the “@value@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAdjustmentValue :: (IsAdjustment o) => Double -> IO (GValueConstruct o)
constructAdjustmentValue val = B.Properties.constructObjectPropertyDouble "value" val

#if defined(ENABLE_OVERLOADING)
data AdjustmentValuePropertyInfo
instance AttrInfo AdjustmentValuePropertyInfo where
    type AttrAllowedOps AdjustmentValuePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AdjustmentValuePropertyInfo = IsAdjustment
    type AttrSetTypeConstraint AdjustmentValuePropertyInfo = (~) Double
    type AttrTransferTypeConstraint AdjustmentValuePropertyInfo = (~) Double
    type AttrTransferType AdjustmentValuePropertyInfo = Double
    type AttrGetType AdjustmentValuePropertyInfo = Double
    type AttrLabel AdjustmentValuePropertyInfo = "value"
    type AttrOrigin AdjustmentValuePropertyInfo = Adjustment
    attrGet = getAdjustmentValue
    attrSet = setAdjustmentValue
    attrTransfer _ v = do
        return v
    attrConstruct = constructAdjustmentValue
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Adjustment
type instance O.AttributeList Adjustment = AdjustmentAttributeList
type AdjustmentAttributeList = ('[ '("lower", AdjustmentLowerPropertyInfo), '("pageIncrement", AdjustmentPageIncrementPropertyInfo), '("pageSize", AdjustmentPageSizePropertyInfo), '("stepIncrement", AdjustmentStepIncrementPropertyInfo), '("upper", AdjustmentUpperPropertyInfo), '("value", AdjustmentValuePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
adjustmentLower :: AttrLabelProxy "lower"
adjustmentLower = AttrLabelProxy

adjustmentPageIncrement :: AttrLabelProxy "pageIncrement"
adjustmentPageIncrement = AttrLabelProxy

adjustmentPageSize :: AttrLabelProxy "pageSize"
adjustmentPageSize = AttrLabelProxy

adjustmentStepIncrement :: AttrLabelProxy "stepIncrement"
adjustmentStepIncrement = AttrLabelProxy

adjustmentUpper :: AttrLabelProxy "upper"
adjustmentUpper = AttrLabelProxy

adjustmentValue :: AttrLabelProxy "value"
adjustmentValue = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Adjustment = AdjustmentSignalList
type AdjustmentSignalList = ('[ '("changed", AdjustmentChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("valueChanged", AdjustmentValueChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method Adjustment::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the initial value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "lower"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the minimum value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "upper"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the maximum value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the step increment" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the page increment" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_size"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the page size" , sinceVersion = Nothing }
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

foreign import ccall "gtk_adjustment_new" gtk_adjustment_new :: 
    CDouble ->                              -- value : TBasicType TDouble
    CDouble ->                              -- lower : TBasicType TDouble
    CDouble ->                              -- upper : TBasicType TDouble
    CDouble ->                              -- step_increment : TBasicType TDouble
    CDouble ->                              -- page_increment : TBasicType TDouble
    CDouble ->                              -- page_size : TBasicType TDouble
    IO (Ptr Adjustment)

-- | Creates a new t'GI.Gtk.Objects.Adjustment.Adjustment'.
adjustmentNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@value@/: the initial value
    -> Double
    -- ^ /@lower@/: the minimum value
    -> Double
    -- ^ /@upper@/: the maximum value
    -> Double
    -- ^ /@stepIncrement@/: the step increment
    -> Double
    -- ^ /@pageIncrement@/: the page increment
    -> Double
    -- ^ /@pageSize@/: the page size
    -> m Adjustment
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Adjustment.Adjustment'
adjustmentNew value lower upper stepIncrement pageIncrement pageSize = liftIO $ do
    let value' = realToFrac value
    let lower' = realToFrac lower
    let upper' = realToFrac upper
    let stepIncrement' = realToFrac stepIncrement
    let pageIncrement' = realToFrac pageIncrement
    let pageSize' = realToFrac pageSize
    result <- gtk_adjustment_new value' lower' upper' stepIncrement' pageIncrement' pageSize'
    checkUnexpectedReturnNULL "adjustmentNew" result
    result' <- (newObject Adjustment) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Adjustment::changed
-- method type : OrdinaryMethod
-- Args: [ Arg
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

foreign import ccall "gtk_adjustment_changed" gtk_adjustment_changed :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

{-# DEPRECATED adjustmentChanged ["(Since version 3.18)","GTK+ emits [changed](\"GI.Gtk.Objects.Adjustment#signal:changed\") itself whenever any","   of the properties (other than value) change"] #-}
-- | Emits a [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal from the t'GI.Gtk.Objects.Adjustment.Adjustment'.
-- This is typically called by the owner of the t'GI.Gtk.Objects.Adjustment.Adjustment' after it has
-- changed any of the t'GI.Gtk.Objects.Adjustment.Adjustment' properties other than the value.
adjustmentChanged ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m ()
adjustmentChanged adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_adjustment_changed adjustment'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentChangedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentChangedMethodInfo a signature where
    overloadedMethod = adjustmentChanged

#endif

-- method Adjustment::clamp_page
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "lower"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the lower value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "upper"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the upper value" , sinceVersion = Nothing }
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

foreign import ccall "gtk_adjustment_clamp_page" gtk_adjustment_clamp_page :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- lower : TBasicType TDouble
    CDouble ->                              -- upper : TBasicType TDouble
    IO ()

-- | Updates the t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ property to ensure that the range
-- between /@lower@/ and /@upper@/ is in the current page (i.e. between
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ and t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ + t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-size/@).
-- If the range is larger than the page size, then only the start of it will
-- be in the current page.
-- 
-- A [valueChanged]("GI.Gtk.Objects.Adjustment#signal:valueChanged") signal will be emitted if the value is changed.
adjustmentClampPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@lower@/: the lower value
    -> Double
    -- ^ /@upper@/: the upper value
    -> m ()
adjustmentClampPage adjustment lower upper = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let lower' = realToFrac lower
    let upper' = realToFrac upper
    gtk_adjustment_clamp_page adjustment' lower' upper'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentClampPageMethodInfo
instance (signature ~ (Double -> Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentClampPageMethodInfo a signature where
    overloadedMethod = adjustmentClampPage

#endif

-- method Adjustment::configure
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "lower"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new minimum value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "upper"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new maximum value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new step increment"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new page increment"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_size"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new page size" , sinceVersion = Nothing }
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

foreign import ccall "gtk_adjustment_configure" gtk_adjustment_configure :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- value : TBasicType TDouble
    CDouble ->                              -- lower : TBasicType TDouble
    CDouble ->                              -- upper : TBasicType TDouble
    CDouble ->                              -- step_increment : TBasicType TDouble
    CDouble ->                              -- page_increment : TBasicType TDouble
    CDouble ->                              -- page_size : TBasicType TDouble
    IO ()

-- | Sets all properties of the adjustment at once.
-- 
-- Use this function to avoid multiple emissions of the
-- [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal. See 'GI.Gtk.Objects.Adjustment.adjustmentSetLower'
-- for an alternative way of compressing multiple emissions of
-- [changed]("GI.Gtk.Objects.Adjustment#signal:changed") into one.
-- 
-- /Since: 2.14/
adjustmentConfigure ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@value@/: the new value
    -> Double
    -- ^ /@lower@/: the new minimum value
    -> Double
    -- ^ /@upper@/: the new maximum value
    -> Double
    -- ^ /@stepIncrement@/: the new step increment
    -> Double
    -- ^ /@pageIncrement@/: the new page increment
    -> Double
    -- ^ /@pageSize@/: the new page size
    -> m ()
adjustmentConfigure adjustment value lower upper stepIncrement pageIncrement pageSize = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let value' = realToFrac value
    let lower' = realToFrac lower
    let upper' = realToFrac upper
    let stepIncrement' = realToFrac stepIncrement
    let pageIncrement' = realToFrac pageIncrement
    let pageSize' = realToFrac pageSize
    gtk_adjustment_configure adjustment' value' lower' upper' stepIncrement' pageIncrement' pageSize'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentConfigureMethodInfo
instance (signature ~ (Double -> Double -> Double -> Double -> Double -> Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentConfigureMethodInfo a signature where
    overloadedMethod = adjustmentConfigure

#endif

-- method Adjustment::get_lower
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_lower" gtk_adjustment_get_lower :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Retrieves the minimum value of the adjustment.
-- 
-- /Since: 2.14/
adjustmentGetLower ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current minimum value of the adjustment
adjustmentGetLower adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_lower adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetLowerMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetLowerMethodInfo a signature where
    overloadedMethod = adjustmentGetLower

#endif

-- method Adjustment::get_minimum_increment
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_minimum_increment" gtk_adjustment_get_minimum_increment :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Gets the smaller of step increment and page increment.
-- 
-- /Since: 3.2/
adjustmentGetMinimumIncrement ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ the minimum increment of /@adjustment@/
adjustmentGetMinimumIncrement adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_minimum_increment adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetMinimumIncrementMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetMinimumIncrementMethodInfo a signature where
    overloadedMethod = adjustmentGetMinimumIncrement

#endif

-- method Adjustment::get_page_increment
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_page_increment" gtk_adjustment_get_page_increment :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Retrieves the page increment of the adjustment.
-- 
-- /Since: 2.14/
adjustmentGetPageIncrement ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current page increment of the adjustment
adjustmentGetPageIncrement adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_page_increment adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetPageIncrementMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetPageIncrementMethodInfo a signature where
    overloadedMethod = adjustmentGetPageIncrement

#endif

-- method Adjustment::get_page_size
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_page_size" gtk_adjustment_get_page_size :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Retrieves the page size of the adjustment.
-- 
-- /Since: 2.14/
adjustmentGetPageSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current page size of the adjustment
adjustmentGetPageSize adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_page_size adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetPageSizeMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetPageSizeMethodInfo a signature where
    overloadedMethod = adjustmentGetPageSize

#endif

-- method Adjustment::get_step_increment
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_step_increment" gtk_adjustment_get_step_increment :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Retrieves the step increment of the adjustment.
-- 
-- /Since: 2.14/
adjustmentGetStepIncrement ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current step increment of the adjustment.
adjustmentGetStepIncrement adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_step_increment adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetStepIncrementMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetStepIncrementMethodInfo a signature where
    overloadedMethod = adjustmentGetStepIncrement

#endif

-- method Adjustment::get_upper
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_upper" gtk_adjustment_get_upper :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Retrieves the maximum value of the adjustment.
-- 
-- /Since: 2.14/
adjustmentGetUpper ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current maximum value of the adjustment
adjustmentGetUpper adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_upper adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetUpperMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetUpperMethodInfo a signature where
    overloadedMethod = adjustmentGetUpper

#endif

-- method Adjustment::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_adjustment_get_value" gtk_adjustment_get_value :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO CDouble

-- | Gets the current value of the adjustment.
-- See 'GI.Gtk.Objects.Adjustment.adjustmentSetValue'.
adjustmentGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m Double
    -- ^ __Returns:__ The current value of the adjustment
adjustmentGetValue adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_adjustment_get_value adjustment'
    let result' = realToFrac result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
data AdjustmentGetValueMethodInfo
instance (signature ~ (m Double), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentGetValueMethodInfo a signature where
    overloadedMethod = adjustmentGetValue

#endif

-- method Adjustment::set_lower
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "lower"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new minimum value"
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

foreign import ccall "gtk_adjustment_set_lower" gtk_adjustment_set_lower :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- lower : TBasicType TDouble
    IO ()

-- | Sets the minimum value of the adjustment.
-- 
-- When setting multiple adjustment properties via their individual
-- setters, multiple [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signals will be emitted.
-- However, since the emission of the [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal
-- is tied to the emission of the [notify]("GI.GObject.Objects.Object#signal:notify") signals of the changed
-- properties, it’s possible to compress the [changed]("GI.Gtk.Objects.Adjustment#signal:changed")
-- signals into one by calling 'GI.GObject.Objects.Object.objectFreezeNotify' and
-- 'GI.GObject.Objects.Object.objectThawNotify' around the calls to the individual setters.
-- 
-- Alternatively, using a single @/g_object_set()/@ for all the properties
-- to change, or using 'GI.Gtk.Objects.Adjustment.adjustmentConfigure' has the same effect
-- of compressing [changed]("GI.Gtk.Objects.Adjustment#signal:changed") emissions.
-- 
-- /Since: 2.14/
adjustmentSetLower ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@lower@/: the new minimum value
    -> m ()
adjustmentSetLower adjustment lower = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let lower' = realToFrac lower
    gtk_adjustment_set_lower adjustment' lower'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetLowerMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetLowerMethodInfo a signature where
    overloadedMethod = adjustmentSetLower

#endif

-- method Adjustment::set_page_increment
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "page_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new page increment"
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

foreign import ccall "gtk_adjustment_set_page_increment" gtk_adjustment_set_page_increment :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- page_increment : TBasicType TDouble
    IO ()

-- | Sets the page increment of the adjustment.
-- 
-- See 'GI.Gtk.Objects.Adjustment.adjustmentSetLower' about how to compress multiple
-- emissions of the [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal when setting
-- multiple adjustment properties.
-- 
-- /Since: 2.14/
adjustmentSetPageIncrement ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@pageIncrement@/: the new page increment
    -> m ()
adjustmentSetPageIncrement adjustment pageIncrement = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let pageIncrement' = realToFrac pageIncrement
    gtk_adjustment_set_page_increment adjustment' pageIncrement'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetPageIncrementMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetPageIncrementMethodInfo a signature where
    overloadedMethod = adjustmentSetPageIncrement

#endif

-- method Adjustment::set_page_size
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "page_size"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new page size" , sinceVersion = Nothing }
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

foreign import ccall "gtk_adjustment_set_page_size" gtk_adjustment_set_page_size :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- page_size : TBasicType TDouble
    IO ()

-- | Sets the page size of the adjustment.
-- 
-- See 'GI.Gtk.Objects.Adjustment.adjustmentSetLower' about how to compress multiple
-- emissions of the GtkAdjustment[changed](#signal:changed) signal when setting
-- multiple adjustment properties.
-- 
-- /Since: 2.14/
adjustmentSetPageSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@pageSize@/: the new page size
    -> m ()
adjustmentSetPageSize adjustment pageSize = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let pageSize' = realToFrac pageSize
    gtk_adjustment_set_page_size adjustment' pageSize'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetPageSizeMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetPageSizeMethodInfo a signature where
    overloadedMethod = adjustmentSetPageSize

#endif

-- method Adjustment::set_step_increment
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "step_increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new step increment"
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

foreign import ccall "gtk_adjustment_set_step_increment" gtk_adjustment_set_step_increment :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- step_increment : TBasicType TDouble
    IO ()

-- | Sets the step increment of the adjustment.
-- 
-- See 'GI.Gtk.Objects.Adjustment.adjustmentSetLower' about how to compress multiple
-- emissions of the [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal when setting
-- multiple adjustment properties.
-- 
-- /Since: 2.14/
adjustmentSetStepIncrement ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@stepIncrement@/: the new step increment
    -> m ()
adjustmentSetStepIncrement adjustment stepIncrement = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let stepIncrement' = realToFrac stepIncrement
    gtk_adjustment_set_step_increment adjustment' stepIncrement'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetStepIncrementMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetStepIncrementMethodInfo a signature where
    overloadedMethod = adjustmentSetStepIncrement

#endif

-- method Adjustment::set_upper
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "upper"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new maximum value"
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

foreign import ccall "gtk_adjustment_set_upper" gtk_adjustment_set_upper :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- upper : TBasicType TDouble
    IO ()

-- | Sets the maximum value of the adjustment.
-- 
-- Note that values will be restricted by @upper - page-size@
-- if the page-size property is nonzero.
-- 
-- See 'GI.Gtk.Objects.Adjustment.adjustmentSetLower' about how to compress multiple
-- emissions of the [changed]("GI.Gtk.Objects.Adjustment#signal:changed") signal when setting
-- multiple adjustment properties.
-- 
-- /Since: 2.14/
adjustmentSetUpper ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@upper@/: the new maximum value
    -> m ()
adjustmentSetUpper adjustment upper = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let upper' = realToFrac upper
    gtk_adjustment_set_upper adjustment' upper'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetUpperMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetUpperMethodInfo a signature where
    overloadedMethod = adjustmentSetUpper

#endif

-- method Adjustment::set_value
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value" , sinceVersion = Nothing }
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

foreign import ccall "gtk_adjustment_set_value" gtk_adjustment_set_value :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets the t'GI.Gtk.Objects.Adjustment.Adjustment' value. The value is clamped to lie between
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/lower/@ and t'GI.Gtk.Objects.Adjustment.Adjustment':@/upper/@.
-- 
-- Note that for adjustments which are used in a t'GI.Gtk.Objects.Scrollbar.Scrollbar', the
-- effective range of allowed values goes from t'GI.Gtk.Objects.Adjustment.Adjustment':@/lower/@ to
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/upper/@ - t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-size/@.
adjustmentSetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> Double
    -- ^ /@value@/: the new value
    -> m ()
adjustmentSetValue adjustment value = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    let value' = realToFrac value
    gtk_adjustment_set_value adjustment' value'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentSetValueMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentSetValueMethodInfo a signature where
    overloadedMethod = adjustmentSetValue

#endif

-- method Adjustment::value_changed
-- method type : OrdinaryMethod
-- Args: [ Arg
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

foreign import ccall "gtk_adjustment_value_changed" gtk_adjustment_value_changed :: 
    Ptr Adjustment ->                       -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

{-# DEPRECATED adjustmentValueChanged ["(Since version 3.18)","GTK+ emits [valueChanged](\"GI.Gtk.Objects.Adjustment#signal:valueChanged\") itself whenever","   the value changes"] #-}
-- | Emits a [valueChanged]("GI.Gtk.Objects.Adjustment#signal:valueChanged") signal from the t'GI.Gtk.Objects.Adjustment.Adjustment'.
-- This is typically called by the owner of the t'GI.Gtk.Objects.Adjustment.Adjustment' after it has
-- changed the t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ property.
adjustmentValueChanged ::
    (B.CallStack.HasCallStack, MonadIO m, IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m ()
adjustmentValueChanged adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_adjustment_value_changed adjustment'
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data AdjustmentValueChangedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAdjustment a) => O.MethodInfo AdjustmentValueChangedMethodInfo a signature where
    overloadedMethod = adjustmentValueChanged

#endif

