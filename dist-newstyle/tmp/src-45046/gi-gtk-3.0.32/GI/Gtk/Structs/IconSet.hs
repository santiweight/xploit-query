{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.IconSet
    ( 

-- * Exported types
    IconSet(..)                             ,
    noIconSet                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIconSetMethod                    ,
#endif


-- ** addSource #method:addSource#

#if defined(ENABLE_OVERLOADING)
    IconSetAddSourceMethodInfo              ,
#endif
    iconSetAddSource                        ,


-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    IconSetCopyMethodInfo                   ,
#endif
    iconSetCopy                             ,


-- ** getSizes #method:getSizes#

#if defined(ENABLE_OVERLOADING)
    IconSetGetSizesMethodInfo               ,
#endif
    iconSetGetSizes                         ,


-- ** new #method:new#

    iconSetNew                              ,


-- ** newFromPixbuf #method:newFromPixbuf#

    iconSetNewFromPixbuf                    ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    IconSetRefMethodInfo                    ,
#endif
    iconSetRef                              ,


-- ** renderIcon #method:renderIcon#

#if defined(ENABLE_OVERLOADING)
    IconSetRenderIconMethodInfo             ,
#endif
    iconSetRenderIcon                       ,


-- ** renderIconPixbuf #method:renderIconPixbuf#

#if defined(ENABLE_OVERLOADING)
    IconSetRenderIconPixbufMethodInfo       ,
#endif
    iconSetRenderIconPixbuf                 ,


-- ** renderIconSurface #method:renderIconSurface#

#if defined(ENABLE_OVERLOADING)
    IconSetRenderIconSurfaceMethodInfo      ,
#endif
    iconSetRenderIconSurface                ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    IconSetUnrefMethodInfo                  ,
#endif
    iconSetUnref                            ,




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

import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.Gdk.Objects.Window as Gdk.Window
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.Style as Gtk.Style
import {-# SOURCE #-} qualified GI.Gtk.Objects.StyleContext as Gtk.StyleContext
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.IconSource as Gtk.IconSource

-- | Memory-managed wrapper type.
newtype IconSet = IconSet (ManagedPtr IconSet)
    deriving (Eq)
foreign import ccall "gtk_icon_set_get_type" c_gtk_icon_set_get_type :: 
    IO GType

instance BoxedObject IconSet where
    boxedType _ = c_gtk_icon_set_get_type

-- | Convert 'IconSet' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IconSet where
    toGValue o = do
        gtype <- c_gtk_icon_set_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr IconSet)
        B.ManagedPtr.newBoxed IconSet ptr
        
    

-- | A convenience alias for `Nothing` :: `Maybe` `IconSet`.
noIconSet :: Maybe IconSet
noIconSet = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IconSet
type instance O.AttributeList IconSet = IconSetAttributeList
type IconSetAttributeList = ('[ ] :: [(Symbol, *)])
#endif

-- method IconSet::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSet" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_new" gtk_icon_set_new :: 
    IO (Ptr IconSet)

{-# DEPRECATED iconSetNew ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Creates a new t'GI.Gtk.Structs.IconSet.IconSet'. A t'GI.Gtk.Structs.IconSet.IconSet' represents a single icon
-- in various sizes and widget states. It can provide a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf'
-- for a given size and state on request, and automatically caches
-- some of the rendered t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' objects.
-- 
-- Normally you would use 'GI.Gtk.Objects.Widget.widgetRenderIconPixbuf' instead of
-- using t'GI.Gtk.Structs.IconSet.IconSet' directly. The one case where you’d use
-- t'GI.Gtk.Structs.IconSet.IconSet' is to create application-specific icon sets to place in
-- a t'GI.Gtk.Objects.IconFactory.IconFactory'.
iconSetNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IconSet
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.IconSet.IconSet'
iconSetNew  = liftIO $ do
    result <- gtk_icon_set_new
    checkUnexpectedReturnNULL "iconSetNew" result
    result' <- (wrapBoxed IconSet) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconSet::new_from_pixbuf
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkPixbuf" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSet" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_new_from_pixbuf" gtk_icon_set_new_from_pixbuf :: 
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO (Ptr IconSet)

{-# DEPRECATED iconSetNewFromPixbuf ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Creates a new t'GI.Gtk.Structs.IconSet.IconSet' with /@pixbuf@/ as the default\/fallback
-- source image. If you don’t add any additional t'GI.Gtk.Structs.IconSource.IconSource' to the
-- icon set, all variants of the icon will be created from /@pixbuf@/,
-- using scaling, pixelation, etc. as required to adjust the icon size
-- or make the icon look insensitive\/prelighted.
iconSetNewFromPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, GdkPixbuf.Pixbuf.IsPixbuf a) =>
    a
    -- ^ /@pixbuf@/: a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf'
    -> m IconSet
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.IconSet.IconSet'
iconSetNewFromPixbuf pixbuf = liftIO $ do
    pixbuf' <- unsafeManagedPtrCastPtr pixbuf
    result <- gtk_icon_set_new_from_pixbuf pixbuf'
    checkUnexpectedReturnNULL "iconSetNewFromPixbuf" result
    result' <- (wrapBoxed IconSet) result
    touchManagedPtr pixbuf
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconSet::add_source
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSource" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSource" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_set_add_source" gtk_icon_set_add_source :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    Ptr Gtk.IconSource.IconSource ->        -- source : TInterface (Name {namespace = "Gtk", name = "IconSource"})
    IO ()

{-# DEPRECATED iconSetAddSource ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Icon sets have a list of t'GI.Gtk.Structs.IconSource.IconSource', which they use as base
-- icons for rendering icons in different states and sizes. Icons are
-- scaled, made to look insensitive, etc. in
-- 'GI.Gtk.Structs.IconSet.iconSetRenderIcon', but t'GI.Gtk.Structs.IconSet.IconSet' needs base images to
-- work with. The base images and when to use them are described by
-- a t'GI.Gtk.Structs.IconSource.IconSource'.
-- 
-- This function copies /@source@/, so you can reuse the same source immediately
-- without affecting the icon set.
-- 
-- An example of when you’d use this function: a web browser’s \"Back
-- to Previous Page\" icon might point in a different direction in
-- Hebrew and in English; it might look different when insensitive;
-- and it might change size depending on toolbar mode (small\/large
-- icons). So a single icon set would contain all those variants of
-- the icon, and you might add a separate source for each one.
-- 
-- You should nearly always add a “default” icon source with all
-- fields wildcarded, which will be used as a fallback if no more
-- specific source matches. t'GI.Gtk.Structs.IconSet.IconSet' always prefers more specific
-- icon sources to more generic icon sources. The order in which you
-- add the sources to the icon set does not matter.
-- 
-- 'GI.Gtk.Structs.IconSet.iconSetNewFromPixbuf' creates a new icon set with a
-- default icon source based on the given pixbuf.
iconSetAddSource ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> Gtk.IconSource.IconSource
    -- ^ /@source@/: a t'GI.Gtk.Structs.IconSource.IconSource'
    -> m ()
iconSetAddSource iconSet source = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    source' <- unsafeManagedPtrGetPtr source
    gtk_icon_set_add_source iconSet' source'
    touchManagedPtr iconSet
    touchManagedPtr source
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSetAddSourceMethodInfo
instance (signature ~ (Gtk.IconSource.IconSource -> m ()), MonadIO m) => O.MethodInfo IconSetAddSourceMethodInfo IconSet signature where
    overloadedMethod = iconSetAddSource

#endif

-- method IconSet::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSet" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_copy" gtk_icon_set_copy :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    IO (Ptr IconSet)

{-# DEPRECATED iconSetCopy ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Copies /@iconSet@/ by value.
iconSetCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> m IconSet
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.IconSet.IconSet' identical to the first.
iconSetCopy iconSet = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    result <- gtk_icon_set_copy iconSet'
    checkUnexpectedReturnNULL "iconSetCopy" result
    result' <- (wrapBoxed IconSet) result
    touchManagedPtr iconSet
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSetCopyMethodInfo
instance (signature ~ (m IconSet), MonadIO m) => O.MethodInfo IconSetCopyMethodInfo IconSet signature where
    overloadedMethod = iconSetCopy

#endif

-- method IconSet::get_sizes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sizes"
--           , argType = TCArray False (-1) 2 (TBasicType TInt)
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location\n    for array of sizes (#GtkIconSize)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "n_sizes"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store number of elements in returned array"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_sizes"
--              , argType = TBasicType TInt
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just "location to store number of elements in returned array"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_get_sizes" gtk_icon_set_get_sizes :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    Ptr (Ptr Int32) ->                      -- sizes : TCArray False (-1) 2 (TBasicType TInt)
    Ptr Int32 ->                            -- n_sizes : TBasicType TInt
    IO ()

{-# DEPRECATED iconSetGetSizes ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Obtains a list of icon sizes this icon set can render. The returned
-- array must be freed with 'GI.GLib.Functions.free'.
iconSetGetSizes ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> m ([Int32])
iconSetGetSizes iconSet = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    sizes <- allocMem :: IO (Ptr (Ptr Int32))
    nSizes <- allocMem :: IO (Ptr Int32)
    gtk_icon_set_get_sizes iconSet' sizes nSizes
    nSizes' <- peek nSizes
    sizes' <- peek sizes
    sizes'' <- (unpackStorableArrayWithLength nSizes') sizes'
    freeMem sizes'
    touchManagedPtr iconSet
    freeMem sizes
    freeMem nSizes
    return sizes''

#if defined(ENABLE_OVERLOADING)
data IconSetGetSizesMethodInfo
instance (signature ~ (m ([Int32])), MonadIO m) => O.MethodInfo IconSetGetSizesMethodInfo IconSet signature where
    overloadedMethod = iconSetGetSizes

#endif

-- method IconSet::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSet" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_ref" gtk_icon_set_ref :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    IO (Ptr IconSet)

{-# DEPRECATED iconSetRef ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Increments the reference count on /@iconSet@/.
iconSetRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'.
    -> m IconSet
    -- ^ __Returns:__ /@iconSet@/.
iconSetRef iconSet = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    result <- gtk_icon_set_ref iconSet'
    checkUnexpectedReturnNULL "iconSetRef" result
    result' <- (wrapBoxed IconSet) result
    touchManagedPtr iconSet
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSetRefMethodInfo
instance (signature ~ (m IconSet), MonadIO m) => O.MethodInfo IconSetRefMethodInfo IconSet signature where
    overloadedMethod = iconSetRef

#endif

-- method IconSet::render_icon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "style"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Style" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyle associated with @widget, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "direction"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextDirection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text direction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StateType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "widget state" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "icon size (#GtkIconSize). A size of `(GtkIconSize)-1`\n       means render at the size of the source and don\8217t scale."
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText =
--                     Just
--                       "widget that will display the icon, or %NULL.\n         The only use that is typically made of this\n         is to determine the appropriate #GdkScreen."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "detail"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "detail to pass to the theme engine, or %NULL.\n         Note that passing a detail of anything but %NULL\n         will disable caching."
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

foreign import ccall "gtk_icon_set_render_icon" gtk_icon_set_render_icon :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    Ptr Gtk.Style.Style ->                  -- style : TInterface (Name {namespace = "Gtk", name = "Style"})
    CUInt ->                                -- direction : TInterface (Name {namespace = "Gtk", name = "TextDirection"})
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "StateType"})
    Int32 ->                                -- size : TBasicType TInt
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- detail : TBasicType TUTF8
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED iconSetRenderIcon ["(Since version 3.0)","Use 'GI.Gtk.Structs.IconSet.iconSetRenderIconPixbuf' instead"] #-}
-- | Renders an icon using 'GI.Gtk.Objects.Style.styleRenderIcon'. In most cases,
-- 'GI.Gtk.Objects.Widget.widgetRenderIcon' is better, since it automatically provides
-- most of the arguments from the current widget settings.  This
-- function never returns 'P.Nothing'; if the icon can’t be rendered
-- (perhaps because an image file fails to load), a default \"missing
-- image\" icon will be returned instead.
iconSetRenderIcon ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Style.IsStyle a, Gtk.Widget.IsWidget b) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> Maybe (a)
    -- ^ /@style@/: a t'GI.Gtk.Objects.Style.Style' associated with /@widget@/, or 'P.Nothing'
    -> Gtk.Enums.TextDirection
    -- ^ /@direction@/: text direction
    -> Gtk.Enums.StateType
    -- ^ /@state@/: widget state
    -> Int32
    -- ^ /@size@/: icon size (t'GI.Gtk.Enums.IconSize'). A size of @(GtkIconSize)-1@
    --        means render at the size of the source and don’t scale.
    -> Maybe (b)
    -- ^ /@widget@/: widget that will display the icon, or 'P.Nothing'.
    --          The only use that is typically made of this
    --          is to determine the appropriate t'GI.Gdk.Objects.Screen.Screen'.
    -> Maybe (T.Text)
    -- ^ /@detail@/: detail to pass to the theme engine, or 'P.Nothing'.
    --          Note that passing a detail of anything but 'P.Nothing'
    --          will disable caching.
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' to be displayed
iconSetRenderIcon iconSet style direction state size widget detail = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    maybeStyle <- case style of
        Nothing -> return nullPtr
        Just jStyle -> do
            jStyle' <- unsafeManagedPtrCastPtr jStyle
            return jStyle'
    let direction' = (fromIntegral . fromEnum) direction
    let state' = (fromIntegral . fromEnum) state
    maybeWidget <- case widget of
        Nothing -> return nullPtr
        Just jWidget -> do
            jWidget' <- unsafeManagedPtrCastPtr jWidget
            return jWidget'
    maybeDetail <- case detail of
        Nothing -> return nullPtr
        Just jDetail -> do
            jDetail' <- textToCString jDetail
            return jDetail'
    result <- gtk_icon_set_render_icon iconSet' maybeStyle direction' state' size maybeWidget maybeDetail
    checkUnexpectedReturnNULL "iconSetRenderIcon" result
    result' <- (wrapObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr iconSet
    whenJust style touchManagedPtr
    whenJust widget touchManagedPtr
    freeMem maybeDetail
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSetRenderIconMethodInfo
instance (signature ~ (Maybe (a) -> Gtk.Enums.TextDirection -> Gtk.Enums.StateType -> Int32 -> Maybe (b) -> Maybe (T.Text) -> m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m, Gtk.Style.IsStyle a, Gtk.Widget.IsWidget b) => O.MethodInfo IconSetRenderIconMethodInfo IconSet signature where
    overloadedMethod = iconSetRenderIcon

#endif

-- method IconSet::render_icon_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleContext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "icon size (#GtkIconSize). A size of `(GtkIconSize)-1`\n       means render at the size of the source and don\8217t scale."
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

foreign import ccall "gtk_icon_set_render_icon_pixbuf" gtk_icon_set_render_icon_pixbuf :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    Ptr Gtk.StyleContext.StyleContext ->    -- context : TInterface (Name {namespace = "Gtk", name = "StyleContext"})
    Int32 ->                                -- size : TBasicType TInt
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

{-# DEPRECATED iconSetRenderIconPixbuf ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Renders an icon using 'GI.Gtk.Functions.renderIconPixbuf'. In most cases,
-- 'GI.Gtk.Objects.Widget.widgetRenderIconPixbuf' is better, since it automatically provides
-- most of the arguments from the current widget settings.  This
-- function never returns 'P.Nothing'; if the icon can’t be rendered
-- (perhaps because an image file fails to load), a default \"missing
-- image\" icon will be returned instead.
-- 
-- /Since: 3.0/
iconSetRenderIconPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.StyleContext.IsStyleContext a) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> a
    -- ^ /@context@/: a t'GI.Gtk.Objects.StyleContext.StyleContext'
    -> Int32
    -- ^ /@size@/: icon size (t'GI.Gtk.Enums.IconSize'). A size of @(GtkIconSize)-1@
    --        means render at the size of the source and don’t scale.
    -> m GdkPixbuf.Pixbuf.Pixbuf
    -- ^ __Returns:__ a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' to be displayed
iconSetRenderIconPixbuf iconSet context size = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    context' <- unsafeManagedPtrCastPtr context
    result <- gtk_icon_set_render_icon_pixbuf iconSet' context' size
    checkUnexpectedReturnNULL "iconSetRenderIconPixbuf" result
    result' <- (wrapObject GdkPixbuf.Pixbuf.Pixbuf) result
    touchManagedPtr iconSet
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSetRenderIconPixbufMethodInfo
instance (signature ~ (a -> Int32 -> m GdkPixbuf.Pixbuf.Pixbuf), MonadIO m, Gtk.StyleContext.IsStyleContext a) => O.MethodInfo IconSetRenderIconPixbufMethodInfo IconSet signature where
    overloadedMethod = iconSetRenderIconPixbuf

#endif

-- method IconSet::render_icon_surface
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StyleContext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStyleContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "icon size (#GtkIconSize). A size of `(GtkIconSize)-1`\n       means render at the size of the source and don\8217t scale."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "scale"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the window scale to render for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "for_window"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GdkWindow to optimize drawing for, or %NULL"
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
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_set_render_icon_surface" gtk_icon_set_render_icon_surface :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    Ptr Gtk.StyleContext.StyleContext ->    -- context : TInterface (Name {namespace = "Gtk", name = "StyleContext"})
    Int32 ->                                -- size : TBasicType TInt
    Int32 ->                                -- scale : TBasicType TInt
    Ptr Gdk.Window.Window ->                -- for_window : TInterface (Name {namespace = "Gdk", name = "Window"})
    IO (Ptr Cairo.Surface.Surface)

{-# DEPRECATED iconSetRenderIconSurface ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Renders an icon using 'GI.Gtk.Functions.renderIconPixbuf' and converts it to a
-- cairo surface.
-- 
-- This function never returns 'P.Nothing'; if the icon can’t be rendered
-- (perhaps because an image file fails to load), a default \"missing
-- image\" icon will be returned instead.
-- 
-- /Since: 3.10/
iconSetRenderIconSurface ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.StyleContext.IsStyleContext a, Gdk.Window.IsWindow b) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> a
    -- ^ /@context@/: a t'GI.Gtk.Objects.StyleContext.StyleContext'
    -> Int32
    -- ^ /@size@/: icon size (t'GI.Gtk.Enums.IconSize'). A size of @(GtkIconSize)-1@
    --        means render at the size of the source and don’t scale.
    -> Int32
    -- ^ /@scale@/: the window scale to render for
    -> Maybe (b)
    -- ^ /@forWindow@/: t'GI.Gdk.Objects.Window.Window' to optimize drawing for, or 'P.Nothing'
    -> m Cairo.Surface.Surface
    -- ^ __Returns:__ a t'GI.Cairo.Structs.Surface.Surface' to be displayed
iconSetRenderIconSurface iconSet context size scale forWindow = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    context' <- unsafeManagedPtrCastPtr context
    maybeForWindow <- case forWindow of
        Nothing -> return nullPtr
        Just jForWindow -> do
            jForWindow' <- unsafeManagedPtrCastPtr jForWindow
            return jForWindow'
    result <- gtk_icon_set_render_icon_surface iconSet' context' size scale maybeForWindow
    checkUnexpectedReturnNULL "iconSetRenderIconSurface" result
    result' <- (wrapBoxed Cairo.Surface.Surface) result
    touchManagedPtr iconSet
    touchManagedPtr context
    whenJust forWindow touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
data IconSetRenderIconSurfaceMethodInfo
instance (signature ~ (a -> Int32 -> Int32 -> Maybe (b) -> m Cairo.Surface.Surface), MonadIO m, Gtk.StyleContext.IsStyleContext a, Gdk.Window.IsWindow b) => O.MethodInfo IconSetRenderIconSurfaceMethodInfo IconSet signature where
    overloadedMethod = iconSetRenderIconSurface

#endif

-- method IconSet::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_set"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSet" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconSet" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_set_unref" gtk_icon_set_unref :: 
    Ptr IconSet ->                          -- icon_set : TInterface (Name {namespace = "Gtk", name = "IconSet"})
    IO ()

{-# DEPRECATED iconSetUnref ["(Since version 3.10)","Use t'GI.Gtk.Objects.IconTheme.IconTheme' instead."] #-}
-- | Decrements the reference count on /@iconSet@/, and frees memory
-- if the reference count reaches 0.
iconSetUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    IconSet
    -- ^ /@iconSet@/: a t'GI.Gtk.Structs.IconSet.IconSet'
    -> m ()
iconSetUnref iconSet = liftIO $ do
    iconSet' <- unsafeManagedPtrGetPtr iconSet
    gtk_icon_set_unref iconSet'
    touchManagedPtr iconSet
    return ()

#if defined(ENABLE_OVERLOADING)
data IconSetUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo IconSetUnrefMethodInfo IconSet signature where
    overloadedMethod = iconSetUnref

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveIconSetMethod (t :: Symbol) (o :: *) :: * where
    ResolveIconSetMethod "addSource" o = IconSetAddSourceMethodInfo
    ResolveIconSetMethod "copy" o = IconSetCopyMethodInfo
    ResolveIconSetMethod "ref" o = IconSetRefMethodInfo
    ResolveIconSetMethod "renderIcon" o = IconSetRenderIconMethodInfo
    ResolveIconSetMethod "renderIconPixbuf" o = IconSetRenderIconPixbufMethodInfo
    ResolveIconSetMethod "renderIconSurface" o = IconSetRenderIconSurfaceMethodInfo
    ResolveIconSetMethod "unref" o = IconSetUnrefMethodInfo
    ResolveIconSetMethod "getSizes" o = IconSetGetSizesMethodInfo
    ResolveIconSetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIconSetMethod t IconSet, O.MethodInfo info IconSet p) => OL.IsLabel t (IconSet -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

