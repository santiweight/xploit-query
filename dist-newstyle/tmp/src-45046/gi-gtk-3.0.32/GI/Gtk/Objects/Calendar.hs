{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.Calendar.Calendar' is a widget that displays a Gregorian calendar, one month
-- at a time. It can be created with 'GI.Gtk.Objects.Calendar.calendarNew'.
-- 
-- The month and year currently displayed can be altered with
-- 'GI.Gtk.Objects.Calendar.calendarSelectMonth'. The exact day can be selected from the
-- displayed month using 'GI.Gtk.Objects.Calendar.calendarSelectDay'.
-- 
-- To place a visual marker on a particular day, use 'GI.Gtk.Objects.Calendar.calendarMarkDay'
-- and to remove the marker, 'GI.Gtk.Objects.Calendar.calendarUnmarkDay'. Alternative, all
-- marks can be cleared with 'GI.Gtk.Objects.Calendar.calendarClearMarks'.
-- 
-- The way in which the calendar itself is displayed can be altered using
-- 'GI.Gtk.Objects.Calendar.calendarSetDisplayOptions'.
-- 
-- The selected date can be retrieved from a t'GI.Gtk.Objects.Calendar.Calendar' using
-- 'GI.Gtk.Objects.Calendar.calendarGetDate'.
-- 
-- Users should be aware that, although the Gregorian calendar is the
-- legal calendar in most countries, it was adopted progressively
-- between 1582 and 1929. Display before these dates is likely to be
-- historically incorrect.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Calendar
    ( 

-- * Exported types
    Calendar(..)                            ,
    IsCalendar                              ,
    toCalendar                              ,
    noCalendar                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCalendarMethod                   ,
#endif


-- ** clearMarks #method:clearMarks#

#if defined(ENABLE_OVERLOADING)
    CalendarClearMarksMethodInfo            ,
#endif
    calendarClearMarks                      ,


-- ** getDate #method:getDate#

#if defined(ENABLE_OVERLOADING)
    CalendarGetDateMethodInfo               ,
#endif
    calendarGetDate                         ,


-- ** getDayIsMarked #method:getDayIsMarked#

#if defined(ENABLE_OVERLOADING)
    CalendarGetDayIsMarkedMethodInfo        ,
#endif
    calendarGetDayIsMarked                  ,


-- ** getDetailHeightRows #method:getDetailHeightRows#

#if defined(ENABLE_OVERLOADING)
    CalendarGetDetailHeightRowsMethodInfo   ,
#endif
    calendarGetDetailHeightRows             ,


-- ** getDetailWidthChars #method:getDetailWidthChars#

#if defined(ENABLE_OVERLOADING)
    CalendarGetDetailWidthCharsMethodInfo   ,
#endif
    calendarGetDetailWidthChars             ,


-- ** getDisplayOptions #method:getDisplayOptions#

#if defined(ENABLE_OVERLOADING)
    CalendarGetDisplayOptionsMethodInfo     ,
#endif
    calendarGetDisplayOptions               ,


-- ** markDay #method:markDay#

#if defined(ENABLE_OVERLOADING)
    CalendarMarkDayMethodInfo               ,
#endif
    calendarMarkDay                         ,


-- ** new #method:new#

    calendarNew                             ,


-- ** selectDay #method:selectDay#

#if defined(ENABLE_OVERLOADING)
    CalendarSelectDayMethodInfo             ,
#endif
    calendarSelectDay                       ,


-- ** selectMonth #method:selectMonth#

#if defined(ENABLE_OVERLOADING)
    CalendarSelectMonthMethodInfo           ,
#endif
    calendarSelectMonth                     ,


-- ** setDetailFunc #method:setDetailFunc#

#if defined(ENABLE_OVERLOADING)
    CalendarSetDetailFuncMethodInfo         ,
#endif
    calendarSetDetailFunc                   ,


-- ** setDetailHeightRows #method:setDetailHeightRows#

#if defined(ENABLE_OVERLOADING)
    CalendarSetDetailHeightRowsMethodInfo   ,
#endif
    calendarSetDetailHeightRows             ,


-- ** setDetailWidthChars #method:setDetailWidthChars#

#if defined(ENABLE_OVERLOADING)
    CalendarSetDetailWidthCharsMethodInfo   ,
#endif
    calendarSetDetailWidthChars             ,


-- ** setDisplayOptions #method:setDisplayOptions#

#if defined(ENABLE_OVERLOADING)
    CalendarSetDisplayOptionsMethodInfo     ,
#endif
    calendarSetDisplayOptions               ,


-- ** unmarkDay #method:unmarkDay#

#if defined(ENABLE_OVERLOADING)
    CalendarUnmarkDayMethodInfo             ,
#endif
    calendarUnmarkDay                       ,




 -- * Properties
-- ** day #attr:day#
-- | The selected day (as a number between 1 and 31, or 0
-- to unselect the currently selected day).
-- This property gets initially set to the current day.

#if defined(ENABLE_OVERLOADING)
    CalendarDayPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarDay                             ,
#endif
    constructCalendarDay                    ,
    getCalendarDay                          ,
    setCalendarDay                          ,


-- ** detailHeightRows #attr:detailHeightRows#
-- | Height of a detail cell, in rows.
-- A value of 0 allows any width. See 'GI.Gtk.Objects.Calendar.calendarSetDetailFunc'.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    CalendarDetailHeightRowsPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarDetailHeightRows                ,
#endif
    constructCalendarDetailHeightRows       ,
    getCalendarDetailHeightRows             ,
    setCalendarDetailHeightRows             ,


-- ** detailWidthChars #attr:detailWidthChars#
-- | Width of a detail cell, in characters.
-- A value of 0 allows any width. See 'GI.Gtk.Objects.Calendar.calendarSetDetailFunc'.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    CalendarDetailWidthCharsPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarDetailWidthChars                ,
#endif
    constructCalendarDetailWidthChars       ,
    getCalendarDetailWidthChars             ,
    setCalendarDetailWidthChars             ,


-- ** month #attr:month#
-- | The selected month (as a number between 0 and 11).
-- This property gets initially set to the current month.

#if defined(ENABLE_OVERLOADING)
    CalendarMonthPropertyInfo               ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarMonth                           ,
#endif
    constructCalendarMonth                  ,
    getCalendarMonth                        ,
    setCalendarMonth                        ,


-- ** noMonthChange #attr:noMonthChange#
-- | Determines whether the selected month can be changed.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    CalendarNoMonthChangePropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarNoMonthChange                   ,
#endif
    constructCalendarNoMonthChange          ,
    getCalendarNoMonthChange                ,
    setCalendarNoMonthChange                ,


-- ** showDayNames #attr:showDayNames#
-- | Determines whether day names are displayed.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    CalendarShowDayNamesPropertyInfo        ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarShowDayNames                    ,
#endif
    constructCalendarShowDayNames           ,
    getCalendarShowDayNames                 ,
    setCalendarShowDayNames                 ,


-- ** showDetails #attr:showDetails#
-- | Determines whether details are shown directly in the widget, or if they are
-- available only as tooltip. When this property is set days with details are
-- marked.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    CalendarShowDetailsPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarShowDetails                     ,
#endif
    constructCalendarShowDetails            ,
    getCalendarShowDetails                  ,
    setCalendarShowDetails                  ,


-- ** showHeading #attr:showHeading#
-- | Determines whether a heading is displayed.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    CalendarShowHeadingPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarShowHeading                     ,
#endif
    constructCalendarShowHeading            ,
    getCalendarShowHeading                  ,
    setCalendarShowHeading                  ,


-- ** showWeekNumbers #attr:showWeekNumbers#
-- | Determines whether week numbers are displayed.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    CalendarShowWeekNumbersPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarShowWeekNumbers                 ,
#endif
    constructCalendarShowWeekNumbers        ,
    getCalendarShowWeekNumbers              ,
    setCalendarShowWeekNumbers              ,


-- ** year #attr:year#
-- | The selected year.
-- This property gets initially set to the current year.

#if defined(ENABLE_OVERLOADING)
    CalendarYearPropertyInfo                ,
#endif
#if defined(ENABLE_OVERLOADING)
    calendarYear                            ,
#endif
    constructCalendarYear                   ,
    getCalendarYear                         ,
    setCalendarYear                         ,




 -- * Signals
-- ** daySelected #signal:daySelected#

    C_CalendarDaySelectedCallback           ,
    CalendarDaySelectedCallback             ,
#if defined(ENABLE_OVERLOADING)
    CalendarDaySelectedSignalInfo           ,
#endif
    afterCalendarDaySelected                ,
    genClosure_CalendarDaySelected          ,
    mk_CalendarDaySelectedCallback          ,
    noCalendarDaySelectedCallback           ,
    onCalendarDaySelected                   ,
    wrap_CalendarDaySelectedCallback        ,


-- ** daySelectedDoubleClick #signal:daySelectedDoubleClick#

    C_CalendarDaySelectedDoubleClickCallback,
    CalendarDaySelectedDoubleClickCallback  ,
#if defined(ENABLE_OVERLOADING)
    CalendarDaySelectedDoubleClickSignalInfo,
#endif
    afterCalendarDaySelectedDoubleClick     ,
    genClosure_CalendarDaySelectedDoubleClick,
    mk_CalendarDaySelectedDoubleClickCallback,
    noCalendarDaySelectedDoubleClickCallback,
    onCalendarDaySelectedDoubleClick        ,
    wrap_CalendarDaySelectedDoubleClickCallback,


-- ** monthChanged #signal:monthChanged#

    C_CalendarMonthChangedCallback          ,
    CalendarMonthChangedCallback            ,
#if defined(ENABLE_OVERLOADING)
    CalendarMonthChangedSignalInfo          ,
#endif
    afterCalendarMonthChanged               ,
    genClosure_CalendarMonthChanged         ,
    mk_CalendarMonthChangedCallback         ,
    noCalendarMonthChangedCallback          ,
    onCalendarMonthChanged                  ,
    wrap_CalendarMonthChangedCallback       ,


-- ** nextMonth #signal:nextMonth#

    C_CalendarNextMonthCallback             ,
    CalendarNextMonthCallback               ,
#if defined(ENABLE_OVERLOADING)
    CalendarNextMonthSignalInfo             ,
#endif
    afterCalendarNextMonth                  ,
    genClosure_CalendarNextMonth            ,
    mk_CalendarNextMonthCallback            ,
    noCalendarNextMonthCallback             ,
    onCalendarNextMonth                     ,
    wrap_CalendarNextMonthCallback          ,


-- ** nextYear #signal:nextYear#

    C_CalendarNextYearCallback              ,
    CalendarNextYearCallback                ,
#if defined(ENABLE_OVERLOADING)
    CalendarNextYearSignalInfo              ,
#endif
    afterCalendarNextYear                   ,
    genClosure_CalendarNextYear             ,
    mk_CalendarNextYearCallback             ,
    noCalendarNextYearCallback              ,
    onCalendarNextYear                      ,
    wrap_CalendarNextYearCallback           ,


-- ** prevMonth #signal:prevMonth#

    C_CalendarPrevMonthCallback             ,
    CalendarPrevMonthCallback               ,
#if defined(ENABLE_OVERLOADING)
    CalendarPrevMonthSignalInfo             ,
#endif
    afterCalendarPrevMonth                  ,
    genClosure_CalendarPrevMonth            ,
    mk_CalendarPrevMonthCallback            ,
    noCalendarPrevMonthCallback             ,
    onCalendarPrevMonth                     ,
    wrap_CalendarPrevMonthCallback          ,


-- ** prevYear #signal:prevYear#

    C_CalendarPrevYearCallback              ,
    CalendarPrevYearCallback                ,
#if defined(ENABLE_OVERLOADING)
    CalendarPrevYearSignalInfo              ,
#endif
    afterCalendarPrevYear                   ,
    genClosure_CalendarPrevYear             ,
    mk_CalendarPrevYearCallback             ,
    noCalendarPrevYearCallback              ,
    onCalendarPrevYear                      ,
    wrap_CalendarPrevYearCallback           ,




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
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Calendar = Calendar (ManagedPtr Calendar)
    deriving (Eq)
foreign import ccall "gtk_calendar_get_type"
    c_gtk_calendar_get_type :: IO GType

instance GObject Calendar where
    gobjectType = c_gtk_calendar_get_type
    

-- | Convert 'Calendar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Calendar where
    toGValue o = do
        gtype <- c_gtk_calendar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Calendar)
        B.ManagedPtr.newObject Calendar ptr
        
    

-- | Type class for types which can be safely cast to `Calendar`, for instance with `toCalendar`.
class (GObject o, O.IsDescendantOf Calendar o) => IsCalendar o
instance (GObject o, O.IsDescendantOf Calendar o) => IsCalendar o

instance O.HasParentTypes Calendar
type instance O.ParentTypes Calendar = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Calendar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCalendar :: (MonadIO m, IsCalendar o) => o -> m Calendar
toCalendar = liftIO . unsafeCastTo Calendar

-- | A convenience alias for `Nothing` :: `Maybe` `Calendar`.
noCalendar :: Maybe Calendar
noCalendar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCalendarMethod (t :: Symbol) (o :: *) :: * where
    ResolveCalendarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveCalendarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveCalendarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCalendarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveCalendarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveCalendarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveCalendarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveCalendarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCalendarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCalendarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveCalendarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveCalendarMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveCalendarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveCalendarMethod "clearMarks" o = CalendarClearMarksMethodInfo
    ResolveCalendarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveCalendarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCalendarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveCalendarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveCalendarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCalendarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCalendarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCalendarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveCalendarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveCalendarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveCalendarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveCalendarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveCalendarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveCalendarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveCalendarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveCalendarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveCalendarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveCalendarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveCalendarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveCalendarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveCalendarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveCalendarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveCalendarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveCalendarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveCalendarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveCalendarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveCalendarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveCalendarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveCalendarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveCalendarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveCalendarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveCalendarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveCalendarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveCalendarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveCalendarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveCalendarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveCalendarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveCalendarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveCalendarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveCalendarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveCalendarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveCalendarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveCalendarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCalendarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveCalendarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCalendarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCalendarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveCalendarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveCalendarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveCalendarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveCalendarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveCalendarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveCalendarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveCalendarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveCalendarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveCalendarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveCalendarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveCalendarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveCalendarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveCalendarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveCalendarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveCalendarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveCalendarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveCalendarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveCalendarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveCalendarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveCalendarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCalendarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveCalendarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveCalendarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveCalendarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveCalendarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveCalendarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveCalendarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveCalendarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveCalendarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveCalendarMethod "markDay" o = CalendarMarkDayMethodInfo
    ResolveCalendarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveCalendarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveCalendarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveCalendarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveCalendarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveCalendarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveCalendarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveCalendarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveCalendarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCalendarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCalendarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveCalendarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveCalendarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveCalendarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveCalendarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveCalendarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCalendarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveCalendarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveCalendarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveCalendarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveCalendarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveCalendarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveCalendarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveCalendarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveCalendarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveCalendarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCalendarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCalendarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveCalendarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveCalendarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveCalendarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveCalendarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveCalendarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveCalendarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveCalendarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveCalendarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveCalendarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveCalendarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCalendarMethod "selectDay" o = CalendarSelectDayMethodInfo
    ResolveCalendarMethod "selectMonth" o = CalendarSelectMonthMethodInfo
    ResolveCalendarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveCalendarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveCalendarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveCalendarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveCalendarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveCalendarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveCalendarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveCalendarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveCalendarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveCalendarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCalendarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCalendarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveCalendarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveCalendarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveCalendarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCalendarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveCalendarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveCalendarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveCalendarMethod "unmarkDay" o = CalendarUnmarkDayMethodInfo
    ResolveCalendarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveCalendarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveCalendarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCalendarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveCalendarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveCalendarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCalendarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveCalendarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveCalendarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveCalendarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveCalendarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveCalendarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveCalendarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveCalendarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveCalendarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveCalendarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveCalendarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveCalendarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveCalendarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveCalendarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveCalendarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveCalendarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveCalendarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCalendarMethod "getDate" o = CalendarGetDateMethodInfo
    ResolveCalendarMethod "getDayIsMarked" o = CalendarGetDayIsMarkedMethodInfo
    ResolveCalendarMethod "getDetailHeightRows" o = CalendarGetDetailHeightRowsMethodInfo
    ResolveCalendarMethod "getDetailWidthChars" o = CalendarGetDetailWidthCharsMethodInfo
    ResolveCalendarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveCalendarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveCalendarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveCalendarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveCalendarMethod "getDisplayOptions" o = CalendarGetDisplayOptionsMethodInfo
    ResolveCalendarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveCalendarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveCalendarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveCalendarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveCalendarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveCalendarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveCalendarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveCalendarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveCalendarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveCalendarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveCalendarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveCalendarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCalendarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveCalendarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveCalendarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveCalendarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveCalendarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveCalendarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveCalendarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveCalendarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveCalendarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveCalendarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveCalendarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveCalendarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveCalendarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveCalendarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveCalendarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveCalendarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveCalendarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveCalendarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveCalendarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveCalendarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveCalendarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveCalendarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveCalendarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveCalendarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCalendarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCalendarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveCalendarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveCalendarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveCalendarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveCalendarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveCalendarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveCalendarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveCalendarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveCalendarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveCalendarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveCalendarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveCalendarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveCalendarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveCalendarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveCalendarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveCalendarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveCalendarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveCalendarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveCalendarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveCalendarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveCalendarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveCalendarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveCalendarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveCalendarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveCalendarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveCalendarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveCalendarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveCalendarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveCalendarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveCalendarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveCalendarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCalendarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveCalendarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveCalendarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveCalendarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveCalendarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveCalendarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCalendarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCalendarMethod "setDetailFunc" o = CalendarSetDetailFuncMethodInfo
    ResolveCalendarMethod "setDetailHeightRows" o = CalendarSetDetailHeightRowsMethodInfo
    ResolveCalendarMethod "setDetailWidthChars" o = CalendarSetDetailWidthCharsMethodInfo
    ResolveCalendarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveCalendarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveCalendarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveCalendarMethod "setDisplayOptions" o = CalendarSetDisplayOptionsMethodInfo
    ResolveCalendarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveCalendarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveCalendarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveCalendarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveCalendarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveCalendarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveCalendarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveCalendarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveCalendarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveCalendarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveCalendarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveCalendarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveCalendarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveCalendarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveCalendarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveCalendarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveCalendarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveCalendarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveCalendarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveCalendarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveCalendarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveCalendarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveCalendarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCalendarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveCalendarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveCalendarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveCalendarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveCalendarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveCalendarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveCalendarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveCalendarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveCalendarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveCalendarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveCalendarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveCalendarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveCalendarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveCalendarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveCalendarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveCalendarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveCalendarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveCalendarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveCalendarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCalendarMethod t Calendar, O.MethodInfo info Calendar p) => OL.IsLabel t (Calendar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Calendar::day-selected
-- | Emitted when the user selects a day.
type CalendarDaySelectedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarDaySelectedCallback`@.
noCalendarDaySelectedCallback :: Maybe CalendarDaySelectedCallback
noCalendarDaySelectedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarDaySelectedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarDaySelectedCallback`.
foreign import ccall "wrapper"
    mk_CalendarDaySelectedCallback :: C_CalendarDaySelectedCallback -> IO (FunPtr C_CalendarDaySelectedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarDaySelected :: MonadIO m => CalendarDaySelectedCallback -> m (GClosure C_CalendarDaySelectedCallback)
genClosure_CalendarDaySelected cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedCallback cb
    mk_CalendarDaySelectedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarDaySelectedCallback` into a `C_CalendarDaySelectedCallback`.
wrap_CalendarDaySelectedCallback ::
    CalendarDaySelectedCallback ->
    C_CalendarDaySelectedCallback
wrap_CalendarDaySelectedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [daySelected](#signal:daySelected) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #daySelected callback
-- @
-- 
-- 
onCalendarDaySelected :: (IsCalendar a, MonadIO m) => a -> CalendarDaySelectedCallback -> m SignalHandlerId
onCalendarDaySelected obj cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedCallback cb
    cb'' <- mk_CalendarDaySelectedCallback cb'
    connectSignalFunPtr obj "day-selected" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [daySelected](#signal:daySelected) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #daySelected callback
-- @
-- 
-- 
afterCalendarDaySelected :: (IsCalendar a, MonadIO m) => a -> CalendarDaySelectedCallback -> m SignalHandlerId
afterCalendarDaySelected obj cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedCallback cb
    cb'' <- mk_CalendarDaySelectedCallback cb'
    connectSignalFunPtr obj "day-selected" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarDaySelectedSignalInfo
instance SignalInfo CalendarDaySelectedSignalInfo where
    type HaskellCallbackType CalendarDaySelectedSignalInfo = CalendarDaySelectedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarDaySelectedCallback cb
        cb'' <- mk_CalendarDaySelectedCallback cb'
        connectSignalFunPtr obj "day-selected" cb'' connectMode detail

#endif

-- signal Calendar::day-selected-double-click
-- | Emitted when the user double-clicks a day.
type CalendarDaySelectedDoubleClickCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarDaySelectedDoubleClickCallback`@.
noCalendarDaySelectedDoubleClickCallback :: Maybe CalendarDaySelectedDoubleClickCallback
noCalendarDaySelectedDoubleClickCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarDaySelectedDoubleClickCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarDaySelectedDoubleClickCallback`.
foreign import ccall "wrapper"
    mk_CalendarDaySelectedDoubleClickCallback :: C_CalendarDaySelectedDoubleClickCallback -> IO (FunPtr C_CalendarDaySelectedDoubleClickCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarDaySelectedDoubleClick :: MonadIO m => CalendarDaySelectedDoubleClickCallback -> m (GClosure C_CalendarDaySelectedDoubleClickCallback)
genClosure_CalendarDaySelectedDoubleClick cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedDoubleClickCallback cb
    mk_CalendarDaySelectedDoubleClickCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarDaySelectedDoubleClickCallback` into a `C_CalendarDaySelectedDoubleClickCallback`.
wrap_CalendarDaySelectedDoubleClickCallback ::
    CalendarDaySelectedDoubleClickCallback ->
    C_CalendarDaySelectedDoubleClickCallback
wrap_CalendarDaySelectedDoubleClickCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [daySelectedDoubleClick](#signal:daySelectedDoubleClick) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #daySelectedDoubleClick callback
-- @
-- 
-- 
onCalendarDaySelectedDoubleClick :: (IsCalendar a, MonadIO m) => a -> CalendarDaySelectedDoubleClickCallback -> m SignalHandlerId
onCalendarDaySelectedDoubleClick obj cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedDoubleClickCallback cb
    cb'' <- mk_CalendarDaySelectedDoubleClickCallback cb'
    connectSignalFunPtr obj "day-selected-double-click" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [daySelectedDoubleClick](#signal:daySelectedDoubleClick) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #daySelectedDoubleClick callback
-- @
-- 
-- 
afterCalendarDaySelectedDoubleClick :: (IsCalendar a, MonadIO m) => a -> CalendarDaySelectedDoubleClickCallback -> m SignalHandlerId
afterCalendarDaySelectedDoubleClick obj cb = liftIO $ do
    let cb' = wrap_CalendarDaySelectedDoubleClickCallback cb
    cb'' <- mk_CalendarDaySelectedDoubleClickCallback cb'
    connectSignalFunPtr obj "day-selected-double-click" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarDaySelectedDoubleClickSignalInfo
instance SignalInfo CalendarDaySelectedDoubleClickSignalInfo where
    type HaskellCallbackType CalendarDaySelectedDoubleClickSignalInfo = CalendarDaySelectedDoubleClickCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarDaySelectedDoubleClickCallback cb
        cb'' <- mk_CalendarDaySelectedDoubleClickCallback cb'
        connectSignalFunPtr obj "day-selected-double-click" cb'' connectMode detail

#endif

-- signal Calendar::month-changed
-- | Emitted when the user clicks a button to change the selected month on a
-- calendar.
type CalendarMonthChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarMonthChangedCallback`@.
noCalendarMonthChangedCallback :: Maybe CalendarMonthChangedCallback
noCalendarMonthChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarMonthChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarMonthChangedCallback`.
foreign import ccall "wrapper"
    mk_CalendarMonthChangedCallback :: C_CalendarMonthChangedCallback -> IO (FunPtr C_CalendarMonthChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarMonthChanged :: MonadIO m => CalendarMonthChangedCallback -> m (GClosure C_CalendarMonthChangedCallback)
genClosure_CalendarMonthChanged cb = liftIO $ do
    let cb' = wrap_CalendarMonthChangedCallback cb
    mk_CalendarMonthChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarMonthChangedCallback` into a `C_CalendarMonthChangedCallback`.
wrap_CalendarMonthChangedCallback ::
    CalendarMonthChangedCallback ->
    C_CalendarMonthChangedCallback
wrap_CalendarMonthChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [monthChanged](#signal:monthChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #monthChanged callback
-- @
-- 
-- 
onCalendarMonthChanged :: (IsCalendar a, MonadIO m) => a -> CalendarMonthChangedCallback -> m SignalHandlerId
onCalendarMonthChanged obj cb = liftIO $ do
    let cb' = wrap_CalendarMonthChangedCallback cb
    cb'' <- mk_CalendarMonthChangedCallback cb'
    connectSignalFunPtr obj "month-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [monthChanged](#signal:monthChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #monthChanged callback
-- @
-- 
-- 
afterCalendarMonthChanged :: (IsCalendar a, MonadIO m) => a -> CalendarMonthChangedCallback -> m SignalHandlerId
afterCalendarMonthChanged obj cb = liftIO $ do
    let cb' = wrap_CalendarMonthChangedCallback cb
    cb'' <- mk_CalendarMonthChangedCallback cb'
    connectSignalFunPtr obj "month-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarMonthChangedSignalInfo
instance SignalInfo CalendarMonthChangedSignalInfo where
    type HaskellCallbackType CalendarMonthChangedSignalInfo = CalendarMonthChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarMonthChangedCallback cb
        cb'' <- mk_CalendarMonthChangedCallback cb'
        connectSignalFunPtr obj "month-changed" cb'' connectMode detail

#endif

-- signal Calendar::next-month
-- | Emitted when the user switched to the next month.
type CalendarNextMonthCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarNextMonthCallback`@.
noCalendarNextMonthCallback :: Maybe CalendarNextMonthCallback
noCalendarNextMonthCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarNextMonthCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarNextMonthCallback`.
foreign import ccall "wrapper"
    mk_CalendarNextMonthCallback :: C_CalendarNextMonthCallback -> IO (FunPtr C_CalendarNextMonthCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarNextMonth :: MonadIO m => CalendarNextMonthCallback -> m (GClosure C_CalendarNextMonthCallback)
genClosure_CalendarNextMonth cb = liftIO $ do
    let cb' = wrap_CalendarNextMonthCallback cb
    mk_CalendarNextMonthCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarNextMonthCallback` into a `C_CalendarNextMonthCallback`.
wrap_CalendarNextMonthCallback ::
    CalendarNextMonthCallback ->
    C_CalendarNextMonthCallback
wrap_CalendarNextMonthCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [nextMonth](#signal:nextMonth) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #nextMonth callback
-- @
-- 
-- 
onCalendarNextMonth :: (IsCalendar a, MonadIO m) => a -> CalendarNextMonthCallback -> m SignalHandlerId
onCalendarNextMonth obj cb = liftIO $ do
    let cb' = wrap_CalendarNextMonthCallback cb
    cb'' <- mk_CalendarNextMonthCallback cb'
    connectSignalFunPtr obj "next-month" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [nextMonth](#signal:nextMonth) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #nextMonth callback
-- @
-- 
-- 
afterCalendarNextMonth :: (IsCalendar a, MonadIO m) => a -> CalendarNextMonthCallback -> m SignalHandlerId
afterCalendarNextMonth obj cb = liftIO $ do
    let cb' = wrap_CalendarNextMonthCallback cb
    cb'' <- mk_CalendarNextMonthCallback cb'
    connectSignalFunPtr obj "next-month" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarNextMonthSignalInfo
instance SignalInfo CalendarNextMonthSignalInfo where
    type HaskellCallbackType CalendarNextMonthSignalInfo = CalendarNextMonthCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarNextMonthCallback cb
        cb'' <- mk_CalendarNextMonthCallback cb'
        connectSignalFunPtr obj "next-month" cb'' connectMode detail

#endif

-- signal Calendar::next-year
-- | Emitted when user switched to the next year.
type CalendarNextYearCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarNextYearCallback`@.
noCalendarNextYearCallback :: Maybe CalendarNextYearCallback
noCalendarNextYearCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarNextYearCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarNextYearCallback`.
foreign import ccall "wrapper"
    mk_CalendarNextYearCallback :: C_CalendarNextYearCallback -> IO (FunPtr C_CalendarNextYearCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarNextYear :: MonadIO m => CalendarNextYearCallback -> m (GClosure C_CalendarNextYearCallback)
genClosure_CalendarNextYear cb = liftIO $ do
    let cb' = wrap_CalendarNextYearCallback cb
    mk_CalendarNextYearCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarNextYearCallback` into a `C_CalendarNextYearCallback`.
wrap_CalendarNextYearCallback ::
    CalendarNextYearCallback ->
    C_CalendarNextYearCallback
wrap_CalendarNextYearCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [nextYear](#signal:nextYear) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #nextYear callback
-- @
-- 
-- 
onCalendarNextYear :: (IsCalendar a, MonadIO m) => a -> CalendarNextYearCallback -> m SignalHandlerId
onCalendarNextYear obj cb = liftIO $ do
    let cb' = wrap_CalendarNextYearCallback cb
    cb'' <- mk_CalendarNextYearCallback cb'
    connectSignalFunPtr obj "next-year" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [nextYear](#signal:nextYear) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #nextYear callback
-- @
-- 
-- 
afterCalendarNextYear :: (IsCalendar a, MonadIO m) => a -> CalendarNextYearCallback -> m SignalHandlerId
afterCalendarNextYear obj cb = liftIO $ do
    let cb' = wrap_CalendarNextYearCallback cb
    cb'' <- mk_CalendarNextYearCallback cb'
    connectSignalFunPtr obj "next-year" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarNextYearSignalInfo
instance SignalInfo CalendarNextYearSignalInfo where
    type HaskellCallbackType CalendarNextYearSignalInfo = CalendarNextYearCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarNextYearCallback cb
        cb'' <- mk_CalendarNextYearCallback cb'
        connectSignalFunPtr obj "next-year" cb'' connectMode detail

#endif

-- signal Calendar::prev-month
-- | Emitted when the user switched to the previous month.
type CalendarPrevMonthCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarPrevMonthCallback`@.
noCalendarPrevMonthCallback :: Maybe CalendarPrevMonthCallback
noCalendarPrevMonthCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarPrevMonthCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarPrevMonthCallback`.
foreign import ccall "wrapper"
    mk_CalendarPrevMonthCallback :: C_CalendarPrevMonthCallback -> IO (FunPtr C_CalendarPrevMonthCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarPrevMonth :: MonadIO m => CalendarPrevMonthCallback -> m (GClosure C_CalendarPrevMonthCallback)
genClosure_CalendarPrevMonth cb = liftIO $ do
    let cb' = wrap_CalendarPrevMonthCallback cb
    mk_CalendarPrevMonthCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarPrevMonthCallback` into a `C_CalendarPrevMonthCallback`.
wrap_CalendarPrevMonthCallback ::
    CalendarPrevMonthCallback ->
    C_CalendarPrevMonthCallback
wrap_CalendarPrevMonthCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [prevMonth](#signal:prevMonth) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #prevMonth callback
-- @
-- 
-- 
onCalendarPrevMonth :: (IsCalendar a, MonadIO m) => a -> CalendarPrevMonthCallback -> m SignalHandlerId
onCalendarPrevMonth obj cb = liftIO $ do
    let cb' = wrap_CalendarPrevMonthCallback cb
    cb'' <- mk_CalendarPrevMonthCallback cb'
    connectSignalFunPtr obj "prev-month" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [prevMonth](#signal:prevMonth) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #prevMonth callback
-- @
-- 
-- 
afterCalendarPrevMonth :: (IsCalendar a, MonadIO m) => a -> CalendarPrevMonthCallback -> m SignalHandlerId
afterCalendarPrevMonth obj cb = liftIO $ do
    let cb' = wrap_CalendarPrevMonthCallback cb
    cb'' <- mk_CalendarPrevMonthCallback cb'
    connectSignalFunPtr obj "prev-month" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarPrevMonthSignalInfo
instance SignalInfo CalendarPrevMonthSignalInfo where
    type HaskellCallbackType CalendarPrevMonthSignalInfo = CalendarPrevMonthCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarPrevMonthCallback cb
        cb'' <- mk_CalendarPrevMonthCallback cb'
        connectSignalFunPtr obj "prev-month" cb'' connectMode detail

#endif

-- signal Calendar::prev-year
-- | Emitted when user switched to the previous year.
type CalendarPrevYearCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CalendarPrevYearCallback`@.
noCalendarPrevYearCallback :: Maybe CalendarPrevYearCallback
noCalendarPrevYearCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CalendarPrevYearCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CalendarPrevYearCallback`.
foreign import ccall "wrapper"
    mk_CalendarPrevYearCallback :: C_CalendarPrevYearCallback -> IO (FunPtr C_CalendarPrevYearCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CalendarPrevYear :: MonadIO m => CalendarPrevYearCallback -> m (GClosure C_CalendarPrevYearCallback)
genClosure_CalendarPrevYear cb = liftIO $ do
    let cb' = wrap_CalendarPrevYearCallback cb
    mk_CalendarPrevYearCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CalendarPrevYearCallback` into a `C_CalendarPrevYearCallback`.
wrap_CalendarPrevYearCallback ::
    CalendarPrevYearCallback ->
    C_CalendarPrevYearCallback
wrap_CalendarPrevYearCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [prevYear](#signal:prevYear) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' calendar #prevYear callback
-- @
-- 
-- 
onCalendarPrevYear :: (IsCalendar a, MonadIO m) => a -> CalendarPrevYearCallback -> m SignalHandlerId
onCalendarPrevYear obj cb = liftIO $ do
    let cb' = wrap_CalendarPrevYearCallback cb
    cb'' <- mk_CalendarPrevYearCallback cb'
    connectSignalFunPtr obj "prev-year" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [prevYear](#signal:prevYear) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' calendar #prevYear callback
-- @
-- 
-- 
afterCalendarPrevYear :: (IsCalendar a, MonadIO m) => a -> CalendarPrevYearCallback -> m SignalHandlerId
afterCalendarPrevYear obj cb = liftIO $ do
    let cb' = wrap_CalendarPrevYearCallback cb
    cb'' <- mk_CalendarPrevYearCallback cb'
    connectSignalFunPtr obj "prev-year" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CalendarPrevYearSignalInfo
instance SignalInfo CalendarPrevYearSignalInfo where
    type HaskellCallbackType CalendarPrevYearSignalInfo = CalendarPrevYearCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CalendarPrevYearCallback cb
        cb'' <- mk_CalendarPrevYearCallback cb'
        connectSignalFunPtr obj "prev-year" cb'' connectMode detail

#endif

-- VVV Prop "day"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@day@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #day
-- @
getCalendarDay :: (MonadIO m, IsCalendar o) => o -> m Int32
getCalendarDay obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "day"

-- | Set the value of the “@day@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #day 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarDay :: (MonadIO m, IsCalendar o) => o -> Int32 -> m ()
setCalendarDay obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "day" val

-- | Construct a `GValueConstruct` with valid value for the “@day@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarDay :: (IsCalendar o) => Int32 -> IO (GValueConstruct o)
constructCalendarDay val = B.Properties.constructObjectPropertyInt32 "day" val

#if defined(ENABLE_OVERLOADING)
data CalendarDayPropertyInfo
instance AttrInfo CalendarDayPropertyInfo where
    type AttrAllowedOps CalendarDayPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarDayPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarDayPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CalendarDayPropertyInfo = (~) Int32
    type AttrTransferType CalendarDayPropertyInfo = Int32
    type AttrGetType CalendarDayPropertyInfo = Int32
    type AttrLabel CalendarDayPropertyInfo = "day"
    type AttrOrigin CalendarDayPropertyInfo = Calendar
    attrGet = getCalendarDay
    attrSet = setCalendarDay
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarDay
    attrClear = undefined
#endif

-- VVV Prop "detail-height-rows"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@detail-height-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #detailHeightRows
-- @
getCalendarDetailHeightRows :: (MonadIO m, IsCalendar o) => o -> m Int32
getCalendarDetailHeightRows obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "detail-height-rows"

-- | Set the value of the “@detail-height-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #detailHeightRows 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarDetailHeightRows :: (MonadIO m, IsCalendar o) => o -> Int32 -> m ()
setCalendarDetailHeightRows obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "detail-height-rows" val

-- | Construct a `GValueConstruct` with valid value for the “@detail-height-rows@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarDetailHeightRows :: (IsCalendar o) => Int32 -> IO (GValueConstruct o)
constructCalendarDetailHeightRows val = B.Properties.constructObjectPropertyInt32 "detail-height-rows" val

#if defined(ENABLE_OVERLOADING)
data CalendarDetailHeightRowsPropertyInfo
instance AttrInfo CalendarDetailHeightRowsPropertyInfo where
    type AttrAllowedOps CalendarDetailHeightRowsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarDetailHeightRowsPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarDetailHeightRowsPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CalendarDetailHeightRowsPropertyInfo = (~) Int32
    type AttrTransferType CalendarDetailHeightRowsPropertyInfo = Int32
    type AttrGetType CalendarDetailHeightRowsPropertyInfo = Int32
    type AttrLabel CalendarDetailHeightRowsPropertyInfo = "detail-height-rows"
    type AttrOrigin CalendarDetailHeightRowsPropertyInfo = Calendar
    attrGet = getCalendarDetailHeightRows
    attrSet = setCalendarDetailHeightRows
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarDetailHeightRows
    attrClear = undefined
#endif

-- VVV Prop "detail-width-chars"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@detail-width-chars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #detailWidthChars
-- @
getCalendarDetailWidthChars :: (MonadIO m, IsCalendar o) => o -> m Int32
getCalendarDetailWidthChars obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "detail-width-chars"

-- | Set the value of the “@detail-width-chars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #detailWidthChars 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarDetailWidthChars :: (MonadIO m, IsCalendar o) => o -> Int32 -> m ()
setCalendarDetailWidthChars obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "detail-width-chars" val

-- | Construct a `GValueConstruct` with valid value for the “@detail-width-chars@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarDetailWidthChars :: (IsCalendar o) => Int32 -> IO (GValueConstruct o)
constructCalendarDetailWidthChars val = B.Properties.constructObjectPropertyInt32 "detail-width-chars" val

#if defined(ENABLE_OVERLOADING)
data CalendarDetailWidthCharsPropertyInfo
instance AttrInfo CalendarDetailWidthCharsPropertyInfo where
    type AttrAllowedOps CalendarDetailWidthCharsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarDetailWidthCharsPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarDetailWidthCharsPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CalendarDetailWidthCharsPropertyInfo = (~) Int32
    type AttrTransferType CalendarDetailWidthCharsPropertyInfo = Int32
    type AttrGetType CalendarDetailWidthCharsPropertyInfo = Int32
    type AttrLabel CalendarDetailWidthCharsPropertyInfo = "detail-width-chars"
    type AttrOrigin CalendarDetailWidthCharsPropertyInfo = Calendar
    attrGet = getCalendarDetailWidthChars
    attrSet = setCalendarDetailWidthChars
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarDetailWidthChars
    attrClear = undefined
#endif

-- VVV Prop "month"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@month@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #month
-- @
getCalendarMonth :: (MonadIO m, IsCalendar o) => o -> m Int32
getCalendarMonth obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "month"

-- | Set the value of the “@month@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #month 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarMonth :: (MonadIO m, IsCalendar o) => o -> Int32 -> m ()
setCalendarMonth obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "month" val

-- | Construct a `GValueConstruct` with valid value for the “@month@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarMonth :: (IsCalendar o) => Int32 -> IO (GValueConstruct o)
constructCalendarMonth val = B.Properties.constructObjectPropertyInt32 "month" val

#if defined(ENABLE_OVERLOADING)
data CalendarMonthPropertyInfo
instance AttrInfo CalendarMonthPropertyInfo where
    type AttrAllowedOps CalendarMonthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarMonthPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarMonthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CalendarMonthPropertyInfo = (~) Int32
    type AttrTransferType CalendarMonthPropertyInfo = Int32
    type AttrGetType CalendarMonthPropertyInfo = Int32
    type AttrLabel CalendarMonthPropertyInfo = "month"
    type AttrOrigin CalendarMonthPropertyInfo = Calendar
    attrGet = getCalendarMonth
    attrSet = setCalendarMonth
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarMonth
    attrClear = undefined
#endif

-- VVV Prop "no-month-change"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@no-month-change@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #noMonthChange
-- @
getCalendarNoMonthChange :: (MonadIO m, IsCalendar o) => o -> m Bool
getCalendarNoMonthChange obj = liftIO $ B.Properties.getObjectPropertyBool obj "no-month-change"

-- | Set the value of the “@no-month-change@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #noMonthChange 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarNoMonthChange :: (MonadIO m, IsCalendar o) => o -> Bool -> m ()
setCalendarNoMonthChange obj val = liftIO $ B.Properties.setObjectPropertyBool obj "no-month-change" val

-- | Construct a `GValueConstruct` with valid value for the “@no-month-change@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarNoMonthChange :: (IsCalendar o) => Bool -> IO (GValueConstruct o)
constructCalendarNoMonthChange val = B.Properties.constructObjectPropertyBool "no-month-change" val

#if defined(ENABLE_OVERLOADING)
data CalendarNoMonthChangePropertyInfo
instance AttrInfo CalendarNoMonthChangePropertyInfo where
    type AttrAllowedOps CalendarNoMonthChangePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarNoMonthChangePropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarNoMonthChangePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CalendarNoMonthChangePropertyInfo = (~) Bool
    type AttrTransferType CalendarNoMonthChangePropertyInfo = Bool
    type AttrGetType CalendarNoMonthChangePropertyInfo = Bool
    type AttrLabel CalendarNoMonthChangePropertyInfo = "no-month-change"
    type AttrOrigin CalendarNoMonthChangePropertyInfo = Calendar
    attrGet = getCalendarNoMonthChange
    attrSet = setCalendarNoMonthChange
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarNoMonthChange
    attrClear = undefined
#endif

-- VVV Prop "show-day-names"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-day-names@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #showDayNames
-- @
getCalendarShowDayNames :: (MonadIO m, IsCalendar o) => o -> m Bool
getCalendarShowDayNames obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-day-names"

-- | Set the value of the “@show-day-names@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #showDayNames 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarShowDayNames :: (MonadIO m, IsCalendar o) => o -> Bool -> m ()
setCalendarShowDayNames obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-day-names" val

-- | Construct a `GValueConstruct` with valid value for the “@show-day-names@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarShowDayNames :: (IsCalendar o) => Bool -> IO (GValueConstruct o)
constructCalendarShowDayNames val = B.Properties.constructObjectPropertyBool "show-day-names" val

#if defined(ENABLE_OVERLOADING)
data CalendarShowDayNamesPropertyInfo
instance AttrInfo CalendarShowDayNamesPropertyInfo where
    type AttrAllowedOps CalendarShowDayNamesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarShowDayNamesPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarShowDayNamesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CalendarShowDayNamesPropertyInfo = (~) Bool
    type AttrTransferType CalendarShowDayNamesPropertyInfo = Bool
    type AttrGetType CalendarShowDayNamesPropertyInfo = Bool
    type AttrLabel CalendarShowDayNamesPropertyInfo = "show-day-names"
    type AttrOrigin CalendarShowDayNamesPropertyInfo = Calendar
    attrGet = getCalendarShowDayNames
    attrSet = setCalendarShowDayNames
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarShowDayNames
    attrClear = undefined
#endif

-- VVV Prop "show-details"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-details@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #showDetails
-- @
getCalendarShowDetails :: (MonadIO m, IsCalendar o) => o -> m Bool
getCalendarShowDetails obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-details"

-- | Set the value of the “@show-details@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #showDetails 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarShowDetails :: (MonadIO m, IsCalendar o) => o -> Bool -> m ()
setCalendarShowDetails obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-details" val

-- | Construct a `GValueConstruct` with valid value for the “@show-details@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarShowDetails :: (IsCalendar o) => Bool -> IO (GValueConstruct o)
constructCalendarShowDetails val = B.Properties.constructObjectPropertyBool "show-details" val

#if defined(ENABLE_OVERLOADING)
data CalendarShowDetailsPropertyInfo
instance AttrInfo CalendarShowDetailsPropertyInfo where
    type AttrAllowedOps CalendarShowDetailsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarShowDetailsPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarShowDetailsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CalendarShowDetailsPropertyInfo = (~) Bool
    type AttrTransferType CalendarShowDetailsPropertyInfo = Bool
    type AttrGetType CalendarShowDetailsPropertyInfo = Bool
    type AttrLabel CalendarShowDetailsPropertyInfo = "show-details"
    type AttrOrigin CalendarShowDetailsPropertyInfo = Calendar
    attrGet = getCalendarShowDetails
    attrSet = setCalendarShowDetails
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarShowDetails
    attrClear = undefined
#endif

-- VVV Prop "show-heading"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-heading@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #showHeading
-- @
getCalendarShowHeading :: (MonadIO m, IsCalendar o) => o -> m Bool
getCalendarShowHeading obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-heading"

-- | Set the value of the “@show-heading@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #showHeading 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarShowHeading :: (MonadIO m, IsCalendar o) => o -> Bool -> m ()
setCalendarShowHeading obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-heading" val

-- | Construct a `GValueConstruct` with valid value for the “@show-heading@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarShowHeading :: (IsCalendar o) => Bool -> IO (GValueConstruct o)
constructCalendarShowHeading val = B.Properties.constructObjectPropertyBool "show-heading" val

#if defined(ENABLE_OVERLOADING)
data CalendarShowHeadingPropertyInfo
instance AttrInfo CalendarShowHeadingPropertyInfo where
    type AttrAllowedOps CalendarShowHeadingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarShowHeadingPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarShowHeadingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CalendarShowHeadingPropertyInfo = (~) Bool
    type AttrTransferType CalendarShowHeadingPropertyInfo = Bool
    type AttrGetType CalendarShowHeadingPropertyInfo = Bool
    type AttrLabel CalendarShowHeadingPropertyInfo = "show-heading"
    type AttrOrigin CalendarShowHeadingPropertyInfo = Calendar
    attrGet = getCalendarShowHeading
    attrSet = setCalendarShowHeading
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarShowHeading
    attrClear = undefined
#endif

-- VVV Prop "show-week-numbers"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-week-numbers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #showWeekNumbers
-- @
getCalendarShowWeekNumbers :: (MonadIO m, IsCalendar o) => o -> m Bool
getCalendarShowWeekNumbers obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-week-numbers"

-- | Set the value of the “@show-week-numbers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #showWeekNumbers 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarShowWeekNumbers :: (MonadIO m, IsCalendar o) => o -> Bool -> m ()
setCalendarShowWeekNumbers obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-week-numbers" val

-- | Construct a `GValueConstruct` with valid value for the “@show-week-numbers@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarShowWeekNumbers :: (IsCalendar o) => Bool -> IO (GValueConstruct o)
constructCalendarShowWeekNumbers val = B.Properties.constructObjectPropertyBool "show-week-numbers" val

#if defined(ENABLE_OVERLOADING)
data CalendarShowWeekNumbersPropertyInfo
instance AttrInfo CalendarShowWeekNumbersPropertyInfo where
    type AttrAllowedOps CalendarShowWeekNumbersPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarShowWeekNumbersPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarShowWeekNumbersPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CalendarShowWeekNumbersPropertyInfo = (~) Bool
    type AttrTransferType CalendarShowWeekNumbersPropertyInfo = Bool
    type AttrGetType CalendarShowWeekNumbersPropertyInfo = Bool
    type AttrLabel CalendarShowWeekNumbersPropertyInfo = "show-week-numbers"
    type AttrOrigin CalendarShowWeekNumbersPropertyInfo = Calendar
    attrGet = getCalendarShowWeekNumbers
    attrSet = setCalendarShowWeekNumbers
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarShowWeekNumbers
    attrClear = undefined
#endif

-- VVV Prop "year"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@year@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' calendar #year
-- @
getCalendarYear :: (MonadIO m, IsCalendar o) => o -> m Int32
getCalendarYear obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "year"

-- | Set the value of the “@year@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' calendar [ #year 'Data.GI.Base.Attributes.:=' value ]
-- @
setCalendarYear :: (MonadIO m, IsCalendar o) => o -> Int32 -> m ()
setCalendarYear obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "year" val

-- | Construct a `GValueConstruct` with valid value for the “@year@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCalendarYear :: (IsCalendar o) => Int32 -> IO (GValueConstruct o)
constructCalendarYear val = B.Properties.constructObjectPropertyInt32 "year" val

#if defined(ENABLE_OVERLOADING)
data CalendarYearPropertyInfo
instance AttrInfo CalendarYearPropertyInfo where
    type AttrAllowedOps CalendarYearPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CalendarYearPropertyInfo = IsCalendar
    type AttrSetTypeConstraint CalendarYearPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CalendarYearPropertyInfo = (~) Int32
    type AttrTransferType CalendarYearPropertyInfo = Int32
    type AttrGetType CalendarYearPropertyInfo = Int32
    type AttrLabel CalendarYearPropertyInfo = "year"
    type AttrOrigin CalendarYearPropertyInfo = Calendar
    attrGet = getCalendarYear
    attrSet = setCalendarYear
    attrTransfer _ v = do
        return v
    attrConstruct = constructCalendarYear
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Calendar
type instance O.AttributeList Calendar = CalendarAttributeList
type CalendarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("day", CalendarDayPropertyInfo), '("detailHeightRows", CalendarDetailHeightRowsPropertyInfo), '("detailWidthChars", CalendarDetailWidthCharsPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("month", CalendarMonthPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noMonthChange", CalendarNoMonthChangePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showDayNames", CalendarShowDayNamesPropertyInfo), '("showDetails", CalendarShowDetailsPropertyInfo), '("showHeading", CalendarShowHeadingPropertyInfo), '("showWeekNumbers", CalendarShowWeekNumbersPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("year", CalendarYearPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
calendarDay :: AttrLabelProxy "day"
calendarDay = AttrLabelProxy

calendarDetailHeightRows :: AttrLabelProxy "detailHeightRows"
calendarDetailHeightRows = AttrLabelProxy

calendarDetailWidthChars :: AttrLabelProxy "detailWidthChars"
calendarDetailWidthChars = AttrLabelProxy

calendarMonth :: AttrLabelProxy "month"
calendarMonth = AttrLabelProxy

calendarNoMonthChange :: AttrLabelProxy "noMonthChange"
calendarNoMonthChange = AttrLabelProxy

calendarShowDayNames :: AttrLabelProxy "showDayNames"
calendarShowDayNames = AttrLabelProxy

calendarShowDetails :: AttrLabelProxy "showDetails"
calendarShowDetails = AttrLabelProxy

calendarShowHeading :: AttrLabelProxy "showHeading"
calendarShowHeading = AttrLabelProxy

calendarShowWeekNumbers :: AttrLabelProxy "showWeekNumbers"
calendarShowWeekNumbers = AttrLabelProxy

calendarYear :: AttrLabelProxy "year"
calendarYear = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Calendar = CalendarSignalList
type CalendarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("daySelected", CalendarDaySelectedSignalInfo), '("daySelectedDoubleClick", CalendarDaySelectedDoubleClickSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("monthChanged", CalendarMonthChangedSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("nextMonth", CalendarNextMonthSignalInfo), '("nextYear", CalendarNextYearSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("prevMonth", CalendarPrevMonthSignalInfo), '("prevYear", CalendarPrevYearSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Calendar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Calendar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_calendar_new" gtk_calendar_new :: 
    IO (Ptr Calendar)

-- | Creates a new calendar, with the current date being selected.
calendarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Calendar
    -- ^ __Returns:__ a newly t'GI.Gtk.Objects.Calendar.Calendar' widget
calendarNew  = liftIO $ do
    result <- gtk_calendar_new
    checkUnexpectedReturnNULL "calendarNew" result
    result' <- (newObject Calendar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Calendar::clear_marks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_calendar_clear_marks" gtk_calendar_clear_marks :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    IO ()

-- | Remove all visual markers.
calendarClearMarks ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> m ()
calendarClearMarks calendar = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_clear_marks calendar'
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarClearMarksMethodInfo
instance (signature ~ (m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarClearMarksMethodInfo a signature where
    overloadedMethod = calendarClearMarks

#endif

-- method Calendar::get_date
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "year"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the year as a decimal\n    number (e.g. 2011), or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "month"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the month number\n    (between 0 and 11), or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "day"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the day number (between\n    1 and 31), or %NULL"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_calendar_get_date" gtk_calendar_get_date :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Ptr Word32 ->                           -- year : TBasicType TUInt
    Ptr Word32 ->                           -- month : TBasicType TUInt
    Ptr Word32 ->                           -- day : TBasicType TUInt
    IO ()

-- | Obtains the selected date from a t'GI.Gtk.Objects.Calendar.Calendar'.
calendarGetDate ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> m ((Word32, Word32, Word32))
calendarGetDate calendar = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    year <- allocMem :: IO (Ptr Word32)
    month <- allocMem :: IO (Ptr Word32)
    day <- allocMem :: IO (Ptr Word32)
    gtk_calendar_get_date calendar' year month day
    year' <- peek year
    month' <- peek month
    day' <- peek day
    touchManagedPtr calendar
    freeMem year
    freeMem month
    freeMem day
    return (year', month', day')

#if defined(ENABLE_OVERLOADING)
data CalendarGetDateMethodInfo
instance (signature ~ (m ((Word32, Word32, Word32))), MonadIO m, IsCalendar a) => O.MethodInfo CalendarGetDateMethodInfo a signature where
    overloadedMethod = calendarGetDate

#endif

-- method Calendar::get_day_is_marked
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "day"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the day number between 1 and 31."
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

foreign import ccall "gtk_calendar_get_day_is_marked" gtk_calendar_get_day_is_marked :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Word32 ->                               -- day : TBasicType TUInt
    IO CInt

-- | Returns if the /@day@/ of the /@calendar@/ is already marked.
-- 
-- /Since: 3.0/
calendarGetDayIsMarked ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> Word32
    -- ^ /@day@/: the day number between 1 and 31.
    -> m Bool
    -- ^ __Returns:__ whether the day is marked.
calendarGetDayIsMarked calendar day = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    result <- gtk_calendar_get_day_is_marked calendar' day
    let result' = (/= 0) result
    touchManagedPtr calendar
    return result'

#if defined(ENABLE_OVERLOADING)
data CalendarGetDayIsMarkedMethodInfo
instance (signature ~ (Word32 -> m Bool), MonadIO m, IsCalendar a) => O.MethodInfo CalendarGetDayIsMarkedMethodInfo a signature where
    overloadedMethod = calendarGetDayIsMarked

#endif

-- method Calendar::get_detail_height_rows
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
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

foreign import ccall "gtk_calendar_get_detail_height_rows" gtk_calendar_get_detail_height_rows :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    IO Int32

-- | Queries the height of detail cells, in rows.
-- See t'GI.Gtk.Objects.Calendar.Calendar':@/detail-width-chars/@.
-- 
-- /Since: 2.14/
calendarGetDetailHeightRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> m Int32
    -- ^ __Returns:__ The height of detail cells, in rows.
calendarGetDetailHeightRows calendar = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    result <- gtk_calendar_get_detail_height_rows calendar'
    touchManagedPtr calendar
    return result

#if defined(ENABLE_OVERLOADING)
data CalendarGetDetailHeightRowsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsCalendar a) => O.MethodInfo CalendarGetDetailHeightRowsMethodInfo a signature where
    overloadedMethod = calendarGetDetailHeightRows

#endif

-- method Calendar::get_detail_width_chars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
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

foreign import ccall "gtk_calendar_get_detail_width_chars" gtk_calendar_get_detail_width_chars :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    IO Int32

-- | Queries the width of detail cells, in characters.
-- See t'GI.Gtk.Objects.Calendar.Calendar':@/detail-width-chars/@.
-- 
-- /Since: 2.14/
calendarGetDetailWidthChars ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> m Int32
    -- ^ __Returns:__ The width of detail cells, in characters.
calendarGetDetailWidthChars calendar = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    result <- gtk_calendar_get_detail_width_chars calendar'
    touchManagedPtr calendar
    return result

#if defined(ENABLE_OVERLOADING)
data CalendarGetDetailWidthCharsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsCalendar a) => O.MethodInfo CalendarGetDetailWidthCharsMethodInfo a signature where
    overloadedMethod = calendarGetDetailWidthChars

#endif

-- method Calendar::get_display_options
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
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
--                  Name { namespace = "Gtk" , name = "CalendarDisplayOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_calendar_get_display_options" gtk_calendar_get_display_options :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    IO CUInt

-- | Returns the current display options of /@calendar@/.
-- 
-- /Since: 2.4/
calendarGetDisplayOptions ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> m [Gtk.Flags.CalendarDisplayOptions]
    -- ^ __Returns:__ the display options.
calendarGetDisplayOptions calendar = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    result <- gtk_calendar_get_display_options calendar'
    let result' = wordToGFlags result
    touchManagedPtr calendar
    return result'

#if defined(ENABLE_OVERLOADING)
data CalendarGetDisplayOptionsMethodInfo
instance (signature ~ (m [Gtk.Flags.CalendarDisplayOptions]), MonadIO m, IsCalendar a) => O.MethodInfo CalendarGetDisplayOptionsMethodInfo a signature where
    overloadedMethod = calendarGetDisplayOptions

#endif

-- method Calendar::mark_day
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "day"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the day number to mark between 1 and 31."
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

foreign import ccall "gtk_calendar_mark_day" gtk_calendar_mark_day :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Word32 ->                               -- day : TBasicType TUInt
    IO ()

-- | Places a visual marker on a particular day.
calendarMarkDay ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> Word32
    -- ^ /@day@/: the day number to mark between 1 and 31.
    -> m ()
calendarMarkDay calendar day = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_mark_day calendar' day
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarMarkDayMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarMarkDayMethodInfo a signature where
    overloadedMethod = calendarMarkDay

#endif

-- method Calendar::select_day
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "day"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the day number between 1 and 31, or 0 to unselect\n  the currently selected day."
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

foreign import ccall "gtk_calendar_select_day" gtk_calendar_select_day :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Word32 ->                               -- day : TBasicType TUInt
    IO ()

-- | Selects a day from the current month.
calendarSelectDay ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> Word32
    -- ^ /@day@/: the day number between 1 and 31, or 0 to unselect
    --   the currently selected day.
    -> m ()
calendarSelectDay calendar day = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_select_day calendar' day
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSelectDayMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSelectDayMethodInfo a signature where
    overloadedMethod = calendarSelectDay

#endif

-- method Calendar::select_month
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "month"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a month number between 0 and 11."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "year"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the year the month is in."
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

foreign import ccall "gtk_calendar_select_month" gtk_calendar_select_month :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Word32 ->                               -- month : TBasicType TUInt
    Word32 ->                               -- year : TBasicType TUInt
    IO ()

-- | Shifts the calendar to a different month.
calendarSelectMonth ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> Word32
    -- ^ /@month@/: a month number between 0 and 11.
    -> Word32
    -- ^ /@year@/: the year the month is in.
    -> m ()
calendarSelectMonth calendar month year = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_select_month calendar' month year
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSelectMonthMethodInfo
instance (signature ~ (Word32 -> Word32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSelectMonthMethodInfo a signature where
    overloadedMethod = calendarSelectMonth

#endif

-- method Calendar::set_detail_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "func"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CalendarDetailFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a function providing details for each day."
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
--                 { rawDocText = Just "data to pass to @func invokations."
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
--                 { rawDocText = Just "a function for releasing @data."
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

foreign import ccall "gtk_calendar_set_detail_func" gtk_calendar_set_detail_func :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    FunPtr Gtk.Callbacks.C_CalendarDetailFunc -> -- func : TInterface (Name {namespace = "Gtk", name = "CalendarDetailFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Installs a function which provides Pango markup with detail information
-- for each day. Examples for such details are holidays or appointments. That
-- information is shown below each day when t'GI.Gtk.Objects.Calendar.Calendar':@/show-details/@ is set.
-- A tooltip containing with full detail information is provided, if the entire
-- text should not fit into the details area, or if t'GI.Gtk.Objects.Calendar.Calendar':@/show-details/@
-- is not set.
-- 
-- The size of the details area can be restricted by setting the
-- t'GI.Gtk.Objects.Calendar.Calendar':@/detail-width-chars/@ and t'GI.Gtk.Objects.Calendar.Calendar':@/detail-height-rows/@
-- properties.
-- 
-- /Since: 2.14/
calendarSetDetailFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> Gtk.Callbacks.CalendarDetailFunc
    -- ^ /@func@/: a function providing details for each day.
    -> m ()
calendarSetDetailFunc calendar func = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    func' <- Gtk.Callbacks.mk_CalendarDetailFunc (Gtk.Callbacks.wrap_CalendarDetailFunc Nothing (Gtk.Callbacks.drop_closures_CalendarDetailFunc func))
    let data_ = castFunPtrToPtr func'
    let destroy = safeFreeFunPtrPtr
    gtk_calendar_set_detail_func calendar' func' data_ destroy
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSetDetailFuncMethodInfo
instance (signature ~ (Gtk.Callbacks.CalendarDetailFunc -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSetDetailFuncMethodInfo a signature where
    overloadedMethod = calendarSetDetailFunc

#endif

-- method Calendar::set_detail_height_rows
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rows"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "detail height in rows."
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

foreign import ccall "gtk_calendar_set_detail_height_rows" gtk_calendar_set_detail_height_rows :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Int32 ->                                -- rows : TBasicType TInt
    IO ()

-- | Updates the height of detail cells.
-- See t'GI.Gtk.Objects.Calendar.Calendar':@/detail-height-rows/@.
-- 
-- /Since: 2.14/
calendarSetDetailHeightRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> Int32
    -- ^ /@rows@/: detail height in rows.
    -> m ()
calendarSetDetailHeightRows calendar rows = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_set_detail_height_rows calendar' rows
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSetDetailHeightRowsMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSetDetailHeightRowsMethodInfo a signature where
    overloadedMethod = calendarSetDetailHeightRows

#endif

-- method Calendar::set_detail_width_chars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "detail width in characters."
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

foreign import ccall "gtk_calendar_set_detail_width_chars" gtk_calendar_set_detail_width_chars :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Int32 ->                                -- chars : TBasicType TInt
    IO ()

-- | Updates the width of detail cells.
-- See t'GI.Gtk.Objects.Calendar.Calendar':@/detail-width-chars/@.
-- 
-- /Since: 2.14/
calendarSetDetailWidthChars ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> Int32
    -- ^ /@chars@/: detail width in characters.
    -> m ()
calendarSetDetailWidthChars calendar chars = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_set_detail_width_chars calendar' chars
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSetDetailWidthCharsMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSetDetailWidthCharsMethodInfo a signature where
    overloadedMethod = calendarSetDetailWidthChars

#endif

-- method Calendar::set_display_options
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "flags"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CalendarDisplayOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the display options to set"
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

foreign import ccall "gtk_calendar_set_display_options" gtk_calendar_set_display_options :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    CUInt ->                                -- flags : TInterface (Name {namespace = "Gtk", name = "CalendarDisplayOptions"})
    IO ()

-- | Sets display options (whether to display the heading and the month
-- headings).
-- 
-- /Since: 2.4/
calendarSetDisplayOptions ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'
    -> [Gtk.Flags.CalendarDisplayOptions]
    -- ^ /@flags@/: the display options to set
    -> m ()
calendarSetDisplayOptions calendar flags = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    let flags' = gflagsToWord flags
    gtk_calendar_set_display_options calendar' flags'
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarSetDisplayOptionsMethodInfo
instance (signature ~ ([Gtk.Flags.CalendarDisplayOptions] -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarSetDisplayOptionsMethodInfo a signature where
    overloadedMethod = calendarSetDisplayOptions

#endif

-- method Calendar::unmark_day
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "calendar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Calendar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCalendar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "day"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the day number to unmark between 1 and 31."
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

foreign import ccall "gtk_calendar_unmark_day" gtk_calendar_unmark_day :: 
    Ptr Calendar ->                         -- calendar : TInterface (Name {namespace = "Gtk", name = "Calendar"})
    Word32 ->                               -- day : TBasicType TUInt
    IO ()

-- | Removes the visual marker from a particular day.
calendarUnmarkDay ::
    (B.CallStack.HasCallStack, MonadIO m, IsCalendar a) =>
    a
    -- ^ /@calendar@/: a t'GI.Gtk.Objects.Calendar.Calendar'.
    -> Word32
    -- ^ /@day@/: the day number to unmark between 1 and 31.
    -> m ()
calendarUnmarkDay calendar day = liftIO $ do
    calendar' <- unsafeManagedPtrCastPtr calendar
    gtk_calendar_unmark_day calendar' day
    touchManagedPtr calendar
    return ()

#if defined(ENABLE_OVERLOADING)
data CalendarUnmarkDayMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsCalendar a) => O.MethodInfo CalendarUnmarkDayMethodInfo a signature where
    overloadedMethod = calendarUnmarkDay

#endif

