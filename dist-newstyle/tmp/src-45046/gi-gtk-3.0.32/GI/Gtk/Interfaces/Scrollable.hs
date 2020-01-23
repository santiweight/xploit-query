{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Interfaces.Scrollable.Scrollable' is an interface that is implemented by widgets with native
-- scrolling ability.
-- 
-- To implement this interface you should override the
-- t'GI.Gtk.Interfaces.Scrollable.Scrollable':@/hadjustment/@ and t'GI.Gtk.Interfaces.Scrollable.Scrollable':@/vadjustment/@ properties.
-- 
-- == Creating a scrollable widget
-- 
-- All scrollable widgets should do the following.
-- 
-- * When a parent widget sets the scrollable child widget’s adjustments,
-- the widget should populate the adjustments’
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/lower/@, t'GI.Gtk.Objects.Adjustment.Adjustment':@/upper/@,
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/step-increment/@, t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-increment/@ and
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-size/@ properties and connect to the
-- [valueChanged]("GI.Gtk.Objects.Adjustment#signal:valueChanged") signal.
-- * Because its preferred size is the size for a fully expanded widget,
-- the scrollable widget must be able to cope with underallocations.
-- This means that it must accept any value passed to its
-- t'GI.Gtk.Structs.WidgetClass.WidgetClass'.@/size_allocate/@() function.
-- * When the parent allocates space to the scrollable child widget,
-- the widget should update the adjustments’ properties with new values.
-- * When any of the adjustments emits the [valueChanged]("GI.Gtk.Objects.Adjustment#signal:valueChanged") signal,
-- the scrollable widget should scroll its contents.
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.Scrollable
    ( 

-- * Exported types
    Scrollable(..)                          ,
    noScrollable                            ,
    IsScrollable                            ,
    toScrollable                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScrollableMethod                 ,
#endif


-- ** getBorder #method:getBorder#

#if defined(ENABLE_OVERLOADING)
    ScrollableGetBorderMethodInfo           ,
#endif
    scrollableGetBorder                     ,


-- ** getHadjustment #method:getHadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrollableGetHadjustmentMethodInfo      ,
#endif
    scrollableGetHadjustment                ,


-- ** getHscrollPolicy #method:getHscrollPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrollableGetHscrollPolicyMethodInfo    ,
#endif
    scrollableGetHscrollPolicy              ,


-- ** getVadjustment #method:getVadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrollableGetVadjustmentMethodInfo      ,
#endif
    scrollableGetVadjustment                ,


-- ** getVscrollPolicy #method:getVscrollPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrollableGetVscrollPolicyMethodInfo    ,
#endif
    scrollableGetVscrollPolicy              ,


-- ** setHadjustment #method:setHadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrollableSetHadjustmentMethodInfo      ,
#endif
    scrollableSetHadjustment                ,


-- ** setHscrollPolicy #method:setHscrollPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrollableSetHscrollPolicyMethodInfo    ,
#endif
    scrollableSetHscrollPolicy              ,


-- ** setVadjustment #method:setVadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrollableSetVadjustmentMethodInfo      ,
#endif
    scrollableSetVadjustment                ,


-- ** setVscrollPolicy #method:setVscrollPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrollableSetVscrollPolicyMethodInfo    ,
#endif
    scrollableSetVscrollPolicy              ,




 -- * Properties
-- ** hadjustment #attr:hadjustment#
-- | Horizontal t'GI.Gtk.Objects.Adjustment.Adjustment' of the scrollable widget. This adjustment is
-- shared between the scrollable widget and its parent.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrollableHadjustmentPropertyInfo       ,
#endif
    clearScrollableHadjustment              ,
    constructScrollableHadjustment          ,
    getScrollableHadjustment                ,
#if defined(ENABLE_OVERLOADING)
    scrollableHadjustment                   ,
#endif
    setScrollableHadjustment                ,


-- ** hscrollPolicy #attr:hscrollPolicy#
-- | Determines whether horizontal scrolling should start once the scrollable
-- widget is allocated less than its minimum width or less than its natural width.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrollableHscrollPolicyPropertyInfo     ,
#endif
    constructScrollableHscrollPolicy        ,
    getScrollableHscrollPolicy              ,
#if defined(ENABLE_OVERLOADING)
    scrollableHscrollPolicy                 ,
#endif
    setScrollableHscrollPolicy              ,


-- ** vadjustment #attr:vadjustment#
-- | Verical t'GI.Gtk.Objects.Adjustment.Adjustment' of the scrollable widget. This adjustment is shared
-- between the scrollable widget and its parent.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrollableVadjustmentPropertyInfo       ,
#endif
    clearScrollableVadjustment              ,
    constructScrollableVadjustment          ,
    getScrollableVadjustment                ,
#if defined(ENABLE_OVERLOADING)
    scrollableVadjustment                   ,
#endif
    setScrollableVadjustment                ,


-- ** vscrollPolicy #attr:vscrollPolicy#
-- | Determines whether vertical scrolling should start once the scrollable
-- widget is allocated less than its minimum height or less than its natural height.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrollableVscrollPolicyPropertyInfo     ,
#endif
    constructScrollableVscrollPolicy        ,
    getScrollableVscrollPolicy              ,
#if defined(ENABLE_OVERLOADING)
    scrollableVscrollPolicy                 ,
#endif
    setScrollableVscrollPolicy              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Structs.Border as Gtk.Border

-- interface Scrollable 
-- | Memory-managed wrapper type.
newtype Scrollable = Scrollable (ManagedPtr Scrollable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `Scrollable`.
noScrollable :: Maybe Scrollable
noScrollable = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Scrollable = ScrollableSignalList
type ScrollableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_scrollable_get_type"
    c_gtk_scrollable_get_type :: IO GType

instance GObject Scrollable where
    gobjectType = c_gtk_scrollable_get_type
    

-- | Convert 'Scrollable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Scrollable where
    toGValue o = do
        gtype <- c_gtk_scrollable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Scrollable)
        B.ManagedPtr.newObject Scrollable ptr
        
    

-- | Type class for types which can be safely cast to `Scrollable`, for instance with `toScrollable`.
class (GObject o, O.IsDescendantOf Scrollable o) => IsScrollable o
instance (GObject o, O.IsDescendantOf Scrollable o) => IsScrollable o

instance O.HasParentTypes Scrollable
type instance O.ParentTypes Scrollable = '[GObject.Object.Object]

-- | Cast to `Scrollable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScrollable :: (MonadIO m, IsScrollable o) => o -> m Scrollable
toScrollable = liftIO . unsafeCastTo Scrollable

-- VVV Prop "hadjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@hadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrollable #hadjustment
-- @
getScrollableHadjustment :: (MonadIO m, IsScrollable o) => o -> m Gtk.Adjustment.Adjustment
getScrollableHadjustment obj = liftIO $ checkUnexpectedNothing "getScrollableHadjustment" $ B.Properties.getObjectPropertyObject obj "hadjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@hadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrollable [ #hadjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrollableHadjustment :: (MonadIO m, IsScrollable o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setScrollableHadjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "hadjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@hadjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrollableHadjustment :: (IsScrollable o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructScrollableHadjustment val = B.Properties.constructObjectPropertyObject "hadjustment" (Just val)

-- | Set the value of the “@hadjustment@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #hadjustment
-- @
clearScrollableHadjustment :: (MonadIO m, IsScrollable o) => o -> m ()
clearScrollableHadjustment obj = liftIO $ B.Properties.setObjectPropertyObject obj "hadjustment" (Nothing :: Maybe Gtk.Adjustment.Adjustment)

#if defined(ENABLE_OVERLOADING)
data ScrollableHadjustmentPropertyInfo
instance AttrInfo ScrollableHadjustmentPropertyInfo where
    type AttrAllowedOps ScrollableHadjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ScrollableHadjustmentPropertyInfo = IsScrollable
    type AttrSetTypeConstraint ScrollableHadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint ScrollableHadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType ScrollableHadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType ScrollableHadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel ScrollableHadjustmentPropertyInfo = "hadjustment"
    type AttrOrigin ScrollableHadjustmentPropertyInfo = Scrollable
    attrGet = getScrollableHadjustment
    attrSet = setScrollableHadjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructScrollableHadjustment
    attrClear = clearScrollableHadjustment
#endif

-- VVV Prop "hscroll-policy"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ScrollablePolicy"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@hscroll-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrollable #hscrollPolicy
-- @
getScrollableHscrollPolicy :: (MonadIO m, IsScrollable o) => o -> m Gtk.Enums.ScrollablePolicy
getScrollableHscrollPolicy obj = liftIO $ B.Properties.getObjectPropertyEnum obj "hscroll-policy"

-- | Set the value of the “@hscroll-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrollable [ #hscrollPolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrollableHscrollPolicy :: (MonadIO m, IsScrollable o) => o -> Gtk.Enums.ScrollablePolicy -> m ()
setScrollableHscrollPolicy obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "hscroll-policy" val

-- | Construct a `GValueConstruct` with valid value for the “@hscroll-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrollableHscrollPolicy :: (IsScrollable o) => Gtk.Enums.ScrollablePolicy -> IO (GValueConstruct o)
constructScrollableHscrollPolicy val = B.Properties.constructObjectPropertyEnum "hscroll-policy" val

#if defined(ENABLE_OVERLOADING)
data ScrollableHscrollPolicyPropertyInfo
instance AttrInfo ScrollableHscrollPolicyPropertyInfo where
    type AttrAllowedOps ScrollableHscrollPolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrollableHscrollPolicyPropertyInfo = IsScrollable
    type AttrSetTypeConstraint ScrollableHscrollPolicyPropertyInfo = (~) Gtk.Enums.ScrollablePolicy
    type AttrTransferTypeConstraint ScrollableHscrollPolicyPropertyInfo = (~) Gtk.Enums.ScrollablePolicy
    type AttrTransferType ScrollableHscrollPolicyPropertyInfo = Gtk.Enums.ScrollablePolicy
    type AttrGetType ScrollableHscrollPolicyPropertyInfo = Gtk.Enums.ScrollablePolicy
    type AttrLabel ScrollableHscrollPolicyPropertyInfo = "hscroll-policy"
    type AttrOrigin ScrollableHscrollPolicyPropertyInfo = Scrollable
    attrGet = getScrollableHscrollPolicy
    attrSet = setScrollableHscrollPolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrollableHscrollPolicy
    attrClear = undefined
#endif

-- VVV Prop "vadjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@vadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrollable #vadjustment
-- @
getScrollableVadjustment :: (MonadIO m, IsScrollable o) => o -> m Gtk.Adjustment.Adjustment
getScrollableVadjustment obj = liftIO $ checkUnexpectedNothing "getScrollableVadjustment" $ B.Properties.getObjectPropertyObject obj "vadjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@vadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrollable [ #vadjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrollableVadjustment :: (MonadIO m, IsScrollable o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setScrollableVadjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "vadjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@vadjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrollableVadjustment :: (IsScrollable o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructScrollableVadjustment val = B.Properties.constructObjectPropertyObject "vadjustment" (Just val)

-- | Set the value of the “@vadjustment@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #vadjustment
-- @
clearScrollableVadjustment :: (MonadIO m, IsScrollable o) => o -> m ()
clearScrollableVadjustment obj = liftIO $ B.Properties.setObjectPropertyObject obj "vadjustment" (Nothing :: Maybe Gtk.Adjustment.Adjustment)

#if defined(ENABLE_OVERLOADING)
data ScrollableVadjustmentPropertyInfo
instance AttrInfo ScrollableVadjustmentPropertyInfo where
    type AttrAllowedOps ScrollableVadjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ScrollableVadjustmentPropertyInfo = IsScrollable
    type AttrSetTypeConstraint ScrollableVadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint ScrollableVadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType ScrollableVadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType ScrollableVadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel ScrollableVadjustmentPropertyInfo = "vadjustment"
    type AttrOrigin ScrollableVadjustmentPropertyInfo = Scrollable
    attrGet = getScrollableVadjustment
    attrSet = setScrollableVadjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructScrollableVadjustment
    attrClear = clearScrollableVadjustment
#endif

-- VVV Prop "vscroll-policy"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ScrollablePolicy"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@vscroll-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrollable #vscrollPolicy
-- @
getScrollableVscrollPolicy :: (MonadIO m, IsScrollable o) => o -> m Gtk.Enums.ScrollablePolicy
getScrollableVscrollPolicy obj = liftIO $ B.Properties.getObjectPropertyEnum obj "vscroll-policy"

-- | Set the value of the “@vscroll-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrollable [ #vscrollPolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrollableVscrollPolicy :: (MonadIO m, IsScrollable o) => o -> Gtk.Enums.ScrollablePolicy -> m ()
setScrollableVscrollPolicy obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "vscroll-policy" val

-- | Construct a `GValueConstruct` with valid value for the “@vscroll-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrollableVscrollPolicy :: (IsScrollable o) => Gtk.Enums.ScrollablePolicy -> IO (GValueConstruct o)
constructScrollableVscrollPolicy val = B.Properties.constructObjectPropertyEnum "vscroll-policy" val

#if defined(ENABLE_OVERLOADING)
data ScrollableVscrollPolicyPropertyInfo
instance AttrInfo ScrollableVscrollPolicyPropertyInfo where
    type AttrAllowedOps ScrollableVscrollPolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrollableVscrollPolicyPropertyInfo = IsScrollable
    type AttrSetTypeConstraint ScrollableVscrollPolicyPropertyInfo = (~) Gtk.Enums.ScrollablePolicy
    type AttrTransferTypeConstraint ScrollableVscrollPolicyPropertyInfo = (~) Gtk.Enums.ScrollablePolicy
    type AttrTransferType ScrollableVscrollPolicyPropertyInfo = Gtk.Enums.ScrollablePolicy
    type AttrGetType ScrollableVscrollPolicyPropertyInfo = Gtk.Enums.ScrollablePolicy
    type AttrLabel ScrollableVscrollPolicyPropertyInfo = "vscroll-policy"
    type AttrOrigin ScrollableVscrollPolicyPropertyInfo = Scrollable
    attrGet = getScrollableVscrollPolicy
    attrSet = setScrollableVscrollPolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrollableVscrollPolicy
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Scrollable
type instance O.AttributeList Scrollable = ScrollableAttributeList
type ScrollableAttributeList = ('[ '("hadjustment", ScrollableHadjustmentPropertyInfo), '("hscrollPolicy", ScrollableHscrollPolicyPropertyInfo), '("vadjustment", ScrollableVadjustmentPropertyInfo), '("vscrollPolicy", ScrollableVscrollPolicyPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
scrollableHadjustment :: AttrLabelProxy "hadjustment"
scrollableHadjustment = AttrLabelProxy

scrollableHscrollPolicy :: AttrLabelProxy "hscrollPolicy"
scrollableHscrollPolicy = AttrLabelProxy

scrollableVadjustment :: AttrLabelProxy "vadjustment"
scrollableVadjustment = AttrLabelProxy

scrollableVscrollPolicy :: AttrLabelProxy "vscrollPolicy"
scrollableVscrollPolicy = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveScrollableMethod (t :: Symbol) (o :: *) :: * where
    ResolveScrollableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScrollableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScrollableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScrollableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScrollableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScrollableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScrollableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScrollableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScrollableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScrollableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScrollableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScrollableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScrollableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScrollableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScrollableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScrollableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScrollableMethod "getBorder" o = ScrollableGetBorderMethodInfo
    ResolveScrollableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScrollableMethod "getHadjustment" o = ScrollableGetHadjustmentMethodInfo
    ResolveScrollableMethod "getHscrollPolicy" o = ScrollableGetHscrollPolicyMethodInfo
    ResolveScrollableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScrollableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScrollableMethod "getVadjustment" o = ScrollableGetVadjustmentMethodInfo
    ResolveScrollableMethod "getVscrollPolicy" o = ScrollableGetVscrollPolicyMethodInfo
    ResolveScrollableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScrollableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScrollableMethod "setHadjustment" o = ScrollableSetHadjustmentMethodInfo
    ResolveScrollableMethod "setHscrollPolicy" o = ScrollableSetHscrollPolicyMethodInfo
    ResolveScrollableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScrollableMethod "setVadjustment" o = ScrollableSetVadjustmentMethodInfo
    ResolveScrollableMethod "setVscrollPolicy" o = ScrollableSetVscrollPolicyMethodInfo
    ResolveScrollableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScrollableMethod t Scrollable, O.MethodInfo info Scrollable p) => OL.IsLabel t (Scrollable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method Scrollable::get_border
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "border"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Border" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the results"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrollable_get_border" gtk_scrollable_get_border :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    Ptr Gtk.Border.Border ->                -- border : TInterface (Name {namespace = "Gtk", name = "Border"})
    IO CInt

-- | Returns the size of a non-scrolling border around the
-- outside of the scrollable. An example for this would
-- be treeview headers. GTK+ can use this information to
-- display overlayed graphics, like the overshoot indication,
-- at the right position.
-- 
-- /Since: 3.16/
scrollableGetBorder ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> m ((Bool, Gtk.Border.Border))
    -- ^ __Returns:__ 'P.True' if /@border@/ has been set
scrollableGetBorder scrollable = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    border <- callocBoxedBytes 8 :: IO (Ptr Gtk.Border.Border)
    result <- gtk_scrollable_get_border scrollable' border
    let result' = (/= 0) result
    border' <- (wrapBoxed Gtk.Border.Border) border
    touchManagedPtr scrollable
    return (result', border')

#if defined(ENABLE_OVERLOADING)
data ScrollableGetBorderMethodInfo
instance (signature ~ (m ((Bool, Gtk.Border.Border))), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableGetBorderMethodInfo a signature where
    overloadedMethod = scrollableGetBorder

#endif

-- method Scrollable::get_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_scrollable_get_hadjustment" gtk_scrollable_get_hadjustment :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Retrieves the t'GI.Gtk.Objects.Adjustment.Adjustment' used for horizontal scrolling.
-- 
-- /Since: 3.0/
scrollableGetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ horizontal t'GI.Gtk.Objects.Adjustment.Adjustment'.
scrollableGetHadjustment scrollable = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    result <- gtk_scrollable_get_hadjustment scrollable'
    checkUnexpectedReturnNULL "scrollableGetHadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr scrollable
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrollableGetHadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableGetHadjustmentMethodInfo a signature where
    overloadedMethod = scrollableGetHadjustment

#endif

-- method Scrollable::get_hscroll_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ScrollablePolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrollable_get_hscroll_policy" gtk_scrollable_get_hscroll_policy :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    IO CUInt

-- | Gets the horizontal t'GI.Gtk.Enums.ScrollablePolicy'.
-- 
-- /Since: 3.0/
scrollableGetHscrollPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> m Gtk.Enums.ScrollablePolicy
    -- ^ __Returns:__ The horizontal t'GI.Gtk.Enums.ScrollablePolicy'.
scrollableGetHscrollPolicy scrollable = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    result <- gtk_scrollable_get_hscroll_policy scrollable'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr scrollable
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrollableGetHscrollPolicyMethodInfo
instance (signature ~ (m Gtk.Enums.ScrollablePolicy), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableGetHscrollPolicyMethodInfo a signature where
    overloadedMethod = scrollableGetHscrollPolicy

#endif

-- method Scrollable::get_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_scrollable_get_vadjustment" gtk_scrollable_get_vadjustment :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Retrieves the t'GI.Gtk.Objects.Adjustment.Adjustment' used for vertical scrolling.
-- 
-- /Since: 3.0/
scrollableGetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ vertical t'GI.Gtk.Objects.Adjustment.Adjustment'.
scrollableGetVadjustment scrollable = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    result <- gtk_scrollable_get_vadjustment scrollable'
    checkUnexpectedReturnNULL "scrollableGetVadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr scrollable
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrollableGetVadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableGetVadjustmentMethodInfo a signature where
    overloadedMethod = scrollableGetVadjustment

#endif

-- method Scrollable::get_vscroll_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ScrollablePolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrollable_get_vscroll_policy" gtk_scrollable_get_vscroll_policy :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    IO CUInt

-- | Gets the vertical t'GI.Gtk.Enums.ScrollablePolicy'.
-- 
-- /Since: 3.0/
scrollableGetVscrollPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> m Gtk.Enums.ScrollablePolicy
    -- ^ __Returns:__ The vertical t'GI.Gtk.Enums.ScrollablePolicy'.
scrollableGetVscrollPolicy scrollable = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    result <- gtk_scrollable_get_vscroll_policy scrollable'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr scrollable
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrollableGetVscrollPolicyMethodInfo
instance (signature ~ (m Gtk.Enums.ScrollablePolicy), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableGetVscrollPolicyMethodInfo a signature where
    overloadedMethod = scrollableGetVscrollPolicy

#endif

-- method Scrollable::set_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_scrollable_set_hadjustment" gtk_scrollable_set_hadjustment :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    Ptr Gtk.Adjustment.Adjustment ->        -- hadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Sets the horizontal adjustment of the t'GI.Gtk.Interfaces.Scrollable.Scrollable'.
-- 
-- /Since: 3.0/
scrollableSetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> Maybe (b)
    -- ^ /@hadjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m ()
scrollableSetHadjustment scrollable hadjustment = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    maybeHadjustment <- case hadjustment of
        Nothing -> return nullPtr
        Just jHadjustment -> do
            jHadjustment' <- unsafeManagedPtrCastPtr jHadjustment
            return jHadjustment'
    gtk_scrollable_set_hadjustment scrollable' maybeHadjustment
    touchManagedPtr scrollable
    whenJust hadjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrollableSetHadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsScrollable a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ScrollableSetHadjustmentMethodInfo a signature where
    overloadedMethod = scrollableSetHadjustment

#endif

-- method Scrollable::set_hscroll_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrollablePolicy" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the horizontal #GtkScrollablePolicy"
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

foreign import ccall "gtk_scrollable_set_hscroll_policy" gtk_scrollable_set_hscroll_policy :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "Gtk", name = "ScrollablePolicy"})
    IO ()

-- | Sets the t'GI.Gtk.Enums.ScrollablePolicy' to determine whether
-- horizontal scrolling should start below the minimum width or
-- below the natural width.
-- 
-- /Since: 3.0/
scrollableSetHscrollPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> Gtk.Enums.ScrollablePolicy
    -- ^ /@policy@/: the horizontal t'GI.Gtk.Enums.ScrollablePolicy'
    -> m ()
scrollableSetHscrollPolicy scrollable policy = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    let policy' = (fromIntegral . fromEnum) policy
    gtk_scrollable_set_hscroll_policy scrollable' policy'
    touchManagedPtr scrollable
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrollableSetHscrollPolicyMethodInfo
instance (signature ~ (Gtk.Enums.ScrollablePolicy -> m ()), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableSetHscrollPolicyMethodInfo a signature where
    overloadedMethod = scrollableSetHscrollPolicy

#endif

-- method Scrollable::set_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "vadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_scrollable_set_vadjustment" gtk_scrollable_set_vadjustment :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    Ptr Gtk.Adjustment.Adjustment ->        -- vadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Sets the vertical adjustment of the t'GI.Gtk.Interfaces.Scrollable.Scrollable'.
-- 
-- /Since: 3.0/
scrollableSetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> Maybe (b)
    -- ^ /@vadjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'
    -> m ()
scrollableSetVadjustment scrollable vadjustment = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    maybeVadjustment <- case vadjustment of
        Nothing -> return nullPtr
        Just jVadjustment -> do
            jVadjustment' <- unsafeManagedPtrCastPtr jVadjustment
            return jVadjustment'
    gtk_scrollable_set_vadjustment scrollable' maybeVadjustment
    touchManagedPtr scrollable
    whenJust vadjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrollableSetVadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsScrollable a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ScrollableSetVadjustmentMethodInfo a signature where
    overloadedMethod = scrollableSetVadjustment

#endif

-- method Scrollable::set_vscroll_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrollable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Scrollable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrollable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrollablePolicy" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the vertical #GtkScrollablePolicy"
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

foreign import ccall "gtk_scrollable_set_vscroll_policy" gtk_scrollable_set_vscroll_policy :: 
    Ptr Scrollable ->                       -- scrollable : TInterface (Name {namespace = "Gtk", name = "Scrollable"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "Gtk", name = "ScrollablePolicy"})
    IO ()

-- | Sets the t'GI.Gtk.Enums.ScrollablePolicy' to determine whether
-- vertical scrolling should start below the minimum height or
-- below the natural height.
-- 
-- /Since: 3.0/
scrollableSetVscrollPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrollable a) =>
    a
    -- ^ /@scrollable@/: a t'GI.Gtk.Interfaces.Scrollable.Scrollable'
    -> Gtk.Enums.ScrollablePolicy
    -- ^ /@policy@/: the vertical t'GI.Gtk.Enums.ScrollablePolicy'
    -> m ()
scrollableSetVscrollPolicy scrollable policy = liftIO $ do
    scrollable' <- unsafeManagedPtrCastPtr scrollable
    let policy' = (fromIntegral . fromEnum) policy
    gtk_scrollable_set_vscroll_policy scrollable' policy'
    touchManagedPtr scrollable
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrollableSetVscrollPolicyMethodInfo
instance (signature ~ (Gtk.Enums.ScrollablePolicy -> m ()), MonadIO m, IsScrollable a) => O.MethodInfo ScrollableSetVscrollPolicyMethodInfo a signature where
    overloadedMethod = scrollableSetVscrollPolicy

#endif

