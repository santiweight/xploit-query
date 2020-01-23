{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.IMMulticontext
    ( 

-- * Exported types
    IMMulticontext(..)                      ,
    IsIMMulticontext                        ,
    toIMMulticontext                        ,
    noIMMulticontext                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIMMulticontextMethod             ,
#endif


-- ** appendMenuitems #method:appendMenuitems#

#if defined(ENABLE_OVERLOADING)
    IMMulticontextAppendMenuitemsMethodInfo ,
#endif
    iMMulticontextAppendMenuitems           ,


-- ** getContextId #method:getContextId#

#if defined(ENABLE_OVERLOADING)
    IMMulticontextGetContextIdMethodInfo    ,
#endif
    iMMulticontextGetContextId              ,


-- ** new #method:new#

    iMMulticontextNew                       ,


-- ** setContextId #method:setContextId#

#if defined(ENABLE_OVERLOADING)
    IMMulticontextSetContextIdMethodInfo    ,
#endif
    iMMulticontextSetContextId              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.IMContext as Gtk.IMContext
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuShell as Gtk.MenuShell

-- | Memory-managed wrapper type.
newtype IMMulticontext = IMMulticontext (ManagedPtr IMMulticontext)
    deriving (Eq)
foreign import ccall "gtk_im_multicontext_get_type"
    c_gtk_im_multicontext_get_type :: IO GType

instance GObject IMMulticontext where
    gobjectType = c_gtk_im_multicontext_get_type
    

-- | Convert 'IMMulticontext' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IMMulticontext where
    toGValue o = do
        gtype <- c_gtk_im_multicontext_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IMMulticontext)
        B.ManagedPtr.newObject IMMulticontext ptr
        
    

-- | Type class for types which can be safely cast to `IMMulticontext`, for instance with `toIMMulticontext`.
class (GObject o, O.IsDescendantOf IMMulticontext o) => IsIMMulticontext o
instance (GObject o, O.IsDescendantOf IMMulticontext o) => IsIMMulticontext o

instance O.HasParentTypes IMMulticontext
type instance O.ParentTypes IMMulticontext = '[Gtk.IMContext.IMContext, GObject.Object.Object]

-- | Cast to `IMMulticontext`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIMMulticontext :: (MonadIO m, IsIMMulticontext o) => o -> m IMMulticontext
toIMMulticontext = liftIO . unsafeCastTo IMMulticontext

-- | A convenience alias for `Nothing` :: `Maybe` `IMMulticontext`.
noIMMulticontext :: Maybe IMMulticontext
noIMMulticontext = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIMMulticontextMethod (t :: Symbol) (o :: *) :: * where
    ResolveIMMulticontextMethod "appendMenuitems" o = IMMulticontextAppendMenuitemsMethodInfo
    ResolveIMMulticontextMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIMMulticontextMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIMMulticontextMethod "deleteSurrounding" o = Gtk.IMContext.IMContextDeleteSurroundingMethodInfo
    ResolveIMMulticontextMethod "filterKeypress" o = Gtk.IMContext.IMContextFilterKeypressMethodInfo
    ResolveIMMulticontextMethod "focusIn" o = Gtk.IMContext.IMContextFocusInMethodInfo
    ResolveIMMulticontextMethod "focusOut" o = Gtk.IMContext.IMContextFocusOutMethodInfo
    ResolveIMMulticontextMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIMMulticontextMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIMMulticontextMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIMMulticontextMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIMMulticontextMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIMMulticontextMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIMMulticontextMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIMMulticontextMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIMMulticontextMethod "reset" o = Gtk.IMContext.IMContextResetMethodInfo
    ResolveIMMulticontextMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIMMulticontextMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIMMulticontextMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIMMulticontextMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIMMulticontextMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIMMulticontextMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIMMulticontextMethod "getContextId" o = IMMulticontextGetContextIdMethodInfo
    ResolveIMMulticontextMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIMMulticontextMethod "getPreeditString" o = Gtk.IMContext.IMContextGetPreeditStringMethodInfo
    ResolveIMMulticontextMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIMMulticontextMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIMMulticontextMethod "getSurrounding" o = Gtk.IMContext.IMContextGetSurroundingMethodInfo
    ResolveIMMulticontextMethod "setClientWindow" o = Gtk.IMContext.IMContextSetClientWindowMethodInfo
    ResolveIMMulticontextMethod "setContextId" o = IMMulticontextSetContextIdMethodInfo
    ResolveIMMulticontextMethod "setCursorLocation" o = Gtk.IMContext.IMContextSetCursorLocationMethodInfo
    ResolveIMMulticontextMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIMMulticontextMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIMMulticontextMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIMMulticontextMethod "setSurrounding" o = Gtk.IMContext.IMContextSetSurroundingMethodInfo
    ResolveIMMulticontextMethod "setUsePreedit" o = Gtk.IMContext.IMContextSetUsePreeditMethodInfo
    ResolveIMMulticontextMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIMMulticontextMethod t IMMulticontext, O.MethodInfo info IMMulticontext p) => OL.IsLabel t (IMMulticontext -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IMMulticontext
type instance O.AttributeList IMMulticontext = IMMulticontextAttributeList
type IMMulticontextAttributeList = ('[ '("inputHints", Gtk.IMContext.IMContextInputHintsPropertyInfo), '("inputPurpose", Gtk.IMContext.IMContextInputPurposePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IMMulticontext = IMMulticontextSignalList
type IMMulticontextSignalList = ('[ '("commit", Gtk.IMContext.IMContextCommitSignalInfo), '("deleteSurrounding", Gtk.IMContext.IMContextDeleteSurroundingSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("preeditChanged", Gtk.IMContext.IMContextPreeditChangedSignalInfo), '("preeditEnd", Gtk.IMContext.IMContextPreeditEndSignalInfo), '("preeditStart", Gtk.IMContext.IMContextPreeditStartSignalInfo), '("retrieveSurrounding", Gtk.IMContext.IMContextRetrieveSurroundingSignalInfo)] :: [(Symbol, *)])

#endif

-- method IMMulticontext::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "IMMulticontext" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_im_multicontext_new" gtk_im_multicontext_new :: 
    IO (Ptr IMMulticontext)

-- | Creates a new t'GI.Gtk.Objects.IMMulticontext.IMMulticontext'.
iMMulticontextNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IMMulticontext
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.IMMulticontext.IMMulticontext'.
iMMulticontextNew  = liftIO $ do
    result <- gtk_im_multicontext_new
    checkUnexpectedReturnNULL "iMMulticontextNew" result
    result' <- (wrapObject IMMulticontext) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IMMulticontext::append_menuitems
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IMMulticontext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIMMulticontext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menushell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_im_multicontext_append_menuitems" gtk_im_multicontext_append_menuitems :: 
    Ptr IMMulticontext ->                   -- context : TInterface (Name {namespace = "Gtk", name = "IMMulticontext"})
    Ptr Gtk.MenuShell.MenuShell ->          -- menushell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO ()

{-# DEPRECATED iMMulticontextAppendMenuitems ["(Since version 3.10)","It is better to use the system-wide input","    method framework for changing input methods. Modern","    desktop shells offer on-screen displays for this that","    can triggered with a keyboard shortcut, e.g. Super-Space."] #-}
-- | Add menuitems for various available input methods to a menu;
-- the menuitems, when selected, will switch the input method
-- for the context and the global default input method.
iMMulticontextAppendMenuitems ::
    (B.CallStack.HasCallStack, MonadIO m, IsIMMulticontext a, Gtk.MenuShell.IsMenuShell b) =>
    a
    -- ^ /@context@/: a t'GI.Gtk.Objects.IMMulticontext.IMMulticontext'
    -> b
    -- ^ /@menushell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m ()
iMMulticontextAppendMenuitems context menushell = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    menushell' <- unsafeManagedPtrCastPtr menushell
    gtk_im_multicontext_append_menuitems context' menushell'
    touchManagedPtr context
    touchManagedPtr menushell
    return ()

#if defined(ENABLE_OVERLOADING)
data IMMulticontextAppendMenuitemsMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsIMMulticontext a, Gtk.MenuShell.IsMenuShell b) => O.MethodInfo IMMulticontextAppendMenuitemsMethodInfo a signature where
    overloadedMethod = iMMulticontextAppendMenuitems

#endif

-- method IMMulticontext::get_context_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IMMulticontext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIMMulticontext"
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

foreign import ccall "gtk_im_multicontext_get_context_id" gtk_im_multicontext_get_context_id :: 
    Ptr IMMulticontext ->                   -- context : TInterface (Name {namespace = "Gtk", name = "IMMulticontext"})
    IO CString

-- | Gets the id of the currently active slave of the /@context@/.
-- 
-- /Since: 2.16/
iMMulticontextGetContextId ::
    (B.CallStack.HasCallStack, MonadIO m, IsIMMulticontext a) =>
    a
    -- ^ /@context@/: a t'GI.Gtk.Objects.IMMulticontext.IMMulticontext'
    -> m T.Text
    -- ^ __Returns:__ the id of the currently active slave
iMMulticontextGetContextId context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- gtk_im_multicontext_get_context_id context'
    checkUnexpectedReturnNULL "iMMulticontextGetContextId" result
    result' <- cstringToText result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data IMMulticontextGetContextIdMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsIMMulticontext a) => O.MethodInfo IMMulticontextGetContextIdMethodInfo a signature where
    overloadedMethod = iMMulticontextGetContextId

#endif

-- method IMMulticontext::set_context_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IMMulticontext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIMMulticontext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the id to use" , sinceVersion = Nothing }
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

foreign import ccall "gtk_im_multicontext_set_context_id" gtk_im_multicontext_set_context_id :: 
    Ptr IMMulticontext ->                   -- context : TInterface (Name {namespace = "Gtk", name = "IMMulticontext"})
    CString ->                              -- context_id : TBasicType TUTF8
    IO ()

-- | Sets the context id for /@context@/.
-- 
-- This causes the currently active slave of /@context@/ to be
-- replaced by the slave corresponding to the new context id.
-- 
-- /Since: 2.16/
iMMulticontextSetContextId ::
    (B.CallStack.HasCallStack, MonadIO m, IsIMMulticontext a) =>
    a
    -- ^ /@context@/: a t'GI.Gtk.Objects.IMMulticontext.IMMulticontext'
    -> T.Text
    -- ^ /@contextId@/: the id to use
    -> m ()
iMMulticontextSetContextId context contextId = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    contextId' <- textToCString contextId
    gtk_im_multicontext_set_context_id context' contextId'
    touchManagedPtr context
    freeMem contextId'
    return ()

#if defined(ENABLE_OVERLOADING)
data IMMulticontextSetContextIdMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsIMMulticontext a) => O.MethodInfo IMMulticontextSetContextIdMethodInfo a signature where
    overloadedMethod = iMMulticontextSetContextId

#endif

