{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Accessible.Accessible' class is the base class for accessible
-- implementations for t'GI.Gtk.Objects.Widget.Widget' subclasses. It is a thin
-- wrapper around t'GI.Atk.Objects.Object.Object', which adds facilities for associating
-- a widget with its accessible object.
-- 
-- An accessible implementation for a third-party widget should
-- derive from t'GI.Gtk.Objects.Accessible.Accessible' and implement the suitable interfaces
-- from ATK, such as t'GI.Atk.Interfaces.Text.Text' or t'GI.Atk.Interfaces.Selection.Selection'. To establish
-- the connection between the widget class and its corresponding
-- acccessible implementation, override the get_accessible vfunc
-- in t'GI.Gtk.Structs.WidgetClass.WidgetClass'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Accessible
    ( 

-- * Exported types
    Accessible(..)                          ,
    IsAccessible                            ,
    toAccessible                            ,
    noAccessible                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAccessibleMethod                 ,
#endif


-- ** connectWidgetDestroyed #method:connectWidgetDestroyed#

#if defined(ENABLE_OVERLOADING)
    AccessibleConnectWidgetDestroyedMethodInfo,
#endif
    accessibleConnectWidgetDestroyed        ,


-- ** getWidget #method:getWidget#

#if defined(ENABLE_OVERLOADING)
    AccessibleGetWidgetMethodInfo           ,
#endif
    accessibleGetWidget                     ,


-- ** setWidget #method:setWidget#

#if defined(ENABLE_OVERLOADING)
    AccessibleSetWidgetMethodInfo           ,
#endif
    accessibleSetWidget                     ,




 -- * Properties
-- ** widget #attr:widget#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    AccessibleWidgetPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    accessibleWidget                        ,
#endif
    clearAccessibleWidget                   ,
    constructAccessibleWidget               ,
    getAccessibleWidget                     ,
    setAccessibleWidget                     ,




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

import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Accessible = Accessible (ManagedPtr Accessible)
    deriving (Eq)
foreign import ccall "gtk_accessible_get_type"
    c_gtk_accessible_get_type :: IO GType

instance GObject Accessible where
    gobjectType = c_gtk_accessible_get_type
    

-- | Convert 'Accessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Accessible where
    toGValue o = do
        gtype <- c_gtk_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Accessible)
        B.ManagedPtr.newObject Accessible ptr
        
    

-- | Type class for types which can be safely cast to `Accessible`, for instance with `toAccessible`.
class (GObject o, O.IsDescendantOf Accessible o) => IsAccessible o
instance (GObject o, O.IsDescendantOf Accessible o) => IsAccessible o

instance O.HasParentTypes Accessible
type instance O.ParentTypes Accessible = '[Atk.Object.Object, GObject.Object.Object]

-- | Cast to `Accessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAccessible :: (MonadIO m, IsAccessible o) => o -> m Accessible
toAccessible = liftIO . unsafeCastTo Accessible

-- | A convenience alias for `Nothing` :: `Maybe` `Accessible`.
noAccessible :: Maybe Accessible
noAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAccessibleMethod "connectWidgetDestroyed" o = AccessibleConnectWidgetDestroyedMethodInfo
    ResolveAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveAccessibleMethod "getWidget" o = AccessibleGetWidgetMethodInfo
    ResolveAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveAccessibleMethod "setWidget" o = AccessibleSetWidgetMethodInfo
    ResolveAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAccessibleMethod t Accessible, O.MethodInfo info Accessible p) => OL.IsLabel t (Accessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accessible #widget
-- @
getAccessibleWidget :: (MonadIO m, IsAccessible o) => o -> m (Maybe Gtk.Widget.Widget)
getAccessibleWidget obj = liftIO $ B.Properties.getObjectPropertyObject obj "widget" Gtk.Widget.Widget

-- | Set the value of the “@widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' accessible [ #widget 'Data.GI.Base.Attributes.:=' value ]
-- @
setAccessibleWidget :: (MonadIO m, IsAccessible o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setAccessibleWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAccessibleWidget :: (IsAccessible o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructAccessibleWidget val = B.Properties.constructObjectPropertyObject "widget" (Just val)

-- | Set the value of the “@widget@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #widget
-- @
clearAccessibleWidget :: (MonadIO m, IsAccessible o) => o -> m ()
clearAccessibleWidget obj = liftIO $ B.Properties.setObjectPropertyObject obj "widget" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data AccessibleWidgetPropertyInfo
instance AttrInfo AccessibleWidgetPropertyInfo where
    type AttrAllowedOps AccessibleWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AccessibleWidgetPropertyInfo = IsAccessible
    type AttrSetTypeConstraint AccessibleWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint AccessibleWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType AccessibleWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType AccessibleWidgetPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel AccessibleWidgetPropertyInfo = "widget"
    type AttrOrigin AccessibleWidgetPropertyInfo = Accessible
    attrGet = getAccessibleWidget
    attrSet = setAccessibleWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructAccessibleWidget
    attrClear = clearAccessibleWidget
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Accessible
type instance O.AttributeList Accessible = AccessibleAttributeList
type AccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
accessibleWidget :: AttrLabelProxy "widget"
accessibleWidget = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Accessible = AccessibleSignalList
type AccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method Accessible::connect_widget_destroyed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accessible"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Accessible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccessible" , sinceVersion = Nothing }
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

foreign import ccall "gtk_accessible_connect_widget_destroyed" gtk_accessible_connect_widget_destroyed :: 
    Ptr Accessible ->                       -- accessible : TInterface (Name {namespace = "Gtk", name = "Accessible"})
    IO ()

{-# DEPRECATED accessibleConnectWidgetDestroyed ["(Since version 3.4)","Use 'GI.Gtk.Objects.Accessible.accessibleSetWidget' and its vfuncs."] #-}
-- | This function specifies the callback function to be called
-- when the widget corresponding to a GtkAccessible is destroyed.
accessibleConnectWidgetDestroyed ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccessible a) =>
    a
    -- ^ /@accessible@/: a t'GI.Gtk.Objects.Accessible.Accessible'
    -> m ()
accessibleConnectWidgetDestroyed accessible = liftIO $ do
    accessible' <- unsafeManagedPtrCastPtr accessible
    gtk_accessible_connect_widget_destroyed accessible'
    touchManagedPtr accessible
    return ()

#if defined(ENABLE_OVERLOADING)
data AccessibleConnectWidgetDestroyedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAccessible a) => O.MethodInfo AccessibleConnectWidgetDestroyedMethodInfo a signature where
    overloadedMethod = accessibleConnectWidgetDestroyed

#endif

-- method Accessible::get_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accessible"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Accessible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccessible" , sinceVersion = Nothing }
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

foreign import ccall "gtk_accessible_get_widget" gtk_accessible_get_widget :: 
    Ptr Accessible ->                       -- accessible : TInterface (Name {namespace = "Gtk", name = "Accessible"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the t'GI.Gtk.Objects.Widget.Widget' corresponding to the t'GI.Gtk.Objects.Accessible.Accessible'.
-- The returned widget does not have a reference added, so
-- you do not need to unref it.
-- 
-- /Since: 2.22/
accessibleGetWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccessible a) =>
    a
    -- ^ /@accessible@/: a t'GI.Gtk.Objects.Accessible.Accessible'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ pointer to the t'GI.Gtk.Objects.Widget.Widget'
    --     corresponding to the t'GI.Gtk.Objects.Accessible.Accessible', or 'P.Nothing'.
accessibleGetWidget accessible = liftIO $ do
    accessible' <- unsafeManagedPtrCastPtr accessible
    result <- gtk_accessible_get_widget accessible'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr accessible
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data AccessibleGetWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsAccessible a) => O.MethodInfo AccessibleGetWidgetMethodInfo a signature where
    overloadedMethod = accessibleGetWidget

#endif

-- method Accessible::set_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accessible"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Accessible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccessible" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget or %NULL to unset"
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

foreign import ccall "gtk_accessible_set_widget" gtk_accessible_set_widget :: 
    Ptr Accessible ->                       -- accessible : TInterface (Name {namespace = "Gtk", name = "Accessible"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Widget.Widget' corresponding to the t'GI.Gtk.Objects.Accessible.Accessible'.
-- 
-- /@accessible@/ will not hold a reference to /@widget@/.
-- It is the caller’s responsibility to ensure that when /@widget@/
-- is destroyed, the widget is unset by calling this function
-- again with /@widget@/ set to 'P.Nothing'.
-- 
-- /Since: 2.22/
accessibleSetWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccessible a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@accessible@/: a t'GI.Gtk.Objects.Accessible.Accessible'
    -> Maybe (b)
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget' or 'P.Nothing' to unset
    -> m ()
accessibleSetWidget accessible widget = liftIO $ do
    accessible' <- unsafeManagedPtrCastPtr accessible
    maybeWidget <- case widget of
        Nothing -> return nullPtr
        Just jWidget -> do
            jWidget' <- unsafeManagedPtrCastPtr jWidget
            return jWidget'
    gtk_accessible_set_widget accessible' maybeWidget
    touchManagedPtr accessible
    whenJust widget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data AccessibleSetWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsAccessible a, Gtk.Widget.IsWidget b) => O.MethodInfo AccessibleSetWidgetMethodInfo a signature where
    overloadedMethod = accessibleSetWidget

#endif

