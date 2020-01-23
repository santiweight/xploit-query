{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.Assistant.Assistant' is a widget used to represent a generally complex
-- operation splitted in several steps, guiding the user through its
-- pages and controlling the page flow to collect the necessary data.
-- 
-- The design of GtkAssistant is that it controls what buttons to show
-- and to make sensitive, based on what it knows about the page sequence
-- and the [type][GtkAssistantPageType] of each page,
-- in addition to state information like the page
-- [completion][gtk-assistant-set-page-complete]
-- and [committed][gtk-assistant-commit] status.
-- 
-- If you have a case that doesn’t quite fit in @/GtkAssistants/@ way of
-- handling buttons, you can use the @/GTK_ASSISTANT_PAGE_CUSTOM/@ page
-- type and handle buttons yourself.
-- 
-- = GtkAssistant as GtkBuildable
-- 
-- The GtkAssistant implementation of the t'GI.Gtk.Interfaces.Buildable.Buildable' interface
-- exposes the /@actionArea@/ as internal children with the name
-- “action_area”.
-- 
-- To add pages to an assistant in t'GI.Gtk.Objects.Builder.Builder', simply add it as a
-- child to the GtkAssistant object, and set its child properties
-- as necessary.
-- 
-- = CSS nodes
-- 
-- GtkAssistant has a single CSS node with the name assistant.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Assistant
    ( 

-- * Exported types
    Assistant(..)                           ,
    IsAssistant                             ,
    toAssistant                             ,
    noAssistant                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAssistantMethod                  ,
#endif


-- ** addActionWidget #method:addActionWidget#

#if defined(ENABLE_OVERLOADING)
    AssistantAddActionWidgetMethodInfo      ,
#endif
    assistantAddActionWidget                ,


-- ** appendPage #method:appendPage#

#if defined(ENABLE_OVERLOADING)
    AssistantAppendPageMethodInfo           ,
#endif
    assistantAppendPage                     ,


-- ** commit #method:commit#

#if defined(ENABLE_OVERLOADING)
    AssistantCommitMethodInfo               ,
#endif
    assistantCommit                         ,


-- ** getCurrentPage #method:getCurrentPage#

#if defined(ENABLE_OVERLOADING)
    AssistantGetCurrentPageMethodInfo       ,
#endif
    assistantGetCurrentPage                 ,


-- ** getNPages #method:getNPages#

#if defined(ENABLE_OVERLOADING)
    AssistantGetNPagesMethodInfo            ,
#endif
    assistantGetNPages                      ,


-- ** getNthPage #method:getNthPage#

#if defined(ENABLE_OVERLOADING)
    AssistantGetNthPageMethodInfo           ,
#endif
    assistantGetNthPage                     ,


-- ** getPageComplete #method:getPageComplete#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageCompleteMethodInfo      ,
#endif
    assistantGetPageComplete                ,


-- ** getPageHasPadding #method:getPageHasPadding#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageHasPaddingMethodInfo    ,
#endif
    assistantGetPageHasPadding              ,


-- ** getPageHeaderImage #method:getPageHeaderImage#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageHeaderImageMethodInfo   ,
#endif
    assistantGetPageHeaderImage             ,


-- ** getPageSideImage #method:getPageSideImage#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageSideImageMethodInfo     ,
#endif
    assistantGetPageSideImage               ,


-- ** getPageTitle #method:getPageTitle#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageTitleMethodInfo         ,
#endif
    assistantGetPageTitle                   ,


-- ** getPageType #method:getPageType#

#if defined(ENABLE_OVERLOADING)
    AssistantGetPageTypeMethodInfo          ,
#endif
    assistantGetPageType                    ,


-- ** insertPage #method:insertPage#

#if defined(ENABLE_OVERLOADING)
    AssistantInsertPageMethodInfo           ,
#endif
    assistantInsertPage                     ,


-- ** new #method:new#

    assistantNew                            ,


-- ** nextPage #method:nextPage#

#if defined(ENABLE_OVERLOADING)
    AssistantNextPageMethodInfo             ,
#endif
    assistantNextPage                       ,


-- ** prependPage #method:prependPage#

#if defined(ENABLE_OVERLOADING)
    AssistantPrependPageMethodInfo          ,
#endif
    assistantPrependPage                    ,


-- ** previousPage #method:previousPage#

#if defined(ENABLE_OVERLOADING)
    AssistantPreviousPageMethodInfo         ,
#endif
    assistantPreviousPage                   ,


-- ** removeActionWidget #method:removeActionWidget#

#if defined(ENABLE_OVERLOADING)
    AssistantRemoveActionWidgetMethodInfo   ,
#endif
    assistantRemoveActionWidget             ,


-- ** removePage #method:removePage#

#if defined(ENABLE_OVERLOADING)
    AssistantRemovePageMethodInfo           ,
#endif
    assistantRemovePage                     ,


-- ** setCurrentPage #method:setCurrentPage#

#if defined(ENABLE_OVERLOADING)
    AssistantSetCurrentPageMethodInfo       ,
#endif
    assistantSetCurrentPage                 ,


-- ** setForwardPageFunc #method:setForwardPageFunc#

#if defined(ENABLE_OVERLOADING)
    AssistantSetForwardPageFuncMethodInfo   ,
#endif
    assistantSetForwardPageFunc             ,


-- ** setPageComplete #method:setPageComplete#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageCompleteMethodInfo      ,
#endif
    assistantSetPageComplete                ,


-- ** setPageHasPadding #method:setPageHasPadding#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageHasPaddingMethodInfo    ,
#endif
    assistantSetPageHasPadding              ,


-- ** setPageHeaderImage #method:setPageHeaderImage#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageHeaderImageMethodInfo   ,
#endif
    assistantSetPageHeaderImage             ,


-- ** setPageSideImage #method:setPageSideImage#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageSideImageMethodInfo     ,
#endif
    assistantSetPageSideImage               ,


-- ** setPageTitle #method:setPageTitle#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageTitleMethodInfo         ,
#endif
    assistantSetPageTitle                   ,


-- ** setPageType #method:setPageType#

#if defined(ENABLE_OVERLOADING)
    AssistantSetPageTypeMethodInfo          ,
#endif
    assistantSetPageType                    ,


-- ** updateButtonsState #method:updateButtonsState#

#if defined(ENABLE_OVERLOADING)
    AssistantUpdateButtonsStateMethodInfo   ,
#endif
    assistantUpdateButtonsState             ,




 -- * Properties
-- ** useHeaderBar #attr:useHeaderBar#
-- | 'P.True' if the assistant uses a t'GI.Gtk.Objects.HeaderBar.HeaderBar' for action buttons
-- instead of the action-area.
-- 
-- For technical reasons, this property is declared as an integer
-- property, but you should only set it to 'P.True' or 'P.False'.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    AssistantUseHeaderBarPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    assistantUseHeaderBar                   ,
#endif
    constructAssistantUseHeaderBar          ,
    getAssistantUseHeaderBar                ,




 -- * Signals
-- ** apply #signal:apply#

    AssistantApplyCallback                  ,
#if defined(ENABLE_OVERLOADING)
    AssistantApplySignalInfo                ,
#endif
    C_AssistantApplyCallback                ,
    afterAssistantApply                     ,
    genClosure_AssistantApply               ,
    mk_AssistantApplyCallback               ,
    noAssistantApplyCallback                ,
    onAssistantApply                        ,
    wrap_AssistantApplyCallback             ,


-- ** cancel #signal:cancel#

    AssistantCancelCallback                 ,
#if defined(ENABLE_OVERLOADING)
    AssistantCancelSignalInfo               ,
#endif
    C_AssistantCancelCallback               ,
    afterAssistantCancel                    ,
    genClosure_AssistantCancel              ,
    mk_AssistantCancelCallback              ,
    noAssistantCancelCallback               ,
    onAssistantCancel                       ,
    wrap_AssistantCancelCallback            ,


-- ** close #signal:close#

    AssistantCloseCallback                  ,
#if defined(ENABLE_OVERLOADING)
    AssistantCloseSignalInfo                ,
#endif
    C_AssistantCloseCallback                ,
    afterAssistantClose                     ,
    genClosure_AssistantClose               ,
    mk_AssistantCloseCallback               ,
    noAssistantCloseCallback                ,
    onAssistantClose                        ,
    wrap_AssistantCloseCallback             ,


-- ** escape #signal:escape#

    AssistantEscapeCallback                 ,
#if defined(ENABLE_OVERLOADING)
    AssistantEscapeSignalInfo               ,
#endif
    C_AssistantEscapeCallback               ,
    afterAssistantEscape                    ,
    genClosure_AssistantEscape              ,
    mk_AssistantEscapeCallback              ,
    noAssistantEscapeCallback               ,
    onAssistantEscape                       ,
    wrap_AssistantEscapeCallback            ,


-- ** prepare #signal:prepare#

    AssistantPrepareCallback                ,
#if defined(ENABLE_OVERLOADING)
    AssistantPrepareSignalInfo              ,
#endif
    C_AssistantPrepareCallback              ,
    afterAssistantPrepare                   ,
    genClosure_AssistantPrepare             ,
    mk_AssistantPrepareCallback             ,
    noAssistantPrepareCallback              ,
    onAssistantPrepare                      ,
    wrap_AssistantPrepareCallback           ,




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

import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype Assistant = Assistant (ManagedPtr Assistant)
    deriving (Eq)
foreign import ccall "gtk_assistant_get_type"
    c_gtk_assistant_get_type :: IO GType

instance GObject Assistant where
    gobjectType = c_gtk_assistant_get_type
    

-- | Convert 'Assistant' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Assistant where
    toGValue o = do
        gtype <- c_gtk_assistant_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Assistant)
        B.ManagedPtr.newObject Assistant ptr
        
    

-- | Type class for types which can be safely cast to `Assistant`, for instance with `toAssistant`.
class (GObject o, O.IsDescendantOf Assistant o) => IsAssistant o
instance (GObject o, O.IsDescendantOf Assistant o) => IsAssistant o

instance O.HasParentTypes Assistant
type instance O.ParentTypes Assistant = '[Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Assistant`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAssistant :: (MonadIO m, IsAssistant o) => o -> m Assistant
toAssistant = liftIO . unsafeCastTo Assistant

-- | A convenience alias for `Nothing` :: `Maybe` `Assistant`.
noAssistant :: Maybe Assistant
noAssistant = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAssistantMethod (t :: Symbol) (o :: *) :: * where
    ResolveAssistantMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveAssistantMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveAssistantMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveAssistantMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveAssistantMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveAssistantMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveAssistantMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveAssistantMethod "addActionWidget" o = AssistantAddActionWidgetMethodInfo
    ResolveAssistantMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveAssistantMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveAssistantMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveAssistantMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveAssistantMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveAssistantMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveAssistantMethod "appendPage" o = AssistantAppendPageMethodInfo
    ResolveAssistantMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveAssistantMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveAssistantMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAssistantMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAssistantMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveAssistantMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveAssistantMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveAssistantMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveAssistantMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveAssistantMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveAssistantMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveAssistantMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveAssistantMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveAssistantMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveAssistantMethod "commit" o = AssistantCommitMethodInfo
    ResolveAssistantMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveAssistantMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveAssistantMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveAssistantMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveAssistantMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveAssistantMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveAssistantMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveAssistantMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveAssistantMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveAssistantMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveAssistantMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveAssistantMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveAssistantMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveAssistantMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveAssistantMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveAssistantMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveAssistantMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveAssistantMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveAssistantMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveAssistantMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveAssistantMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveAssistantMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveAssistantMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveAssistantMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveAssistantMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveAssistantMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveAssistantMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveAssistantMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveAssistantMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveAssistantMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveAssistantMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveAssistantMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveAssistantMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveAssistantMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveAssistantMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveAssistantMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveAssistantMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveAssistantMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveAssistantMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveAssistantMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveAssistantMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveAssistantMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveAssistantMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveAssistantMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveAssistantMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAssistantMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveAssistantMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveAssistantMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAssistantMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveAssistantMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveAssistantMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAssistantMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveAssistantMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveAssistantMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveAssistantMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveAssistantMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveAssistantMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveAssistantMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveAssistantMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveAssistantMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveAssistantMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveAssistantMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveAssistantMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveAssistantMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveAssistantMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveAssistantMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveAssistantMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveAssistantMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveAssistantMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveAssistantMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveAssistantMethod "insertPage" o = AssistantInsertPageMethodInfo
    ResolveAssistantMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveAssistantMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveAssistantMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveAssistantMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveAssistantMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveAssistantMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAssistantMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveAssistantMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveAssistantMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveAssistantMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveAssistantMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveAssistantMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveAssistantMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveAssistantMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveAssistantMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveAssistantMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveAssistantMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveAssistantMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveAssistantMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveAssistantMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveAssistantMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveAssistantMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveAssistantMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveAssistantMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveAssistantMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveAssistantMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveAssistantMethod "nextPage" o = AssistantNextPageMethodInfo
    ResolveAssistantMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAssistantMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAssistantMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveAssistantMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveAssistantMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveAssistantMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveAssistantMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveAssistantMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveAssistantMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveAssistantMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveAssistantMethod "prependPage" o = AssistantPrependPageMethodInfo
    ResolveAssistantMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveAssistantMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveAssistantMethod "previousPage" o = AssistantPreviousPageMethodInfo
    ResolveAssistantMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveAssistantMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveAssistantMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveAssistantMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveAssistantMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveAssistantMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveAssistantMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveAssistantMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveAssistantMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveAssistantMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveAssistantMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAssistantMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAssistantMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveAssistantMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveAssistantMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveAssistantMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveAssistantMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveAssistantMethod "removeActionWidget" o = AssistantRemoveActionWidgetMethodInfo
    ResolveAssistantMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveAssistantMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveAssistantMethod "removePage" o = AssistantRemovePageMethodInfo
    ResolveAssistantMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveAssistantMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveAssistantMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveAssistantMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveAssistantMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveAssistantMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveAssistantMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveAssistantMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveAssistantMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveAssistantMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveAssistantMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveAssistantMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAssistantMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveAssistantMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveAssistantMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveAssistantMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveAssistantMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveAssistantMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveAssistantMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveAssistantMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveAssistantMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveAssistantMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAssistantMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAssistantMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveAssistantMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveAssistantMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveAssistantMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveAssistantMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAssistantMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveAssistantMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveAssistantMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveAssistantMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveAssistantMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveAssistantMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveAssistantMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveAssistantMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAssistantMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveAssistantMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveAssistantMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveAssistantMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveAssistantMethod "updateButtonsState" o = AssistantUpdateButtonsStateMethodInfo
    ResolveAssistantMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAssistantMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveAssistantMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveAssistantMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveAssistantMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveAssistantMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveAssistantMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveAssistantMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveAssistantMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveAssistantMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveAssistantMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveAssistantMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveAssistantMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveAssistantMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveAssistantMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveAssistantMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveAssistantMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveAssistantMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveAssistantMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveAssistantMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveAssistantMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveAssistantMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveAssistantMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveAssistantMethod "getCurrentPage" o = AssistantGetCurrentPageMethodInfo
    ResolveAssistantMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAssistantMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveAssistantMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveAssistantMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveAssistantMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveAssistantMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveAssistantMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveAssistantMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveAssistantMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveAssistantMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveAssistantMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveAssistantMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveAssistantMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveAssistantMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveAssistantMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveAssistantMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveAssistantMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveAssistantMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveAssistantMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveAssistantMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveAssistantMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveAssistantMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveAssistantMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveAssistantMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveAssistantMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveAssistantMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveAssistantMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveAssistantMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveAssistantMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveAssistantMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveAssistantMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveAssistantMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveAssistantMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveAssistantMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveAssistantMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveAssistantMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveAssistantMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveAssistantMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveAssistantMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveAssistantMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveAssistantMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveAssistantMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveAssistantMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveAssistantMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveAssistantMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveAssistantMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveAssistantMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveAssistantMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveAssistantMethod "getNPages" o = AssistantGetNPagesMethodInfo
    ResolveAssistantMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveAssistantMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveAssistantMethod "getNthPage" o = AssistantGetNthPageMethodInfo
    ResolveAssistantMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveAssistantMethod "getPageComplete" o = AssistantGetPageCompleteMethodInfo
    ResolveAssistantMethod "getPageHasPadding" o = AssistantGetPageHasPaddingMethodInfo
    ResolveAssistantMethod "getPageHeaderImage" o = AssistantGetPageHeaderImageMethodInfo
    ResolveAssistantMethod "getPageSideImage" o = AssistantGetPageSideImageMethodInfo
    ResolveAssistantMethod "getPageTitle" o = AssistantGetPageTitleMethodInfo
    ResolveAssistantMethod "getPageType" o = AssistantGetPageTypeMethodInfo
    ResolveAssistantMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveAssistantMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveAssistantMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveAssistantMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveAssistantMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveAssistantMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveAssistantMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveAssistantMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveAssistantMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveAssistantMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveAssistantMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveAssistantMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveAssistantMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveAssistantMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAssistantMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAssistantMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveAssistantMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveAssistantMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveAssistantMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveAssistantMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveAssistantMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveAssistantMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveAssistantMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveAssistantMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveAssistantMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveAssistantMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveAssistantMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveAssistantMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveAssistantMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveAssistantMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveAssistantMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveAssistantMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveAssistantMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveAssistantMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveAssistantMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveAssistantMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveAssistantMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveAssistantMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveAssistantMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveAssistantMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveAssistantMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveAssistantMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveAssistantMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveAssistantMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveAssistantMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveAssistantMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveAssistantMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveAssistantMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveAssistantMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveAssistantMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveAssistantMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveAssistantMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveAssistantMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveAssistantMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveAssistantMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveAssistantMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveAssistantMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveAssistantMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveAssistantMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveAssistantMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveAssistantMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveAssistantMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveAssistantMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveAssistantMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveAssistantMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveAssistantMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveAssistantMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveAssistantMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveAssistantMethod "setCurrentPage" o = AssistantSetCurrentPageMethodInfo
    ResolveAssistantMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAssistantMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAssistantMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveAssistantMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveAssistantMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveAssistantMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveAssistantMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveAssistantMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveAssistantMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveAssistantMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveAssistantMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveAssistantMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveAssistantMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveAssistantMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveAssistantMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveAssistantMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveAssistantMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveAssistantMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveAssistantMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveAssistantMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveAssistantMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveAssistantMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveAssistantMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveAssistantMethod "setForwardPageFunc" o = AssistantSetForwardPageFuncMethodInfo
    ResolveAssistantMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveAssistantMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveAssistantMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveAssistantMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveAssistantMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveAssistantMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveAssistantMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveAssistantMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveAssistantMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveAssistantMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveAssistantMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveAssistantMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveAssistantMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveAssistantMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveAssistantMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveAssistantMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveAssistantMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveAssistantMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveAssistantMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveAssistantMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveAssistantMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveAssistantMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveAssistantMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveAssistantMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveAssistantMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveAssistantMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveAssistantMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveAssistantMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveAssistantMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveAssistantMethod "setPageComplete" o = AssistantSetPageCompleteMethodInfo
    ResolveAssistantMethod "setPageHasPadding" o = AssistantSetPageHasPaddingMethodInfo
    ResolveAssistantMethod "setPageHeaderImage" o = AssistantSetPageHeaderImageMethodInfo
    ResolveAssistantMethod "setPageSideImage" o = AssistantSetPageSideImageMethodInfo
    ResolveAssistantMethod "setPageTitle" o = AssistantSetPageTitleMethodInfo
    ResolveAssistantMethod "setPageType" o = AssistantSetPageTypeMethodInfo
    ResolveAssistantMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveAssistantMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveAssistantMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveAssistantMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAssistantMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveAssistantMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveAssistantMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveAssistantMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveAssistantMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveAssistantMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveAssistantMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveAssistantMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveAssistantMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveAssistantMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveAssistantMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveAssistantMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveAssistantMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveAssistantMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveAssistantMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveAssistantMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveAssistantMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveAssistantMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveAssistantMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveAssistantMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveAssistantMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveAssistantMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveAssistantMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveAssistantMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveAssistantMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveAssistantMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveAssistantMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveAssistantMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveAssistantMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveAssistantMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveAssistantMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveAssistantMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveAssistantMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAssistantMethod t Assistant, O.MethodInfo info Assistant p) => OL.IsLabel t (Assistant -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Assistant::apply
-- | The [apply](#signal:apply) signal is emitted when the apply button is clicked.
-- 
-- The default behavior of the t'GI.Gtk.Objects.Assistant.Assistant' is to switch to the page
-- after the current page, unless the current page is the last one.
-- 
-- A handler for the [apply](#signal:apply) signal should carry out the actions for
-- which the wizard has collected data. If the action takes a long time
-- to complete, you might consider putting a page of type
-- 'GI.Gtk.Enums.AssistantPageTypeProgress' after the confirmation page and handle
-- this operation within the [prepare]("GI.Gtk.Objects.Assistant#signal:prepare") signal of the progress
-- page.
-- 
-- /Since: 2.10/
type AssistantApplyCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AssistantApplyCallback`@.
noAssistantApplyCallback :: Maybe AssistantApplyCallback
noAssistantApplyCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AssistantApplyCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AssistantApplyCallback`.
foreign import ccall "wrapper"
    mk_AssistantApplyCallback :: C_AssistantApplyCallback -> IO (FunPtr C_AssistantApplyCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AssistantApply :: MonadIO m => AssistantApplyCallback -> m (GClosure C_AssistantApplyCallback)
genClosure_AssistantApply cb = liftIO $ do
    let cb' = wrap_AssistantApplyCallback cb
    mk_AssistantApplyCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AssistantApplyCallback` into a `C_AssistantApplyCallback`.
wrap_AssistantApplyCallback ::
    AssistantApplyCallback ->
    C_AssistantApplyCallback
wrap_AssistantApplyCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [apply](#signal:apply) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' assistant #apply callback
-- @
-- 
-- 
onAssistantApply :: (IsAssistant a, MonadIO m) => a -> AssistantApplyCallback -> m SignalHandlerId
onAssistantApply obj cb = liftIO $ do
    let cb' = wrap_AssistantApplyCallback cb
    cb'' <- mk_AssistantApplyCallback cb'
    connectSignalFunPtr obj "apply" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [apply](#signal:apply) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' assistant #apply callback
-- @
-- 
-- 
afterAssistantApply :: (IsAssistant a, MonadIO m) => a -> AssistantApplyCallback -> m SignalHandlerId
afterAssistantApply obj cb = liftIO $ do
    let cb' = wrap_AssistantApplyCallback cb
    cb'' <- mk_AssistantApplyCallback cb'
    connectSignalFunPtr obj "apply" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AssistantApplySignalInfo
instance SignalInfo AssistantApplySignalInfo where
    type HaskellCallbackType AssistantApplySignalInfo = AssistantApplyCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AssistantApplyCallback cb
        cb'' <- mk_AssistantApplyCallback cb'
        connectSignalFunPtr obj "apply" cb'' connectMode detail

#endif

-- signal Assistant::cancel
-- | The [cancel](#signal:cancel) signal is emitted when then the cancel button is clicked.
-- 
-- /Since: 2.10/
type AssistantCancelCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AssistantCancelCallback`@.
noAssistantCancelCallback :: Maybe AssistantCancelCallback
noAssistantCancelCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AssistantCancelCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AssistantCancelCallback`.
foreign import ccall "wrapper"
    mk_AssistantCancelCallback :: C_AssistantCancelCallback -> IO (FunPtr C_AssistantCancelCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AssistantCancel :: MonadIO m => AssistantCancelCallback -> m (GClosure C_AssistantCancelCallback)
genClosure_AssistantCancel cb = liftIO $ do
    let cb' = wrap_AssistantCancelCallback cb
    mk_AssistantCancelCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AssistantCancelCallback` into a `C_AssistantCancelCallback`.
wrap_AssistantCancelCallback ::
    AssistantCancelCallback ->
    C_AssistantCancelCallback
wrap_AssistantCancelCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' assistant #cancel callback
-- @
-- 
-- 
onAssistantCancel :: (IsAssistant a, MonadIO m) => a -> AssistantCancelCallback -> m SignalHandlerId
onAssistantCancel obj cb = liftIO $ do
    let cb' = wrap_AssistantCancelCallback cb
    cb'' <- mk_AssistantCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' assistant #cancel callback
-- @
-- 
-- 
afterAssistantCancel :: (IsAssistant a, MonadIO m) => a -> AssistantCancelCallback -> m SignalHandlerId
afterAssistantCancel obj cb = liftIO $ do
    let cb' = wrap_AssistantCancelCallback cb
    cb'' <- mk_AssistantCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AssistantCancelSignalInfo
instance SignalInfo AssistantCancelSignalInfo where
    type HaskellCallbackType AssistantCancelSignalInfo = AssistantCancelCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AssistantCancelCallback cb
        cb'' <- mk_AssistantCancelCallback cb'
        connectSignalFunPtr obj "cancel" cb'' connectMode detail

#endif

-- signal Assistant::close
-- | The [close](#signal:close) signal is emitted either when the close button of
-- a summary page is clicked, or when the apply button in the last
-- page in the flow (of type 'GI.Gtk.Enums.AssistantPageTypeConfirm') is clicked.
-- 
-- /Since: 2.10/
type AssistantCloseCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AssistantCloseCallback`@.
noAssistantCloseCallback :: Maybe AssistantCloseCallback
noAssistantCloseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AssistantCloseCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AssistantCloseCallback`.
foreign import ccall "wrapper"
    mk_AssistantCloseCallback :: C_AssistantCloseCallback -> IO (FunPtr C_AssistantCloseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AssistantClose :: MonadIO m => AssistantCloseCallback -> m (GClosure C_AssistantCloseCallback)
genClosure_AssistantClose cb = liftIO $ do
    let cb' = wrap_AssistantCloseCallback cb
    mk_AssistantCloseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AssistantCloseCallback` into a `C_AssistantCloseCallback`.
wrap_AssistantCloseCallback ::
    AssistantCloseCallback ->
    C_AssistantCloseCallback
wrap_AssistantCloseCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' assistant #close callback
-- @
-- 
-- 
onAssistantClose :: (IsAssistant a, MonadIO m) => a -> AssistantCloseCallback -> m SignalHandlerId
onAssistantClose obj cb = liftIO $ do
    let cb' = wrap_AssistantCloseCallback cb
    cb'' <- mk_AssistantCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' assistant #close callback
-- @
-- 
-- 
afterAssistantClose :: (IsAssistant a, MonadIO m) => a -> AssistantCloseCallback -> m SignalHandlerId
afterAssistantClose obj cb = liftIO $ do
    let cb' = wrap_AssistantCloseCallback cb
    cb'' <- mk_AssistantCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AssistantCloseSignalInfo
instance SignalInfo AssistantCloseSignalInfo where
    type HaskellCallbackType AssistantCloseSignalInfo = AssistantCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AssistantCloseCallback cb
        cb'' <- mk_AssistantCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail

#endif

-- signal Assistant::escape
-- | /No description available in the introspection data./
type AssistantEscapeCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AssistantEscapeCallback`@.
noAssistantEscapeCallback :: Maybe AssistantEscapeCallback
noAssistantEscapeCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AssistantEscapeCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AssistantEscapeCallback`.
foreign import ccall "wrapper"
    mk_AssistantEscapeCallback :: C_AssistantEscapeCallback -> IO (FunPtr C_AssistantEscapeCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AssistantEscape :: MonadIO m => AssistantEscapeCallback -> m (GClosure C_AssistantEscapeCallback)
genClosure_AssistantEscape cb = liftIO $ do
    let cb' = wrap_AssistantEscapeCallback cb
    mk_AssistantEscapeCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AssistantEscapeCallback` into a `C_AssistantEscapeCallback`.
wrap_AssistantEscapeCallback ::
    AssistantEscapeCallback ->
    C_AssistantEscapeCallback
wrap_AssistantEscapeCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [escape](#signal:escape) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' assistant #escape callback
-- @
-- 
-- 
onAssistantEscape :: (IsAssistant a, MonadIO m) => a -> AssistantEscapeCallback -> m SignalHandlerId
onAssistantEscape obj cb = liftIO $ do
    let cb' = wrap_AssistantEscapeCallback cb
    cb'' <- mk_AssistantEscapeCallback cb'
    connectSignalFunPtr obj "escape" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [escape](#signal:escape) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' assistant #escape callback
-- @
-- 
-- 
afterAssistantEscape :: (IsAssistant a, MonadIO m) => a -> AssistantEscapeCallback -> m SignalHandlerId
afterAssistantEscape obj cb = liftIO $ do
    let cb' = wrap_AssistantEscapeCallback cb
    cb'' <- mk_AssistantEscapeCallback cb'
    connectSignalFunPtr obj "escape" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AssistantEscapeSignalInfo
instance SignalInfo AssistantEscapeSignalInfo where
    type HaskellCallbackType AssistantEscapeSignalInfo = AssistantEscapeCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AssistantEscapeCallback cb
        cb'' <- mk_AssistantEscapeCallback cb'
        connectSignalFunPtr obj "escape" cb'' connectMode detail

#endif

-- signal Assistant::prepare
-- | The [prepare](#signal:prepare) signal is emitted when a new page is set as the
-- assistant\'s current page, before making the new page visible.
-- 
-- A handler for this signal can do any preparations which are
-- necessary before showing /@page@/.
-- 
-- /Since: 2.10/
type AssistantPrepareCallback =
    Gtk.Widget.Widget
    -- ^ /@page@/: the current page
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AssistantPrepareCallback`@.
noAssistantPrepareCallback :: Maybe AssistantPrepareCallback
noAssistantPrepareCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AssistantPrepareCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AssistantPrepareCallback`.
foreign import ccall "wrapper"
    mk_AssistantPrepareCallback :: C_AssistantPrepareCallback -> IO (FunPtr C_AssistantPrepareCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AssistantPrepare :: MonadIO m => AssistantPrepareCallback -> m (GClosure C_AssistantPrepareCallback)
genClosure_AssistantPrepare cb = liftIO $ do
    let cb' = wrap_AssistantPrepareCallback cb
    mk_AssistantPrepareCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AssistantPrepareCallback` into a `C_AssistantPrepareCallback`.
wrap_AssistantPrepareCallback ::
    AssistantPrepareCallback ->
    C_AssistantPrepareCallback
wrap_AssistantPrepareCallback _cb _ page _ = do
    page' <- (newObject Gtk.Widget.Widget) page
    _cb  page'


-- | Connect a signal handler for the [prepare](#signal:prepare) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' assistant #prepare callback
-- @
-- 
-- 
onAssistantPrepare :: (IsAssistant a, MonadIO m) => a -> AssistantPrepareCallback -> m SignalHandlerId
onAssistantPrepare obj cb = liftIO $ do
    let cb' = wrap_AssistantPrepareCallback cb
    cb'' <- mk_AssistantPrepareCallback cb'
    connectSignalFunPtr obj "prepare" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [prepare](#signal:prepare) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' assistant #prepare callback
-- @
-- 
-- 
afterAssistantPrepare :: (IsAssistant a, MonadIO m) => a -> AssistantPrepareCallback -> m SignalHandlerId
afterAssistantPrepare obj cb = liftIO $ do
    let cb' = wrap_AssistantPrepareCallback cb
    cb'' <- mk_AssistantPrepareCallback cb'
    connectSignalFunPtr obj "prepare" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AssistantPrepareSignalInfo
instance SignalInfo AssistantPrepareSignalInfo where
    type HaskellCallbackType AssistantPrepareSignalInfo = AssistantPrepareCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AssistantPrepareCallback cb
        cb'' <- mk_AssistantPrepareCallback cb'
        connectSignalFunPtr obj "prepare" cb'' connectMode detail

#endif

-- VVV Prop "use-header-bar"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-header-bar@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' assistant #useHeaderBar
-- @
getAssistantUseHeaderBar :: (MonadIO m, IsAssistant o) => o -> m Int32
getAssistantUseHeaderBar obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "use-header-bar"

-- | Construct a `GValueConstruct` with valid value for the “@use-header-bar@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAssistantUseHeaderBar :: (IsAssistant o) => Int32 -> IO (GValueConstruct o)
constructAssistantUseHeaderBar val = B.Properties.constructObjectPropertyInt32 "use-header-bar" val

#if defined(ENABLE_OVERLOADING)
data AssistantUseHeaderBarPropertyInfo
instance AttrInfo AssistantUseHeaderBarPropertyInfo where
    type AttrAllowedOps AssistantUseHeaderBarPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AssistantUseHeaderBarPropertyInfo = IsAssistant
    type AttrSetTypeConstraint AssistantUseHeaderBarPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint AssistantUseHeaderBarPropertyInfo = (~) Int32
    type AttrTransferType AssistantUseHeaderBarPropertyInfo = Int32
    type AttrGetType AssistantUseHeaderBarPropertyInfo = Int32
    type AttrLabel AssistantUseHeaderBarPropertyInfo = "use-header-bar"
    type AttrOrigin AssistantUseHeaderBarPropertyInfo = Assistant
    attrGet = getAssistantUseHeaderBar
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructAssistantUseHeaderBar
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Assistant
type instance O.AttributeList Assistant = AssistantAttributeList
type AssistantAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", AssistantUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
assistantUseHeaderBar :: AttrLabelProxy "useHeaderBar"
assistantUseHeaderBar = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Assistant = AssistantSignalList
type AssistantSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("apply", AssistantApplySignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancel", AssistantCancelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", AssistantCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("escape", AssistantEscapeSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("prepare", AssistantPrepareSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Assistant::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Assistant" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_new" gtk_assistant_new :: 
    IO (Ptr Assistant)

-- | Creates a new t'GI.Gtk.Objects.Assistant.Assistant'.
-- 
-- /Since: 2.10/
assistantNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Assistant
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.Assistant.Assistant'
assistantNew  = liftIO $ do
    result <- gtk_assistant_new
    checkUnexpectedReturnNULL "assistantNew" result
    result' <- (newObject Assistant) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Assistant::add_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_add_action_widget" gtk_assistant_add_action_widget :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds a widget to the action area of a t'GI.Gtk.Objects.Assistant.Assistant'.
-- 
-- /Since: 2.10/
assistantAddActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m ()
assistantAddActionWidget assistant child = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    child' <- unsafeManagedPtrCastPtr child
    gtk_assistant_add_action_widget assistant' child'
    touchManagedPtr assistant
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantAddActionWidgetMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantAddActionWidgetMethodInfo a signature where
    overloadedMethod = assistantAddActionWidget

#endif

-- method Assistant::append_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_append_page" gtk_assistant_append_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Appends a page to the /@assistant@/.
-- 
-- /Since: 2.10/
assistantAppendPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m Int32
    -- ^ __Returns:__ the index (starting at 0) of the inserted page
assistantAppendPage assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_append_page assistant' page'
    touchManagedPtr assistant
    touchManagedPtr page
    return result

#if defined(ENABLE_OVERLOADING)
data AssistantAppendPageMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantAppendPageMethodInfo a signature where
    overloadedMethod = assistantAppendPage

#endif

-- method Assistant::commit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
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

foreign import ccall "gtk_assistant_commit" gtk_assistant_commit :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO ()

-- | Erases the visited page history so the back button is not
-- shown on the current page, and removes the cancel button
-- from subsequent pages.
-- 
-- Use this when the information provided up to the current
-- page is hereafter deemed permanent and cannot be modified
-- or undone. For example, showing a progress page to track
-- a long-running, unreversible operation after the user has
-- clicked apply on a confirmation page.
-- 
-- /Since: 2.22/
assistantCommit ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m ()
assistantCommit assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_commit assistant'
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantCommitMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantCommitMethodInfo a signature where
    overloadedMethod = assistantCommit

#endif

-- method Assistant::get_current_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_current_page" gtk_assistant_get_current_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO Int32

-- | Returns the page number of the current page.
-- 
-- /Since: 2.10/
assistantGetCurrentPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m Int32
    -- ^ __Returns:__ The index (starting from 0) of the current
    --     page in the /@assistant@/, or -1 if the /@assistant@/ has no pages,
    --     or no current page.
assistantGetCurrentPage assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    result <- gtk_assistant_get_current_page assistant'
    touchManagedPtr assistant
    return result

#if defined(ENABLE_OVERLOADING)
data AssistantGetCurrentPageMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsAssistant a) => O.MethodInfo AssistantGetCurrentPageMethodInfo a signature where
    overloadedMethod = assistantGetCurrentPage

#endif

-- method Assistant::get_n_pages
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_n_pages" gtk_assistant_get_n_pages :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO Int32

-- | Returns the number of pages in the /@assistant@/
-- 
-- /Since: 2.10/
assistantGetNPages ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m Int32
    -- ^ __Returns:__ the number of pages in the /@assistant@/
assistantGetNPages assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    result <- gtk_assistant_get_n_pages assistant'
    touchManagedPtr assistant
    return result

#if defined(ENABLE_OVERLOADING)
data AssistantGetNPagesMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsAssistant a) => O.MethodInfo AssistantGetNPagesMethodInfo a signature where
    overloadedMethod = assistantGetNPages

#endif

-- method Assistant::get_nth_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the index of a page in the @assistant,\n    or -1 to get the last page"
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

foreign import ccall "gtk_assistant_get_nth_page" gtk_assistant_get_nth_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the child widget contained in page number /@pageNum@/.
-- 
-- /Since: 2.10/
assistantGetNthPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> Int32
    -- ^ /@pageNum@/: the index of a page in the /@assistant@/,
    --     or -1 to get the last page
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the child widget, or 'P.Nothing'
    --     if /@pageNum@/ is out of bounds
assistantGetNthPage assistant pageNum = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    result <- gtk_assistant_get_nth_page assistant' pageNum
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr assistant
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data AssistantGetNthPageMethodInfo
instance (signature ~ (Int32 -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsAssistant a) => O.MethodInfo AssistantGetNthPageMethodInfo a signature where
    overloadedMethod = assistantGetNthPage

#endif

-- method Assistant::get_page_complete
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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

foreign import ccall "gtk_assistant_get_page_complete" gtk_assistant_get_page_complete :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Gets whether /@page@/ is complete.
-- 
-- /Since: 2.10/
assistantGetPageComplete ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@page@/ is complete.
assistantGetPageComplete assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_complete assistant' page'
    let result' = (/= 0) result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageCompleteMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageCompleteMethodInfo a signature where
    overloadedMethod = assistantGetPageComplete

#endif

-- method Assistant::get_page_has_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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

foreign import ccall "gtk_assistant_get_page_has_padding" gtk_assistant_get_page_has_padding :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Gets whether page has padding.
-- 
-- /Since: 3.18/
assistantGetPageHasPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@page@/ has padding
assistantGetPageHasPadding assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_has_padding assistant' page'
    let result' = (/= 0) result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageHasPaddingMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageHasPaddingMethodInfo a signature where
    overloadedMethod = assistantGetPageHasPadding

#endif

-- method Assistant::get_page_header_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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
--               (TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_page_header_image" gtk_assistant_get_page_header_image :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED assistantGetPageHeaderImage ["(Since version 3.2)","Since GTK+ 3.2, a header is no longer shown;","    add your header decoration to the page content instead."] #-}
-- | Gets the header image for /@page@/.
-- 
-- /Since: 2.10/
assistantGetPageHeaderImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ the header image for /@page@/,
    --     or 'P.Nothing' if there’s no header image for the page
assistantGetPageHeaderImage assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_header_image assistant' page'
    checkUnexpectedReturnNULL "assistantGetPageHeaderImage" result
    result' <- (newObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageHeaderImageMethodInfo
instance (signature ~ (b -> m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageHeaderImageMethodInfo a signature where
    overloadedMethod = assistantGetPageHeaderImage

#endif

-- method Assistant::get_page_side_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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
--               (TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_page_side_image" gtk_assistant_get_page_side_image :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED assistantGetPageSideImage ["(Since version 3.2)","Since GTK+ 3.2, sidebar images are not","    shown anymore."] #-}
-- | Gets the side image for /@page@/.
-- 
-- /Since: 2.10/
assistantGetPageSideImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ the side image for /@page@/,
    --     or 'P.Nothing' if there’s no side image for the page
assistantGetPageSideImage assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_side_image assistant' page'
    checkUnexpectedReturnNULL "assistantGetPageSideImage" result
    result' <- (newObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageSideImageMethodInfo
instance (signature ~ (b -> m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageSideImageMethodInfo a signature where
    overloadedMethod = assistantGetPageSideImage

#endif

-- method Assistant::get_page_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_page_title" gtk_assistant_get_page_title :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CString

-- | Gets the title for /@page@/.
-- 
-- /Since: 2.10/
assistantGetPageTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m T.Text
    -- ^ __Returns:__ the title for /@page@/
assistantGetPageTitle assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_title assistant' page'
    checkUnexpectedReturnNULL "assistantGetPageTitle" result
    result' <- cstringToText result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageTitleMethodInfo
instance (signature ~ (b -> m T.Text), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageTitleMethodInfo a signature where
    overloadedMethod = assistantGetPageTitle

#endif

-- method Assistant::get_page_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
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
--               (TInterface
--                  Name { namespace = "Gtk" , name = "AssistantPageType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_get_page_type" gtk_assistant_get_page_type :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CUInt

-- | Gets the page type of /@page@/.
-- 
-- /Since: 2.10/
assistantGetPageType ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> m Gtk.Enums.AssistantPageType
    -- ^ __Returns:__ the page type of /@page@/
assistantGetPageType assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_get_page_type assistant' page'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr assistant
    touchManagedPtr page
    return result'

#if defined(ENABLE_OVERLOADING)
data AssistantGetPageTypeMethodInfo
instance (signature ~ (b -> m Gtk.Enums.AssistantPageType), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantGetPageTypeMethodInfo a signature where
    overloadedMethod = assistantGetPageType

#endif

-- method Assistant::insert_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
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
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the index (starting at 0) at which to insert the page,\n    or -1 to append the page to the @assistant"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_insert_page" gtk_assistant_insert_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO Int32

-- | Inserts a page in the /@assistant@/ at a given position.
-- 
-- /Since: 2.10/
assistantInsertPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> Int32
    -- ^ /@position@/: the index (starting at 0) at which to insert the page,
    --     or -1 to append the page to the /@assistant@/
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the inserted page
assistantInsertPage assistant page position = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_insert_page assistant' page' position
    touchManagedPtr assistant
    touchManagedPtr page
    return result

#if defined(ENABLE_OVERLOADING)
data AssistantInsertPageMethodInfo
instance (signature ~ (b -> Int32 -> m Int32), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantInsertPageMethodInfo a signature where
    overloadedMethod = assistantInsertPage

#endif

-- method Assistant::next_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
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

foreign import ccall "gtk_assistant_next_page" gtk_assistant_next_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO ()

-- | Navigate to the next page.
-- 
-- It is a programming error to call this function when
-- there is no next page.
-- 
-- This function is for use when creating pages of the
-- @/GTK_ASSISTANT_PAGE_CUSTOM/@ type.
-- 
-- /Since: 3.0/
assistantNextPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m ()
assistantNextPage assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_next_page assistant'
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantNextPageMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantNextPageMethodInfo a signature where
    overloadedMethod = assistantNextPage

#endif

-- method Assistant::prepend_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_prepend_page" gtk_assistant_prepend_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Prepends a page to the /@assistant@/.
-- 
-- /Since: 2.10/
assistantPrependPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m Int32
    -- ^ __Returns:__ the index (starting at 0) of the inserted page
assistantPrependPage assistant page = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    result <- gtk_assistant_prepend_page assistant' page'
    touchManagedPtr assistant
    touchManagedPtr page
    return result

#if defined(ENABLE_OVERLOADING)
data AssistantPrependPageMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantPrependPageMethodInfo a signature where
    overloadedMethod = assistantPrependPage

#endif

-- method Assistant::previous_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
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

foreign import ccall "gtk_assistant_previous_page" gtk_assistant_previous_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO ()

-- | Navigate to the previous visited page.
-- 
-- It is a programming error to call this function when
-- no previous page is available.
-- 
-- This function is for use when creating pages of the
-- @/GTK_ASSISTANT_PAGE_CUSTOM/@ type.
-- 
-- /Since: 3.0/
assistantPreviousPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m ()
assistantPreviousPage assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_previous_page assistant'
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantPreviousPageMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantPreviousPageMethodInfo a signature where
    overloadedMethod = assistantPreviousPage

#endif

-- method Assistant::remove_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_assistant_remove_action_widget" gtk_assistant_remove_action_widget :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Removes a widget from the action area of a t'GI.Gtk.Objects.Assistant.Assistant'.
-- 
-- /Since: 2.10/
assistantRemoveActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m ()
assistantRemoveActionWidget assistant child = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    child' <- unsafeManagedPtrCastPtr child
    gtk_assistant_remove_action_widget assistant' child'
    touchManagedPtr assistant
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantRemoveActionWidgetMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantRemoveActionWidgetMethodInfo a signature where
    overloadedMethod = assistantRemoveActionWidget

#endif

-- method Assistant::remove_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the index of a page in the @assistant,\n    or -1 to remove the last page"
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

foreign import ccall "gtk_assistant_remove_page" gtk_assistant_remove_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO ()

-- | Removes the /@pageNum@/’s page from /@assistant@/.
-- 
-- /Since: 3.2/
assistantRemovePage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> Int32
    -- ^ /@pageNum@/: the index of a page in the /@assistant@/,
    --     or -1 to remove the last page
    -> m ()
assistantRemovePage assistant pageNum = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_remove_page assistant' pageNum
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantRemovePageMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantRemovePageMethodInfo a signature where
    overloadedMethod = assistantRemovePage

#endif

-- method Assistant::set_current_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "index of the page to switch to, starting from 0.\n    If negative, the last page will be used. If greater\n    than the number of pages in the @assistant, nothing\n    will be done."
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

foreign import ccall "gtk_assistant_set_current_page" gtk_assistant_set_current_page :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO ()

-- | Switches the page to /@pageNum@/.
-- 
-- Note that this will only be necessary in custom buttons,
-- as the /@assistant@/ flow can be set with
-- 'GI.Gtk.Objects.Assistant.assistantSetForwardPageFunc'.
-- 
-- /Since: 2.10/
assistantSetCurrentPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> Int32
    -- ^ /@pageNum@/: index of the page to switch to, starting from 0.
    --     If negative, the last page will be used. If greater
    --     than the number of pages in the /@assistant@/, nothing
    --     will be done.
    -> m ()
assistantSetCurrentPage assistant pageNum = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_set_current_page assistant' pageNum
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetCurrentPageMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantSetCurrentPageMethodInfo a signature where
    overloadedMethod = assistantSetCurrentPage

#endif

-- method Assistant::set_forward_page_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_func"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AssistantPageFunc" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkAssistantPageFunc, or %NULL\n    to use the default one"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 2
--           , argDestroy = 3
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data for @page_func"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destroy"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "gtk_assistant_set_forward_page_func" gtk_assistant_set_forward_page_func :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    FunPtr Gtk.Callbacks.C_AssistantPageFunc -> -- page_func : TInterface (Name {namespace = "Gtk", name = "AssistantPageFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Sets the page forwarding function to be /@pageFunc@/.
-- 
-- This function will be used to determine what will be
-- the next page when the user presses the forward button.
-- Setting /@pageFunc@/ to 'P.Nothing' will make the assistant to
-- use the default forward function, which just goes to the
-- next visible page.
-- 
-- /Since: 2.10/
assistantSetForwardPageFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> Maybe (Gtk.Callbacks.AssistantPageFunc)
    -- ^ /@pageFunc@/: the t'GI.Gtk.Callbacks.AssistantPageFunc', or 'P.Nothing'
    --     to use the default one
    -> m ()
assistantSetForwardPageFunc assistant pageFunc = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    maybePageFunc <- case pageFunc of
        Nothing -> return (castPtrToFunPtr nullPtr)
        Just jPageFunc -> do
            jPageFunc' <- Gtk.Callbacks.mk_AssistantPageFunc (Gtk.Callbacks.wrap_AssistantPageFunc Nothing (Gtk.Callbacks.drop_closures_AssistantPageFunc jPageFunc))
            return jPageFunc'
    let data_ = castFunPtrToPtr maybePageFunc
    let destroy = safeFreeFunPtrPtr
    gtk_assistant_set_forward_page_func assistant' maybePageFunc data_ destroy
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetForwardPageFuncMethodInfo
instance (signature ~ (Maybe (Gtk.Callbacks.AssistantPageFunc) -> m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantSetForwardPageFuncMethodInfo a signature where
    overloadedMethod = assistantSetForwardPageFunc

#endif

-- method Assistant::set_page_complete
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "complete"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the completeness status of the page"
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

foreign import ccall "gtk_assistant_set_page_complete" gtk_assistant_set_page_complete :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- complete : TBasicType TBoolean
    IO ()

-- | Sets whether /@page@/ contents are complete.
-- 
-- This will make /@assistant@/ update the buttons state
-- to be able to continue the task.
-- 
-- /Since: 2.10/
assistantSetPageComplete ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> Bool
    -- ^ /@complete@/: the completeness status of the page
    -> m ()
assistantSetPageComplete assistant page complete = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    let complete' = (fromIntegral . fromEnum) complete
    gtk_assistant_set_page_complete assistant' page' complete'
    touchManagedPtr assistant
    touchManagedPtr page
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageCompleteMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantSetPageCompleteMethodInfo a signature where
    overloadedMethod = assistantSetPageComplete

#endif

-- method Assistant::set_page_has_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "has_padding"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether this page has padding"
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

foreign import ccall "gtk_assistant_set_page_has_padding" gtk_assistant_set_page_has_padding :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- has_padding : TBasicType TBoolean
    IO ()

-- | Sets whether the assistant is adding padding around
-- the page.
-- 
-- /Since: 3.18/
assistantSetPageHasPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> Bool
    -- ^ /@hasPadding@/: whether this page has padding
    -> m ()
assistantSetPageHasPadding assistant page hasPadding = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    let hasPadding' = (fromIntegral . fromEnum) hasPadding
    gtk_assistant_set_page_has_padding assistant' page' hasPadding'
    touchManagedPtr assistant
    touchManagedPtr page
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageHasPaddingMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantSetPageHasPaddingMethodInfo a signature where
    overloadedMethod = assistantSetPageHasPadding

#endif

-- method Assistant::set_page_header_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new header image @page"
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

foreign import ccall "gtk_assistant_set_page_header_image" gtk_assistant_set_page_header_image :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

{-# DEPRECATED assistantSetPageHeaderImage ["(Since version 3.2)","Since GTK+ 3.2, a header is no longer shown;","    add your header decoration to the page content instead."] #-}
-- | Sets a header image for /@page@/.
-- 
-- /Since: 2.10/
assistantSetPageHeaderImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b, GdkPixbuf.Pixbuf.IsPixbuf c) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> Maybe (c)
    -- ^ /@pixbuf@/: the new header image /@page@/
    -> m ()
assistantSetPageHeaderImage assistant page pixbuf = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    maybePixbuf <- case pixbuf of
        Nothing -> return nullPtr
        Just jPixbuf -> do
            jPixbuf' <- unsafeManagedPtrCastPtr jPixbuf
            return jPixbuf'
    gtk_assistant_set_page_header_image assistant' page' maybePixbuf
    touchManagedPtr assistant
    touchManagedPtr page
    whenJust pixbuf touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageHeaderImageMethodInfo
instance (signature ~ (b -> Maybe (c) -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b, GdkPixbuf.Pixbuf.IsPixbuf c) => O.MethodInfo AssistantSetPageHeaderImageMethodInfo a signature where
    overloadedMethod = assistantSetPageHeaderImage

#endif

-- method Assistant::set_page_side_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new side image @page"
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

foreign import ccall "gtk_assistant_set_page_side_image" gtk_assistant_set_page_side_image :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

{-# DEPRECATED assistantSetPageSideImage ["(Since version 3.2)","Since GTK+ 3.2, sidebar images are not","    shown anymore."] #-}
-- | Sets a side image for /@page@/.
-- 
-- This image used to be displayed in the side area of the assistant
-- when /@page@/ is the current page.
-- 
-- /Since: 2.10/
assistantSetPageSideImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b, GdkPixbuf.Pixbuf.IsPixbuf c) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> Maybe (c)
    -- ^ /@pixbuf@/: the new side image /@page@/
    -> m ()
assistantSetPageSideImage assistant page pixbuf = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    maybePixbuf <- case pixbuf of
        Nothing -> return nullPtr
        Just jPixbuf -> do
            jPixbuf' <- unsafeManagedPtrCastPtr jPixbuf
            return jPixbuf'
    gtk_assistant_set_page_side_image assistant' page' maybePixbuf
    touchManagedPtr assistant
    touchManagedPtr page
    whenJust pixbuf touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageSideImageMethodInfo
instance (signature ~ (b -> Maybe (c) -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b, GdkPixbuf.Pixbuf.IsPixbuf c) => O.MethodInfo AssistantSetPageSideImageMethodInfo a signature where
    overloadedMethod = assistantSetPageSideImage

#endif

-- method Assistant::set_page_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new title for @page"
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

foreign import ccall "gtk_assistant_set_page_title" gtk_assistant_set_page_title :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

-- | Sets a title for /@page@/.
-- 
-- The title is displayed in the header area of the assistant
-- when /@page@/ is the current page.
-- 
-- /Since: 2.10/
assistantSetPageTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> T.Text
    -- ^ /@title@/: the new title for /@page@/
    -> m ()
assistantSetPageTitle assistant page title = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    title' <- textToCString title
    gtk_assistant_set_page_title assistant' page' title'
    touchManagedPtr assistant
    touchManagedPtr page
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageTitleMethodInfo
instance (signature ~ (b -> T.Text -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantSetPageTitleMethodInfo a signature where
    overloadedMethod = assistantSetPageTitle

#endif

-- method Assistant::set_page_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page of @assistant"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AssistantPageType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new type for @page"
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

foreign import ccall "gtk_assistant_set_page_type" gtk_assistant_set_page_type :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    Ptr Gtk.Widget.Widget ->                -- page : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "AssistantPageType"})
    IO ()

-- | Sets the page type for /@page@/.
-- 
-- The page type determines the page behavior in the /@assistant@/.
-- 
-- /Since: 2.10/
assistantSetPageType ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> b
    -- ^ /@page@/: a page of /@assistant@/
    -> Gtk.Enums.AssistantPageType
    -- ^ /@type@/: the new type for /@page@/
    -> m ()
assistantSetPageType assistant page type_ = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    page' <- unsafeManagedPtrCastPtr page
    let type_' = (fromIntegral . fromEnum) type_
    gtk_assistant_set_page_type assistant' page' type_'
    touchManagedPtr assistant
    touchManagedPtr page
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantSetPageTypeMethodInfo
instance (signature ~ (b -> Gtk.Enums.AssistantPageType -> m ()), MonadIO m, IsAssistant a, Gtk.Widget.IsWidget b) => O.MethodInfo AssistantSetPageTypeMethodInfo a signature where
    overloadedMethod = assistantSetPageType

#endif

-- method Assistant::update_buttons_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "assistant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Assistant" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAssistant" , sinceVersion = Nothing }
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

foreign import ccall "gtk_assistant_update_buttons_state" gtk_assistant_update_buttons_state :: 
    Ptr Assistant ->                        -- assistant : TInterface (Name {namespace = "Gtk", name = "Assistant"})
    IO ()

-- | Forces /@assistant@/ to recompute the buttons state.
-- 
-- GTK+ automatically takes care of this in most situations,
-- e.g. when the user goes to a different page, or when the
-- visibility or completeness of a page changes.
-- 
-- One situation where it can be necessary to call this
-- function is when changing a value on the current page
-- affects the future page flow of the assistant.
-- 
-- /Since: 2.10/
assistantUpdateButtonsState ::
    (B.CallStack.HasCallStack, MonadIO m, IsAssistant a) =>
    a
    -- ^ /@assistant@/: a t'GI.Gtk.Objects.Assistant.Assistant'
    -> m ()
assistantUpdateButtonsState assistant = liftIO $ do
    assistant' <- unsafeManagedPtrCastPtr assistant
    gtk_assistant_update_buttons_state assistant'
    touchManagedPtr assistant
    return ()

#if defined(ENABLE_OVERLOADING)
data AssistantUpdateButtonsStateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAssistant a) => O.MethodInfo AssistantUpdateButtonsStateMethodInfo a signature where
    overloadedMethod = assistantUpdateButtonsState

#endif

