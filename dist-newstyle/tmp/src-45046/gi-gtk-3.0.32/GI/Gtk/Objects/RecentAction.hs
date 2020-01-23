{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.RecentAction.RecentAction' represents a list of recently used files, which
-- can be shown by widgets such as t'GI.Gtk.Objects.RecentChooserDialog.RecentChooserDialog' or
-- t'GI.Gtk.Objects.RecentChooserMenu.RecentChooserMenu'.
-- 
-- To construct a submenu showing recently used files, use a t'GI.Gtk.Objects.RecentAction.RecentAction'
-- as the action for a \<menuitem>. To construct a menu toolbutton showing
-- the recently used files in the popup menu, use a t'GI.Gtk.Objects.RecentAction.RecentAction' as the
-- action for a \<toolitem> element.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RecentAction
    ( 

-- * Exported types
    RecentAction(..)                        ,
    IsRecentAction                          ,
    toRecentAction                          ,
    noRecentAction                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecentActionMethod               ,
#endif


-- ** getShowNumbers #method:getShowNumbers#

#if defined(ENABLE_OVERLOADING)
    RecentActionGetShowNumbersMethodInfo    ,
#endif
    recentActionGetShowNumbers              ,


-- ** new #method:new#

    recentActionNew                         ,


-- ** newForManager #method:newForManager#

    recentActionNewForManager               ,


-- ** setShowNumbers #method:setShowNumbers#

#if defined(ENABLE_OVERLOADING)
    RecentActionSetShowNumbersMethodInfo    ,
#endif
    recentActionSetShowNumbers              ,




 -- * Properties
-- ** showNumbers #attr:showNumbers#
-- | Whether the items should be displayed with a number.

#if defined(ENABLE_OVERLOADING)
    RecentActionShowNumbersPropertyInfo     ,
#endif
    constructRecentActionShowNumbers        ,
    getRecentActionShowNumbers              ,
#if defined(ENABLE_OVERLOADING)
    recentActionShowNumbers                 ,
#endif
    setRecentActionShowNumbers              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.RecentChooser as Gtk.RecentChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Action as Gtk.Action
import {-# SOURCE #-} qualified GI.Gtk.Objects.RecentManager as Gtk.RecentManager

-- | Memory-managed wrapper type.
newtype RecentAction = RecentAction (ManagedPtr RecentAction)
    deriving (Eq)
foreign import ccall "gtk_recent_action_get_type"
    c_gtk_recent_action_get_type :: IO GType

instance GObject RecentAction where
    gobjectType = c_gtk_recent_action_get_type
    

-- | Convert 'RecentAction' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecentAction where
    toGValue o = do
        gtype <- c_gtk_recent_action_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecentAction)
        B.ManagedPtr.newObject RecentAction ptr
        
    

-- | Type class for types which can be safely cast to `RecentAction`, for instance with `toRecentAction`.
class (GObject o, O.IsDescendantOf RecentAction o) => IsRecentAction o
instance (GObject o, O.IsDescendantOf RecentAction o) => IsRecentAction o

instance O.HasParentTypes RecentAction
type instance O.ParentTypes RecentAction = '[Gtk.Action.Action, GObject.Object.Object, Gtk.Buildable.Buildable, Gtk.RecentChooser.RecentChooser]

-- | Cast to `RecentAction`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecentAction :: (MonadIO m, IsRecentAction o) => o -> m RecentAction
toRecentAction = liftIO . unsafeCastTo RecentAction

-- | A convenience alias for `Nothing` :: `Maybe` `RecentAction`.
noRecentAction :: Maybe RecentAction
noRecentAction = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecentActionMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecentActionMethod "activate" o = Gtk.Action.ActionActivateMethodInfo
    ResolveRecentActionMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveRecentActionMethod "addFilter" o = Gtk.RecentChooser.RecentChooserAddFilterMethodInfo
    ResolveRecentActionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecentActionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecentActionMethod "blockActivate" o = Gtk.Action.ActionBlockActivateMethodInfo
    ResolveRecentActionMethod "connectAccelerator" o = Gtk.Action.ActionConnectAcceleratorMethodInfo
    ResolveRecentActionMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveRecentActionMethod "createIcon" o = Gtk.Action.ActionCreateIconMethodInfo
    ResolveRecentActionMethod "createMenu" o = Gtk.Action.ActionCreateMenuMethodInfo
    ResolveRecentActionMethod "createMenuItem" o = Gtk.Action.ActionCreateMenuItemMethodInfo
    ResolveRecentActionMethod "createToolItem" o = Gtk.Action.ActionCreateToolItemMethodInfo
    ResolveRecentActionMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveRecentActionMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveRecentActionMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveRecentActionMethod "disconnectAccelerator" o = Gtk.Action.ActionDisconnectAcceleratorMethodInfo
    ResolveRecentActionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecentActionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecentActionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecentActionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecentActionMethod "isSensitive" o = Gtk.Action.ActionIsSensitiveMethodInfo
    ResolveRecentActionMethod "isVisible" o = Gtk.Action.ActionIsVisibleMethodInfo
    ResolveRecentActionMethod "listFilters" o = Gtk.RecentChooser.RecentChooserListFiltersMethodInfo
    ResolveRecentActionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecentActionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecentActionMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveRecentActionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecentActionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecentActionMethod "removeFilter" o = Gtk.RecentChooser.RecentChooserRemoveFilterMethodInfo
    ResolveRecentActionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecentActionMethod "selectAll" o = Gtk.RecentChooser.RecentChooserSelectAllMethodInfo
    ResolveRecentActionMethod "selectUri" o = Gtk.RecentChooser.RecentChooserSelectUriMethodInfo
    ResolveRecentActionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecentActionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecentActionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecentActionMethod "unblockActivate" o = Gtk.Action.ActionUnblockActivateMethodInfo
    ResolveRecentActionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecentActionMethod "unselectAll" o = Gtk.RecentChooser.RecentChooserUnselectAllMethodInfo
    ResolveRecentActionMethod "unselectUri" o = Gtk.RecentChooser.RecentChooserUnselectUriMethodInfo
    ResolveRecentActionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecentActionMethod "getAccelClosure" o = Gtk.Action.ActionGetAccelClosureMethodInfo
    ResolveRecentActionMethod "getAccelPath" o = Gtk.Action.ActionGetAccelPathMethodInfo
    ResolveRecentActionMethod "getAlwaysShowImage" o = Gtk.Action.ActionGetAlwaysShowImageMethodInfo
    ResolveRecentActionMethod "getCurrentItem" o = Gtk.RecentChooser.RecentChooserGetCurrentItemMethodInfo
    ResolveRecentActionMethod "getCurrentUri" o = Gtk.RecentChooser.RecentChooserGetCurrentUriMethodInfo
    ResolveRecentActionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecentActionMethod "getFilter" o = Gtk.RecentChooser.RecentChooserGetFilterMethodInfo
    ResolveRecentActionMethod "getGicon" o = Gtk.Action.ActionGetGiconMethodInfo
    ResolveRecentActionMethod "getIconName" o = Gtk.Action.ActionGetIconNameMethodInfo
    ResolveRecentActionMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveRecentActionMethod "getIsImportant" o = Gtk.Action.ActionGetIsImportantMethodInfo
    ResolveRecentActionMethod "getItems" o = Gtk.RecentChooser.RecentChooserGetItemsMethodInfo
    ResolveRecentActionMethod "getLabel" o = Gtk.Action.ActionGetLabelMethodInfo
    ResolveRecentActionMethod "getLimit" o = Gtk.RecentChooser.RecentChooserGetLimitMethodInfo
    ResolveRecentActionMethod "getLocalOnly" o = Gtk.RecentChooser.RecentChooserGetLocalOnlyMethodInfo
    ResolveRecentActionMethod "getName" o = Gtk.Action.ActionGetNameMethodInfo
    ResolveRecentActionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecentActionMethod "getProxies" o = Gtk.Action.ActionGetProxiesMethodInfo
    ResolveRecentActionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecentActionMethod "getSelectMultiple" o = Gtk.RecentChooser.RecentChooserGetSelectMultipleMethodInfo
    ResolveRecentActionMethod "getSensitive" o = Gtk.Action.ActionGetSensitiveMethodInfo
    ResolveRecentActionMethod "getShortLabel" o = Gtk.Action.ActionGetShortLabelMethodInfo
    ResolveRecentActionMethod "getShowIcons" o = Gtk.RecentChooser.RecentChooserGetShowIconsMethodInfo
    ResolveRecentActionMethod "getShowNotFound" o = Gtk.RecentChooser.RecentChooserGetShowNotFoundMethodInfo
    ResolveRecentActionMethod "getShowNumbers" o = RecentActionGetShowNumbersMethodInfo
    ResolveRecentActionMethod "getShowPrivate" o = Gtk.RecentChooser.RecentChooserGetShowPrivateMethodInfo
    ResolveRecentActionMethod "getShowTips" o = Gtk.RecentChooser.RecentChooserGetShowTipsMethodInfo
    ResolveRecentActionMethod "getSortType" o = Gtk.RecentChooser.RecentChooserGetSortTypeMethodInfo
    ResolveRecentActionMethod "getStockId" o = Gtk.Action.ActionGetStockIdMethodInfo
    ResolveRecentActionMethod "getTooltip" o = Gtk.Action.ActionGetTooltipMethodInfo
    ResolveRecentActionMethod "getUris" o = Gtk.RecentChooser.RecentChooserGetUrisMethodInfo
    ResolveRecentActionMethod "getVisible" o = Gtk.Action.ActionGetVisibleMethodInfo
    ResolveRecentActionMethod "getVisibleHorizontal" o = Gtk.Action.ActionGetVisibleHorizontalMethodInfo
    ResolveRecentActionMethod "getVisibleVertical" o = Gtk.Action.ActionGetVisibleVerticalMethodInfo
    ResolveRecentActionMethod "setAccelGroup" o = Gtk.Action.ActionSetAccelGroupMethodInfo
    ResolveRecentActionMethod "setAccelPath" o = Gtk.Action.ActionSetAccelPathMethodInfo
    ResolveRecentActionMethod "setAlwaysShowImage" o = Gtk.Action.ActionSetAlwaysShowImageMethodInfo
    ResolveRecentActionMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveRecentActionMethod "setCurrentUri" o = Gtk.RecentChooser.RecentChooserSetCurrentUriMethodInfo
    ResolveRecentActionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecentActionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecentActionMethod "setFilter" o = Gtk.RecentChooser.RecentChooserSetFilterMethodInfo
    ResolveRecentActionMethod "setGicon" o = Gtk.Action.ActionSetGiconMethodInfo
    ResolveRecentActionMethod "setIconName" o = Gtk.Action.ActionSetIconNameMethodInfo
    ResolveRecentActionMethod "setIsImportant" o = Gtk.Action.ActionSetIsImportantMethodInfo
    ResolveRecentActionMethod "setLabel" o = Gtk.Action.ActionSetLabelMethodInfo
    ResolveRecentActionMethod "setLimit" o = Gtk.RecentChooser.RecentChooserSetLimitMethodInfo
    ResolveRecentActionMethod "setLocalOnly" o = Gtk.RecentChooser.RecentChooserSetLocalOnlyMethodInfo
    ResolveRecentActionMethod "setName" o = Gtk.Buildable.BuildableSetNameMethodInfo
    ResolveRecentActionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecentActionMethod "setSelectMultiple" o = Gtk.RecentChooser.RecentChooserSetSelectMultipleMethodInfo
    ResolveRecentActionMethod "setSensitive" o = Gtk.Action.ActionSetSensitiveMethodInfo
    ResolveRecentActionMethod "setShortLabel" o = Gtk.Action.ActionSetShortLabelMethodInfo
    ResolveRecentActionMethod "setShowIcons" o = Gtk.RecentChooser.RecentChooserSetShowIconsMethodInfo
    ResolveRecentActionMethod "setShowNotFound" o = Gtk.RecentChooser.RecentChooserSetShowNotFoundMethodInfo
    ResolveRecentActionMethod "setShowNumbers" o = RecentActionSetShowNumbersMethodInfo
    ResolveRecentActionMethod "setShowPrivate" o = Gtk.RecentChooser.RecentChooserSetShowPrivateMethodInfo
    ResolveRecentActionMethod "setShowTips" o = Gtk.RecentChooser.RecentChooserSetShowTipsMethodInfo
    ResolveRecentActionMethod "setSortFunc" o = Gtk.RecentChooser.RecentChooserSetSortFuncMethodInfo
    ResolveRecentActionMethod "setSortType" o = Gtk.RecentChooser.RecentChooserSetSortTypeMethodInfo
    ResolveRecentActionMethod "setStockId" o = Gtk.Action.ActionSetStockIdMethodInfo
    ResolveRecentActionMethod "setTooltip" o = Gtk.Action.ActionSetTooltipMethodInfo
    ResolveRecentActionMethod "setVisible" o = Gtk.Action.ActionSetVisibleMethodInfo
    ResolveRecentActionMethod "setVisibleHorizontal" o = Gtk.Action.ActionSetVisibleHorizontalMethodInfo
    ResolveRecentActionMethod "setVisibleVertical" o = Gtk.Action.ActionSetVisibleVerticalMethodInfo
    ResolveRecentActionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecentActionMethod t RecentAction, O.MethodInfo info RecentAction p) => OL.IsLabel t (RecentAction -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "show-numbers"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-numbers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' recentAction #showNumbers
-- @
getRecentActionShowNumbers :: (MonadIO m, IsRecentAction o) => o -> m Bool
getRecentActionShowNumbers obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-numbers"

-- | Set the value of the “@show-numbers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' recentAction [ #showNumbers 'Data.GI.Base.Attributes.:=' value ]
-- @
setRecentActionShowNumbers :: (MonadIO m, IsRecentAction o) => o -> Bool -> m ()
setRecentActionShowNumbers obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-numbers" val

-- | Construct a `GValueConstruct` with valid value for the “@show-numbers@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRecentActionShowNumbers :: (IsRecentAction o) => Bool -> IO (GValueConstruct o)
constructRecentActionShowNumbers val = B.Properties.constructObjectPropertyBool "show-numbers" val

#if defined(ENABLE_OVERLOADING)
data RecentActionShowNumbersPropertyInfo
instance AttrInfo RecentActionShowNumbersPropertyInfo where
    type AttrAllowedOps RecentActionShowNumbersPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint RecentActionShowNumbersPropertyInfo = IsRecentAction
    type AttrSetTypeConstraint RecentActionShowNumbersPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint RecentActionShowNumbersPropertyInfo = (~) Bool
    type AttrTransferType RecentActionShowNumbersPropertyInfo = Bool
    type AttrGetType RecentActionShowNumbersPropertyInfo = Bool
    type AttrLabel RecentActionShowNumbersPropertyInfo = "show-numbers"
    type AttrOrigin RecentActionShowNumbersPropertyInfo = RecentAction
    attrGet = getRecentActionShowNumbers
    attrSet = setRecentActionShowNumbers
    attrTransfer _ v = do
        return v
    attrConstruct = constructRecentActionShowNumbers
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecentAction
type instance O.AttributeList RecentAction = RecentActionAttributeList
type RecentActionAttributeList = ('[ '("actionGroup", Gtk.Action.ActionActionGroupPropertyInfo), '("alwaysShowImage", Gtk.Action.ActionAlwaysShowImagePropertyInfo), '("filter", Gtk.RecentChooser.RecentChooserFilterPropertyInfo), '("gicon", Gtk.Action.ActionGiconPropertyInfo), '("hideIfEmpty", Gtk.Action.ActionHideIfEmptyPropertyInfo), '("iconName", Gtk.Action.ActionIconNamePropertyInfo), '("isImportant", Gtk.Action.ActionIsImportantPropertyInfo), '("label", Gtk.Action.ActionLabelPropertyInfo), '("limit", Gtk.RecentChooser.RecentChooserLimitPropertyInfo), '("localOnly", Gtk.RecentChooser.RecentChooserLocalOnlyPropertyInfo), '("name", Gtk.Action.ActionNamePropertyInfo), '("recentManager", Gtk.RecentChooser.RecentChooserRecentManagerPropertyInfo), '("selectMultiple", Gtk.RecentChooser.RecentChooserSelectMultiplePropertyInfo), '("sensitive", Gtk.Action.ActionSensitivePropertyInfo), '("shortLabel", Gtk.Action.ActionShortLabelPropertyInfo), '("showIcons", Gtk.RecentChooser.RecentChooserShowIconsPropertyInfo), '("showNotFound", Gtk.RecentChooser.RecentChooserShowNotFoundPropertyInfo), '("showNumbers", RecentActionShowNumbersPropertyInfo), '("showPrivate", Gtk.RecentChooser.RecentChooserShowPrivatePropertyInfo), '("showTips", Gtk.RecentChooser.RecentChooserShowTipsPropertyInfo), '("sortType", Gtk.RecentChooser.RecentChooserSortTypePropertyInfo), '("stockId", Gtk.Action.ActionStockIdPropertyInfo), '("tooltip", Gtk.Action.ActionTooltipPropertyInfo), '("visible", Gtk.Action.ActionVisiblePropertyInfo), '("visibleHorizontal", Gtk.Action.ActionVisibleHorizontalPropertyInfo), '("visibleOverflown", Gtk.Action.ActionVisibleOverflownPropertyInfo), '("visibleVertical", Gtk.Action.ActionVisibleVerticalPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
recentActionShowNumbers :: AttrLabelProxy "showNumbers"
recentActionShowNumbers = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecentAction = RecentActionSignalList
type RecentActionSignalList = ('[ '("activate", Gtk.Action.ActionActivateSignalInfo), '("itemActivated", Gtk.RecentChooser.RecentChooserItemActivatedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("selectionChanged", Gtk.RecentChooser.RecentChooserSelectionChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method RecentAction::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a unique name for the action"
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
--                       "the label displayed in menu items and on buttons,\n  or %NULL"
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
--                 { rawDocText = Just "a tooltip for the action, or %NULL"
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
--                       "the stock icon to display in widgets representing\n  the action, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "RecentAction" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_recent_action_new" gtk_recent_action_new :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- label : TBasicType TUTF8
    CString ->                              -- tooltip : TBasicType TUTF8
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr RecentAction)

{-# DEPRECATED recentActionNew ["(Since version 3.10)"] #-}
-- | Creates a new t'GI.Gtk.Objects.RecentAction.RecentAction' object. To add the action to
-- a t'GI.Gtk.Objects.ActionGroup.ActionGroup' and set the accelerator for the action,
-- call 'GI.Gtk.Objects.ActionGroup.actionGroupAddActionWithAccel'.
-- 
-- /Since: 2.12/
recentActionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: a unique name for the action
    -> Maybe (T.Text)
    -- ^ /@label@/: the label displayed in menu items and on buttons,
    --   or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@tooltip@/: a tooltip for the action, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@stockId@/: the stock icon to display in widgets representing
    --   the action, or 'P.Nothing'
    -> m RecentAction
    -- ^ __Returns:__ the newly created t'GI.Gtk.Objects.RecentAction.RecentAction'.
recentActionNew name label tooltip stockId = liftIO $ do
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
    result <- gtk_recent_action_new name' maybeLabel maybeTooltip maybeStockId
    checkUnexpectedReturnNULL "recentActionNew" result
    result' <- (wrapObject RecentAction) result
    freeMem name'
    freeMem maybeLabel
    freeMem maybeTooltip
    freeMem maybeStockId
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RecentAction::new_for_manager
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a unique name for the action"
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
--                       "the label displayed in menu items and on buttons,\n  or %NULL"
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
--                 { rawDocText = Just "a tooltip for the action, or %NULL"
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
--                       "the stock icon to display in widgets representing\n  the action, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GtkRecentManager, or %NULL for using the default\n  #GtkRecentManager"
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
--               (TInterface Name { namespace = "Gtk" , name = "RecentAction" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_recent_action_new_for_manager" gtk_recent_action_new_for_manager :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- label : TBasicType TUTF8
    CString ->                              -- tooltip : TBasicType TUTF8
    CString ->                              -- stock_id : TBasicType TUTF8
    Ptr Gtk.RecentManager.RecentManager ->  -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    IO (Ptr RecentAction)

{-# DEPRECATED recentActionNewForManager ["(Since version 3.10)"] #-}
-- | Creates a new t'GI.Gtk.Objects.RecentAction.RecentAction' object. To add the action to
-- a t'GI.Gtk.Objects.ActionGroup.ActionGroup' and set the accelerator for the action,
-- call 'GI.Gtk.Objects.ActionGroup.actionGroupAddActionWithAccel'.
-- 
-- /Since: 2.12/
recentActionNewForManager ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.RecentManager.IsRecentManager a) =>
    T.Text
    -- ^ /@name@/: a unique name for the action
    -> Maybe (T.Text)
    -- ^ /@label@/: the label displayed in menu items and on buttons,
    --   or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@tooltip@/: a tooltip for the action, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@stockId@/: the stock icon to display in widgets representing
    --   the action, or 'P.Nothing'
    -> Maybe (a)
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager', or 'P.Nothing' for using the default
    --   t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> m RecentAction
    -- ^ __Returns:__ the newly created t'GI.Gtk.Objects.RecentAction.RecentAction'
recentActionNewForManager name label tooltip stockId manager = liftIO $ do
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
    maybeManager <- case manager of
        Nothing -> return nullPtr
        Just jManager -> do
            jManager' <- unsafeManagedPtrCastPtr jManager
            return jManager'
    result <- gtk_recent_action_new_for_manager name' maybeLabel maybeTooltip maybeStockId maybeManager
    checkUnexpectedReturnNULL "recentActionNewForManager" result
    result' <- (wrapObject RecentAction) result
    whenJust manager touchManagedPtr
    freeMem name'
    freeMem maybeLabel
    freeMem maybeTooltip
    freeMem maybeStockId
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RecentAction::get_show_numbers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_recent_action_get_show_numbers" gtk_recent_action_get_show_numbers :: 
    Ptr RecentAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "RecentAction"})
    IO CInt

{-# DEPRECATED recentActionGetShowNumbers ["(Since version 3.10)"] #-}
-- | Returns the value set by 'GI.Gtk.Objects.RecentChooserMenu.recentChooserMenuSetShowNumbers'.
-- 
-- /Since: 2.12/
recentActionGetShowNumbers ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.RecentAction.RecentAction'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if numbers should be shown.
recentActionGetShowNumbers action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_recent_action_get_show_numbers action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data RecentActionGetShowNumbersMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsRecentAction a) => O.MethodInfo RecentActionGetShowNumbersMethodInfo a signature where
    overloadedMethod = recentActionGetShowNumbers

#endif

-- method RecentAction::set_show_numbers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_numbers"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE if the shown items should be numbered"
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

foreign import ccall "gtk_recent_action_set_show_numbers" gtk_recent_action_set_show_numbers :: 
    Ptr RecentAction ->                     -- action : TInterface (Name {namespace = "Gtk", name = "RecentAction"})
    CInt ->                                 -- show_numbers : TBasicType TBoolean
    IO ()

{-# DEPRECATED recentActionSetShowNumbers ["(Since version 3.10)"] #-}
-- | Sets whether a number should be added to the items shown by the
-- widgets representing /@action@/. The numbers are shown to provide
-- a unique character for a mnemonic to be used inside the menu item\'s
-- label. Only the first ten items get a number to avoid clashes.
-- 
-- /Since: 2.12/
recentActionSetShowNumbers ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.RecentAction.RecentAction'
    -> Bool
    -- ^ /@showNumbers@/: 'P.True' if the shown items should be numbered
    -> m ()
recentActionSetShowNumbers action showNumbers = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let showNumbers' = (fromIntegral . fromEnum) showNumbers
    gtk_recent_action_set_show_numbers action' showNumbers'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data RecentActionSetShowNumbersMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsRecentAction a) => O.MethodInfo RecentActionSetShowNumbersMethodInfo a signature where
    overloadedMethod = recentActionSetShowNumbers

#endif

