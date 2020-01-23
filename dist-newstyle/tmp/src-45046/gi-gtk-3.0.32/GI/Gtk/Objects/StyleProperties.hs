{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkStyleProperties provides the storage for style information
-- that is used by t'GI.Gtk.Objects.StyleContext.StyleContext' and other t'GI.Gtk.Interfaces.StyleProvider.StyleProvider'
-- implementations.
-- 
-- Before style properties can be stored in GtkStyleProperties, they
-- must be registered with @/gtk_style_properties_register_property()/@.
-- 
-- Unless you are writing a t'GI.Gtk.Interfaces.StyleProvider.StyleProvider' implementation, you
-- are unlikely to use this API directly, as @/gtk_style_context_get()/@
-- and its variants are the preferred way to access styling information
-- from widget implementations and theming engine implementations
-- should use the APIs provided by t'GI.Gtk.Objects.ThemingEngine.ThemingEngine' instead.
-- 
-- t'GI.Gtk.Objects.StyleProperties.StyleProperties' has been deprecated in GTK 3.16. The CSS
-- machinery does not use it anymore and all users of this object
-- have been deprecated.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StyleProperties
    ( 

-- * Exported types
    StyleProperties(..)                     ,
    IsStyleProperties                       ,
    toStyleProperties                       ,
    noStyleProperties                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStylePropertiesMethod            ,
#endif


-- ** clear #method:clear#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesClearMethodInfo          ,
#endif
    stylePropertiesClear                    ,


-- ** getProperty #method:getProperty#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesGetPropertyMethodInfo    ,
#endif
    stylePropertiesGetProperty              ,


-- ** lookupColor #method:lookupColor#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesLookupColorMethodInfo    ,
#endif
    stylePropertiesLookupColor              ,


-- ** mapColor #method:mapColor#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesMapColorMethodInfo       ,
#endif
    stylePropertiesMapColor                 ,


-- ** merge #method:merge#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesMergeMethodInfo          ,
#endif
    stylePropertiesMerge                    ,


-- ** new #method:new#

    stylePropertiesNew                      ,


-- ** setProperty #method:setProperty#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesSetPropertyMethodInfo    ,
#endif
    stylePropertiesSetProperty              ,


-- ** unsetProperty #method:unsetProperty#

#if defined(ENABLE_OVERLOADING)
    StylePropertiesUnsetPropertyMethodInfo  ,
#endif
    stylePropertiesUnsetProperty            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.StyleProvider as Gtk.StyleProvider
import {-# SOURCE #-} qualified GI.Gtk.Structs.SymbolicColor as Gtk.SymbolicColor

-- | Memory-managed wrapper type.
newtype StyleProperties = StyleProperties (ManagedPtr StyleProperties)
    deriving (Eq)
foreign import ccall "gtk_style_properties_get_type"
    c_gtk_style_properties_get_type :: IO GType

instance GObject StyleProperties where
    gobjectType = c_gtk_style_properties_get_type
    

-- | Convert 'StyleProperties' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StyleProperties where
    toGValue o = do
        gtype <- c_gtk_style_properties_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StyleProperties)
        B.ManagedPtr.newObject StyleProperties ptr
        
    

-- | Type class for types which can be safely cast to `StyleProperties`, for instance with `toStyleProperties`.
class (GObject o, O.IsDescendantOf StyleProperties o) => IsStyleProperties o
instance (GObject o, O.IsDescendantOf StyleProperties o) => IsStyleProperties o

instance O.HasParentTypes StyleProperties
type instance O.ParentTypes StyleProperties = '[GObject.Object.Object, Gtk.StyleProvider.StyleProvider]

-- | Cast to `StyleProperties`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStyleProperties :: (MonadIO m, IsStyleProperties o) => o -> m StyleProperties
toStyleProperties = liftIO . unsafeCastTo StyleProperties

-- | A convenience alias for `Nothing` :: `Maybe` `StyleProperties`.
noStyleProperties :: Maybe StyleProperties
noStyleProperties = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStylePropertiesMethod (t :: Symbol) (o :: *) :: * where
    ResolveStylePropertiesMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStylePropertiesMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStylePropertiesMethod "clear" o = StylePropertiesClearMethodInfo
    ResolveStylePropertiesMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStylePropertiesMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStylePropertiesMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStylePropertiesMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStylePropertiesMethod "lookupColor" o = StylePropertiesLookupColorMethodInfo
    ResolveStylePropertiesMethod "mapColor" o = StylePropertiesMapColorMethodInfo
    ResolveStylePropertiesMethod "merge" o = StylePropertiesMergeMethodInfo
    ResolveStylePropertiesMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStylePropertiesMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStylePropertiesMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStylePropertiesMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStylePropertiesMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStylePropertiesMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStylePropertiesMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStylePropertiesMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStylePropertiesMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStylePropertiesMethod "unsetProperty" o = StylePropertiesUnsetPropertyMethodInfo
    ResolveStylePropertiesMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStylePropertiesMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStylePropertiesMethod "getIconFactory" o = Gtk.StyleProvider.StyleProviderGetIconFactoryMethodInfo
    ResolveStylePropertiesMethod "getProperty" o = StylePropertiesGetPropertyMethodInfo
    ResolveStylePropertiesMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStylePropertiesMethod "getStyle" o = Gtk.StyleProvider.StyleProviderGetStyleMethodInfo
    ResolveStylePropertiesMethod "getStyleProperty" o = Gtk.StyleProvider.StyleProviderGetStylePropertyMethodInfo
    ResolveStylePropertiesMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStylePropertiesMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStylePropertiesMethod "setProperty" o = StylePropertiesSetPropertyMethodInfo
    ResolveStylePropertiesMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStylePropertiesMethod t StyleProperties, O.MethodInfo info StyleProperties p) => OL.IsLabel t (StyleProperties -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StyleProperties
type instance O.AttributeList StyleProperties = StylePropertiesAttributeList
type StylePropertiesAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StyleProperties = StylePropertiesSignalList
type StylePropertiesSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StyleProperties::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "StyleProperties" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_style_properties_new" gtk_style_properties_new :: 
    IO (Ptr StyleProperties)

{-# DEPRECATED stylePropertiesNew ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Returns a newly created t'GI.Gtk.Objects.StyleProperties.StyleProperties'
stylePropertiesNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StyleProperties
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StyleProperties.StyleProperties'
stylePropertiesNew  = liftIO $ do
    result <- gtk_style_properties_new
    checkUnexpectedReturnNULL "stylePropertiesNew" result
    result' <- (wrapObject StyleProperties) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StyleProperties::clear
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
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

foreign import ccall "gtk_style_properties_clear" gtk_style_properties_clear :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    IO ()

{-# DEPRECATED stylePropertiesClear ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Clears all style information from /@props@/.
stylePropertiesClear ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> m ()
stylePropertiesClear props = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    gtk_style_properties_clear props'
    touchManagedPtr props
    return ()

#if defined(ENABLE_OVERLOADING)
data StylePropertiesClearMethodInfo
instance (signature ~ (m ()), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesClearMethodInfo a signature where
    overloadedMethod = stylePropertiesClear

#endif

-- method StyleProperties::get_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "style property name"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StateFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "state to retrieve the property value for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Value" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the style property value."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_style_properties_get_property" gtk_style_properties_get_property :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CString ->                              -- property : TBasicType TUTF8
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "StateFlags"})
    Ptr GValue ->                           -- value : TInterface (Name {namespace = "GObject", name = "Value"})
    IO CInt

{-# DEPRECATED stylePropertiesGetProperty ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Gets a style property from /@props@/ for the given state. When done with /@value@/,
-- 'GI.GObject.Structs.Value.valueUnset' needs to be called to free any allocated memory.
-- 
-- /Since: 3.0/
stylePropertiesGetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> T.Text
    -- ^ /@property@/: style property name
    -> [Gtk.Flags.StateFlags]
    -- ^ /@state@/: state to retrieve the property value for
    -> m ((Bool, GValue))
    -- ^ __Returns:__ 'P.True' if the property exists in /@props@/, 'P.False' otherwise
stylePropertiesGetProperty props property state = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    property' <- textToCString property
    let state' = gflagsToWord state
    value <- callocBoxedBytes 24 :: IO (Ptr GValue)
    result <- gtk_style_properties_get_property props' property' state' value
    let result' = (/= 0) result
    value' <- (wrapBoxed GValue) value
    touchManagedPtr props
    freeMem property'
    return (result', value')

#if defined(ENABLE_OVERLOADING)
data StylePropertiesGetPropertyMethodInfo
instance (signature ~ (T.Text -> [Gtk.Flags.StateFlags] -> m ((Bool, GValue))), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesGetPropertyMethodInfo a signature where
    overloadedMethod = stylePropertiesGetProperty

#endif

-- method StyleProperties::lookup_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "color name to lookup"
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
--               (TInterface Name { namespace = "Gtk" , name = "SymbolicColor" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_style_properties_lookup_color" gtk_style_properties_lookup_color :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr Gtk.SymbolicColor.SymbolicColor)

{-# DEPRECATED stylePropertiesLookupColor ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Returns the symbolic color that is mapped
-- to /@name@/.
-- 
-- /Since: 3.0/
stylePropertiesLookupColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> T.Text
    -- ^ /@name@/: color name to lookup
    -> m Gtk.SymbolicColor.SymbolicColor
    -- ^ __Returns:__ The mapped color
stylePropertiesLookupColor props name = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    name' <- textToCString name
    result <- gtk_style_properties_lookup_color props' name'
    checkUnexpectedReturnNULL "stylePropertiesLookupColor" result
    result' <- (newBoxed Gtk.SymbolicColor.SymbolicColor) result
    touchManagedPtr props
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data StylePropertiesLookupColorMethodInfo
instance (signature ~ (T.Text -> m Gtk.SymbolicColor.SymbolicColor), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesLookupColorMethodInfo a signature where
    overloadedMethod = stylePropertiesLookupColor

#endif

-- method StyleProperties::map_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "color name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GtkSymbolicColor to map @name to"
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

foreign import ccall "gtk_style_properties_map_color" gtk_style_properties_map_color :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr Gtk.SymbolicColor.SymbolicColor ->  -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    IO ()

{-# DEPRECATED stylePropertiesMapColor ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Maps /@color@/ so it can be referenced by /@name@/. See
-- 'GI.Gtk.Objects.StyleProperties.stylePropertiesLookupColor'
-- 
-- /Since: 3.0/
stylePropertiesMapColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> T.Text
    -- ^ /@name@/: color name
    -> Gtk.SymbolicColor.SymbolicColor
    -- ^ /@color@/: t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' to map /@name@/ to
    -> m ()
stylePropertiesMapColor props name color = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    name' <- textToCString name
    color' <- unsafeManagedPtrGetPtr color
    gtk_style_properties_map_color props' name' color'
    touchManagedPtr props
    touchManagedPtr color
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data StylePropertiesMapColorMethodInfo
instance (signature ~ (T.Text -> Gtk.SymbolicColor.SymbolicColor -> m ()), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesMapColorMethodInfo a signature where
    overloadedMethod = stylePropertiesMapColor

#endif

-- method StyleProperties::merge
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "props_to_merge"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a second #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "replace"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to replace values or not"
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

foreign import ccall "gtk_style_properties_merge" gtk_style_properties_merge :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    Ptr StyleProperties ->                  -- props_to_merge : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CInt ->                                 -- replace : TBasicType TBoolean
    IO ()

{-# DEPRECATED stylePropertiesMerge ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Merges into /@props@/ all the style information contained
-- in /@propsToMerge@/. If /@replace@/ is 'P.True', the values
-- will be overwritten, if it is 'P.False', the older values
-- will prevail.
-- 
-- /Since: 3.0/
stylePropertiesMerge ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a, IsStyleProperties b) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> b
    -- ^ /@propsToMerge@/: a second t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> Bool
    -- ^ /@replace@/: whether to replace values or not
    -> m ()
stylePropertiesMerge props propsToMerge replace = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    propsToMerge' <- unsafeManagedPtrCastPtr propsToMerge
    let replace' = (fromIntegral . fromEnum) replace
    gtk_style_properties_merge props' propsToMerge' replace'
    touchManagedPtr props
    touchManagedPtr propsToMerge
    return ()

#if defined(ENABLE_OVERLOADING)
data StylePropertiesMergeMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsStyleProperties a, IsStyleProperties b) => O.MethodInfo StylePropertiesMergeMethodInfo a signature where
    overloadedMethod = stylePropertiesMerge

#endif

-- method StyleProperties::set_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "styling property to set"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StateFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "state to set the value for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Value" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "new value for the property"
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

foreign import ccall "gtk_style_properties_set_property" gtk_style_properties_set_property :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CString ->                              -- property : TBasicType TUTF8
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "StateFlags"})
    Ptr GValue ->                           -- value : TInterface (Name {namespace = "GObject", name = "Value"})
    IO ()

{-# DEPRECATED stylePropertiesSetProperty ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Sets a styling property in /@props@/.
-- 
-- /Since: 3.0/
stylePropertiesSetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> T.Text
    -- ^ /@property@/: styling property to set
    -> [Gtk.Flags.StateFlags]
    -- ^ /@state@/: state to set the value for
    -> GValue
    -- ^ /@value@/: new value for the property
    -> m ()
stylePropertiesSetProperty props property state value = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    property' <- textToCString property
    let state' = gflagsToWord state
    value' <- unsafeManagedPtrGetPtr value
    gtk_style_properties_set_property props' property' state' value'
    touchManagedPtr props
    touchManagedPtr value
    freeMem property'
    return ()

#if defined(ENABLE_OVERLOADING)
data StylePropertiesSetPropertyMethodInfo
instance (signature ~ (T.Text -> [Gtk.Flags.StateFlags] -> GValue -> m ()), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesSetPropertyMethodInfo a signature where
    overloadedMethod = stylePropertiesSetProperty

#endif

-- method StyleProperties::unset_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleProperties"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "property to unset" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StateFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "state to unset" , sinceVersion = Nothing }
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

foreign import ccall "gtk_style_properties_unset_property" gtk_style_properties_unset_property :: 
    Ptr StyleProperties ->                  -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    CString ->                              -- property : TBasicType TUTF8
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "StateFlags"})
    IO ()

{-# DEPRECATED stylePropertiesUnsetProperty ["(Since version 3.16)","t'GI.Gtk.Objects.StyleProperties.StyleProperties' are deprecated."] #-}
-- | Unsets a style property in /@props@/.
-- 
-- /Since: 3.0/
stylePropertiesUnsetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsStyleProperties a) =>
    a
    -- ^ /@props@/: a t'GI.Gtk.Objects.StyleProperties.StyleProperties'
    -> T.Text
    -- ^ /@property@/: property to unset
    -> [Gtk.Flags.StateFlags]
    -- ^ /@state@/: state to unset
    -> m ()
stylePropertiesUnsetProperty props property state = liftIO $ do
    props' <- unsafeManagedPtrCastPtr props
    property' <- textToCString property
    let state' = gflagsToWord state
    gtk_style_properties_unset_property props' property' state'
    touchManagedPtr props
    freeMem property'
    return ()

#if defined(ENABLE_OVERLOADING)
data StylePropertiesUnsetPropertyMethodInfo
instance (signature ~ (T.Text -> [Gtk.Flags.StateFlags] -> m ()), MonadIO m, IsStyleProperties a) => O.MethodInfo StylePropertiesUnsetPropertyMethodInfo a signature where
    overloadedMethod = stylePropertiesUnsetProperty

#endif

