{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.ToggleAction.ToggleAction' corresponds roughly to a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'. It has an
-- “active” state specifying whether the action has been checked or not.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ToggleAction
    ( 

-- * Exported types
    ToggleAction(..)                        ,
    IsToggleAction                          ,
    toToggleAction                          ,
    noToggleAction                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToggleActionMethod               ,
#endif


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    ToggleActionGetActiveMethodInfo         ,
#endif
    toggleActionGetActive                   ,


-- ** getDrawAsRadio #method:getDrawAsRadio#

#if defined(ENABLE_OVERLOADING)
    ToggleActionGetDrawAsRadioMethodInfo    ,
#endif
    toggleActionGetDrawAsRadio              ,


-- ** new #method:new#

    toggleActionNew                         ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    ToggleActionSetActiveMethodInfo         ,
#endif
    toggleActionSetActive                   ,


-- ** setDrawAsRadio #method:setDrawAsRadio#

#if defined(ENABLE_OVERLOADING)
    ToggleActionSetDrawAsRadioMethodInfo    ,
#endif
    toggleActionSetDrawAsRadio              ,


-- ** toggled #method:toggled#

#if defined(ENABLE_OVERLOADING)
    ToggleActionToggledMethodInfo           ,
#endif
    toggleActionToggled                     ,




 -- * Properties
-- ** active #attr:active#
-- | Whether the toggle action should be active.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ToggleActionActivePropertyInfo          ,
#endif
    constructToggleActionActive             ,
    getToggleActionActive                   ,
    setToggleActionActive                   ,
#if defined(ENABLE_OVERLOADING)
    toggleActionActive                      ,
#endif


-- ** drawAsRadio #attr:drawAsRadio#
-- | Whether the proxies for this action look like radio action proxies.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.

#if defined(ENABLE_OVERLOADING)
    ToggleActionDrawAsRadioPropertyInfo     ,
#endif
    constructToggleActionDrawAsRadio        ,
    getToggleActionDrawAsRadio              ,
    setToggleActionDrawAsRadio              ,
#if defined(ENABLE_OVERLOADING)
    toggleActionDrawAsRadio                 ,
#endif




 -- * Signals
-- ** toggled #signal:toggled#

    C_ToggleActionToggledCallback           ,
    ToggleActionToggledCallback             ,
#if defined(ENABLE_OVERLOADING)
    ToggleActionToggledSignalInfo           ,
#endif
    afterToggleActionToggled                ,
    genClosure_ToggleActionToggled          ,
    mk_ToggleActionToggledCallback          ,
    noToggleActionToggledCallback           ,
    onToggleActionToggled                   ,
    wrap_ToggleActionToggledCallback        ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Action as Gtk.Action

-- | Memory-managed wrapper type.
newtype ToggleAction = ToggleAction (ManagedPtr ToggleAction)
    deriving (Eq)
foreign import ccall "gtk_toggle_action_get_type"
    c_gtk_toggle_action_get_type :: IO GType

instance GObject ToggleAction where
    gobjectType = c_gtk_toggle_action_get_type
    

-- | Convert 'ToggleAction' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ToggleAction where
    toGValue o = do
        gtype <- c_gtk_toggle_action_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ToggleAction)
        B.ManagedPtr.newObject ToggleAction ptr
        
    

-- | Type class for types which can be safely cast to `ToggleAction`, for instance with `toToggleAction`.
class (GObject o, O.IsDescendantOf ToggleAction o) => IsToggleAction o
instance (GObject o, O.IsDescendantOf ToggleAction o) => IsToggleAction o

instance O.HasParentTypes ToggleAction
type instance O.ParentTypes ToggleAction = '[Gtk.Action.Action, GObject.Object.Object, Gtk.Buildable.Buildable]

-- | Cast to `ToggleAction`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToggleAction :: (MonadIO m, IsToggleAction o) => o -> m ToggleAction
toToggleAction = liftIO . unsafeCastTo ToggleAction

-- | A convenience alias for `Nothing` :: `Maybe` `ToggleAction`.
noToggleAction :: Maybe ToggleAction
noToggleAction = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToggleActionMethod (t :: Symbol) (o :: *) :: * where
    ResolveToggleActionMethod "activate" o = Gtk.Action.ActionActivateMethodInfo
    ResolveToggleActionMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToggleActionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToggleActionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToggleActionMethod "blockActivate" o = Gtk.Action.ActionBlockActivateMethodInfo
    ResolveToggleActionMethod "connectAccelerator" o = Gtk.Action.ActionConnectAcceleratorMethodInfo
    ResolveToggleActionMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToggleActionMethod "createIcon" o = Gtk.Action.ActionCreateIconMethodInfo
    ResolveToggleActionMethod "createMenu" o = Gtk.Action.ActionCreateMenuMethodInfo
    ResolveToggleActionMethod "createMenuItem" o = Gtk.Action.ActionCreateMenuItemMethodInfo
    ResolveToggleActionMethod "createToolItem" o = Gtk.Action.ActionCreateToolItemMethodInfo
    ResolveToggleActionMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToggleActionMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToggleActionMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToggleActionMethod "disconnectAccelerator" o = Gtk.Action.ActionDisconnectAcceleratorMethodInfo
    ResolveToggleActionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToggleActionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToggleActionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToggleActionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToggleActionMethod "isSensitive" o = Gtk.Action.ActionIsSensitiveMethodInfo
    ResolveToggleActionMethod "isVisible" o = Gtk.Action.ActionIsVisibleMethodInfo
    ResolveToggleActionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToggleActionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToggleActionMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToggleActionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToggleActionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToggleActionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToggleActionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToggleActionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToggleActionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToggleActionMethod "toggled" o = ToggleActionToggledMethodInfo
    ResolveToggleActionMethod "unblockActivate" o = Gtk.Action.ActionUnblockActivateMethodInfo
    ResolveToggleActionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToggleActionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToggleActionMethod "getAccelClosure" o = Gtk.Action.ActionGetAccelClosureMethodInfo
    ResolveToggleActionMethod "getAccelPath" o = Gtk.Action.ActionGetAccelPathMethodInfo
    ResolveToggleActionMethod "getActive" o = ToggleActionGetActiveMethodInfo
    ResolveToggleActionMethod "getAlwaysShowImage" o = Gtk.Action.ActionGetAlwaysShowImageMethodInfo
    ResolveToggleActionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToggleActionMethod "getDrawAsRadio" o = ToggleActionGetDrawAsRadioMethodInfo
    ResolveToggleActionMethod "getGicon" o = Gtk.Action.ActionGetGiconMethodInfo
    ResolveToggleActionMethod "getIconName" o = Gtk.Action.ActionGetIconNameMethodInfo
    ResolveToggleActionMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToggleActionMethod "getIsImportant" o = Gtk.Action.ActionGetIsImportantMethodInfo
    ResolveToggleActionMethod "getLabel" o = Gtk.Action.ActionGetLabelMethodInfo
    ResolveToggleActionMethod "getName" o = Gtk.Action.ActionGetNameMethodInfo
    ResolveToggleActionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToggleActionMethod "getProxies" o = Gtk.Action.ActionGetProxiesMethodInfo
    ResolveToggleActionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToggleActionMethod "getSensitive" o = Gtk.Action.ActionGetSensitiveMethodInfo
    ResolveToggleActionMethod "getShortLabel" o = Gtk.Action.ActionGetShortLabelMethodInfo
    ResolveToggleActionMethod "getStockId" o = Gtk.Action.ActionGetStockIdMethodInfo
    ResolveToggleActionMethod "getTooltip" o = Gtk.Action.ActionGetTooltipMethodInfo
    ResolveToggleActionMethod "getVisible" o = Gtk.Action.ActionGetVisibleMethodInfo
    ResolveToggleActionMethod "getVisibleHorizontal" o = Gtk.Action.ActionGetVisibleHorizontalMethodInfo
    ResolveToggleActionMethod "getVisibleVertical" o = Gtk.Action.ActionGetVisibleVerticalMethodInfo
    ResolveToggleActionMethod "setAccelGroup" o = Gtk.Action.ActionSetAccelGroupMethodInfo
    ResolveToggleActionMethod "setAccelPath" o = Gtk.Action.ActionSetAccelPathMethodInfo
    ResolveToggleActionMethod "setActive" o = ToggleActionSetActiveMethodInfo
    ResolveToggleActionMethod "setAlwaysShowImage" o = Gtk.Action.ActionSetAlwaysShowImageMethodInfo
    ResolveToggleActionMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToggleActionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToggleActionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToggleActionMethod "setDrawAsRadio" o = ToggleActionSetDrawAsRadioMethodInfo
    ResolveToggleActionMethod "setGicon" o = Gtk.Action.ActionSetGiconMethodInfo
    ResolveToggleActionMethod "setIconName" o = Gtk.Action.ActionSetIconNameMethodInfo
    ResolveToggleActionMethod "setIsImportant" o = Gtk.Action.ActionSetIsImportantMethodInfo
    ResolveToggleActionMethod "setLabel" o = Gtk.Action.ActionSetLabelMethodInfo
    ResolveToggleActionMethod "setName" o = Gtk.Buildable.BuildableSetNameMethodInfo
    ResolveToggleActionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToggleActionMethod "setSensitive" o = Gtk.Action.ActionSetSensitiveMethodInfo
    ResolveToggleActionMethod "setShortLabel" o = Gtk.Action.ActionSetShortLabelMethodInfo
    ResolveToggleActionMethod "setStockId" o = Gtk.Action.ActionSetStockIdMethodInfo
    ResolveToggleActionMethod "setTooltip" o = Gtk.Action.ActionSetTooltipMethodInfo
    ResolveToggleActionMethod "setVisible" o = Gtk.Action.ActionSetVisibleMethodInfo
    ResolveToggleActionMethod "setVisibleHorizontal" o = Gtk.Action.ActionSetVisibleHorizontalMethodInfo
    ResolveToggleActionMethod "setVisibleVertical" o = Gtk.Action.ActionSetVisibleVerticalMethodInfo
    ResolveToggleActionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToggleActionMethod t ToggleAction, O.MethodInfo info ToggleAction p) => OL.IsLabel t (ToggleAction -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ToggleAction::toggled
{-# DEPRECATED ToggleActionToggledCallback ["(Since version 3.10)"] #-}
-- | Should be connected if you wish to perform an action
-- whenever the t'GI.Gtk.Objects.ToggleAction.ToggleAction' state is changed.
type ToggleActionToggledCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToggleActionToggledCallback`@.
noToggleActionToggledCallback :: Maybe ToggleActionToggledCallback
noToggleActionToggledCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToggleActionToggledCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToggleActionToggledCallback`.
foreign import ccall "wrapper"
    mk_ToggleActionToggledCallback :: C_ToggleActionToggledCallback -> IO (FunPtr C_ToggleActionToggledCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToggleActionToggled :: MonadIO m => ToggleActionToggledCallback -> m (GClosure C_ToggleActionToggledCallback)
genClosure_ToggleActionToggled cb = liftIO $ do
    let cb' = wrap_ToggleActionToggledCallback cb
    mk_ToggleActionToggledCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToggleActionToggledCallback` into a `C_ToggleActionToggledCallback`.
wrap_ToggleActionToggledCallback ::
    ToggleActionToggledCallback ->
    C_ToggleActionToggledCallback
wrap_ToggleActionToggledCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toggleAction #toggled callback
-- @
-- 
-- 
onToggleActionToggled :: (IsToggleAction a, MonadIO m) => a -> ToggleActionToggledCallback -> m SignalHandlerId
onToggleActionToggled obj cb = liftIO $ do
    let cb' = wrap_ToggleActionToggledCallback cb
    cb'' <- mk_ToggleActionToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toggleAction #toggled callback
-- @
-- 
-- 
afterToggleActionToggled :: (IsToggleAction a, MonadIO m) => a -> ToggleActionToggledCallback -> m SignalHandlerId
afterToggleActionToggled obj cb = liftIO $ do
    let cb' = wrap_ToggleActionToggledCallback cb
    cb'' <- mk_ToggleActionToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToggleActionToggledSignalInfo
instance SignalInfo ToggleActionToggledSignalInfo where
    type HaskellCallbackType ToggleActionToggledSignalInfo = ToggleActionToggledCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToggleActionToggledCallback cb
        cb'' <- mk_ToggleActionToggledCallback cb'
        connectSignalFunPtr obj "toggled" cb'' connectMode detail

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toggleAction #active
-- @
getToggleActionActive :: (MonadIO m, IsToggleAction o) => o -> m Bool
getToggleActionActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toggleAction [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setToggleActionActive :: (MonadIO m, IsToggleAction o) => o -> Bool -> m ()
setToggleActionActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToggleActionActive :: (IsToggleAction o) => Bool -> IO (GValueConstruct o)
constructToggleActionActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data ToggleActionActivePropertyInfo
instance AttrInfo ToggleActionActivePropertyInfo where
    type AttrAllowedOps ToggleActionActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToggleActionActivePropertyInfo = IsToggleAction
    type AttrSetTypeConstraint ToggleActionActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToggleActionActivePropertyInfo = (~) Bool
    type AttrTransferType ToggleActionActivePropertyInfo = Bool
    type AttrGetType ToggleActionActivePropertyInfo = Bool
    type AttrLabel ToggleActionActivePropertyInfo = "active"
    type AttrOrigin ToggleActionActivePropertyInfo = ToggleAction
    attrGet = getToggleActionActive
    attrSet = setToggleActionActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructToggleActionActive
    attrClear = undefined
#endif

-- VVV Prop "draw-as-radio"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@draw-as-radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toggleAction #drawAsRadio
-- @
getToggleActionDrawAsRadio :: (MonadIO m, IsToggleAction o) => o -> m Bool
getToggleActionDrawAsRadio obj = liftIO $ B.Properties.getObjectPropertyBool obj "draw-as-radio"

-- | Set the value of the “@draw-as-radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toggleAction [ #drawAsRadio 'Data.GI.Base.Attributes.:=' value ]
-- @
setToggleActionDrawAsRadio :: (MonadIO m, IsToggleAction o) => o -> Bool -> m ()
setToggleActionDrawAsRadio obj val = liftIO $ B.Properties.setObjectPropertyBool obj "draw-as-radio" val

-- | Construct a `GValueConstruct` with valid value for the “@draw-as-radio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToggleActionDrawAsRadio :: (IsToggleAction o) => Bool -> IO (GValueConstruct o)
constructToggleActionDrawAsRadio val = B.Properties.constructObjectPropertyBool "draw-as-radio" val

#if defined(ENABLE_OVERLOADING)
data ToggleActionDrawAsRadioPropertyInfo
instance AttrInfo ToggleActionDrawAsRadioPropertyInfo where
    type AttrAllowedOps ToggleActionDrawAsRadioPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToggleActionDrawAsRadioPropertyInfo = IsToggleAction
    type AttrSetTypeConstraint ToggleActionDrawAsRadioPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToggleActionDrawAsRadioPropertyInfo = (~) Bool
    type AttrTransferType ToggleActionDrawAsRadioPropertyInfo = Bool
    type AttrGetType ToggleActionDrawAsRadioPropertyInfo = Bool
    type AttrLabel ToggleActionDrawAsRadioPropertyInfo = "draw-as-radio"
    type AttrOrigin ToggleActionDrawAsRadioPropertyInfo = ToggleAction
    attrGet = getToggleActionDrawAsRadio
    attrSet = setToggleActionDrawAsRadio
    attrTransfer _ v = do
        return v
    attrConstruct = constructToggleActionDrawAsRadio
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ToggleAction
type instance O.AttributeList ToggleAction = ToggleActionAttributeList
type ToggleActionAttributeList = ('[ '("actionGroup", Gtk.Action.ActionActionGroupPropertyInfo), '("active", ToggleActionActivePropertyInfo), '("alwaysShowImage", Gtk.Action.ActionAlwaysShowImagePropertyInfo), '("drawAsRadio", ToggleActionDrawAsRadioPropertyInfo), '("gicon", Gtk.Action.ActionGiconPropertyInfo), '("hideIfEmpty", Gtk.Action.ActionHideIfEmptyPropertyInfo), '("iconName", Gtk.Action.ActionIconNamePropertyInfo), '("isImportant", Gtk.Action.ActionIsImportantPropertyInfo), '("label", Gtk.Action.ActionLabelPropertyInfo), '("name", Gtk.Action.ActionNamePropertyInfo), '("sensitive", Gtk.Action.ActionSensitivePropertyInfo), '("shortLabel", Gtk.Action.ActionShortLabelPropertyInfo), '("stockId", Gtk.Action.ActionStockIdPropertyInfo), '("tooltip", Gtk.Action.ActionTooltipPropertyInfo), '("visible", Gtk.Action.ActionVisiblePropertyInfo), '("visibleHorizontal", Gtk.Action.ActionVisibleHorizontalPropertyInfo), '("visibleOverflown", Gtk.Action.ActionVisibleOverflownPropertyInfo), '("visibleVertical", Gtk.Action.ActionVisibleVerticalPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toggleActionActive :: AttrLabelProxy "active"
toggleActionActive = AttrLabelProxy

toggleActionDrawAsRadio :: AttrLabelProxy "drawAsRadio"
toggleActionDrawAsRadio = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ToggleAction = ToggleActionSignalList
type ToggleActionSignalList = ('[ '("activate", Gtk.Action.ActionActivateSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("toggled", ToggleActionToggledSignalInfo)] :: [(Symbol, *)])

#endif

-- method ToggleAction::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A unique name for the action"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The label displayed in menu items and on buttons,\n        or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tooltip"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A tooltip for the action, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The stock icon to display in widgets representing\n           the action, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "ToggleAction" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toggle_action_new" gtk_toggle_action_new :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- label : TBasicType TUTF8
    CString ->                              -- tooltip : TBasicType TUTF8
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr ToggleAction)

{-# DEPRECATED toggleActionNew ["(Since version 3.10)"] #-}
-- | Creates a new t'GI.Gtk.Objects.ToggleAction.ToggleAction' object. To add the action to
-- a t'GI.Gtk.Objects.ActionGroup.ActionGroup' and set the accelerator for the action,
-- call 'GI.Gtk.Objects.ActionGroup.actionGroupAddActionWithAccel'.
-- 
-- /Since: 2.4/
toggleActionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: A unique name for the action
    -> Maybe (T.Text)
    -- ^ /@label@/: The label displayed in menu items and on buttons,
    --         or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@tooltip@/: A tooltip for the action, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@stockId@/: The stock icon to display in widgets representing
    --            the action, or 'P.Nothing'
    -> m ToggleAction
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ToggleAction.ToggleAction'
toggleActionNew name label tooltip stockId = liftIO $ do
    name' <- textToCString name
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    maybeTooltip <- case tooltip of
        Nothing -> return nullPtr
        Just jTooltip -> do
            jTooltip' <- textToCString jTooltip
            return jTooltip'
    maybeStockId <- case stockId of
        Nothing -> return nullPtr
        Just jStockId -> do
            jStockId' <- textToCString jStockId
            return jStockId'
    result <- gtk_toggle_action_new name' maybeLabel maybeTooltip maybeStockId
    checkUnexpectedReturnNULL "toggleActionNew" result
    result' <- (wrapObject ToggleAction) result
    freeMem name'
    freeMem maybeLabel
    freeMem maybeTooltip
    freeMem maybeStockId
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToggleAction::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the action object" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toggle_action_get_active" gtk_toggle_action_get_active :: 
    Ptr ToggleAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "ToggleAction"})
    IO CInt

{-# DEPRECATED toggleActionGetActive ["(Since version 3.10)"] #-}
-- | Returns the checked state of the toggle action.
-- 
-- /Since: 2.4/
toggleActionGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ the checked state of the toggle action
toggleActionGetActive action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_toggle_action_get_active action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ToggleActionGetActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToggleAction a) => O.MethodInfo ToggleActionGetActiveMethodInfo a signature where
    overloadedMethod = toggleActionGetActive

#endif

-- method ToggleAction::get_draw_as_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the action object" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toggle_action_get_draw_as_radio" gtk_toggle_action_get_draw_as_radio :: 
    Ptr ToggleAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "ToggleAction"})
    IO CInt

{-# DEPRECATED toggleActionGetDrawAsRadio ["(Since version 3.10)"] #-}
-- | Returns whether the action should have proxies like a radio action.
-- 
-- /Since: 2.4/
toggleActionGetDrawAsRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ whether the action should have proxies like a radio action.
toggleActionGetDrawAsRadio action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_toggle_action_get_draw_as_radio action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ToggleActionGetDrawAsRadioMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToggleAction a) => O.MethodInfo ToggleActionGetDrawAsRadioMethodInfo a signature where
    overloadedMethod = toggleActionGetDrawAsRadio

#endif

-- method ToggleAction::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the action object" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_active"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the action should be checked or not"
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

foreign import ccall "gtk_toggle_action_set_active" gtk_toggle_action_set_active :: 
    Ptr ToggleAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "ToggleAction"})
    CInt ->                                 -- is_active : TBasicType TBoolean
    IO ()

{-# DEPRECATED toggleActionSetActive ["(Since version 3.10)"] #-}
-- | Sets the checked state on the toggle action.
-- 
-- /Since: 2.4/
toggleActionSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Bool
    -- ^ /@isActive@/: whether the action should be checked or not
    -> m ()
toggleActionSetActive action isActive = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let isActive' = (fromIntegral . fromEnum) isActive
    gtk_toggle_action_set_active action' isActive'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ToggleActionSetActiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToggleAction a) => O.MethodInfo ToggleActionSetActiveMethodInfo a signature where
    overloadedMethod = toggleActionSetActive

#endif

-- method ToggleAction::set_draw_as_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the action object" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "draw_as_radio"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether the action should have proxies like a radio\n   action"
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

foreign import ccall "gtk_toggle_action_set_draw_as_radio" gtk_toggle_action_set_draw_as_radio :: 
    Ptr ToggleAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "ToggleAction"})
    CInt ->                                 -- draw_as_radio : TBasicType TBoolean
    IO ()

{-# DEPRECATED toggleActionSetDrawAsRadio ["(Since version 3.10)"] #-}
-- | Sets whether the action should have proxies like a radio action.
-- 
-- /Since: 2.4/
toggleActionSetDrawAsRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Bool
    -- ^ /@drawAsRadio@/: whether the action should have proxies like a radio
    --    action
    -> m ()
toggleActionSetDrawAsRadio action drawAsRadio = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let drawAsRadio' = (fromIntegral . fromEnum) drawAsRadio
    gtk_toggle_action_set_draw_as_radio action' drawAsRadio'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ToggleActionSetDrawAsRadioMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToggleAction a) => O.MethodInfo ToggleActionSetDrawAsRadioMethodInfo a signature where
    overloadedMethod = toggleActionSetDrawAsRadio

#endif

-- method ToggleAction::toggled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the action object" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toggle_action_toggled" gtk_toggle_action_toggled :: 
    Ptr ToggleAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "ToggleAction"})
    IO ()

{-# DEPRECATED toggleActionToggled ["(Since version 3.10)"] #-}
-- | Emits the “toggled” signal on the toggle action.
-- 
-- /Since: 2.4/
toggleActionToggled ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m ()
toggleActionToggled action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_toggle_action_toggled action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ToggleActionToggledMethodInfo
instance (signature ~ (m ()), MonadIO m, IsToggleAction a) => O.MethodInfo ToggleActionToggledMethodInfo a signature where
    overloadedMethod = toggleActionToggled

#endif

