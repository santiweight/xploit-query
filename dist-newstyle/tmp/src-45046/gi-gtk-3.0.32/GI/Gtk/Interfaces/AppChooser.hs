{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Interfaces.AppChooser.AppChooser' is an interface that can be implemented by widgets which
-- allow the user to choose an application (typically for the purpose of
-- opening a file). The main objects that implement this interface are
-- t'GI.Gtk.Objects.AppChooserWidget.AppChooserWidget', t'GI.Gtk.Objects.AppChooserDialog.AppChooserDialog' and t'GI.Gtk.Objects.AppChooserButton.AppChooserButton'.
-- 
-- Applications are represented by GIO t'GI.Gio.Interfaces.AppInfo.AppInfo' objects here.
-- GIO has a concept of recommended and fallback applications for a
-- given content type. Recommended applications are those that claim
-- to handle the content type itself, while fallback also includes
-- applications that handle a more generic content type. GIO also
-- knows the default and last-used application for a given content
-- type. The t'GI.Gtk.Objects.AppChooserWidget.AppChooserWidget' provides detailed control over
-- whether the shown list of applications should include default,
-- recommended or fallback applications.
-- 
-- To obtain the application that has been selected in a t'GI.Gtk.Interfaces.AppChooser.AppChooser',
-- use 'GI.Gtk.Interfaces.AppChooser.appChooserGetAppInfo'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.AppChooser
    ( 

-- * Exported types
    AppChooser(..)                          ,
    noAppChooser                            ,
    IsAppChooser                            ,
    toAppChooser                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAppChooserMethod                 ,
#endif


-- ** getAppInfo #method:getAppInfo#

#if defined(ENABLE_OVERLOADING)
    AppChooserGetAppInfoMethodInfo          ,
#endif
    appChooserGetAppInfo                    ,


-- ** getContentType #method:getContentType#

#if defined(ENABLE_OVERLOADING)
    AppChooserGetContentTypeMethodInfo      ,
#endif
    appChooserGetContentType                ,


-- ** refresh #method:refresh#

#if defined(ENABLE_OVERLOADING)
    AppChooserRefreshMethodInfo             ,
#endif
    appChooserRefresh                       ,




 -- * Properties
-- ** contentType #attr:contentType#
-- | The content type of the t'GI.Gtk.Interfaces.AppChooser.AppChooser' object.
-- 
-- See [GContentType][gio-GContentType]
-- for more information about content types.

#if defined(ENABLE_OVERLOADING)
    AppChooserContentTypePropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    appChooserContentType                   ,
#endif
    constructAppChooserContentType          ,
    getAppChooserContentType                ,




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
import qualified GI.Gio.Interfaces.AppInfo as Gio.AppInfo
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- interface AppChooser 
-- | Memory-managed wrapper type.
newtype AppChooser = AppChooser (ManagedPtr AppChooser)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `AppChooser`.
noAppChooser :: Maybe AppChooser
noAppChooser = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList AppChooser = AppChooserSignalList
type AppChooserSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_app_chooser_get_type"
    c_gtk_app_chooser_get_type :: IO GType

instance GObject AppChooser where
    gobjectType = c_gtk_app_chooser_get_type
    

-- | Convert 'AppChooser' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue AppChooser where
    toGValue o = do
        gtype <- c_gtk_app_chooser_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr AppChooser)
        B.ManagedPtr.newObject AppChooser ptr
        
    

-- | Type class for types which can be safely cast to `AppChooser`, for instance with `toAppChooser`.
class (GObject o, O.IsDescendantOf AppChooser o) => IsAppChooser o
instance (GObject o, O.IsDescendantOf AppChooser o) => IsAppChooser o

instance O.HasParentTypes AppChooser
type instance O.ParentTypes AppChooser = '[GObject.Object.Object, Gtk.Widget.Widget]

-- | Cast to `AppChooser`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAppChooser :: (MonadIO m, IsAppChooser o) => o -> m AppChooser
toAppChooser = liftIO . unsafeCastTo AppChooser

-- VVV Prop "content-type"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@content-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' appChooser #contentType
-- @
getAppChooserContentType :: (MonadIO m, IsAppChooser o) => o -> m (Maybe T.Text)
getAppChooserContentType obj = liftIO $ B.Properties.getObjectPropertyString obj "content-type"

-- | Construct a `GValueConstruct` with valid value for the “@content-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAppChooserContentType :: (IsAppChooser o) => T.Text -> IO (GValueConstruct o)
constructAppChooserContentType val = B.Properties.constructObjectPropertyString "content-type" (Just val)

#if defined(ENABLE_OVERLOADING)
data AppChooserContentTypePropertyInfo
instance AttrInfo AppChooserContentTypePropertyInfo where
    type AttrAllowedOps AppChooserContentTypePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AppChooserContentTypePropertyInfo = IsAppChooser
    type AttrSetTypeConstraint AppChooserContentTypePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AppChooserContentTypePropertyInfo = (~) T.Text
    type AttrTransferType AppChooserContentTypePropertyInfo = T.Text
    type AttrGetType AppChooserContentTypePropertyInfo = (Maybe T.Text)
    type AttrLabel AppChooserContentTypePropertyInfo = "content-type"
    type AttrOrigin AppChooserContentTypePropertyInfo = AppChooser
    attrGet = getAppChooserContentType
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructAppChooserContentType
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AppChooser
type instance O.AttributeList AppChooser = AppChooserAttributeList
type AppChooserAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("contentType", AppChooserContentTypePropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
appChooserContentType :: AttrLabelProxy "contentType"
appChooserContentType = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveAppChooserMethod (t :: Symbol) (o :: *) :: * where
    ResolveAppChooserMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveAppChooserMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveAppChooserMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveAppChooserMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveAppChooserMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveAppChooserMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveAppChooserMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveAppChooserMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAppChooserMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAppChooserMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveAppChooserMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveAppChooserMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveAppChooserMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveAppChooserMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveAppChooserMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveAppChooserMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveAppChooserMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveAppChooserMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveAppChooserMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveAppChooserMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveAppChooserMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveAppChooserMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveAppChooserMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveAppChooserMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveAppChooserMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveAppChooserMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveAppChooserMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveAppChooserMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveAppChooserMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveAppChooserMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveAppChooserMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveAppChooserMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveAppChooserMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveAppChooserMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveAppChooserMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveAppChooserMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveAppChooserMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveAppChooserMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveAppChooserMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveAppChooserMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveAppChooserMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveAppChooserMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveAppChooserMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveAppChooserMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveAppChooserMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveAppChooserMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveAppChooserMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveAppChooserMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveAppChooserMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveAppChooserMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveAppChooserMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveAppChooserMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveAppChooserMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveAppChooserMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveAppChooserMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveAppChooserMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAppChooserMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveAppChooserMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAppChooserMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAppChooserMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveAppChooserMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveAppChooserMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveAppChooserMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveAppChooserMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveAppChooserMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveAppChooserMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveAppChooserMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveAppChooserMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveAppChooserMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveAppChooserMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveAppChooserMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveAppChooserMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveAppChooserMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveAppChooserMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveAppChooserMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveAppChooserMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveAppChooserMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveAppChooserMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveAppChooserMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveAppChooserMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAppChooserMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveAppChooserMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveAppChooserMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveAppChooserMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveAppChooserMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveAppChooserMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveAppChooserMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveAppChooserMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveAppChooserMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveAppChooserMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveAppChooserMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveAppChooserMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveAppChooserMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveAppChooserMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveAppChooserMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveAppChooserMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveAppChooserMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveAppChooserMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAppChooserMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAppChooserMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveAppChooserMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveAppChooserMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveAppChooserMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveAppChooserMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveAppChooserMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveAppChooserMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveAppChooserMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveAppChooserMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveAppChooserMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveAppChooserMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveAppChooserMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveAppChooserMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveAppChooserMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveAppChooserMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveAppChooserMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAppChooserMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAppChooserMethod "refresh" o = AppChooserRefreshMethodInfo
    ResolveAppChooserMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveAppChooserMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveAppChooserMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveAppChooserMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveAppChooserMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveAppChooserMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveAppChooserMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveAppChooserMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveAppChooserMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveAppChooserMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveAppChooserMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAppChooserMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveAppChooserMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveAppChooserMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveAppChooserMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveAppChooserMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveAppChooserMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveAppChooserMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveAppChooserMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveAppChooserMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveAppChooserMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAppChooserMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAppChooserMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveAppChooserMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveAppChooserMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveAppChooserMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAppChooserMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveAppChooserMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveAppChooserMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveAppChooserMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveAppChooserMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveAppChooserMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAppChooserMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveAppChooserMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveAppChooserMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAppChooserMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveAppChooserMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveAppChooserMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveAppChooserMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveAppChooserMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveAppChooserMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveAppChooserMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveAppChooserMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveAppChooserMethod "getAppInfo" o = AppChooserGetAppInfoMethodInfo
    ResolveAppChooserMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveAppChooserMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveAppChooserMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveAppChooserMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveAppChooserMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveAppChooserMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveAppChooserMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveAppChooserMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveAppChooserMethod "getContentType" o = AppChooserGetContentTypeMethodInfo
    ResolveAppChooserMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAppChooserMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveAppChooserMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveAppChooserMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveAppChooserMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveAppChooserMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveAppChooserMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveAppChooserMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveAppChooserMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveAppChooserMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveAppChooserMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveAppChooserMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveAppChooserMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveAppChooserMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveAppChooserMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveAppChooserMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveAppChooserMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveAppChooserMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveAppChooserMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveAppChooserMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveAppChooserMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveAppChooserMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveAppChooserMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveAppChooserMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveAppChooserMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveAppChooserMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveAppChooserMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveAppChooserMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveAppChooserMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveAppChooserMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveAppChooserMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveAppChooserMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveAppChooserMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveAppChooserMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveAppChooserMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveAppChooserMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveAppChooserMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveAppChooserMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveAppChooserMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveAppChooserMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveAppChooserMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAppChooserMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAppChooserMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveAppChooserMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveAppChooserMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveAppChooserMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveAppChooserMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveAppChooserMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveAppChooserMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveAppChooserMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveAppChooserMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveAppChooserMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveAppChooserMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveAppChooserMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveAppChooserMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveAppChooserMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveAppChooserMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveAppChooserMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveAppChooserMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveAppChooserMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveAppChooserMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveAppChooserMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveAppChooserMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveAppChooserMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveAppChooserMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveAppChooserMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveAppChooserMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveAppChooserMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveAppChooserMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveAppChooserMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveAppChooserMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveAppChooserMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveAppChooserMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveAppChooserMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveAppChooserMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveAppChooserMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveAppChooserMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveAppChooserMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveAppChooserMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAppChooserMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAppChooserMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveAppChooserMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveAppChooserMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveAppChooserMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveAppChooserMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveAppChooserMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveAppChooserMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveAppChooserMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveAppChooserMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveAppChooserMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveAppChooserMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveAppChooserMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveAppChooserMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveAppChooserMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveAppChooserMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveAppChooserMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveAppChooserMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveAppChooserMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveAppChooserMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveAppChooserMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveAppChooserMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveAppChooserMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveAppChooserMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveAppChooserMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveAppChooserMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveAppChooserMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAppChooserMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveAppChooserMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveAppChooserMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveAppChooserMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveAppChooserMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveAppChooserMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveAppChooserMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveAppChooserMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveAppChooserMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveAppChooserMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveAppChooserMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveAppChooserMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveAppChooserMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveAppChooserMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveAppChooserMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveAppChooserMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveAppChooserMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveAppChooserMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveAppChooserMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAppChooserMethod t AppChooser, O.MethodInfo info AppChooser p) => OL.IsLabel t (AppChooser -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method AppChooser::get_app_info
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AppChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAppChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "AppInfo" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_app_chooser_get_app_info" gtk_app_chooser_get_app_info :: 
    Ptr AppChooser ->                       -- self : TInterface (Name {namespace = "Gtk", name = "AppChooser"})
    IO (Ptr Gio.AppInfo.AppInfo)

-- | Returns the currently selected application.
-- 
-- /Since: 3.0/
appChooserGetAppInfo ::
    (B.CallStack.HasCallStack, MonadIO m, IsAppChooser a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Interfaces.AppChooser.AppChooser'
    -> m (Maybe Gio.AppInfo.AppInfo)
    -- ^ __Returns:__ a t'GI.Gio.Interfaces.AppInfo.AppInfo' for the currently selected
    --     application, or 'P.Nothing' if none is selected. Free with 'GI.GObject.Objects.Object.objectUnref'
appChooserGetAppInfo self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_app_chooser_get_app_info self'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Gio.AppInfo.AppInfo) result'
        return result''
    touchManagedPtr self
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data AppChooserGetAppInfoMethodInfo
instance (signature ~ (m (Maybe Gio.AppInfo.AppInfo)), MonadIO m, IsAppChooser a) => O.MethodInfo AppChooserGetAppInfoMethodInfo a signature where
    overloadedMethod = appChooserGetAppInfo

#endif

-- method AppChooser::get_content_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AppChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAppChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_app_chooser_get_content_type" gtk_app_chooser_get_content_type :: 
    Ptr AppChooser ->                       -- self : TInterface (Name {namespace = "Gtk", name = "AppChooser"})
    IO CString

-- | Returns the current value of the t'GI.Gtk.Interfaces.AppChooser.AppChooser':@/content-type/@ property.
-- 
-- /Since: 3.0/
appChooserGetContentType ::
    (B.CallStack.HasCallStack, MonadIO m, IsAppChooser a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Interfaces.AppChooser.AppChooser'
    -> m T.Text
    -- ^ __Returns:__ the content type of /@self@/. Free with 'GI.GLib.Functions.free'
appChooserGetContentType self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_app_chooser_get_content_type self'
    checkUnexpectedReturnNULL "appChooserGetContentType" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr self
    return result'

#if defined(ENABLE_OVERLOADING)
data AppChooserGetContentTypeMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAppChooser a) => O.MethodInfo AppChooserGetContentTypeMethodInfo a signature where
    overloadedMethod = appChooserGetContentType

#endif

-- method AppChooser::refresh
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AppChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAppChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_app_chooser_refresh" gtk_app_chooser_refresh :: 
    Ptr AppChooser ->                       -- self : TInterface (Name {namespace = "Gtk", name = "AppChooser"})
    IO ()

-- | Reloads the list of applications.
-- 
-- /Since: 3.0/
appChooserRefresh ::
    (B.CallStack.HasCallStack, MonadIO m, IsAppChooser a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Interfaces.AppChooser.AppChooser'
    -> m ()
appChooserRefresh self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    gtk_app_chooser_refresh self'
    touchManagedPtr self
    return ()

#if defined(ENABLE_OVERLOADING)
data AppChooserRefreshMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAppChooser a) => O.MethodInfo AppChooserRefreshMethodInfo a signature where
    overloadedMethod = appChooserRefresh

#endif

