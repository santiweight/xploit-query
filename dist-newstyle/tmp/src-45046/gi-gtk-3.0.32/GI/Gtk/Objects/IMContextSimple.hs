{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkIMContextSimple is a simple input method context supporting table-based
-- input methods. It has a built-in table of compose sequences that is derived
-- from the X11 Compose files.
-- 
-- GtkIMContextSimple reads additional compose sequences from the first of the
-- following files that is found: ~\/.config\/gtk-3.0\/Compose, ~\/.XCompose,
-- \/usr\/share\/X11\/locale\/$locale\/Compose (for locales that have a nontrivial
-- Compose file). The syntax of these files is described in the Compose(5)
-- manual page.
-- 
-- GtkIMContextSimple also supports numeric entry of Unicode characters
-- by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
-- For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
-- G WITH CEDILLA, i.e. ģ.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.IMContextSimple
    ( 

-- * Exported types
    IMContextSimple(..)                     ,
    IsIMContextSimple                       ,
    toIMContextSimple                       ,
    noIMContextSimple                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIMContextSimpleMethod            ,
#endif


-- ** addComposeFile #method:addComposeFile#

#if defined(ENABLE_OVERLOADING)
    IMContextSimpleAddComposeFileMethodInfo ,
#endif
    iMContextSimpleAddComposeFile           ,


-- ** new #method:new#

    iMContextSimpleNew                      ,




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

-- | Memory-managed wrapper type.
newtype IMContextSimple = IMContextSimple (ManagedPtr IMContextSimple)
    deriving (Eq)
foreign import ccall "gtk_im_context_simple_get_type"
    c_gtk_im_context_simple_get_type :: IO GType

instance GObject IMContextSimple where
    gobjectType = c_gtk_im_context_simple_get_type
    

-- | Convert 'IMContextSimple' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IMContextSimple where
    toGValue o = do
        gtype <- c_gtk_im_context_simple_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IMContextSimple)
        B.ManagedPtr.newObject IMContextSimple ptr
        
    

-- | Type class for types which can be safely cast to `IMContextSimple`, for instance with `toIMContextSimple`.
class (GObject o, O.IsDescendantOf IMContextSimple o) => IsIMContextSimple o
instance (GObject o, O.IsDescendantOf IMContextSimple o) => IsIMContextSimple o

instance O.HasParentTypes IMContextSimple
type instance O.ParentTypes IMContextSimple = '[Gtk.IMContext.IMContext, GObject.Object.Object]

-- | Cast to `IMContextSimple`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIMContextSimple :: (MonadIO m, IsIMContextSimple o) => o -> m IMContextSimple
toIMContextSimple = liftIO . unsafeCastTo IMContextSimple

-- | A convenience alias for `Nothing` :: `Maybe` `IMContextSimple`.
noIMContextSimple :: Maybe IMContextSimple
noIMContextSimple = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIMContextSimpleMethod (t :: Symbol) (o :: *) :: * where
    ResolveIMContextSimpleMethod "addComposeFile" o = IMContextSimpleAddComposeFileMethodInfo
    ResolveIMContextSimpleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIMContextSimpleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIMContextSimpleMethod "deleteSurrounding" o = Gtk.IMContext.IMContextDeleteSurroundingMethodInfo
    ResolveIMContextSimpleMethod "filterKeypress" o = Gtk.IMContext.IMContextFilterKeypressMethodInfo
    ResolveIMContextSimpleMethod "focusIn" o = Gtk.IMContext.IMContextFocusInMethodInfo
    ResolveIMContextSimpleMethod "focusOut" o = Gtk.IMContext.IMContextFocusOutMethodInfo
    ResolveIMContextSimpleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIMContextSimpleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIMContextSimpleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIMContextSimpleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIMContextSimpleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIMContextSimpleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIMContextSimpleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIMContextSimpleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIMContextSimpleMethod "reset" o = Gtk.IMContext.IMContextResetMethodInfo
    ResolveIMContextSimpleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIMContextSimpleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIMContextSimpleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIMContextSimpleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIMContextSimpleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIMContextSimpleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIMContextSimpleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIMContextSimpleMethod "getPreeditString" o = Gtk.IMContext.IMContextGetPreeditStringMethodInfo
    ResolveIMContextSimpleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIMContextSimpleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIMContextSimpleMethod "getSurrounding" o = Gtk.IMContext.IMContextGetSurroundingMethodInfo
    ResolveIMContextSimpleMethod "setClientWindow" o = Gtk.IMContext.IMContextSetClientWindowMethodInfo
    ResolveIMContextSimpleMethod "setCursorLocation" o = Gtk.IMContext.IMContextSetCursorLocationMethodInfo
    ResolveIMContextSimpleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIMContextSimpleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIMContextSimpleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIMContextSimpleMethod "setSurrounding" o = Gtk.IMContext.IMContextSetSurroundingMethodInfo
    ResolveIMContextSimpleMethod "setUsePreedit" o = Gtk.IMContext.IMContextSetUsePreeditMethodInfo
    ResolveIMContextSimpleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIMContextSimpleMethod t IMContextSimple, O.MethodInfo info IMContextSimple p) => OL.IsLabel t (IMContextSimple -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IMContextSimple
type instance O.AttributeList IMContextSimple = IMContextSimpleAttributeList
type IMContextSimpleAttributeList = ('[ '("inputHints", Gtk.IMContext.IMContextInputHintsPropertyInfo), '("inputPurpose", Gtk.IMContext.IMContextInputPurposePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IMContextSimple = IMContextSimpleSignalList
type IMContextSimpleSignalList = ('[ '("commit", Gtk.IMContext.IMContextCommitSignalInfo), '("deleteSurrounding", Gtk.IMContext.IMContextDeleteSurroundingSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("preeditChanged", Gtk.IMContext.IMContextPreeditChangedSignalInfo), '("preeditEnd", Gtk.IMContext.IMContextPreeditEndSignalInfo), '("preeditStart", Gtk.IMContext.IMContextPreeditStartSignalInfo), '("retrieveSurrounding", Gtk.IMContext.IMContextRetrieveSurroundingSignalInfo)] :: [(Symbol, *)])

#endif

-- method IMContextSimple::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "IMContextSimple" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_im_context_simple_new" gtk_im_context_simple_new :: 
    IO (Ptr IMContextSimple)

-- | Creates a new t'GI.Gtk.Objects.IMContextSimple.IMContextSimple'.
iMContextSimpleNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IMContextSimple
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.IMContextSimple.IMContextSimple'.
iMContextSimpleNew  = liftIO $ do
    result <- gtk_im_context_simple_new
    checkUnexpectedReturnNULL "iMContextSimpleNew" result
    result' <- (wrapObject IMContextSimple) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IMContextSimple::add_compose_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context_simple"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IMContextSimple" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "compose_file"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
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

foreign import ccall "gtk_im_context_simple_add_compose_file" gtk_im_context_simple_add_compose_file :: 
    Ptr IMContextSimple ->                  -- context_simple : TInterface (Name {namespace = "Gtk", name = "IMContextSimple"})
    CString ->                              -- compose_file : TBasicType TUTF8
    IO ()

-- | /No description available in the introspection data./
iMContextSimpleAddComposeFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsIMContextSimple a) =>
    a
    -> T.Text
    -> m ()
iMContextSimpleAddComposeFile contextSimple composeFile = liftIO $ do
    contextSimple' <- unsafeManagedPtrCastPtr contextSimple
    composeFile' <- textToCString composeFile
    gtk_im_context_simple_add_compose_file contextSimple' composeFile'
    touchManagedPtr contextSimple
    freeMem composeFile'
    return ()

#if defined(ENABLE_OVERLOADING)
data IMContextSimpleAddComposeFileMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsIMContextSimple a) => O.MethodInfo IMContextSimpleAddComposeFileMethodInfo a signature where
    overloadedMethod = iMContextSimpleAddComposeFile

#endif

