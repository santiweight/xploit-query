{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkSymbolicColor is a boxed type that represents a symbolic color.
-- It is the result of parsing a
-- [color expression][gtkcssprovider-symbolic-colors].
-- To obtain the color represented by a GtkSymbolicColor, it has to
-- be resolved with 'GI.Gtk.Structs.SymbolicColor.symbolicColorResolve', which replaces all
-- symbolic color references by the colors they refer to (in a given
-- context) and evaluates mix, shade and other expressions, resulting
-- in a t'GI.Gdk.Structs.RGBA.RGBA' value.
-- 
-- It is not normally necessary to deal directly with @/GtkSymbolicColors/@,
-- since they are mostly used behind the scenes by t'GI.Gtk.Objects.StyleContext.StyleContext' and
-- t'GI.Gtk.Objects.CssProvider.CssProvider'.
-- 
-- t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated. Symbolic colors are considered an
-- implementation detail of GTK+.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.SymbolicColor
    ( 

-- * Exported types
    SymbolicColor(..)                       ,
    noSymbolicColor                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSymbolicColorMethod              ,
#endif


-- ** newAlpha #method:newAlpha#

    symbolicColorNewAlpha                   ,


-- ** newLiteral #method:newLiteral#

    symbolicColorNewLiteral                 ,


-- ** newMix #method:newMix#

    symbolicColorNewMix                     ,


-- ** newName #method:newName#

    symbolicColorNewName                    ,


-- ** newShade #method:newShade#

    symbolicColorNewShade                   ,


-- ** newWin32 #method:newWin32#

    symbolicColorNewWin32                   ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    SymbolicColorRefMethodInfo              ,
#endif
    symbolicColorRef                        ,


-- ** resolve #method:resolve#

#if defined(ENABLE_OVERLOADING)
    SymbolicColorResolveMethodInfo          ,
#endif
    symbolicColorResolve                    ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    SymbolicColorToStringMethodInfo         ,
#endif
    symbolicColorToString                   ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    SymbolicColorUnrefMethodInfo            ,
#endif
    symbolicColorUnref                      ,




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

import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import {-# SOURCE #-} qualified GI.Gtk.Objects.StyleProperties as Gtk.StyleProperties

-- | Memory-managed wrapper type.
newtype SymbolicColor = SymbolicColor (ManagedPtr SymbolicColor)
    deriving (Eq)
foreign import ccall "gtk_symbolic_color_get_type" c_gtk_symbolic_color_get_type :: 
    IO GType

instance BoxedObject SymbolicColor where
    boxedType _ = c_gtk_symbolic_color_get_type

-- | Convert 'SymbolicColor' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SymbolicColor where
    toGValue o = do
        gtype <- c_gtk_symbolic_color_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr SymbolicColor)
        B.ManagedPtr.newBoxed SymbolicColor ptr
        
    

-- | A convenience alias for `Nothing` :: `Maybe` `SymbolicColor`.
noSymbolicColor :: Maybe SymbolicColor
noSymbolicColor = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SymbolicColor
type instance O.AttributeList SymbolicColor = SymbolicColorAttributeList
type SymbolicColorAttributeList = ('[ ] :: [(Symbol, *)])
#endif

-- method SymbolicColor::new_alpha
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "another #GtkSymbolicColor"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "factor"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "factor to apply to @color alpha"
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

foreign import ccall "gtk_symbolic_color_new_alpha" gtk_symbolic_color_new_alpha :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    CDouble ->                              -- factor : TBasicType TDouble
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewAlpha ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color by modifying the relative alpha
-- value of /@color@/. A factor \< 1.0 would resolve to a more
-- transparent color, while > 1.0 would resolve to a more
-- opaque color.
-- 
-- /Since: 3.0/
symbolicColorNewAlpha ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color@/: another t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
    -> Double
    -- ^ /@factor@/: factor to apply to /@color@/ alpha
    -> m SymbolicColor
    -- ^ __Returns:__ A newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewAlpha color factor = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    let factor' = realToFrac factor
    result <- gtk_symbolic_color_new_alpha color' factor'
    checkUnexpectedReturnNULL "symbolicColorNewAlpha" result
    result' <- (wrapBoxed SymbolicColor) result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::new_literal
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA" , sinceVersion = Nothing }
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

foreign import ccall "gtk_symbolic_color_new_literal" gtk_symbolic_color_new_literal :: 
    Ptr Gdk.RGBA.RGBA ->                    -- color : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewLiteral ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color pointing to a literal color.
-- 
-- /Since: 3.0/
symbolicColorNewLiteral ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gdk.RGBA.RGBA
    -- ^ /@color@/: a t'GI.Gdk.Structs.RGBA.RGBA'
    -> m SymbolicColor
    -- ^ __Returns:__ a newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewLiteral color = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    result <- gtk_symbolic_color_new_literal color'
    checkUnexpectedReturnNULL "symbolicColorNewLiteral" result
    result' <- (wrapBoxed SymbolicColor) result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::new_mix
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "color1"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "color to mix" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color2"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "another color to mix"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "factor"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "mix factor" , sinceVersion = Nothing }
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

foreign import ccall "gtk_symbolic_color_new_mix" gtk_symbolic_color_new_mix :: 
    Ptr SymbolicColor ->                    -- color1 : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    Ptr SymbolicColor ->                    -- color2 : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    CDouble ->                              -- factor : TBasicType TDouble
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewMix ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color defined as a mix of another
-- two colors. a mix factor of 0 would resolve to /@color1@/,
-- while a factor of 1 would resolve to /@color2@/.
-- 
-- /Since: 3.0/
symbolicColorNewMix ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color1@/: color to mix
    -> SymbolicColor
    -- ^ /@color2@/: another color to mix
    -> Double
    -- ^ /@factor@/: mix factor
    -> m SymbolicColor
    -- ^ __Returns:__ A newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewMix color1 color2 factor = liftIO $ do
    color1' <- unsafeManagedPtrGetPtr color1
    color2' <- unsafeManagedPtrGetPtr color2
    let factor' = realToFrac factor
    result <- gtk_symbolic_color_new_mix color1' color2' factor'
    checkUnexpectedReturnNULL "symbolicColorNewMix" result
    result' <- (wrapBoxed SymbolicColor) result
    touchManagedPtr color1
    touchManagedPtr color2
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::new_name
-- method type : Constructor
-- Args: [ Arg
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SymbolicColor" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_symbolic_color_new_name" gtk_symbolic_color_new_name :: 
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewName ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color pointing to an unresolved named
-- color. See 'GI.Gtk.Objects.StyleContext.styleContextLookupColor' and
-- 'GI.Gtk.Objects.StyleProperties.stylePropertiesLookupColor'.
-- 
-- /Since: 3.0/
symbolicColorNewName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: color name
    -> m SymbolicColor
    -- ^ __Returns:__ a newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewName name = liftIO $ do
    name' <- textToCString name
    result <- gtk_symbolic_color_new_name name'
    checkUnexpectedReturnNULL "symbolicColorNewName" result
    result' <- (wrapBoxed SymbolicColor) result
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::new_shade
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "another #GtkSymbolicColor"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "factor"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "shading factor to apply to @color"
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

foreign import ccall "gtk_symbolic_color_new_shade" gtk_symbolic_color_new_shade :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    CDouble ->                              -- factor : TBasicType TDouble
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewShade ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color defined as a shade of
-- another color. A factor > 1.0 would resolve to
-- a brighter color, while \< 1.0 would resolve to
-- a darker color.
-- 
-- /Since: 3.0/
symbolicColorNewShade ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color@/: another t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
    -> Double
    -- ^ /@factor@/: shading factor to apply to /@color@/
    -> m SymbolicColor
    -- ^ __Returns:__ A newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewShade color factor = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    let factor' = realToFrac factor
    result <- gtk_symbolic_color_new_shade color' factor'
    checkUnexpectedReturnNULL "symbolicColorNewShade" result
    result' <- (wrapBoxed SymbolicColor) result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::new_win32
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "theme_class"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The theme class to pull color from"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The color id" , sinceVersion = Nothing }
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

foreign import ccall "gtk_symbolic_color_new_win32" gtk_symbolic_color_new_win32 :: 
    CString ->                              -- theme_class : TBasicType TUTF8
    Int32 ->                                -- id : TBasicType TInt
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorNewWin32 ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Creates a symbolic color based on the current win32
-- theme.
-- 
-- Note that while this call is available on all platforms
-- the actual value returned is not reliable on non-win32
-- platforms.
-- 
-- /Since: 3.4/
symbolicColorNewWin32 ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@themeClass@/: The theme class to pull color from
    -> Int32
    -- ^ /@id@/: The color id
    -> m SymbolicColor
    -- ^ __Returns:__ A newly created t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
symbolicColorNewWin32 themeClass id = liftIO $ do
    themeClass' <- textToCString themeClass
    result <- gtk_symbolic_color_new_win32 themeClass' id
    checkUnexpectedReturnNULL "symbolicColorNewWin32" result
    result' <- (wrapBoxed SymbolicColor) result
    freeMem themeClass'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SymbolicColor::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSymbolicColor"
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

foreign import ccall "gtk_symbolic_color_ref" gtk_symbolic_color_ref :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    IO (Ptr SymbolicColor)

{-# DEPRECATED symbolicColorRef ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Increases the reference count of /@color@/
-- 
-- /Since: 3.0/
symbolicColorRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color@/: a t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
    -> m SymbolicColor
    -- ^ __Returns:__ the same /@color@/
symbolicColorRef color = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    result <- gtk_symbolic_color_ref color'
    checkUnexpectedReturnNULL "symbolicColorRef" result
    result' <- (wrapBoxed SymbolicColor) result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
data SymbolicColorRefMethodInfo
instance (signature ~ (m SymbolicColor), MonadIO m) => O.MethodInfo SymbolicColorRefMethodInfo SymbolicColor signature where
    overloadedMethod = symbolicColorRef

#endif

-- method SymbolicColor::resolve
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSymbolicColor"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "props"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleProperties" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "#GtkStyleProperties to use when resolving\n   named colors, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resolved_color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the resolved color"
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

foreign import ccall "gtk_symbolic_color_resolve" gtk_symbolic_color_resolve :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    Ptr Gtk.StyleProperties.StyleProperties -> -- props : TInterface (Name {namespace = "Gtk", name = "StyleProperties"})
    Ptr Gdk.RGBA.RGBA ->                    -- resolved_color : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO CInt

{-# DEPRECATED symbolicColorResolve ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | If /@color@/ is resolvable, /@resolvedColor@/ will be filled in
-- with the resolved color, and 'P.True' will be returned. Generally,
-- if /@color@/ can’t be resolved, it is due to it being defined on
-- top of a named color that doesn’t exist in /@props@/.
-- 
-- When /@props@/ is 'P.Nothing', resolving of named colors will fail, so if
-- your /@color@/ is or references such a color, this function will
-- return 'P.False'.
-- 
-- /Since: 3.0/
symbolicColorResolve ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.StyleProperties.IsStyleProperties a) =>
    SymbolicColor
    -- ^ /@color@/: a t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
    -> Maybe (a)
    -- ^ /@props@/: t'GI.Gtk.Objects.StyleProperties.StyleProperties' to use when resolving
    --    named colors, or 'P.Nothing'
    -> m ((Bool, Gdk.RGBA.RGBA))
    -- ^ __Returns:__ 'P.True' if the color has been resolved
symbolicColorResolve color props = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    maybeProps <- case props of
        Nothing -> return nullPtr
        Just jProps -> do
            jProps' <- unsafeManagedPtrCastPtr jProps
            return jProps'
    resolvedColor <- callocBoxedBytes 32 :: IO (Ptr Gdk.RGBA.RGBA)
    result <- gtk_symbolic_color_resolve color' maybeProps resolvedColor
    let result' = (/= 0) result
    resolvedColor' <- (wrapBoxed Gdk.RGBA.RGBA) resolvedColor
    touchManagedPtr color
    whenJust props touchManagedPtr
    return (result', resolvedColor')

#if defined(ENABLE_OVERLOADING)
data SymbolicColorResolveMethodInfo
instance (signature ~ (Maybe (a) -> m ((Bool, Gdk.RGBA.RGBA))), MonadIO m, Gtk.StyleProperties.IsStyleProperties a) => O.MethodInfo SymbolicColorResolveMethodInfo SymbolicColor signature where
    overloadedMethod = symbolicColorResolve

#endif

-- method SymbolicColor::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "color to convert to a string"
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

foreign import ccall "gtk_symbolic_color_to_string" gtk_symbolic_color_to_string :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    IO CString

{-# DEPRECATED symbolicColorToString ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Converts the given /@color@/ to a string representation. This is useful
-- both for debugging and for serialization of strings. The format of
-- the string may change between different versions of GTK, but it is
-- guaranteed that the GTK css parser is able to read the string and
-- create the same symbolic color from it.
symbolicColorToString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color@/: color to convert to a string
    -> m T.Text
    -- ^ __Returns:__ a new string representing /@color@/
symbolicColorToString color = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    result <- gtk_symbolic_color_to_string color'
    checkUnexpectedReturnNULL "symbolicColorToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
data SymbolicColorToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.MethodInfo SymbolicColorToStringMethodInfo SymbolicColor signature where
    overloadedMethod = symbolicColorToString

#endif

-- method SymbolicColor::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "color"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SymbolicColor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSymbolicColor"
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

foreign import ccall "gtk_symbolic_color_unref" gtk_symbolic_color_unref :: 
    Ptr SymbolicColor ->                    -- color : TInterface (Name {namespace = "Gtk", name = "SymbolicColor"})
    IO ()

{-# DEPRECATED symbolicColorUnref ["(Since version 3.8)","t'GI.Gtk.Structs.SymbolicColor.SymbolicColor' is deprecated."] #-}
-- | Decreases the reference count of /@color@/, freeing its memory if the
-- reference count reaches 0.
-- 
-- /Since: 3.0/
symbolicColorUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SymbolicColor
    -- ^ /@color@/: a t'GI.Gtk.Structs.SymbolicColor.SymbolicColor'
    -> m ()
symbolicColorUnref color = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    gtk_symbolic_color_unref color'
    touchManagedPtr color
    return ()

#if defined(ENABLE_OVERLOADING)
data SymbolicColorUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo SymbolicColorUnrefMethodInfo SymbolicColor signature where
    overloadedMethod = symbolicColorUnref

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveSymbolicColorMethod (t :: Symbol) (o :: *) :: * where
    ResolveSymbolicColorMethod "ref" o = SymbolicColorRefMethodInfo
    ResolveSymbolicColorMethod "resolve" o = SymbolicColorResolveMethodInfo
    ResolveSymbolicColorMethod "toString" o = SymbolicColorToStringMethodInfo
    ResolveSymbolicColorMethod "unref" o = SymbolicColorUnrefMethodInfo
    ResolveSymbolicColorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSymbolicColorMethod t SymbolicColor, O.MethodInfo info SymbolicColor p) => OL.IsLabel t (SymbolicColor -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

