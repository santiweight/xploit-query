{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor' is a spot in the buffer where child widgets can
-- be “anchored” (inserted inline, as if they were characters). The anchor
-- can have multiple widgets anchored, to allow for multiple views.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TextChildAnchor
    ( 

-- * Exported types
    TextChildAnchor(..)                     ,
    IsTextChildAnchor                       ,
    toTextChildAnchor                       ,
    noTextChildAnchor                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTextChildAnchorMethod            ,
#endif


-- ** getDeleted #method:getDeleted#

#if defined(ENABLE_OVERLOADING)
    TextChildAnchorGetDeletedMethodInfo     ,
#endif
    textChildAnchorGetDeleted               ,


-- ** getWidgets #method:getWidgets#

#if defined(ENABLE_OVERLOADING)
    TextChildAnchorGetWidgetsMethodInfo     ,
#endif
    textChildAnchorGetWidgets               ,


-- ** new #method:new#

    textChildAnchorNew                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype TextChildAnchor = TextChildAnchor (ManagedPtr TextChildAnchor)
    deriving (Eq)
foreign import ccall "gtk_text_child_anchor_get_type"
    c_gtk_text_child_anchor_get_type :: IO GType

instance GObject TextChildAnchor where
    gobjectType = c_gtk_text_child_anchor_get_type
    

-- | Convert 'TextChildAnchor' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TextChildAnchor where
    toGValue o = do
        gtype <- c_gtk_text_child_anchor_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TextChildAnchor)
        B.ManagedPtr.newObject TextChildAnchor ptr
        
    

-- | Type class for types which can be safely cast to `TextChildAnchor`, for instance with `toTextChildAnchor`.
class (GObject o, O.IsDescendantOf TextChildAnchor o) => IsTextChildAnchor o
instance (GObject o, O.IsDescendantOf TextChildAnchor o) => IsTextChildAnchor o

instance O.HasParentTypes TextChildAnchor
type instance O.ParentTypes TextChildAnchor = '[GObject.Object.Object]

-- | Cast to `TextChildAnchor`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTextChildAnchor :: (MonadIO m, IsTextChildAnchor o) => o -> m TextChildAnchor
toTextChildAnchor = liftIO . unsafeCastTo TextChildAnchor

-- | A convenience alias for `Nothing` :: `Maybe` `TextChildAnchor`.
noTextChildAnchor :: Maybe TextChildAnchor
noTextChildAnchor = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTextChildAnchorMethod (t :: Symbol) (o :: *) :: * where
    ResolveTextChildAnchorMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTextChildAnchorMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTextChildAnchorMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTextChildAnchorMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTextChildAnchorMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTextChildAnchorMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTextChildAnchorMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTextChildAnchorMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTextChildAnchorMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTextChildAnchorMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTextChildAnchorMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTextChildAnchorMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTextChildAnchorMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTextChildAnchorMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTextChildAnchorMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTextChildAnchorMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTextChildAnchorMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTextChildAnchorMethod "getDeleted" o = TextChildAnchorGetDeletedMethodInfo
    ResolveTextChildAnchorMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTextChildAnchorMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTextChildAnchorMethod "getWidgets" o = TextChildAnchorGetWidgetsMethodInfo
    ResolveTextChildAnchorMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTextChildAnchorMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTextChildAnchorMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTextChildAnchorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTextChildAnchorMethod t TextChildAnchor, O.MethodInfo info TextChildAnchor p) => OL.IsLabel t (TextChildAnchor -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TextChildAnchor
type instance O.AttributeList TextChildAnchor = TextChildAnchorAttributeList
type TextChildAnchorAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TextChildAnchor = TextChildAnchorSignalList
type TextChildAnchorSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TextChildAnchor::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "TextChildAnchor" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_child_anchor_new" gtk_text_child_anchor_new :: 
    IO (Ptr TextChildAnchor)

-- | Creates a new t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor'. Usually you would then insert
-- it into a t'GI.Gtk.Objects.TextBuffer.TextBuffer' with 'GI.Gtk.Objects.TextBuffer.textBufferInsertChildAnchor'.
-- To perform the creation and insertion in one step, use the
-- convenience function 'GI.Gtk.Objects.TextBuffer.textBufferCreateChildAnchor'.
textChildAnchorNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m TextChildAnchor
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor'
textChildAnchorNew  = liftIO $ do
    result <- gtk_text_child_anchor_new
    checkUnexpectedReturnNULL "textChildAnchorNew" result
    result' <- (wrapObject TextChildAnchor) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TextChildAnchor::get_deleted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "anchor"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextChildAnchor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextChildAnchor"
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

foreign import ccall "gtk_text_child_anchor_get_deleted" gtk_text_child_anchor_get_deleted :: 
    Ptr TextChildAnchor ->                  -- anchor : TInterface (Name {namespace = "Gtk", name = "TextChildAnchor"})
    IO CInt

-- | Determines whether a child anchor has been deleted from
-- the buffer. Keep in mind that the child anchor will be
-- unreferenced when removed from the buffer, so you need to
-- hold your own reference (with 'GI.GObject.Objects.Object.objectRef') if you plan
-- to use this function — otherwise all deleted child anchors
-- will also be finalized.
textChildAnchorGetDeleted ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextChildAnchor a) =>
    a
    -- ^ /@anchor@/: a t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the child anchor has been deleted from its buffer
textChildAnchorGetDeleted anchor = liftIO $ do
    anchor' <- unsafeManagedPtrCastPtr anchor
    result <- gtk_text_child_anchor_get_deleted anchor'
    let result' = (/= 0) result
    touchManagedPtr anchor
    return result'

#if defined(ENABLE_OVERLOADING)
data TextChildAnchorGetDeletedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextChildAnchor a) => O.MethodInfo TextChildAnchorGetDeletedMethodInfo a signature where
    overloadedMethod = textChildAnchorGetDeleted

#endif

-- method TextChildAnchor::get_widgets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "anchor"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextChildAnchor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextChildAnchor"
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
--               (TGList (TInterface Name { namespace = "Gtk" , name = "Widget" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_child_anchor_get_widgets" gtk_text_child_anchor_get_widgets :: 
    Ptr TextChildAnchor ->                  -- anchor : TInterface (Name {namespace = "Gtk", name = "TextChildAnchor"})
    IO (Ptr (GList (Ptr Gtk.Widget.Widget)))

-- | Gets a list of all widgets anchored at this child anchor.
-- The returned list should be freed with @/g_list_free()/@.
textChildAnchorGetWidgets ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextChildAnchor a) =>
    a
    -- ^ /@anchor@/: a t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor'
    -> m [Gtk.Widget.Widget]
    -- ^ __Returns:__ list of widgets anchored at /@anchor@/
textChildAnchorGetWidgets anchor = liftIO $ do
    anchor' <- unsafeManagedPtrCastPtr anchor
    result <- gtk_text_child_anchor_get_widgets anchor'
    result' <- unpackGList result
    result'' <- mapM (newObject Gtk.Widget.Widget) result'
    g_list_free result
    touchManagedPtr anchor
    return result''

#if defined(ENABLE_OVERLOADING)
data TextChildAnchorGetWidgetsMethodInfo
instance (signature ~ (m [Gtk.Widget.Widget]), MonadIO m, IsTextChildAnchor a) => O.MethodInfo TextChildAnchorGetWidgetsMethodInfo a signature where
    overloadedMethod = textChildAnchorGetWidgets

#endif

