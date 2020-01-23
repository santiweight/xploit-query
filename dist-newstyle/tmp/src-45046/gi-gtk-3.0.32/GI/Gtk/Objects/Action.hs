{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- > In GTK+ 3.10, GtkAction has been deprecated. Use t'GI.Gio.Interfaces.Action.Action'
-- > instead, and associate actions with t'GI.Gtk.Interfaces.Actionable.Actionable' widgets. Use
-- > t'GI.Gio.Objects.MenuModel.MenuModel' for creating menus with 'GI.Gtk.Objects.Menu.menuNewFromModel'.
-- 
-- Actions represent operations that the user can be perform, along with
-- some information how it should be presented in the interface. Each action
-- provides methods to create icons, menu items and toolbar items
-- representing itself.
-- 
-- As well as the callback that is called when the action gets activated,
-- the following also gets associated with the action:
-- 
-- * a name (not translated, for path lookup)
-- * a label (translated, for display)
-- * an accelerator
-- * whether label indicates a stock id
-- * a tooltip (optional, translated)
-- * a toolbar label (optional, shorter than label)
-- 
-- 
-- 
-- The action will also have some state information:
-- 
-- * visible (shown\/hidden)
-- * sensitive (enabled\/disabled)
-- 
-- 
-- Apart from regular actions, there are [toggle actions][GtkToggleAction],
-- which can be toggled between two states and
-- [radio actions][GtkRadioAction], of which only one in a group
-- can be in the “active” state. Other actions can be implemented as t'GI.Gtk.Objects.Action.Action'
-- subclasses.
-- 
-- Each action can have one or more proxy widgets. To act as an action proxy,
-- widget needs to implement t'GI.Gtk.Interfaces.Activatable.Activatable' interface. Proxies mirror the state
-- of the action and should change when the action’s state changes. Properties
-- that are always mirrored by proxies are t'GI.Gtk.Objects.Action.Action':@/sensitive/@ and
-- t'GI.Gtk.Objects.Action.Action':@/visible/@. t'GI.Gtk.Objects.Action.Action':@/gicon/@, t'GI.Gtk.Objects.Action.Action':@/icon-name/@, t'GI.Gtk.Objects.Action.Action':@/label/@,
-- t'GI.Gtk.Objects.Action.Action':@/short-label/@ and t'GI.Gtk.Objects.Action.Action':@/stock-id/@ properties are only mirorred
-- if proxy widget has t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ property set to
-- 'P.True'.
-- 
-- When the proxy is activated, it should activate its action.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Action
    ( 

-- * Exported types
    Action(..)                              ,
    IsAction                                ,
    toAction                                ,
    noAction                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveActionMethod                     ,
#endif


-- ** activate #method:activate#

#if defined(ENABLE_OVERLOADING)
    ActionActivateMethodInfo                ,
#endif
    actionActivate                          ,


-- ** blockActivate #method:blockActivate#

#if defined(ENABLE_OVERLOADING)
    ActionBlockActivateMethodInfo           ,
#endif
    actionBlockActivate                     ,


-- ** connectAccelerator #method:connectAccelerator#

#if defined(ENABLE_OVERLOADING)
    ActionConnectAcceleratorMethodInfo      ,
#endif
    actionConnectAccelerator                ,


-- ** createIcon #method:createIcon#

#if defined(ENABLE_OVERLOADING)
    ActionCreateIconMethodInfo              ,
#endif
    actionCreateIcon                        ,


-- ** createMenu #method:createMenu#

#if defined(ENABLE_OVERLOADING)
    ActionCreateMenuMethodInfo              ,
#endif
    actionCreateMenu                        ,


-- ** createMenuItem #method:createMenuItem#

#if defined(ENABLE_OVERLOADING)
    ActionCreateMenuItemMethodInfo          ,
#endif
    actionCreateMenuItem                    ,


-- ** createToolItem #method:createToolItem#

#if defined(ENABLE_OVERLOADING)
    ActionCreateToolItemMethodInfo          ,
#endif
    actionCreateToolItem                    ,


-- ** disconnectAccelerator #method:disconnectAccelerator#

#if defined(ENABLE_OVERLOADING)
    ActionDisconnectAcceleratorMethodInfo   ,
#endif
    actionDisconnectAccelerator             ,


-- ** getAccelClosure #method:getAccelClosure#

#if defined(ENABLE_OVERLOADING)
    ActionGetAccelClosureMethodInfo         ,
#endif
    actionGetAccelClosure                   ,


-- ** getAccelPath #method:getAccelPath#

#if defined(ENABLE_OVERLOADING)
    ActionGetAccelPathMethodInfo            ,
#endif
    actionGetAccelPath                      ,


-- ** getAlwaysShowImage #method:getAlwaysShowImage#

#if defined(ENABLE_OVERLOADING)
    ActionGetAlwaysShowImageMethodInfo      ,
#endif
    actionGetAlwaysShowImage                ,


-- ** getGicon #method:getGicon#

#if defined(ENABLE_OVERLOADING)
    ActionGetGiconMethodInfo                ,
#endif
    actionGetGicon                          ,


-- ** getIconName #method:getIconName#

#if defined(ENABLE_OVERLOADING)
    ActionGetIconNameMethodInfo             ,
#endif
    actionGetIconName                       ,


-- ** getIsImportant #method:getIsImportant#

#if defined(ENABLE_OVERLOADING)
    ActionGetIsImportantMethodInfo          ,
#endif
    actionGetIsImportant                    ,


-- ** getLabel #method:getLabel#

#if defined(ENABLE_OVERLOADING)
    ActionGetLabelMethodInfo                ,
#endif
    actionGetLabel                          ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    ActionGetNameMethodInfo                 ,
#endif
    actionGetName                           ,


-- ** getProxies #method:getProxies#

#if defined(ENABLE_OVERLOADING)
    ActionGetProxiesMethodInfo              ,
#endif
    actionGetProxies                        ,


-- ** getSensitive #method:getSensitive#

#if defined(ENABLE_OVERLOADING)
    ActionGetSensitiveMethodInfo            ,
#endif
    actionGetSensitive                      ,


-- ** getShortLabel #method:getShortLabel#

#if defined(ENABLE_OVERLOADING)
    ActionGetShortLabelMethodInfo           ,
#endif
    actionGetShortLabel                     ,


-- ** getStockId #method:getStockId#

#if defined(ENABLE_OVERLOADING)
    ActionGetStockIdMethodInfo              ,
#endif
    actionGetStockId                        ,


-- ** getTooltip #method:getTooltip#

#if defined(ENABLE_OVERLOADING)
    ActionGetTooltipMethodInfo              ,
#endif
    actionGetTooltip                        ,


-- ** getVisible #method:getVisible#

#if defined(ENABLE_OVERLOADING)
    ActionGetVisibleMethodInfo              ,
#endif
    actionGetVisible                        ,


-- ** getVisibleHorizontal #method:getVisibleHorizontal#

#if defined(ENABLE_OVERLOADING)
    ActionGetVisibleHorizontalMethodInfo    ,
#endif
    actionGetVisibleHorizontal              ,


-- ** getVisibleVertical #method:getVisibleVertical#

#if defined(ENABLE_OVERLOADING)
    ActionGetVisibleVerticalMethodInfo      ,
#endif
    actionGetVisibleVertical                ,


-- ** isSensitive #method:isSensitive#

#if defined(ENABLE_OVERLOADING)
    ActionIsSensitiveMethodInfo             ,
#endif
    actionIsSensitive                       ,


-- ** isVisible #method:isVisible#

#if defined(ENABLE_OVERLOADING)
    ActionIsVisibleMethodInfo               ,
#endif
    actionIsVisible                         ,


-- ** new #method:new#

    actionNew                               ,


-- ** setAccelGroup #method:setAccelGroup#

#if defined(ENABLE_OVERLOADING)
    ActionSetAccelGroupMethodInfo           ,
#endif
    actionSetAccelGroup                     ,


-- ** setAccelPath #method:setAccelPath#

#if defined(ENABLE_OVERLOADING)
    ActionSetAccelPathMethodInfo            ,
#endif
    actionSetAccelPath                      ,


-- ** setAlwaysShowImage #method:setAlwaysShowImage#

#if defined(ENABLE_OVERLOADING)
    ActionSetAlwaysShowImageMethodInfo      ,
#endif
    actionSetAlwaysShowImage                ,


-- ** setGicon #method:setGicon#

#if defined(ENABLE_OVERLOADING)
    ActionSetGiconMethodInfo                ,
#endif
    actionSetGicon                          ,


-- ** setIconName #method:setIconName#

#if defined(ENABLE_OVERLOADING)
    ActionSetIconNameMethodInfo             ,
#endif
    actionSetIconName                       ,


-- ** setIsImportant #method:setIsImportant#

#if defined(ENABLE_OVERLOADING)
    ActionSetIsImportantMethodInfo          ,
#endif
    actionSetIsImportant                    ,


-- ** setLabel #method:setLabel#

#if defined(ENABLE_OVERLOADING)
    ActionSetLabelMethodInfo                ,
#endif
    actionSetLabel                          ,


-- ** setSensitive #method:setSensitive#

#if defined(ENABLE_OVERLOADING)
    ActionSetSensitiveMethodInfo            ,
#endif
    actionSetSensitive                      ,


-- ** setShortLabel #method:setShortLabel#

#if defined(ENABLE_OVERLOADING)
    ActionSetShortLabelMethodInfo           ,
#endif
    actionSetShortLabel                     ,


-- ** setStockId #method:setStockId#

#if defined(ENABLE_OVERLOADING)
    ActionSetStockIdMethodInfo              ,
#endif
    actionSetStockId                        ,


-- ** setTooltip #method:setTooltip#

#if defined(ENABLE_OVERLOADING)
    ActionSetTooltipMethodInfo              ,
#endif
    actionSetTooltip                        ,


-- ** setVisible #method:setVisible#

#if defined(ENABLE_OVERLOADING)
    ActionSetVisibleMethodInfo              ,
#endif
    actionSetVisible                        ,


-- ** setVisibleHorizontal #method:setVisibleHorizontal#

#if defined(ENABLE_OVERLOADING)
    ActionSetVisibleHorizontalMethodInfo    ,
#endif
    actionSetVisibleHorizontal              ,


-- ** setVisibleVertical #method:setVisibleVertical#

#if defined(ENABLE_OVERLOADING)
    ActionSetVisibleVerticalMethodInfo      ,
#endif
    actionSetVisibleVertical                ,


-- ** unblockActivate #method:unblockActivate#

#if defined(ENABLE_OVERLOADING)
    ActionUnblockActivateMethodInfo         ,
#endif
    actionUnblockActivate                   ,




 -- * Properties
-- ** actionGroup #attr:actionGroup#
-- | The GtkActionGroup this GtkAction is associated with, or NULL
-- (for internal use).

#if defined(ENABLE_OVERLOADING)
    ActionActionGroupPropertyInfo           ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionActionGroup                       ,
#endif
    clearActionActionGroup                  ,
    constructActionActionGroup              ,
    getActionActionGroup                    ,
    setActionActionGroup                    ,


-- ** alwaysShowImage #attr:alwaysShowImage#
-- | If 'P.True', the action\'s menu item proxies will ignore the t'GI.Gtk.Objects.Settings.Settings':@/gtk-menu-images/@
-- setting and always show their image, if available.
-- 
-- Use this property if the menu item would be useless or hard to use
-- without their image.
-- 
-- /Since: 2.20/

#if defined(ENABLE_OVERLOADING)
    ActionAlwaysShowImagePropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionAlwaysShowImage                   ,
#endif
    constructActionAlwaysShowImage          ,
    getActionAlwaysShowImage                ,
    setActionAlwaysShowImage                ,


-- ** gicon #attr:gicon#
-- | The t'GI.Gio.Interfaces.Icon.Icon' displayed in the t'GI.Gtk.Objects.Action.Action'.
-- 
-- Note that the stock icon is preferred, if the t'GI.Gtk.Objects.Action.Action':@/stock-id/@
-- property holds the id of an existing stock icon.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    ActionGiconPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionGicon                             ,
#endif
    constructActionGicon                    ,
    getActionGicon                          ,
    setActionGicon                          ,


-- ** hideIfEmpty #attr:hideIfEmpty#
-- | When TRUE, empty menu proxies for this action are hidden.

#if defined(ENABLE_OVERLOADING)
    ActionHideIfEmptyPropertyInfo           ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionHideIfEmpty                       ,
#endif
    constructActionHideIfEmpty              ,
    getActionHideIfEmpty                    ,
    setActionHideIfEmpty                    ,


-- ** iconName #attr:iconName#
-- | The name of the icon from the icon theme.
-- 
-- Note that the stock icon is preferred, if the t'GI.Gtk.Objects.Action.Action':@/stock-id/@
-- property holds the id of an existing stock icon, and the t'GI.Gio.Interfaces.Icon.Icon' is
-- preferred if the t'GI.Gtk.Objects.Action.Action':@/gicon/@ property is set.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ActionIconNamePropertyInfo              ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionIconName                          ,
#endif
    constructActionIconName                 ,
    getActionIconName                       ,
    setActionIconName                       ,


-- ** isImportant #attr:isImportant#
-- | Whether the action is considered important. When TRUE, toolitem
-- proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.

#if defined(ENABLE_OVERLOADING)
    ActionIsImportantPropertyInfo           ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionIsImportant                       ,
#endif
    constructActionIsImportant              ,
    getActionIsImportant                    ,
    setActionIsImportant                    ,


-- ** label #attr:label#
-- | The label used for menu items and buttons that activate
-- this action. If the label is 'P.Nothing', GTK+ uses the stock
-- label specified via the stock-id property.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.

#if defined(ENABLE_OVERLOADING)
    ActionLabelPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionLabel                             ,
#endif
    constructActionLabel                    ,
    getActionLabel                          ,
    setActionLabel                          ,


-- ** name #attr:name#
-- | A unique name for the action.

#if defined(ENABLE_OVERLOADING)
    ActionNamePropertyInfo                  ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionName                              ,
#endif
    constructActionName                     ,
    getActionName                           ,


-- ** sensitive #attr:sensitive#
-- | Whether the action is enabled.

#if defined(ENABLE_OVERLOADING)
    ActionSensitivePropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionSensitive                         ,
#endif
    constructActionSensitive                ,
    getActionSensitive                      ,
    setActionSensitive                      ,


-- ** shortLabel #attr:shortLabel#
-- | A shorter label that may be used on toolbar buttons.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.

#if defined(ENABLE_OVERLOADING)
    ActionShortLabelPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionShortLabel                        ,
#endif
    constructActionShortLabel               ,
    getActionShortLabel                     ,
    setActionShortLabel                     ,


-- ** stockId #attr:stockId#
-- | The stock icon displayed in widgets representing this action.
-- 
-- This is an appearance property and thus only applies if
-- t'GI.Gtk.Interfaces.Activatable.Activatable':@/use-action-appearance/@ is 'P.True'.

#if defined(ENABLE_OVERLOADING)
    ActionStockIdPropertyInfo               ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionStockId                           ,
#endif
    constructActionStockId                  ,
    getActionStockId                        ,
    setActionStockId                        ,


-- ** tooltip #attr:tooltip#
-- | A tooltip for this action.

#if defined(ENABLE_OVERLOADING)
    ActionTooltipPropertyInfo               ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionTooltip                           ,
#endif
    constructActionTooltip                  ,
    getActionTooltip                        ,
    setActionTooltip                        ,


-- ** visible #attr:visible#
-- | Whether the action is visible.

#if defined(ENABLE_OVERLOADING)
    ActionVisiblePropertyInfo               ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionVisible                           ,
#endif
    constructActionVisible                  ,
    getActionVisible                        ,
    setActionVisible                        ,


-- ** visibleHorizontal #attr:visibleHorizontal#
-- | Whether the toolbar item is visible when the toolbar is in a horizontal orientation.

#if defined(ENABLE_OVERLOADING)
    ActionVisibleHorizontalPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionVisibleHorizontal                 ,
#endif
    constructActionVisibleHorizontal        ,
    getActionVisibleHorizontal              ,
    setActionVisibleHorizontal              ,


-- ** visibleOverflown #attr:visibleOverflown#
-- | When 'P.True', toolitem proxies for this action are represented in the
-- toolbar overflow menu.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    ActionVisibleOverflownPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionVisibleOverflown                  ,
#endif
    constructActionVisibleOverflown         ,
    getActionVisibleOverflown               ,
    setActionVisibleOverflown               ,


-- ** visibleVertical #attr:visibleVertical#
-- | Whether the toolbar item is visible when the toolbar is in a vertical orientation.

#if defined(ENABLE_OVERLOADING)
    ActionVisibleVerticalPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    actionVisibleVertical                   ,
#endif
    constructActionVisibleVertical          ,
    getActionVisibleVertical                ,
    setActionVisibleVertical                ,




 -- * Signals
-- ** activate #signal:activate#

    ActionActivateCallback                  ,
#if defined(ENABLE_OVERLOADING)
    ActionActivateSignalInfo                ,
#endif
    C_ActionActivateCallback                ,
    afterActionActivate                     ,
    genClosure_ActionActivate               ,
    mk_ActionActivateCallback               ,
    noActionActivateCallback                ,
    onActionActivate                        ,
    wrap_ActionActivateCallback             ,




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
import qualified GI.Gio.Interfaces.Icon as Gio.Icon
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.AccelGroup as Gtk.AccelGroup
import {-# SOURCE #-} qualified GI.Gtk.Objects.ActionGroup as Gtk.ActionGroup
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Action = Action (ManagedPtr Action)
    deriving (Eq)
foreign import ccall "gtk_action_get_type"
    c_gtk_action_get_type :: IO GType

instance GObject Action where
    gobjectType = c_gtk_action_get_type
    

-- | Convert 'Action' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Action where
    toGValue o = do
        gtype <- c_gtk_action_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Action)
        B.ManagedPtr.newObject Action ptr
        
    

-- | Type class for types which can be safely cast to `Action`, for instance with `toAction`.
class (GObject o, O.IsDescendantOf Action o) => IsAction o
instance (GObject o, O.IsDescendantOf Action o) => IsAction o

instance O.HasParentTypes Action
type instance O.ParentTypes Action = '[GObject.Object.Object, Gtk.Buildable.Buildable]

-- | Cast to `Action`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAction :: (MonadIO m, IsAction o) => o -> m Action
toAction = liftIO . unsafeCastTo Action

-- | A convenience alias for `Nothing` :: `Maybe` `Action`.
noAction :: Maybe Action
noAction = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveActionMethod (t :: Symbol) (o :: *) :: * where
    ResolveActionMethod "activate" o = ActionActivateMethodInfo
    ResolveActionMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveActionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveActionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveActionMethod "blockActivate" o = ActionBlockActivateMethodInfo
    ResolveActionMethod "connectAccelerator" o = ActionConnectAcceleratorMethodInfo
    ResolveActionMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveActionMethod "createIcon" o = ActionCreateIconMethodInfo
    ResolveActionMethod "createMenu" o = ActionCreateMenuMethodInfo
    ResolveActionMethod "createMenuItem" o = ActionCreateMenuItemMethodInfo
    ResolveActionMethod "createToolItem" o = ActionCreateToolItemMethodInfo
    ResolveActionMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveActionMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveActionMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveActionMethod "disconnectAccelerator" o = ActionDisconnectAcceleratorMethodInfo
    ResolveActionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveActionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveActionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveActionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveActionMethod "isSensitive" o = ActionIsSensitiveMethodInfo
    ResolveActionMethod "isVisible" o = ActionIsVisibleMethodInfo
    ResolveActionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveActionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveActionMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveActionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveActionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveActionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveActionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveActionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveActionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveActionMethod "unblockActivate" o = ActionUnblockActivateMethodInfo
    ResolveActionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveActionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveActionMethod "getAccelClosure" o = ActionGetAccelClosureMethodInfo
    ResolveActionMethod "getAccelPath" o = ActionGetAccelPathMethodInfo
    ResolveActionMethod "getAlwaysShowImage" o = ActionGetAlwaysShowImageMethodInfo
    ResolveActionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveActionMethod "getGicon" o = ActionGetGiconMethodInfo
    ResolveActionMethod "getIconName" o = ActionGetIconNameMethodInfo
    ResolveActionMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveActionMethod "getIsImportant" o = ActionGetIsImportantMethodInfo
    ResolveActionMethod "getLabel" o = ActionGetLabelMethodInfo
    ResolveActionMethod "getName" o = ActionGetNameMethodInfo
    ResolveActionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveActionMethod "getProxies" o = ActionGetProxiesMethodInfo
    ResolveActionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveActionMethod "getSensitive" o = ActionGetSensitiveMethodInfo
    ResolveActionMethod "getShortLabel" o = ActionGetShortLabelMethodInfo
    ResolveActionMethod "getStockId" o = ActionGetStockIdMethodInfo
    ResolveActionMethod "getTooltip" o = ActionGetTooltipMethodInfo
    ResolveActionMethod "getVisible" o = ActionGetVisibleMethodInfo
    ResolveActionMethod "getVisibleHorizontal" o = ActionGetVisibleHorizontalMethodInfo
    ResolveActionMethod "getVisibleVertical" o = ActionGetVisibleVerticalMethodInfo
    ResolveActionMethod "setAccelGroup" o = ActionSetAccelGroupMethodInfo
    ResolveActionMethod "setAccelPath" o = ActionSetAccelPathMethodInfo
    ResolveActionMethod "setAlwaysShowImage" o = ActionSetAlwaysShowImageMethodInfo
    ResolveActionMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveActionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveActionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveActionMethod "setGicon" o = ActionSetGiconMethodInfo
    ResolveActionMethod "setIconName" o = ActionSetIconNameMethodInfo
    ResolveActionMethod "setIsImportant" o = ActionSetIsImportantMethodInfo
    ResolveActionMethod "setLabel" o = ActionSetLabelMethodInfo
    ResolveActionMethod "setName" o = Gtk.Buildable.BuildableSetNameMethodInfo
    ResolveActionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveActionMethod "setSensitive" o = ActionSetSensitiveMethodInfo
    ResolveActionMethod "setShortLabel" o = ActionSetShortLabelMethodInfo
    ResolveActionMethod "setStockId" o = ActionSetStockIdMethodInfo
    ResolveActionMethod "setTooltip" o = ActionSetTooltipMethodInfo
    ResolveActionMethod "setVisible" o = ActionSetVisibleMethodInfo
    ResolveActionMethod "setVisibleHorizontal" o = ActionSetVisibleHorizontalMethodInfo
    ResolveActionMethod "setVisibleVertical" o = ActionSetVisibleVerticalMethodInfo
    ResolveActionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveActionMethod t Action, O.MethodInfo info Action p) => OL.IsLabel t (Action -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Action::activate
{-# DEPRECATED ActionActivateCallback ["(Since version 3.10)","Use [activate](\"GI.Gio.Objects.SimpleAction#signal:activate\") instead"] #-}
-- | The \"activate\" signal is emitted when the action is activated.
-- 
-- /Since: 2.4/
type ActionActivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ActionActivateCallback`@.
noActionActivateCallback :: Maybe ActionActivateCallback
noActionActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ActionActivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ActionActivateCallback`.
foreign import ccall "wrapper"
    mk_ActionActivateCallback :: C_ActionActivateCallback -> IO (FunPtr C_ActionActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ActionActivate :: MonadIO m => ActionActivateCallback -> m (GClosure C_ActionActivateCallback)
genClosure_ActionActivate cb = liftIO $ do
    let cb' = wrap_ActionActivateCallback cb
    mk_ActionActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ActionActivateCallback` into a `C_ActionActivateCallback`.
wrap_ActionActivateCallback ::
    ActionActivateCallback ->
    C_ActionActivateCallback
wrap_ActionActivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' action #activate callback
-- @
-- 
-- 
onActionActivate :: (IsAction a, MonadIO m) => a -> ActionActivateCallback -> m SignalHandlerId
onActionActivate obj cb = liftIO $ do
    let cb' = wrap_ActionActivateCallback cb
    cb'' <- mk_ActionActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' action #activate callback
-- @
-- 
-- 
afterActionActivate :: (IsAction a, MonadIO m) => a -> ActionActivateCallback -> m SignalHandlerId
afterActionActivate obj cb = liftIO $ do
    let cb' = wrap_ActionActivateCallback cb
    cb'' <- mk_ActionActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ActionActivateSignalInfo
instance SignalInfo ActionActivateSignalInfo where
    type HaskellCallbackType ActionActivateSignalInfo = ActionActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ActionActivateCallback cb
        cb'' <- mk_ActionActivateCallback cb'
        connectSignalFunPtr obj "activate" cb'' connectMode detail

#endif

-- VVV Prop "action-group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ActionGroup"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@action-group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #actionGroup
-- @
getActionActionGroup :: (MonadIO m, IsAction o) => o -> m (Maybe Gtk.ActionGroup.ActionGroup)
getActionActionGroup obj = liftIO $ B.Properties.getObjectPropertyObject obj "action-group" Gtk.ActionGroup.ActionGroup

-- | Set the value of the “@action-group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #actionGroup 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionActionGroup :: (MonadIO m, IsAction o, Gtk.ActionGroup.IsActionGroup a) => o -> a -> m ()
setActionActionGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "action-group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@action-group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionActionGroup :: (IsAction o, Gtk.ActionGroup.IsActionGroup a) => a -> IO (GValueConstruct o)
constructActionActionGroup val = B.Properties.constructObjectPropertyObject "action-group" (Just val)

-- | Set the value of the “@action-group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #actionGroup
-- @
clearActionActionGroup :: (MonadIO m, IsAction o) => o -> m ()
clearActionActionGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "action-group" (Nothing :: Maybe Gtk.ActionGroup.ActionGroup)

#if defined(ENABLE_OVERLOADING)
data ActionActionGroupPropertyInfo
instance AttrInfo ActionActionGroupPropertyInfo where
    type AttrAllowedOps ActionActionGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ActionActionGroupPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionActionGroupPropertyInfo = Gtk.ActionGroup.IsActionGroup
    type AttrTransferTypeConstraint ActionActionGroupPropertyInfo = Gtk.ActionGroup.IsActionGroup
    type AttrTransferType ActionActionGroupPropertyInfo = Gtk.ActionGroup.ActionGroup
    type AttrGetType ActionActionGroupPropertyInfo = (Maybe Gtk.ActionGroup.ActionGroup)
    type AttrLabel ActionActionGroupPropertyInfo = "action-group"
    type AttrOrigin ActionActionGroupPropertyInfo = Action
    attrGet = getActionActionGroup
    attrSet = setActionActionGroup
    attrTransfer _ v = do
        unsafeCastTo Gtk.ActionGroup.ActionGroup v
    attrConstruct = constructActionActionGroup
    attrClear = clearActionActionGroup
#endif

-- VVV Prop "always-show-image"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@always-show-image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #alwaysShowImage
-- @
getActionAlwaysShowImage :: (MonadIO m, IsAction o) => o -> m Bool
getActionAlwaysShowImage obj = liftIO $ B.Properties.getObjectPropertyBool obj "always-show-image"

-- | Set the value of the “@always-show-image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #alwaysShowImage 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionAlwaysShowImage :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionAlwaysShowImage obj val = liftIO $ B.Properties.setObjectPropertyBool obj "always-show-image" val

-- | Construct a `GValueConstruct` with valid value for the “@always-show-image@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionAlwaysShowImage :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionAlwaysShowImage val = B.Properties.constructObjectPropertyBool "always-show-image" val

#if defined(ENABLE_OVERLOADING)
data ActionAlwaysShowImagePropertyInfo
instance AttrInfo ActionAlwaysShowImagePropertyInfo where
    type AttrAllowedOps ActionAlwaysShowImagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionAlwaysShowImagePropertyInfo = IsAction
    type AttrSetTypeConstraint ActionAlwaysShowImagePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionAlwaysShowImagePropertyInfo = (~) Bool
    type AttrTransferType ActionAlwaysShowImagePropertyInfo = Bool
    type AttrGetType ActionAlwaysShowImagePropertyInfo = Bool
    type AttrLabel ActionAlwaysShowImagePropertyInfo = "always-show-image"
    type AttrOrigin ActionAlwaysShowImagePropertyInfo = Action
    attrGet = getActionAlwaysShowImage
    attrSet = setActionAlwaysShowImage
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionAlwaysShowImage
    attrClear = undefined
#endif

-- VVV Prop "gicon"
   -- Type: TInterface (Name {namespace = "Gio", name = "Icon"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #gicon
-- @
getActionGicon :: (MonadIO m, IsAction o) => o -> m Gio.Icon.Icon
getActionGicon obj = liftIO $ checkUnexpectedNothing "getActionGicon" $ B.Properties.getObjectPropertyObject obj "gicon" Gio.Icon.Icon

-- | Set the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #gicon 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionGicon :: (MonadIO m, IsAction o, Gio.Icon.IsIcon a) => o -> a -> m ()
setActionGicon obj val = liftIO $ B.Properties.setObjectPropertyObject obj "gicon" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@gicon@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionGicon :: (IsAction o, Gio.Icon.IsIcon a) => a -> IO (GValueConstruct o)
constructActionGicon val = B.Properties.constructObjectPropertyObject "gicon" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionGiconPropertyInfo
instance AttrInfo ActionGiconPropertyInfo where
    type AttrAllowedOps ActionGiconPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionGiconPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferTypeConstraint ActionGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferType ActionGiconPropertyInfo = Gio.Icon.Icon
    type AttrGetType ActionGiconPropertyInfo = Gio.Icon.Icon
    type AttrLabel ActionGiconPropertyInfo = "gicon"
    type AttrOrigin ActionGiconPropertyInfo = Action
    attrGet = getActionGicon
    attrSet = setActionGicon
    attrTransfer _ v = do
        unsafeCastTo Gio.Icon.Icon v
    attrConstruct = constructActionGicon
    attrClear = undefined
#endif

-- VVV Prop "hide-if-empty"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@hide-if-empty@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #hideIfEmpty
-- @
getActionHideIfEmpty :: (MonadIO m, IsAction o) => o -> m Bool
getActionHideIfEmpty obj = liftIO $ B.Properties.getObjectPropertyBool obj "hide-if-empty"

-- | Set the value of the “@hide-if-empty@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #hideIfEmpty 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionHideIfEmpty :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionHideIfEmpty obj val = liftIO $ B.Properties.setObjectPropertyBool obj "hide-if-empty" val

-- | Construct a `GValueConstruct` with valid value for the “@hide-if-empty@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionHideIfEmpty :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionHideIfEmpty val = B.Properties.constructObjectPropertyBool "hide-if-empty" val

#if defined(ENABLE_OVERLOADING)
data ActionHideIfEmptyPropertyInfo
instance AttrInfo ActionHideIfEmptyPropertyInfo where
    type AttrAllowedOps ActionHideIfEmptyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionHideIfEmptyPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionHideIfEmptyPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionHideIfEmptyPropertyInfo = (~) Bool
    type AttrTransferType ActionHideIfEmptyPropertyInfo = Bool
    type AttrGetType ActionHideIfEmptyPropertyInfo = Bool
    type AttrLabel ActionHideIfEmptyPropertyInfo = "hide-if-empty"
    type AttrOrigin ActionHideIfEmptyPropertyInfo = Action
    attrGet = getActionHideIfEmpty
    attrSet = setActionHideIfEmpty
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionHideIfEmpty
    attrClear = undefined
#endif

-- VVV Prop "icon-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #iconName
-- @
getActionIconName :: (MonadIO m, IsAction o) => o -> m T.Text
getActionIconName obj = liftIO $ checkUnexpectedNothing "getActionIconName" $ B.Properties.getObjectPropertyString obj "icon-name"

-- | Set the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #iconName 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionIconName :: (MonadIO m, IsAction o) => o -> T.Text -> m ()
setActionIconName obj val = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionIconName :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionIconName val = B.Properties.constructObjectPropertyString "icon-name" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionIconNamePropertyInfo
instance AttrInfo ActionIconNamePropertyInfo where
    type AttrAllowedOps ActionIconNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionIconNamePropertyInfo = IsAction
    type AttrSetTypeConstraint ActionIconNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionIconNamePropertyInfo = (~) T.Text
    type AttrTransferType ActionIconNamePropertyInfo = T.Text
    type AttrGetType ActionIconNamePropertyInfo = T.Text
    type AttrLabel ActionIconNamePropertyInfo = "icon-name"
    type AttrOrigin ActionIconNamePropertyInfo = Action
    attrGet = getActionIconName
    attrSet = setActionIconName
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionIconName
    attrClear = undefined
#endif

-- VVV Prop "is-important"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@is-important@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #isImportant
-- @
getActionIsImportant :: (MonadIO m, IsAction o) => o -> m Bool
getActionIsImportant obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-important"

-- | Set the value of the “@is-important@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #isImportant 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionIsImportant :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionIsImportant obj val = liftIO $ B.Properties.setObjectPropertyBool obj "is-important" val

-- | Construct a `GValueConstruct` with valid value for the “@is-important@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionIsImportant :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionIsImportant val = B.Properties.constructObjectPropertyBool "is-important" val

#if defined(ENABLE_OVERLOADING)
data ActionIsImportantPropertyInfo
instance AttrInfo ActionIsImportantPropertyInfo where
    type AttrAllowedOps ActionIsImportantPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionIsImportantPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionIsImportantPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionIsImportantPropertyInfo = (~) Bool
    type AttrTransferType ActionIsImportantPropertyInfo = Bool
    type AttrGetType ActionIsImportantPropertyInfo = Bool
    type AttrLabel ActionIsImportantPropertyInfo = "is-important"
    type AttrOrigin ActionIsImportantPropertyInfo = Action
    attrGet = getActionIsImportant
    attrSet = setActionIsImportant
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionIsImportant
    attrClear = undefined
#endif

-- VVV Prop "label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #label
-- @
getActionLabel :: (MonadIO m, IsAction o) => o -> m T.Text
getActionLabel obj = liftIO $ checkUnexpectedNothing "getActionLabel" $ B.Properties.getObjectPropertyString obj "label"

-- | Set the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #label 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionLabel :: (MonadIO m, IsAction o) => o -> T.Text -> m ()
setActionLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionLabel :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionLabel val = B.Properties.constructObjectPropertyString "label" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionLabelPropertyInfo
instance AttrInfo ActionLabelPropertyInfo where
    type AttrAllowedOps ActionLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionLabelPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionLabelPropertyInfo = (~) T.Text
    type AttrTransferType ActionLabelPropertyInfo = T.Text
    type AttrGetType ActionLabelPropertyInfo = T.Text
    type AttrLabel ActionLabelPropertyInfo = "label"
    type AttrOrigin ActionLabelPropertyInfo = Action
    attrGet = getActionLabel
    attrSet = setActionLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionLabel
    attrClear = undefined
#endif

-- VVV Prop "name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #name
-- @
getActionName :: (MonadIO m, IsAction o) => o -> m T.Text
getActionName obj = liftIO $ checkUnexpectedNothing "getActionName" $ B.Properties.getObjectPropertyString obj "name"

-- | Construct a `GValueConstruct` with valid value for the “@name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionName :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionName val = B.Properties.constructObjectPropertyString "name" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionNamePropertyInfo
instance AttrInfo ActionNamePropertyInfo where
    type AttrAllowedOps ActionNamePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ActionNamePropertyInfo = IsAction
    type AttrSetTypeConstraint ActionNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionNamePropertyInfo = (~) T.Text
    type AttrTransferType ActionNamePropertyInfo = T.Text
    type AttrGetType ActionNamePropertyInfo = T.Text
    type AttrLabel ActionNamePropertyInfo = "name"
    type AttrOrigin ActionNamePropertyInfo = Action
    attrGet = getActionName
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionName
    attrClear = undefined
#endif

-- VVV Prop "sensitive"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@sensitive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #sensitive
-- @
getActionSensitive :: (MonadIO m, IsAction o) => o -> m Bool
getActionSensitive obj = liftIO $ B.Properties.getObjectPropertyBool obj "sensitive"

-- | Set the value of the “@sensitive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #sensitive 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionSensitive :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionSensitive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "sensitive" val

-- | Construct a `GValueConstruct` with valid value for the “@sensitive@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionSensitive :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionSensitive val = B.Properties.constructObjectPropertyBool "sensitive" val

#if defined(ENABLE_OVERLOADING)
data ActionSensitivePropertyInfo
instance AttrInfo ActionSensitivePropertyInfo where
    type AttrAllowedOps ActionSensitivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionSensitivePropertyInfo = IsAction
    type AttrSetTypeConstraint ActionSensitivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionSensitivePropertyInfo = (~) Bool
    type AttrTransferType ActionSensitivePropertyInfo = Bool
    type AttrGetType ActionSensitivePropertyInfo = Bool
    type AttrLabel ActionSensitivePropertyInfo = "sensitive"
    type AttrOrigin ActionSensitivePropertyInfo = Action
    attrGet = getActionSensitive
    attrSet = setActionSensitive
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionSensitive
    attrClear = undefined
#endif

-- VVV Prop "short-label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@short-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #shortLabel
-- @
getActionShortLabel :: (MonadIO m, IsAction o) => o -> m T.Text
getActionShortLabel obj = liftIO $ checkUnexpectedNothing "getActionShortLabel" $ B.Properties.getObjectPropertyString obj "short-label"

-- | Set the value of the “@short-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #shortLabel 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionShortLabel :: (MonadIO m, IsAction o) => o -> T.Text -> m ()
setActionShortLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "short-label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@short-label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionShortLabel :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionShortLabel val = B.Properties.constructObjectPropertyString "short-label" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionShortLabelPropertyInfo
instance AttrInfo ActionShortLabelPropertyInfo where
    type AttrAllowedOps ActionShortLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionShortLabelPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionShortLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionShortLabelPropertyInfo = (~) T.Text
    type AttrTransferType ActionShortLabelPropertyInfo = T.Text
    type AttrGetType ActionShortLabelPropertyInfo = T.Text
    type AttrLabel ActionShortLabelPropertyInfo = "short-label"
    type AttrOrigin ActionShortLabelPropertyInfo = Action
    attrGet = getActionShortLabel
    attrSet = setActionShortLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionShortLabel
    attrClear = undefined
#endif

-- VVV Prop "stock-id"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #stockId
-- @
getActionStockId :: (MonadIO m, IsAction o) => o -> m T.Text
getActionStockId obj = liftIO $ checkUnexpectedNothing "getActionStockId" $ B.Properties.getObjectPropertyString obj "stock-id"

-- | Set the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #stockId 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionStockId :: (MonadIO m, IsAction o) => o -> T.Text -> m ()
setActionStockId obj val = liftIO $ B.Properties.setObjectPropertyString obj "stock-id" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stock-id@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionStockId :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionStockId val = B.Properties.constructObjectPropertyString "stock-id" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionStockIdPropertyInfo
instance AttrInfo ActionStockIdPropertyInfo where
    type AttrAllowedOps ActionStockIdPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionStockIdPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionStockIdPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionStockIdPropertyInfo = (~) T.Text
    type AttrTransferType ActionStockIdPropertyInfo = T.Text
    type AttrGetType ActionStockIdPropertyInfo = T.Text
    type AttrLabel ActionStockIdPropertyInfo = "stock-id"
    type AttrOrigin ActionStockIdPropertyInfo = Action
    attrGet = getActionStockId
    attrSet = setActionStockId
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionStockId
    attrClear = undefined
#endif

-- VVV Prop "tooltip"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@tooltip@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #tooltip
-- @
getActionTooltip :: (MonadIO m, IsAction o) => o -> m T.Text
getActionTooltip obj = liftIO $ checkUnexpectedNothing "getActionTooltip" $ B.Properties.getObjectPropertyString obj "tooltip"

-- | Set the value of the “@tooltip@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #tooltip 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionTooltip :: (MonadIO m, IsAction o) => o -> T.Text -> m ()
setActionTooltip obj val = liftIO $ B.Properties.setObjectPropertyString obj "tooltip" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@tooltip@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionTooltip :: (IsAction o) => T.Text -> IO (GValueConstruct o)
constructActionTooltip val = B.Properties.constructObjectPropertyString "tooltip" (Just val)

#if defined(ENABLE_OVERLOADING)
data ActionTooltipPropertyInfo
instance AttrInfo ActionTooltipPropertyInfo where
    type AttrAllowedOps ActionTooltipPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionTooltipPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionTooltipPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ActionTooltipPropertyInfo = (~) T.Text
    type AttrTransferType ActionTooltipPropertyInfo = T.Text
    type AttrGetType ActionTooltipPropertyInfo = T.Text
    type AttrLabel ActionTooltipPropertyInfo = "tooltip"
    type AttrOrigin ActionTooltipPropertyInfo = Action
    attrGet = getActionTooltip
    attrSet = setActionTooltip
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionTooltip
    attrClear = undefined
#endif

-- VVV Prop "visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #visible
-- @
getActionVisible :: (MonadIO m, IsAction o) => o -> m Bool
getActionVisible obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible"

-- | Set the value of the “@visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #visible 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionVisible :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionVisible obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible" val

-- | Construct a `GValueConstruct` with valid value for the “@visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionVisible :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionVisible val = B.Properties.constructObjectPropertyBool "visible" val

#if defined(ENABLE_OVERLOADING)
data ActionVisiblePropertyInfo
instance AttrInfo ActionVisiblePropertyInfo where
    type AttrAllowedOps ActionVisiblePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionVisiblePropertyInfo = IsAction
    type AttrSetTypeConstraint ActionVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionVisiblePropertyInfo = (~) Bool
    type AttrTransferType ActionVisiblePropertyInfo = Bool
    type AttrGetType ActionVisiblePropertyInfo = Bool
    type AttrLabel ActionVisiblePropertyInfo = "visible"
    type AttrOrigin ActionVisiblePropertyInfo = Action
    attrGet = getActionVisible
    attrSet = setActionVisible
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionVisible
    attrClear = undefined
#endif

-- VVV Prop "visible-horizontal"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible-horizontal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #visibleHorizontal
-- @
getActionVisibleHorizontal :: (MonadIO m, IsAction o) => o -> m Bool
getActionVisibleHorizontal obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-horizontal"

-- | Set the value of the “@visible-horizontal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #visibleHorizontal 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionVisibleHorizontal :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionVisibleHorizontal obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-horizontal" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-horizontal@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionVisibleHorizontal :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionVisibleHorizontal val = B.Properties.constructObjectPropertyBool "visible-horizontal" val

#if defined(ENABLE_OVERLOADING)
data ActionVisibleHorizontalPropertyInfo
instance AttrInfo ActionVisibleHorizontalPropertyInfo where
    type AttrAllowedOps ActionVisibleHorizontalPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionVisibleHorizontalPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionVisibleHorizontalPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionVisibleHorizontalPropertyInfo = (~) Bool
    type AttrTransferType ActionVisibleHorizontalPropertyInfo = Bool
    type AttrGetType ActionVisibleHorizontalPropertyInfo = Bool
    type AttrLabel ActionVisibleHorizontalPropertyInfo = "visible-horizontal"
    type AttrOrigin ActionVisibleHorizontalPropertyInfo = Action
    attrGet = getActionVisibleHorizontal
    attrSet = setActionVisibleHorizontal
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionVisibleHorizontal
    attrClear = undefined
#endif

-- VVV Prop "visible-overflown"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@visible-overflown@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #visibleOverflown
-- @
getActionVisibleOverflown :: (MonadIO m, IsAction o) => o -> m Bool
getActionVisibleOverflown obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-overflown"

-- | Set the value of the “@visible-overflown@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #visibleOverflown 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionVisibleOverflown :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionVisibleOverflown obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-overflown" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-overflown@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionVisibleOverflown :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionVisibleOverflown val = B.Properties.constructObjectPropertyBool "visible-overflown" val

#if defined(ENABLE_OVERLOADING)
data ActionVisibleOverflownPropertyInfo
instance AttrInfo ActionVisibleOverflownPropertyInfo where
    type AttrAllowedOps ActionVisibleOverflownPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionVisibleOverflownPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionVisibleOverflownPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionVisibleOverflownPropertyInfo = (~) Bool
    type AttrTransferType ActionVisibleOverflownPropertyInfo = Bool
    type AttrGetType ActionVisibleOverflownPropertyInfo = Bool
    type AttrLabel ActionVisibleOverflownPropertyInfo = "visible-overflown"
    type AttrOrigin ActionVisibleOverflownPropertyInfo = Action
    attrGet = getActionVisibleOverflown
    attrSet = setActionVisibleOverflown
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionVisibleOverflown
    attrClear = undefined
#endif

-- VVV Prop "visible-vertical"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible-vertical@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' action #visibleVertical
-- @
getActionVisibleVertical :: (MonadIO m, IsAction o) => o -> m Bool
getActionVisibleVertical obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-vertical"

-- | Set the value of the “@visible-vertical@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' action [ #visibleVertical 'Data.GI.Base.Attributes.:=' value ]
-- @
setActionVisibleVertical :: (MonadIO m, IsAction o) => o -> Bool -> m ()
setActionVisibleVertical obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-vertical" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-vertical@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructActionVisibleVertical :: (IsAction o) => Bool -> IO (GValueConstruct o)
constructActionVisibleVertical val = B.Properties.constructObjectPropertyBool "visible-vertical" val

#if defined(ENABLE_OVERLOADING)
data ActionVisibleVerticalPropertyInfo
instance AttrInfo ActionVisibleVerticalPropertyInfo where
    type AttrAllowedOps ActionVisibleVerticalPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ActionVisibleVerticalPropertyInfo = IsAction
    type AttrSetTypeConstraint ActionVisibleVerticalPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ActionVisibleVerticalPropertyInfo = (~) Bool
    type AttrTransferType ActionVisibleVerticalPropertyInfo = Bool
    type AttrGetType ActionVisibleVerticalPropertyInfo = Bool
    type AttrLabel ActionVisibleVerticalPropertyInfo = "visible-vertical"
    type AttrOrigin ActionVisibleVerticalPropertyInfo = Action
    attrGet = getActionVisibleVertical
    attrSet = setActionVisibleVertical
    attrTransfer _ v = do
        return v
    attrConstruct = constructActionVisibleVertical
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Action
type instance O.AttributeList Action = ActionAttributeList
type ActionAttributeList = ('[ '("actionGroup", ActionActionGroupPropertyInfo), '("alwaysShowImage", ActionAlwaysShowImagePropertyInfo), '("gicon", ActionGiconPropertyInfo), '("hideIfEmpty", ActionHideIfEmptyPropertyInfo), '("iconName", ActionIconNamePropertyInfo), '("isImportant", ActionIsImportantPropertyInfo), '("label", ActionLabelPropertyInfo), '("name", ActionNamePropertyInfo), '("sensitive", ActionSensitivePropertyInfo), '("shortLabel", ActionShortLabelPropertyInfo), '("stockId", ActionStockIdPropertyInfo), '("tooltip", ActionTooltipPropertyInfo), '("visible", ActionVisiblePropertyInfo), '("visibleHorizontal", ActionVisibleHorizontalPropertyInfo), '("visibleOverflown", ActionVisibleOverflownPropertyInfo), '("visibleVertical", ActionVisibleVerticalPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
actionActionGroup :: AttrLabelProxy "actionGroup"
actionActionGroup = AttrLabelProxy

actionAlwaysShowImage :: AttrLabelProxy "alwaysShowImage"
actionAlwaysShowImage = AttrLabelProxy

actionGicon :: AttrLabelProxy "gicon"
actionGicon = AttrLabelProxy

actionHideIfEmpty :: AttrLabelProxy "hideIfEmpty"
actionHideIfEmpty = AttrLabelProxy

actionIconName :: AttrLabelProxy "iconName"
actionIconName = AttrLabelProxy

actionIsImportant :: AttrLabelProxy "isImportant"
actionIsImportant = AttrLabelProxy

actionLabel :: AttrLabelProxy "label"
actionLabel = AttrLabelProxy

actionName :: AttrLabelProxy "name"
actionName = AttrLabelProxy

actionSensitive :: AttrLabelProxy "sensitive"
actionSensitive = AttrLabelProxy

actionShortLabel :: AttrLabelProxy "shortLabel"
actionShortLabel = AttrLabelProxy

actionStockId :: AttrLabelProxy "stockId"
actionStockId = AttrLabelProxy

actionTooltip :: AttrLabelProxy "tooltip"
actionTooltip = AttrLabelProxy

actionVisible :: AttrLabelProxy "visible"
actionVisible = AttrLabelProxy

actionVisibleHorizontal :: AttrLabelProxy "visibleHorizontal"
actionVisibleHorizontal = AttrLabelProxy

actionVisibleOverflown :: AttrLabelProxy "visibleOverflown"
actionVisibleOverflown = AttrLabelProxy

actionVisibleVertical :: AttrLabelProxy "visibleVertical"
actionVisibleVertical = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Action = ActionSignalList
type ActionSignalList = ('[ '("activate", ActionActivateSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Action::new
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
--                       "the label displayed in menu items and on buttons,\n        or %NULL"
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
--                       "the stock icon to display in widgets representing\n           the action, or %NULL"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Action" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_new" gtk_action_new :: 
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- label : TBasicType TUTF8
    CString ->                              -- tooltip : TBasicType TUTF8
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr Action)

{-# DEPRECATED actionNew ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, associating it to a widget with","t'GI.Gtk.Interfaces.Actionable.Actionable' or creating a t'GI.Gtk.Objects.Menu.Menu' with 'GI.Gtk.Objects.Menu.menuNewFromModel'"] #-}
-- | Creates a new t'GI.Gtk.Objects.Action.Action' object. To add the action to a
-- t'GI.Gtk.Objects.ActionGroup.ActionGroup' and set the accelerator for the action,
-- call 'GI.Gtk.Objects.ActionGroup.actionGroupAddActionWithAccel'.
-- See the [UI Definition section][XML-UI] for information on allowed action
-- names.
-- 
-- /Since: 2.4/
actionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: A unique name for the action
    -> Maybe (T.Text)
    -- ^ /@label@/: the label displayed in menu items and on buttons,
    --         or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@tooltip@/: a tooltip for the action, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@stockId@/: the stock icon to display in widgets representing
    --            the action, or 'P.Nothing'
    -> m Action
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Action.Action'
actionNew name label tooltip stockId = liftIO $ do
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
    result <- gtk_action_new name' maybeLabel maybeTooltip maybeStockId
    checkUnexpectedReturnNULL "actionNew" result
    result' <- (wrapObject Action) result
    freeMem name'
    freeMem maybeLabel
    freeMem maybeTooltip
    freeMem maybeStockId
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Action::activate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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

foreign import ccall "gtk_action_activate" gtk_action_activate :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO ()

{-# DEPRECATED actionActivate ["(Since version 3.10)","Use 'GI.Gio.Interfaces.ActionGroup.actionGroupActivateAction' on a t'GI.Gio.Interfaces.Action.Action' instead"] #-}
-- | Emits the “activate” signal on the specified action, if it isn\'t
-- insensitive. This gets called by the proxy widgets when they get
-- activated.
-- 
-- It can also be used to manually activate an action.
-- 
-- /Since: 2.4/
actionActivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m ()
actionActivate action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_action_activate action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionActivateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAction a) => O.MethodInfo ActionActivateMethodInfo a signature where
    overloadedMethod = actionActivate

#endif

-- method Action::block_activate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_block_activate" gtk_action_block_activate :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO ()

{-# DEPRECATED actionBlockActivate ["(Since version 3.10)","Use 'GI.Gio.Objects.SimpleAction.simpleActionSetEnabled' to disable the","t'GI.Gio.Objects.SimpleAction.SimpleAction' instead"] #-}
-- | Disable activation signals from the action
-- 
-- This is needed when updating the state of your proxy
-- t'GI.Gtk.Interfaces.Activatable.Activatable' widget could result in calling 'GI.Gtk.Objects.Action.actionActivate',
-- this is a convenience function to avoid recursing in those
-- cases (updating toggle state for instance).
-- 
-- /Since: 2.16/
actionBlockActivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m ()
actionBlockActivate action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_action_block_activate action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionBlockActivateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAction a) => O.MethodInfo ActionBlockActivateMethodInfo a signature where
    overloadedMethod = actionBlockActivate

#endif

-- method Action::connect_accelerator
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_connect_accelerator" gtk_action_connect_accelerator :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO ()

{-# DEPRECATED actionConnectAccelerator ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and the accelerator group on an associated","t'GI.Gtk.Objects.Menu.Menu' instead"] #-}
-- | Installs the accelerator for /@action@/ if /@action@/ has an
-- accel path and group. See 'GI.Gtk.Objects.Action.actionSetAccelPath' and
-- 'GI.Gtk.Objects.Action.actionSetAccelGroup'
-- 
-- Since multiple proxies may independently trigger the installation
-- of the accelerator, the /@action@/ counts the number of times this
-- function has been called and doesn’t remove the accelerator until
-- 'GI.Gtk.Objects.Action.actionDisconnectAccelerator' has been called as many times.
-- 
-- /Since: 2.4/
actionConnectAccelerator ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m ()
actionConnectAccelerator action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_action_connect_accelerator action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionConnectAcceleratorMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAction a) => O.MethodInfo ActionConnectAcceleratorMethodInfo a signature where
    overloadedMethod = actionConnectAccelerator

#endif

-- method Action::create_icon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "icon_size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the size of the icon (#GtkIconSize) that should\n     be created."
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

foreign import ccall "gtk_action_create_icon" gtk_action_create_icon :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    Int32 ->                                -- icon_size : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED actionCreateIcon ["(Since version 3.10)","Use 'GI.Gio.Objects.MenuItem.menuItemSetIcon' to set an icon on a t'GI.Gio.Objects.MenuItem.MenuItem',","or 'GI.Gtk.Objects.Container.containerAdd' to add a t'GI.Gtk.Objects.Image.Image' to a t'GI.Gtk.Objects.Button.Button'"] #-}
-- | This function is intended for use by action implementations to
-- create icons displayed in the proxy widgets.
-- 
-- /Since: 2.4/
actionCreateIcon ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Int32
    -- ^ /@iconSize@/: the size of the icon (t'GI.Gtk.Enums.IconSize') that should
    --      be created.
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ a widget that displays the icon for this action.
actionCreateIcon action iconSize = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_create_icon action' iconSize
    checkUnexpectedReturnNULL "actionCreateIcon" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionCreateIconMethodInfo
instance (signature ~ (Int32 -> m Gtk.Widget.Widget), MonadIO m, IsAction a) => O.MethodInfo ActionCreateIconMethodInfo a signature where
    overloadedMethod = actionCreateIcon

#endif

-- method Action::create_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_create_menu" gtk_action_create_menu :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED actionCreateMenu ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and t'GI.Gio.Objects.MenuModel.MenuModel' instead, and create a","t'GI.Gtk.Objects.Menu.Menu' with 'GI.Gtk.Objects.Menu.menuNewFromModel'"] #-}
-- | If /@action@/ provides a t'GI.Gtk.Objects.Menu.Menu' widget as a submenu for the menu
-- item or the toolbar item it creates, this function returns an
-- instance of that menu.
-- 
-- /Since: 2.12/
actionCreateMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the menu item provided by the
    --               action, or 'P.Nothing'.
actionCreateMenu action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_create_menu action'
    checkUnexpectedReturnNULL "actionCreateMenu" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionCreateMenuMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsAction a) => O.MethodInfo ActionCreateMenuMethodInfo a signature where
    overloadedMethod = actionCreateMenu

#endif

-- method Action::create_menu_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_create_menu_item" gtk_action_create_menu_item :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED actionCreateMenuItem ["(Since version 3.10)","Use 'GI.Gio.Objects.MenuItem.menuItemNew' and associate it with a t'GI.Gio.Interfaces.Action.Action'","instead."] #-}
-- | Creates a menu item widget that proxies for the given action.
-- 
-- /Since: 2.4/
actionCreateMenuItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ a menu item connected to the action.
actionCreateMenuItem action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_create_menu_item action'
    checkUnexpectedReturnNULL "actionCreateMenuItem" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionCreateMenuItemMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsAction a) => O.MethodInfo ActionCreateMenuItemMethodInfo a signature where
    overloadedMethod = actionCreateMenuItem

#endif

-- method Action::create_tool_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_create_tool_item" gtk_action_create_tool_item :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED actionCreateToolItem ["(Since version 3.10)","Use a t'GI.Gtk.Objects.ToolItem.ToolItem' and associate it with a t'GI.Gio.Interfaces.Action.Action' using","'GI.Gtk.Interfaces.Actionable.actionableSetActionName' instead"] #-}
-- | Creates a toolbar item widget that proxies for the given action.
-- 
-- /Since: 2.4/
actionCreateToolItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ a toolbar item connected to the action.
actionCreateToolItem action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_create_tool_item action'
    checkUnexpectedReturnNULL "actionCreateToolItem" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionCreateToolItemMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsAction a) => O.MethodInfo ActionCreateToolItemMethodInfo a signature where
    overloadedMethod = actionCreateToolItem

#endif

-- method Action::disconnect_accelerator
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_disconnect_accelerator" gtk_action_disconnect_accelerator :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO ()

{-# DEPRECATED actionDisconnectAccelerator ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and the accelerator group on an associated","t'GI.Gtk.Objects.Menu.Menu' instead"] #-}
-- | Undoes the effect of one call to 'GI.Gtk.Objects.Action.actionConnectAccelerator'.
-- 
-- /Since: 2.4/
actionDisconnectAccelerator ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m ()
actionDisconnectAccelerator action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_action_disconnect_accelerator action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionDisconnectAcceleratorMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAction a) => O.MethodInfo ActionDisconnectAcceleratorMethodInfo a signature where
    overloadedMethod = actionDisconnectAccelerator

#endif

-- method Action::get_accel_closure
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just (TGClosure Nothing)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_accel_closure" gtk_action_get_accel_closure :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr (GClosure ()))

{-# DEPRECATED actionGetAccelClosure ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and t'GI.Gtk.Objects.Menu.Menu' instead, which have no","equivalent for getting the accel closure"] #-}
-- | Returns the accel closure for this action.
-- 
-- /Since: 2.8/
actionGetAccelClosure ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m (GClosure b)
    -- ^ __Returns:__ the accel closure for this action. The
    --          returned closure is owned by GTK+ and must not be unreffed
    --          or modified.
actionGetAccelClosure action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_accel_closure action'
    checkUnexpectedReturnNULL "actionGetAccelClosure" result
    result' <- (B.GClosure.newGClosureFromPtr . FP.castPtr) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetAccelClosureMethodInfo
instance (signature ~ (m (GClosure b)), MonadIO m, IsAction a) => O.MethodInfo ActionGetAccelClosureMethodInfo a signature where
    overloadedMethod = actionGetAccelClosure

#endif

-- method Action::get_accel_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_accel_path" gtk_action_get_accel_path :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetAccelPath ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and the accelerator path on an associated","t'GI.Gtk.Objects.Menu.Menu' instead"] #-}
-- | Returns the accel path for this action.
-- 
-- /Since: 2.6/
actionGetAccelPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m T.Text
    -- ^ __Returns:__ the accel path for this action, or 'P.Nothing'
    --   if none is set. The returned string is owned by GTK+
    --   and must not be freed or modified.
actionGetAccelPath action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_accel_path action'
    checkUnexpectedReturnNULL "actionGetAccelPath" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetAccelPathMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetAccelPathMethodInfo a signature where
    overloadedMethod = actionGetAccelPath

#endif

-- method Action::get_always_show_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_get_always_show_image" gtk_action_get_always_show_image :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetAlwaysShowImage ["(Since version 3.10)","Use 'GI.Gio.Objects.MenuItem.menuItemGetAttributeValue' on a t'GI.Gio.Objects.MenuItem.MenuItem'","instead"] #-}
-- | Returns whether /@action@/\'s menu item proxies will always
-- show their image, if available.
-- 
-- /Since: 2.20/
actionGetAlwaysShowImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the menu item proxies will always show their image
actionGetAlwaysShowImage action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_always_show_image action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetAlwaysShowImageMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetAlwaysShowImageMethodInfo a signature where
    overloadedMethod = actionGetAlwaysShowImage

#endif

-- method Action::get_gicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "Icon" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_gicon" gtk_action_get_gicon :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr Gio.Icon.Icon)

{-# DEPRECATED actionGetGicon ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and","'GI.Gio.Objects.MenuItem.menuItemGetAttributeValue' to get an icon from a t'GI.Gio.Objects.MenuItem.MenuItem'","associated with a t'GI.Gio.Interfaces.Action.Action'"] #-}
-- | Gets the gicon of /@action@/.
-- 
-- /Since: 2.16/
actionGetGicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Gio.Icon.Icon
    -- ^ __Returns:__ The action’s t'GI.Gio.Interfaces.Icon.Icon' if one is set.
actionGetGicon action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_gicon action'
    checkUnexpectedReturnNULL "actionGetGicon" result
    result' <- (newObject Gio.Icon.Icon) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetGiconMethodInfo
instance (signature ~ (m Gio.Icon.Icon), MonadIO m, IsAction a) => O.MethodInfo ActionGetGiconMethodInfo a signature where
    overloadedMethod = actionGetGicon

#endif

-- method Action::get_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_icon_name" gtk_action_get_icon_name :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetIconName ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and","'GI.Gio.Objects.MenuItem.menuItemGetAttributeValue' to get an icon from a t'GI.Gio.Objects.MenuItem.MenuItem'","associated with a t'GI.Gio.Interfaces.Action.Action'"] #-}
-- | Gets the icon name of /@action@/.
-- 
-- /Since: 2.16/
actionGetIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m T.Text
    -- ^ __Returns:__ the icon name
actionGetIconName action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_icon_name action'
    checkUnexpectedReturnNULL "actionGetIconName" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetIconNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetIconNameMethodInfo a signature where
    overloadedMethod = actionGetIconName

#endif

-- method Action::get_is_important
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_get_is_important" gtk_action_get_is_important :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetIsImportant ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor whether","labels are shown directly"] #-}
-- | Checks whether /@action@/ is important or not
-- 
-- /Since: 2.16/
actionGetIsImportant ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Bool
    -- ^ __Returns:__ whether /@action@/ is important
actionGetIsImportant action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_is_important action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetIsImportantMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetIsImportantMethodInfo a signature where
    overloadedMethod = actionGetIsImportant

#endif

-- method Action::get_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_label" gtk_action_get_label :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetLabel ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and get a label from a menu item","with 'GI.Gio.Objects.MenuItem.menuItemGetAttributeValue'. For t'GI.Gtk.Interfaces.Actionable.Actionable' widgets, use the","widget-specific API to get a label"] #-}
-- | Gets the label text of /@action@/.
-- 
-- /Since: 2.16/
actionGetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m T.Text
    -- ^ __Returns:__ the label text
actionGetLabel action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_label action'
    checkUnexpectedReturnNULL "actionGetLabel" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetLabelMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetLabelMethodInfo a signature where
    overloadedMethod = actionGetLabel

#endif

-- method Action::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_name" gtk_action_get_name :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetName ["(Since version 3.10)","Use 'GI.Gio.Interfaces.Action.actionGetName' on a t'GI.Gio.Interfaces.Action.Action' instead"] #-}
-- | Returns the name of the action.
-- 
-- /Since: 2.4/
actionGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m T.Text
    -- ^ __Returns:__ the name of the action. The string belongs to GTK+ and should not
    --   be freed.
actionGetName action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_name action'
    checkUnexpectedReturnNULL "actionGetName" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetNameMethodInfo a signature where
    overloadedMethod = actionGetName

#endif

-- method Action::get_proxies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
-- returnType: Just
--               (TGSList (TInterface Name { namespace = "Gtk" , name = "Widget" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_proxies" gtk_action_get_proxies :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr (GSList (Ptr Gtk.Widget.Widget)))

{-# DEPRECATED actionGetProxies ["(Since version 3.10)"] #-}
-- | Returns the proxy widgets for an action.
-- See also 'GI.Gtk.Interfaces.Activatable.activatableGetRelatedAction'.
-- 
-- /Since: 2.4/
actionGetProxies ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m [Gtk.Widget.Widget]
    -- ^ __Returns:__ a t'GI.GLib.Structs.SList.SList' of proxy widgets. The list is owned by GTK+
    -- and must not be modified.
actionGetProxies action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_proxies action'
    result' <- unpackGSList result
    result'' <- mapM (newObject Gtk.Widget.Widget) result'
    touchManagedPtr action
    return result''

#if defined(ENABLE_OVERLOADING)
data ActionGetProxiesMethodInfo
instance (signature ~ (m [Gtk.Widget.Widget]), MonadIO m, IsAction a) => O.MethodInfo ActionGetProxiesMethodInfo a signature where
    overloadedMethod = actionGetProxies

#endif

-- method Action::get_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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

foreign import ccall "gtk_action_get_sensitive" gtk_action_get_sensitive :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetSensitive ["(Since version 3.10)","Use 'GI.Gio.Interfaces.Action.actionGetEnabled' on a t'GI.Gio.Interfaces.Action.Action'","instead"] #-}
-- | Returns whether the action itself is sensitive. Note that this doesn’t
-- necessarily mean effective sensitivity. See 'GI.Gtk.Objects.Action.actionIsSensitive'
-- for that.
-- 
-- /Since: 2.4/
actionGetSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the action itself is sensitive.
actionGetSensitive action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_sensitive action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetSensitiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetSensitiveMethodInfo a signature where
    overloadedMethod = actionGetSensitive

#endif

-- method Action::get_short_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_short_label" gtk_action_get_short_label :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetShortLabel ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, which has no equivalent of short","labels"] #-}
-- | Gets the short label text of /@action@/.
-- 
-- /Since: 2.16/
actionGetShortLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m T.Text
    -- ^ __Returns:__ the short label text.
actionGetShortLabel action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_short_label action'
    checkUnexpectedReturnNULL "actionGetShortLabel" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetShortLabelMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetShortLabelMethodInfo a signature where
    overloadedMethod = actionGetShortLabel

#endif

-- method Action::get_stock_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_stock_id" gtk_action_get_stock_id :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetStockId ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, which has no equivalent of stock","items"] #-}
-- | Gets the stock id of /@action@/.
-- 
-- /Since: 2.16/
actionGetStockId ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m T.Text
    -- ^ __Returns:__ the stock id
actionGetStockId action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_stock_id action'
    checkUnexpectedReturnNULL "actionGetStockId" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetStockIdMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetStockIdMethodInfo a signature where
    overloadedMethod = actionGetStockId

#endif

-- method Action::get_tooltip
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_get_tooltip" gtk_action_get_tooltip :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CString

{-# DEPRECATED actionGetTooltip ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and get tooltips from associated","t'GI.Gtk.Interfaces.Actionable.Actionable' widgets with 'GI.Gtk.Objects.Widget.widgetGetTooltipText'"] #-}
-- | Gets the tooltip text of /@action@/.
-- 
-- /Since: 2.16/
actionGetTooltip ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m T.Text
    -- ^ __Returns:__ the tooltip text
actionGetTooltip action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_tooltip action'
    checkUnexpectedReturnNULL "actionGetTooltip" result
    result' <- cstringToText result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetTooltipMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAction a) => O.MethodInfo ActionGetTooltipMethodInfo a signature where
    overloadedMethod = actionGetTooltip

#endif

-- method Action::get_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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

foreign import ccall "gtk_action_get_visible" gtk_action_get_visible :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetVisible ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the state of","t'GI.Gtk.Interfaces.Actionable.Actionable' widgets directly"] #-}
-- | Returns whether the action itself is visible. Note that this doesn’t
-- necessarily mean effective visibility. See 'GI.Gtk.Objects.Action.actionIsSensitive'
-- for that.
-- 
-- /Since: 2.4/
actionGetVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the action itself is visible.
actionGetVisible action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_visible action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetVisibleMethodInfo a signature where
    overloadedMethod = actionGetVisible

#endif

-- method Action::get_visible_horizontal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_get_visible_horizontal" gtk_action_get_visible_horizontal :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetVisibleHorizontal ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the","visibility of associated widgets and menu items directly"] #-}
-- | Checks whether /@action@/ is visible when horizontal
-- 
-- /Since: 2.16/
actionGetVisibleHorizontal ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Bool
    -- ^ __Returns:__ whether /@action@/ is visible when horizontal
actionGetVisibleHorizontal action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_visible_horizontal action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetVisibleHorizontalMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetVisibleHorizontalMethodInfo a signature where
    overloadedMethod = actionGetVisibleHorizontal

#endif

-- method Action::get_visible_vertical
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_get_visible_vertical" gtk_action_get_visible_vertical :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionGetVisibleVertical ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the","visibility of associated widgets and menu items directly"] #-}
-- | Checks whether /@action@/ is visible when horizontal
-- 
-- /Since: 2.16/
actionGetVisibleVertical ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m Bool
    -- ^ __Returns:__ whether /@action@/ is visible when horizontal
actionGetVisibleVertical action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_get_visible_vertical action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionGetVisibleVerticalMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionGetVisibleVerticalMethodInfo a signature where
    overloadedMethod = actionGetVisibleVertical

#endif

-- method Action::is_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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

foreign import ccall "gtk_action_is_sensitive" gtk_action_is_sensitive :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionIsSensitive ["(Since version 3.10)","Use 'GI.Gio.Interfaces.Action.actionGetEnabled' on a t'GI.Gio.Interfaces.Action.Action'","instead"] #-}
-- | Returns whether the action is effectively sensitive.
-- 
-- /Since: 2.4/
actionIsSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the action and its associated action group
    -- are both sensitive.
actionIsSensitive action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_is_sensitive action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionIsSensitiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionIsSensitiveMethodInfo a signature where
    overloadedMethod = actionIsSensitive

#endif

-- method Action::is_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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

foreign import ccall "gtk_action_is_visible" gtk_action_is_visible :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO CInt

{-# DEPRECATED actionIsVisible ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the state of","t'GI.Gtk.Interfaces.Actionable.Actionable' widgets directly"] #-}
-- | Returns whether the action is effectively visible.
-- 
-- /Since: 2.4/
actionIsVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the action and its associated action group
    -- are both visible.
actionIsVisible action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- gtk_action_is_visible action'
    let result' = (/= 0) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
data ActionIsVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAction a) => O.MethodInfo ActionIsVisibleMethodInfo a signature where
    overloadedMethod = actionIsVisible

#endif

-- method Action::set_accel_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup or %NULL"
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

foreign import ccall "gtk_action_set_accel_group" gtk_action_set_accel_group :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    Ptr Gtk.AccelGroup.AccelGroup ->        -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO ()

{-# DEPRECATED actionSetAccelGroup ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and the accelerator group on an associated","t'GI.Gtk.Objects.Menu.Menu' instead"] #-}
-- | Sets the t'GI.Gtk.Objects.AccelGroup.AccelGroup' in which the accelerator for this action
-- will be installed.
-- 
-- /Since: 2.4/
actionSetAccelGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a, Gtk.AccelGroup.IsAccelGroup b) =>
    a
    -- ^ /@action@/: the action object
    -> Maybe (b)
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup' or 'P.Nothing'
    -> m ()
actionSetAccelGroup action accelGroup = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    maybeAccelGroup <- case accelGroup of
        Nothing -> return nullPtr
        Just jAccelGroup -> do
            jAccelGroup' <- unsafeManagedPtrCastPtr jAccelGroup
            return jAccelGroup'
    gtk_action_set_accel_group action' maybeAccelGroup
    touchManagedPtr action
    whenJust accelGroup touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetAccelGroupMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsAction a, Gtk.AccelGroup.IsAccelGroup b) => O.MethodInfo ActionSetAccelGroupMethodInfo a signature where
    overloadedMethod = actionSetAccelGroup

#endif

-- method Action::set_accel_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "accel_path"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the accelerator path"
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

foreign import ccall "gtk_action_set_accel_path" gtk_action_set_accel_path :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- accel_path : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetAccelPath ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' and the accelerator path on an associated","t'GI.Gtk.Objects.Menu.Menu' instead"] #-}
-- | Sets the accel path for this action.  All proxy widgets associated
-- with the action will have this accel path, so that their
-- accelerators are consistent.
-- 
-- Note that /@accelPath@/ string will be stored in a @/GQuark/@. Therefore, if you
-- pass a static string, you can save some memory by interning it first with
-- 'GI.GLib.Functions.internStaticString'.
-- 
-- /Since: 2.4/
actionSetAccelPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> T.Text
    -- ^ /@accelPath@/: the accelerator path
    -> m ()
actionSetAccelPath action accelPath = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    accelPath' <- textToCString accelPath
    gtk_action_set_accel_path action' accelPath'
    touchManagedPtr action
    freeMem accelPath'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetAccelPathMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetAccelPathMethodInfo a signature where
    overloadedMethod = actionSetAccelPath

#endif

-- method Action::set_always_show_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "always_show"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if menuitem proxies should always show their image"
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

foreign import ccall "gtk_action_set_always_show_image" gtk_action_set_always_show_image :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- always_show : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetAlwaysShowImage ["(Since version 3.10)","Use 'GI.Gio.Objects.MenuItem.menuItemSetIcon' on a t'GI.Gio.Objects.MenuItem.MenuItem' instead, if the","item should have an image"] #-}
-- | Sets whether /@action@/\'s menu item proxies will ignore the
-- t'GI.Gtk.Objects.Settings.Settings':@/gtk-menu-images/@ setting and always show their image, if available.
-- 
-- Use this if the menu item would be useless or hard to use
-- without their image.
-- 
-- /Since: 2.20/
actionSetAlwaysShowImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> Bool
    -- ^ /@alwaysShow@/: 'P.True' if menuitem proxies should always show their image
    -> m ()
actionSetAlwaysShowImage action alwaysShow = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let alwaysShow' = (fromIntegral . fromEnum) alwaysShow
    gtk_action_set_always_show_image action' alwaysShow'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetAlwaysShowImageMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetAlwaysShowImageMethodInfo a signature where
    overloadedMethod = actionSetAlwaysShowImage

#endif

-- method Action::set_gicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon"
--           , argType = TInterface Name { namespace = "Gio" , name = "Icon" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GIcon to set" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_set_gicon" gtk_action_set_gicon :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    Ptr Gio.Icon.Icon ->                    -- icon : TInterface (Name {namespace = "Gio", name = "Icon"})
    IO ()

{-# DEPRECATED actionSetGicon ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and 'GI.Gio.Objects.MenuItem.menuItemSetIcon' to set an","icon on a t'GI.Gio.Objects.MenuItem.MenuItem' associated with a t'GI.Gio.Interfaces.Action.Action', or 'GI.Gtk.Objects.Container.containerAdd' to","add a t'GI.Gtk.Objects.Image.Image' to a t'GI.Gtk.Objects.Button.Button'"] #-}
-- | Sets the icon of /@action@/.
-- 
-- /Since: 2.16/
actionSetGicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a, Gio.Icon.IsIcon b) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> b
    -- ^ /@icon@/: the t'GI.Gio.Interfaces.Icon.Icon' to set
    -> m ()
actionSetGicon action icon = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    icon' <- unsafeManagedPtrCastPtr icon
    gtk_action_set_gicon action' icon'
    touchManagedPtr action
    touchManagedPtr icon
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetGiconMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsAction a, Gio.Icon.IsIcon b) => O.MethodInfo ActionSetGiconMethodInfo a signature where
    overloadedMethod = actionSetGicon

#endif

-- method Action::set_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the icon name to set"
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

foreign import ccall "gtk_action_set_icon_name" gtk_action_set_icon_name :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- icon_name : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetIconName ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and 'GI.Gio.Objects.MenuItem.menuItemSetIcon' to set an","icon on a t'GI.Gio.Objects.MenuItem.MenuItem' associated with a t'GI.Gio.Interfaces.Action.Action', or 'GI.Gtk.Objects.Container.containerAdd' to","add a t'GI.Gtk.Objects.Image.Image' to a t'GI.Gtk.Objects.Button.Button'"] #-}
-- | Sets the icon name on /@action@/
-- 
-- /Since: 2.16/
actionSetIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> T.Text
    -- ^ /@iconName@/: the icon name to set
    -> m ()
actionSetIconName action iconName = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    iconName' <- textToCString iconName
    gtk_action_set_icon_name action' iconName'
    touchManagedPtr action
    freeMem iconName'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetIconNameMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetIconNameMethodInfo a signature where
    overloadedMethod = actionSetIconName

#endif

-- method Action::set_is_important
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "is_important"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make the action important"
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

foreign import ccall "gtk_action_set_is_important" gtk_action_set_is_important :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- is_important : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetIsImportant ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor whether","labels are shown directly"] #-}
-- | Sets whether the action is important, this attribute is used
-- primarily by toolbar items to decide whether to show a label
-- or not.
-- 
-- /Since: 2.16/
actionSetIsImportant ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Bool
    -- ^ /@isImportant@/: 'P.True' to make the action important
    -> m ()
actionSetIsImportant action isImportant = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let isImportant' = (fromIntegral . fromEnum) isImportant
    gtk_action_set_is_important action' isImportant'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetIsImportantMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetIsImportantMethodInfo a signature where
    overloadedMethod = actionSetIsImportant

#endif

-- method Action::set_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label text to set"
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

foreign import ccall "gtk_action_set_label" gtk_action_set_label :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- label : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetLabel ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and set a label on a menu item with","'GI.Gio.Objects.MenuItem.menuItemSetLabel'. For t'GI.Gtk.Interfaces.Actionable.Actionable' widgets, use the widget-specific","API to set a label"] #-}
-- | Sets the label of /@action@/.
-- 
-- /Since: 2.16/
actionSetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> T.Text
    -- ^ /@label@/: the label text to set
    -> m ()
actionSetLabel action label = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    label' <- textToCString label
    gtk_action_set_label action' label'
    touchManagedPtr action
    freeMem label'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetLabelMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetLabelMethodInfo a signature where
    overloadedMethod = actionSetLabel

#endif

-- method Action::set_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "sensitive"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make the action sensitive"
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

foreign import ccall "gtk_action_set_sensitive" gtk_action_set_sensitive :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- sensitive : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetSensitive ["(Since version 3.10)","Use 'GI.Gio.Objects.SimpleAction.simpleActionSetEnabled' on a t'GI.Gio.Objects.SimpleAction.SimpleAction'","instead"] #-}
-- | Sets the :sensitive property of the action to /@sensitive@/. Note that
-- this doesn’t necessarily mean effective sensitivity. See
-- 'GI.Gtk.Objects.Action.actionIsSensitive'
-- for that.
-- 
-- /Since: 2.6/
actionSetSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Bool
    -- ^ /@sensitive@/: 'P.True' to make the action sensitive
    -> m ()
actionSetSensitive action sensitive = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let sensitive' = (fromIntegral . fromEnum) sensitive
    gtk_action_set_sensitive action' sensitive'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetSensitiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetSensitiveMethodInfo a signature where
    overloadedMethod = actionSetSensitive

#endif

-- method Action::set_short_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "short_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label text to set"
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

foreign import ccall "gtk_action_set_short_label" gtk_action_set_short_label :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- short_label : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetShortLabel ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, which has no equivalent of short","labels"] #-}
-- | Sets a shorter label text on /@action@/.
-- 
-- /Since: 2.16/
actionSetShortLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> T.Text
    -- ^ /@shortLabel@/: the label text to set
    -> m ()
actionSetShortLabel action shortLabel = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    shortLabel' <- textToCString shortLabel
    gtk_action_set_short_label action' shortLabel'
    touchManagedPtr action
    freeMem shortLabel'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetShortLabelMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetShortLabelMethodInfo a signature where
    overloadedMethod = actionSetShortLabel

#endif

-- method Action::set_stock_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the stock id" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_set_stock_id" gtk_action_set_stock_id :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- stock_id : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetStockId ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, which has no equivalent of stock","items"] #-}
-- | Sets the stock id on /@action@/
-- 
-- /Since: 2.16/
actionSetStockId ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> T.Text
    -- ^ /@stockId@/: the stock id
    -> m ()
actionSetStockId action stockId = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    stockId' <- textToCString stockId
    gtk_action_set_stock_id action' stockId'
    touchManagedPtr action
    freeMem stockId'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetStockIdMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetStockIdMethodInfo a signature where
    overloadedMethod = actionSetStockId

#endif

-- method Action::set_tooltip
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the tooltip text" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_set_tooltip" gtk_action_set_tooltip :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CString ->                              -- tooltip : TBasicType TUTF8
    IO ()

{-# DEPRECATED actionSetTooltip ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and set tooltips on associated","t'GI.Gtk.Interfaces.Actionable.Actionable' widgets with 'GI.Gtk.Objects.Widget.widgetSetTooltipText'"] #-}
-- | Sets the tooltip text on /@action@/
-- 
-- /Since: 2.16/
actionSetTooltip ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> T.Text
    -- ^ /@tooltip@/: the tooltip text
    -> m ()
actionSetTooltip action tooltip = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    tooltip' <- textToCString tooltip
    gtk_action_set_tooltip action' tooltip'
    touchManagedPtr action
    freeMem tooltip'
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetTooltipMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetTooltipMethodInfo a signature where
    overloadedMethod = actionSetTooltip

#endif

-- method Action::set_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
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
--           { argCName = "visible"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to make the action visible"
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

foreign import ccall "gtk_action_set_visible" gtk_action_set_visible :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- visible : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetVisible ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the state of","t'GI.Gtk.Interfaces.Actionable.Actionable' widgets directly"] #-}
-- | Sets the :visible property of the action to /@visible@/. Note that
-- this doesn’t necessarily mean effective visibility. See
-- 'GI.Gtk.Objects.Action.actionIsVisible'
-- for that.
-- 
-- /Since: 2.6/
actionSetVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: the action object
    -> Bool
    -- ^ /@visible@/: 'P.True' to make the action visible
    -> m ()
actionSetVisible action visible = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let visible' = (fromIntegral . fromEnum) visible
    gtk_action_set_visible action' visible'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetVisibleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetVisibleMethodInfo a signature where
    overloadedMethod = actionSetVisible

#endif

-- method Action::set_visible_horizontal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible_horizontal"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the action is visible horizontally"
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

foreign import ccall "gtk_action_set_visible_horizontal" gtk_action_set_visible_horizontal :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- visible_horizontal : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetVisibleHorizontal ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the","visibility of associated widgets and menu items directly"] #-}
-- | Sets whether /@action@/ is visible when horizontal
-- 
-- /Since: 2.16/
actionSetVisibleHorizontal ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> Bool
    -- ^ /@visibleHorizontal@/: whether the action is visible horizontally
    -> m ()
actionSetVisibleHorizontal action visibleHorizontal = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let visibleHorizontal' = (fromIntegral . fromEnum) visibleHorizontal
    gtk_action_set_visible_horizontal action' visibleHorizontal'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetVisibleHorizontalMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetVisibleHorizontalMethodInfo a signature where
    overloadedMethod = actionSetVisibleHorizontal

#endif

-- method Action::set_visible_vertical
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible_vertical"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the action is visible vertically"
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

foreign import ccall "gtk_action_set_visible_vertical" gtk_action_set_visible_vertical :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    CInt ->                                 -- visible_vertical : TBasicType TBoolean
    IO ()

{-# DEPRECATED actionSetVisibleVertical ["(Since version 3.10)","Use t'GI.Gio.Interfaces.Action.Action' instead, and control and monitor the","visibility of associated widgets and menu items directly"] #-}
-- | Sets whether /@action@/ is visible when vertical
-- 
-- /Since: 2.16/
actionSetVisibleVertical ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> Bool
    -- ^ /@visibleVertical@/: whether the action is visible vertically
    -> m ()
actionSetVisibleVertical action visibleVertical = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    let visibleVertical' = (fromIntegral . fromEnum) visibleVertical
    gtk_action_set_visible_vertical action' visibleVertical'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionSetVisibleVerticalMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAction a) => O.MethodInfo ActionSetVisibleVerticalMethodInfo a signature where
    overloadedMethod = actionSetVisibleVertical

#endif

-- method Action::unblock_activate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "gtk_action_unblock_activate" gtk_action_unblock_activate :: 
    Ptr Action ->                           -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO ()

{-# DEPRECATED actionUnblockActivate ["(Since version 3.10)","Use 'GI.Gio.Objects.SimpleAction.simpleActionSetEnabled' to enable the","t'GI.Gio.Objects.SimpleAction.SimpleAction' instead"] #-}
-- | Reenable activation signals from the action
-- 
-- /Since: 2.16/
actionUnblockActivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m ()
actionUnblockActivate action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    gtk_action_unblock_activate action'
    touchManagedPtr action
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionUnblockActivateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAction a) => O.MethodInfo ActionUnblockActivateMethodInfo a signature where
    overloadedMethod = actionUnblockActivate

#endif

