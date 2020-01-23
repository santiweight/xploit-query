{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Clipboard
    ( 
#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForRichTextMethodInfo      ,
#endif

-- * Exported types
    Clipboard(..)                           ,
    IsClipboard                             ,
    toClipboard                             ,
    noClipboard                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveClipboardMethod                  ,
#endif


-- ** clear #method:clear#

#if defined(ENABLE_OVERLOADING)
    ClipboardClearMethodInfo                ,
#endif
    clipboardClear                          ,


-- ** get #method:get#

    clipboardGet                            ,


-- ** getDefault #method:getDefault#

    clipboardGetDefault                     ,


-- ** getDisplay #method:getDisplay#

#if defined(ENABLE_OVERLOADING)
    ClipboardGetDisplayMethodInfo           ,
#endif
    clipboardGetDisplay                     ,


-- ** getForDisplay #method:getForDisplay#

    clipboardGetForDisplay                  ,


-- ** getOwner #method:getOwner#

#if defined(ENABLE_OVERLOADING)
    ClipboardGetOwnerMethodInfo             ,
#endif
    clipboardGetOwner                       ,


-- ** requestContents #method:requestContents#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestContentsMethodInfo      ,
#endif
    clipboardRequestContents                ,


-- ** requestImage #method:requestImage#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestImageMethodInfo         ,
#endif
    clipboardRequestImage                   ,


-- ** requestRichText #method:requestRichText#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestRichTextMethodInfo      ,
#endif
    clipboardRequestRichText                ,


-- ** requestTargets #method:requestTargets#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestTargetsMethodInfo       ,
#endif
    clipboardRequestTargets                 ,


-- ** requestText #method:requestText#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestTextMethodInfo          ,
#endif
    clipboardRequestText                    ,


-- ** requestUris #method:requestUris#

#if defined(ENABLE_OVERLOADING)
    ClipboardRequestUrisMethodInfo          ,
#endif
    clipboardRequestUris                    ,


-- ** setCanStore #method:setCanStore#

#if defined(ENABLE_OVERLOADING)
    ClipboardSetCanStoreMethodInfo          ,
#endif
    clipboardSetCanStore                    ,


-- ** setImage #method:setImage#

#if defined(ENABLE_OVERLOADING)
    ClipboardSetImageMethodInfo             ,
#endif
    clipboardSetImage                       ,


-- ** setText #method:setText#

#if defined(ENABLE_OVERLOADING)
    ClipboardSetTextMethodInfo              ,
#endif
    clipboardSetText                        ,


-- ** store #method:store#

#if defined(ENABLE_OVERLOADING)
    ClipboardStoreMethodInfo                ,
#endif
    clipboardStore                          ,


-- ** waitForContents #method:waitForContents#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForContentsMethodInfo      ,
#endif
    clipboardWaitForContents                ,


-- ** waitForImage #method:waitForImage#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForImageMethodInfo         ,
#endif
    clipboardWaitForImage                   ,


-- ** waitForTargets #method:waitForTargets#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForTargetsMethodInfo       ,
#endif
    clipboardWaitForTargets                 ,


-- ** waitForText #method:waitForText#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForTextMethodInfo          ,
#endif
    clipboardWaitForText                    ,


-- ** waitForUris #method:waitForUris#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitForUrisMethodInfo          ,
#endif
    clipboardWaitForUris                    ,


-- ** waitIsImageAvailable #method:waitIsImageAvailable#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitIsImageAvailableMethodInfo ,
#endif
    clipboardWaitIsImageAvailable           ,


-- ** waitIsRichTextAvailable #method:waitIsRichTextAvailable#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitIsRichTextAvailableMethodInfo,
#endif
    clipboardWaitIsRichTextAvailable        ,


-- ** waitIsTargetAvailable #method:waitIsTargetAvailable#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitIsTargetAvailableMethodInfo,
#endif
    clipboardWaitIsTargetAvailable          ,


-- ** waitIsTextAvailable #method:waitIsTextAvailable#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitIsTextAvailableMethodInfo  ,
#endif
    clipboardWaitIsTextAvailable            ,


-- ** waitIsUrisAvailable #method:waitIsUrisAvailable#

#if defined(ENABLE_OVERLOADING)
    ClipboardWaitIsUrisAvailableMethodInfo  ,
#endif
    clipboardWaitIsUrisAvailable            ,




 -- * Signals
-- ** ownerChange #signal:ownerChange#

    C_ClipboardOwnerChangeCallback          ,
    ClipboardOwnerChangeCallback            ,
#if defined(ENABLE_OVERLOADING)
    ClipboardOwnerChangeSignalInfo          ,
#endif
    afterClipboardOwnerChange               ,
    genClosure_ClipboardOwnerChange         ,
    mk_ClipboardOwnerChangeCallback         ,
    noClipboardOwnerChangeCallback          ,
    onClipboardOwnerChange                  ,
    wrap_ClipboardOwnerChangeCallback       ,




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
import qualified GI.Gdk.Objects.Display as Gdk.Display
import qualified GI.Gdk.Structs.Atom as Gdk.Atom
import qualified GI.Gdk.Structs.EventOwnerChange as Gdk.EventOwnerChange
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Objects.TextBuffer as Gtk.TextBuffer
import {-# SOURCE #-} qualified GI.Gtk.Structs.SelectionData as Gtk.SelectionData
import {-# SOURCE #-} qualified GI.Gtk.Structs.TargetEntry as Gtk.TargetEntry

-- | Memory-managed wrapper type.
newtype Clipboard = Clipboard (ManagedPtr Clipboard)
    deriving (Eq)
foreign import ccall "gtk_clipboard_get_type"
    c_gtk_clipboard_get_type :: IO GType

instance GObject Clipboard where
    gobjectType = c_gtk_clipboard_get_type
    

-- | Convert 'Clipboard' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Clipboard where
    toGValue o = do
        gtype <- c_gtk_clipboard_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Clipboard)
        B.ManagedPtr.newObject Clipboard ptr
        
    

-- | Type class for types which can be safely cast to `Clipboard`, for instance with `toClipboard`.
class (GObject o, O.IsDescendantOf Clipboard o) => IsClipboard o
instance (GObject o, O.IsDescendantOf Clipboard o) => IsClipboard o

instance O.HasParentTypes Clipboard
type instance O.ParentTypes Clipboard = '[GObject.Object.Object]

-- | Cast to `Clipboard`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toClipboard :: (MonadIO m, IsClipboard o) => o -> m Clipboard
toClipboard = liftIO . unsafeCastTo Clipboard

-- | A convenience alias for `Nothing` :: `Maybe` `Clipboard`.
noClipboard :: Maybe Clipboard
noClipboard = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveClipboardMethod (t :: Symbol) (o :: *) :: * where
    ResolveClipboardMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveClipboardMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveClipboardMethod "clear" o = ClipboardClearMethodInfo
    ResolveClipboardMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveClipboardMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveClipboardMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveClipboardMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveClipboardMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveClipboardMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveClipboardMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveClipboardMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveClipboardMethod "requestContents" o = ClipboardRequestContentsMethodInfo
    ResolveClipboardMethod "requestImage" o = ClipboardRequestImageMethodInfo
    ResolveClipboardMethod "requestRichText" o = ClipboardRequestRichTextMethodInfo
    ResolveClipboardMethod "requestTargets" o = ClipboardRequestTargetsMethodInfo
    ResolveClipboardMethod "requestText" o = ClipboardRequestTextMethodInfo
    ResolveClipboardMethod "requestUris" o = ClipboardRequestUrisMethodInfo
    ResolveClipboardMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveClipboardMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveClipboardMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveClipboardMethod "store" o = ClipboardStoreMethodInfo
    ResolveClipboardMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveClipboardMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveClipboardMethod "waitForContents" o = ClipboardWaitForContentsMethodInfo
    ResolveClipboardMethod "waitForImage" o = ClipboardWaitForImageMethodInfo
    ResolveClipboardMethod "waitForRichText" o = ClipboardWaitForRichTextMethodInfo
    ResolveClipboardMethod "waitForTargets" o = ClipboardWaitForTargetsMethodInfo
    ResolveClipboardMethod "waitForText" o = ClipboardWaitForTextMethodInfo
    ResolveClipboardMethod "waitForUris" o = ClipboardWaitForUrisMethodInfo
    ResolveClipboardMethod "waitIsImageAvailable" o = ClipboardWaitIsImageAvailableMethodInfo
    ResolveClipboardMethod "waitIsRichTextAvailable" o = ClipboardWaitIsRichTextAvailableMethodInfo
    ResolveClipboardMethod "waitIsTargetAvailable" o = ClipboardWaitIsTargetAvailableMethodInfo
    ResolveClipboardMethod "waitIsTextAvailable" o = ClipboardWaitIsTextAvailableMethodInfo
    ResolveClipboardMethod "waitIsUrisAvailable" o = ClipboardWaitIsUrisAvailableMethodInfo
    ResolveClipboardMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveClipboardMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveClipboardMethod "getDisplay" o = ClipboardGetDisplayMethodInfo
    ResolveClipboardMethod "getOwner" o = ClipboardGetOwnerMethodInfo
    ResolveClipboardMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveClipboardMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveClipboardMethod "setCanStore" o = ClipboardSetCanStoreMethodInfo
    ResolveClipboardMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveClipboardMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveClipboardMethod "setImage" o = ClipboardSetImageMethodInfo
    ResolveClipboardMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveClipboardMethod "setText" o = ClipboardSetTextMethodInfo
    ResolveClipboardMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveClipboardMethod t Clipboard, O.MethodInfo info Clipboard p) => OL.IsLabel t (Clipboard -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Clipboard::owner-change
-- | /No description available in the introspection data./
type ClipboardOwnerChangeCallback =
    Gdk.EventOwnerChange.EventOwnerChange
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClipboardOwnerChangeCallback`@.
noClipboardOwnerChangeCallback :: Maybe ClipboardOwnerChangeCallback
noClipboardOwnerChangeCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ClipboardOwnerChangeCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventOwnerChange.EventOwnerChange ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ClipboardOwnerChangeCallback`.
foreign import ccall "wrapper"
    mk_ClipboardOwnerChangeCallback :: C_ClipboardOwnerChangeCallback -> IO (FunPtr C_ClipboardOwnerChangeCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ClipboardOwnerChange :: MonadIO m => ClipboardOwnerChangeCallback -> m (GClosure C_ClipboardOwnerChangeCallback)
genClosure_ClipboardOwnerChange cb = liftIO $ do
    let cb' = wrap_ClipboardOwnerChangeCallback cb
    mk_ClipboardOwnerChangeCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClipboardOwnerChangeCallback` into a `C_ClipboardOwnerChangeCallback`.
wrap_ClipboardOwnerChangeCallback ::
    ClipboardOwnerChangeCallback ->
    C_ClipboardOwnerChangeCallback
wrap_ClipboardOwnerChangeCallback _cb _ event _ = do
    event' <- (newPtr Gdk.EventOwnerChange.EventOwnerChange) event
    _cb  event'


-- | Connect a signal handler for the [ownerChange](#signal:ownerChange) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' clipboard #ownerChange callback
-- @
-- 
-- 
onClipboardOwnerChange :: (IsClipboard a, MonadIO m) => a -> ClipboardOwnerChangeCallback -> m SignalHandlerId
onClipboardOwnerChange obj cb = liftIO $ do
    let cb' = wrap_ClipboardOwnerChangeCallback cb
    cb'' <- mk_ClipboardOwnerChangeCallback cb'
    connectSignalFunPtr obj "owner-change" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [ownerChange](#signal:ownerChange) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' clipboard #ownerChange callback
-- @
-- 
-- 
afterClipboardOwnerChange :: (IsClipboard a, MonadIO m) => a -> ClipboardOwnerChangeCallback -> m SignalHandlerId
afterClipboardOwnerChange obj cb = liftIO $ do
    let cb' = wrap_ClipboardOwnerChangeCallback cb
    cb'' <- mk_ClipboardOwnerChangeCallback cb'
    connectSignalFunPtr obj "owner-change" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ClipboardOwnerChangeSignalInfo
instance SignalInfo ClipboardOwnerChangeSignalInfo where
    type HaskellCallbackType ClipboardOwnerChangeSignalInfo = ClipboardOwnerChangeCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ClipboardOwnerChangeCallback cb
        cb'' <- mk_ClipboardOwnerChangeCallback cb'
        connectSignalFunPtr obj "owner-change" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Clipboard
type instance O.AttributeList Clipboard = ClipboardAttributeList
type ClipboardAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Clipboard = ClipboardSignalList
type ClipboardSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("ownerChange", ClipboardOwnerChangeSignalInfo)] :: [(Symbol, *)])

#endif

-- method Clipboard::clear
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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

foreign import ccall "gtk_clipboard_clear" gtk_clipboard_clear :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO ()

-- | /No description available in the introspection data./
clipboardClear ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m ()
clipboardClear clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    gtk_clipboard_clear clipboard'
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardClearMethodInfo
instance (signature ~ (m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardClearMethodInfo a signature where
    overloadedMethod = clipboardClear

#endif

-- method Clipboard::get_display
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Display" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_get_display" gtk_clipboard_get_display :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO (Ptr Gdk.Display.Display)

-- | /No description available in the introspection data./
clipboardGetDisplay ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m Gdk.Display.Display
clipboardGetDisplay clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_get_display clipboard'
    checkUnexpectedReturnNULL "clipboardGetDisplay" result
    result' <- (newObject Gdk.Display.Display) result
    touchManagedPtr clipboard
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardGetDisplayMethodInfo
instance (signature ~ (m Gdk.Display.Display), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardGetDisplayMethodInfo a signature where
    overloadedMethod = clipboardGetDisplay

#endif

-- method Clipboard::get_owner
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TInterface Name { namespace = "GObject" , name = "Object" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_get_owner" gtk_clipboard_get_owner :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO (Ptr GObject.Object.Object)

-- | /No description available in the introspection data./
clipboardGetOwner ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m GObject.Object.Object
clipboardGetOwner clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_get_owner clipboard'
    checkUnexpectedReturnNULL "clipboardGetOwner" result
    result' <- (newObject GObject.Object.Object) result
    touchManagedPtr clipboard
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardGetOwnerMethodInfo
instance (signature ~ (m GObject.Object.Object), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardGetOwnerMethodInfo a signature where
    overloadedMethod = clipboardGetOwner

#endif

-- method Clipboard::request_contents
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "target"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Atom" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 3
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_contents" gtk_clipboard_request_contents :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    FunPtr Gtk.Callbacks.C_ClipboardReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestContents ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gdk.Atom.Atom
    -> Gtk.Callbacks.ClipboardReceivedFunc
    -> m ()
clipboardRequestContents clipboard target callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    target' <- unsafeManagedPtrGetPtr target
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardReceivedFunc (Gtk.Callbacks.wrap_ClipboardReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_contents clipboard' target' callback' userData
    touchManagedPtr clipboard
    touchManagedPtr target
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestContentsMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> Gtk.Callbacks.ClipboardReceivedFunc -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardRequestContentsMethodInfo a signature where
    overloadedMethod = clipboardRequestContents

#endif

-- method Clipboard::request_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardImageReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_image" gtk_clipboard_request_image :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    FunPtr Gtk.Callbacks.C_ClipboardImageReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardImageReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gtk.Callbacks.ClipboardImageReceivedFunc
    -> m ()
clipboardRequestImage clipboard callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardImageReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardImageReceivedFunc (Gtk.Callbacks.wrap_ClipboardImageReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardImageReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_image clipboard' callback' userData
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestImageMethodInfo
instance (signature ~ (Gtk.Callbacks.ClipboardImageReceivedFunc -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardRequestImageMethodInfo a signature where
    overloadedMethod = clipboardRequestImage

#endif

-- method Clipboard::request_rich_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextBuffer" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardRichTextReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 3
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_rich_text" gtk_clipboard_request_rich_text :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gtk.TextBuffer.TextBuffer ->        -- buffer : TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
    FunPtr Gtk.Callbacks.C_ClipboardRichTextReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardRichTextReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestRichText ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a, Gtk.TextBuffer.IsTextBuffer b) =>
    a
    -> b
    -> Gtk.Callbacks.ClipboardRichTextReceivedFunc
    -> m ()
clipboardRequestRichText clipboard buffer callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    buffer' <- unsafeManagedPtrCastPtr buffer
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardRichTextReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardRichTextReceivedFunc (Gtk.Callbacks.wrap_ClipboardRichTextReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardRichTextReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_rich_text clipboard' buffer' callback' userData
    touchManagedPtr clipboard
    touchManagedPtr buffer
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestRichTextMethodInfo
instance (signature ~ (b -> Gtk.Callbacks.ClipboardRichTextReceivedFunc -> m ()), MonadIO m, IsClipboard a, Gtk.TextBuffer.IsTextBuffer b) => O.MethodInfo ClipboardRequestRichTextMethodInfo a signature where
    overloadedMethod = clipboardRequestRichText

#endif

-- method Clipboard::request_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardTargetsReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_targets" gtk_clipboard_request_targets :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    FunPtr Gtk.Callbacks.C_ClipboardTargetsReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardTargetsReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestTargets ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gtk.Callbacks.ClipboardTargetsReceivedFunc
    -> m ()
clipboardRequestTargets clipboard callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardTargetsReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardTargetsReceivedFunc (Gtk.Callbacks.wrap_ClipboardTargetsReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardTargetsReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_targets clipboard' callback' userData
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestTargetsMethodInfo
instance (signature ~ (Gtk.Callbacks.ClipboardTargetsReceivedFunc -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardRequestTargetsMethodInfo a signature where
    overloadedMethod = clipboardRequestTargets

#endif

-- method Clipboard::request_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardTextReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_text" gtk_clipboard_request_text :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    FunPtr Gtk.Callbacks.C_ClipboardTextReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardTextReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestText ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gtk.Callbacks.ClipboardTextReceivedFunc
    -> m ()
clipboardRequestText clipboard callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardTextReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardTextReceivedFunc (Gtk.Callbacks.wrap_ClipboardTextReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardTextReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_text clipboard' callback' userData
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestTextMethodInfo
instance (signature ~ (Gtk.Callbacks.ClipboardTextReceivedFunc -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardRequestTextMethodInfo a signature where
    overloadedMethod = clipboardRequestText

#endif

-- method Clipboard::request_uris
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "callback"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ClipboardURIReceivedFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeAsync
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "gtk_clipboard_request_uris" gtk_clipboard_request_uris :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    FunPtr Gtk.Callbacks.C_ClipboardURIReceivedFunc -> -- callback : TInterface (Name {namespace = "Gtk", name = "ClipboardURIReceivedFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | /No description available in the introspection data./
clipboardRequestUris ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gtk.Callbacks.ClipboardURIReceivedFunc
    -> m ()
clipboardRequestUris clipboard callback = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    ptrcallback <- callocMem :: IO (Ptr (FunPtr Gtk.Callbacks.C_ClipboardURIReceivedFunc))
    callback' <- Gtk.Callbacks.mk_ClipboardURIReceivedFunc (Gtk.Callbacks.wrap_ClipboardURIReceivedFunc (Just ptrcallback) (Gtk.Callbacks.drop_closures_ClipboardURIReceivedFunc callback))
    poke ptrcallback callback'
    let userData = nullPtr
    gtk_clipboard_request_uris clipboard' callback' userData
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardRequestUrisMethodInfo
instance (signature ~ (Gtk.Callbacks.ClipboardURIReceivedFunc -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardRequestUrisMethodInfo a signature where
    overloadedMethod = clipboardRequestUris

#endif

-- method Clipboard::set_can_store
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "targets"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Gtk" , name = "TargetEntry" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_targets"
--           , argType = TBasicType TInt
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
-- Lengths: [ Arg
--              { argCName = "n_targets"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_set_can_store" gtk_clipboard_set_can_store :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gtk.TargetEntry.TargetEntry ->      -- targets : TCArray False (-1) 2 (TInterface (Name {namespace = "Gtk", name = "TargetEntry"}))
    Int32 ->                                -- n_targets : TBasicType TInt
    IO ()

-- | /No description available in the introspection data./
clipboardSetCanStore ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Maybe ([Gtk.TargetEntry.TargetEntry])
    -> m ()
clipboardSetCanStore clipboard targets = liftIO $ do
    let nTargets = case targets of
            Nothing -> 0
            Just jTargets -> fromIntegral $ length jTargets
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    maybeTargets <- case targets of
        Nothing -> return nullPtr
        Just jTargets -> do
            jTargets' <- mapM unsafeManagedPtrGetPtr jTargets
            jTargets'' <- packBlockArray 16 jTargets'
            return jTargets''
    gtk_clipboard_set_can_store clipboard' maybeTargets nTargets
    touchManagedPtr clipboard
    whenJust targets (mapM_ touchManagedPtr)
    freeMem maybeTargets
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardSetCanStoreMethodInfo
instance (signature ~ (Maybe ([Gtk.TargetEntry.TargetEntry]) -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardSetCanStoreMethodInfo a signature where
    overloadedMethod = clipboardSetCanStore

#endif

-- method Clipboard::set_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
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

foreign import ccall "gtk_clipboard_set_image" gtk_clipboard_set_image :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO ()

-- | /No description available in the introspection data./
clipboardSetImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a, GdkPixbuf.Pixbuf.IsPixbuf b) =>
    a
    -> b
    -> m ()
clipboardSetImage clipboard pixbuf = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    pixbuf' <- unsafeManagedPtrCastPtr pixbuf
    gtk_clipboard_set_image clipboard' pixbuf'
    touchManagedPtr clipboard
    touchManagedPtr pixbuf
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardSetImageMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsClipboard a, GdkPixbuf.Pixbuf.IsPixbuf b) => O.MethodInfo ClipboardSetImageMethodInfo a signature where
    overloadedMethod = clipboardSetImage

#endif

-- method Clipboard::set_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "text"
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
--       , Arg
--           { argCName = "len"
--           , argType = TBasicType TInt
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

foreign import ccall "gtk_clipboard_set_text" gtk_clipboard_set_text :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    CString ->                              -- text : TBasicType TUTF8
    Int32 ->                                -- len : TBasicType TInt
    IO ()

-- | /No description available in the introspection data./
clipboardSetText ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> T.Text
    -> Int32
    -> m ()
clipboardSetText clipboard text len = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    text' <- textToCString text
    gtk_clipboard_set_text clipboard' text' len
    touchManagedPtr clipboard
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardSetTextMethodInfo
instance (signature ~ (T.Text -> Int32 -> m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardSetTextMethodInfo a signature where
    overloadedMethod = clipboardSetText

#endif

-- method Clipboard::store
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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

foreign import ccall "gtk_clipboard_store" gtk_clipboard_store :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO ()

-- | /No description available in the introspection data./
clipboardStore ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m ()
clipboardStore clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    gtk_clipboard_store clipboard'
    touchManagedPtr clipboard
    return ()

#if defined(ENABLE_OVERLOADING)
data ClipboardStoreMethodInfo
instance (signature ~ (m ()), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardStoreMethodInfo a signature where
    overloadedMethod = clipboardStore

#endif

-- method Clipboard::wait_for_contents
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "target"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Atom" }
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
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SelectionData" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_for_contents" gtk_clipboard_wait_for_contents :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    IO (Ptr Gtk.SelectionData.SelectionData)

-- | /No description available in the introspection data./
clipboardWaitForContents ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gdk.Atom.Atom
    -> m (Maybe Gtk.SelectionData.SelectionData)
clipboardWaitForContents clipboard target = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    target' <- unsafeManagedPtrGetPtr target
    result <- gtk_clipboard_wait_for_contents clipboard' target'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Gtk.SelectionData.SelectionData) result'
        return result''
    touchManagedPtr clipboard
    touchManagedPtr target
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitForContentsMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> m (Maybe Gtk.SelectionData.SelectionData)), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitForContentsMethodInfo a signature where
    overloadedMethod = clipboardWaitForContents

#endif

-- method Clipboard::wait_for_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just
--               (TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_for_image" gtk_clipboard_wait_for_image :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

-- | /No description available in the introspection data./
clipboardWaitForImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
clipboardWaitForImage clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_for_image clipboard'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject GdkPixbuf.Pixbuf.Pixbuf) result'
        return result''
    touchManagedPtr clipboard
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitForImageMethodInfo
instance (signature ~ (m (Maybe GdkPixbuf.Pixbuf.Pixbuf)), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitForImageMethodInfo a signature where
    overloadedMethod = clipboardWaitForImage

#endif

-- XXX Could not generate method Clipboard::wait_for_rich_text
-- Error was : Not implemented: "Don't know how to allocate \"format\" of type TInterface (Name {namespace = \"Gdk\", name = \"Atom\"})"
#if defined(ENABLE_OVERLOADING)
-- XXX: Dummy instance, since code generation failed.
-- Please file a bug at http://github.com/haskell-gi/haskell-gi.
data ClipboardWaitForRichTextMethodInfo
instance (p ~ (), o ~ O.UnsupportedMethodError "waitForRichText" Clipboard) => O.MethodInfo ClipboardWaitForRichTextMethodInfo o p where
    overloadedMethod = undefined
#endif

-- method Clipboard::wait_for_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkClipboard" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "targets"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Gdk" , name = "Atom" })
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location\n          to store an array of targets. The result stored here must\n          be freed with g_free()."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferContainer
--           }
--       , Arg
--           { argCName = "n_targets"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store number of items in @targets."
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
--              { argCName = "n_targets"
--              , argType = TBasicType TInt
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just "location to store number of items in @targets."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_for_targets" gtk_clipboard_wait_for_targets :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr (Ptr (Ptr Gdk.Atom.Atom)) ->        -- targets : TCArray False (-1) 2 (TInterface (Name {namespace = "Gdk", name = "Atom"}))
    Ptr Int32 ->                            -- n_targets : TBasicType TInt
    IO CInt

-- | Returns a list of targets that are present on the clipboard, or 'P.Nothing'
-- if there aren’t any targets available. The returned list must be
-- freed with 'GI.GLib.Functions.free'.
-- This function waits for the data to be received using the main
-- loop, so events, timeouts, etc, may be dispatched during the wait.
-- 
-- /Since: 2.4/
clipboardWaitForTargets ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -- ^ /@clipboard@/: a t'GI.Gtk.Objects.Clipboard.Clipboard'
    -> m ((Bool, [Gdk.Atom.Atom]))
    -- ^ __Returns:__ 'P.True' if any targets are present on the clipboard,
    --               otherwise 'P.False'.
clipboardWaitForTargets clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    targets <- allocMem :: IO (Ptr (Ptr (Ptr Gdk.Atom.Atom)))
    nTargets <- allocMem :: IO (Ptr Int32)
    result <- gtk_clipboard_wait_for_targets clipboard' targets nTargets
    nTargets' <- peek nTargets
    let result' = (/= 0) result
    targets' <- peek targets
    targets'' <- (unpackPtrArrayWithLength nTargets') targets'
    targets''' <- mapM (newPtr Gdk.Atom.Atom) targets''
    freeMem targets'
    touchManagedPtr clipboard
    freeMem targets
    freeMem nTargets
    return (result', targets''')

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitForTargetsMethodInfo
instance (signature ~ (m ((Bool, [Gdk.Atom.Atom]))), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitForTargetsMethodInfo a signature where
    overloadedMethod = clipboardWaitForTargets

#endif

-- method Clipboard::wait_for_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_for_text" gtk_clipboard_wait_for_text :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO CString

-- | /No description available in the introspection data./
clipboardWaitForText ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m (Maybe T.Text)
clipboardWaitForText clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_for_text clipboard'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr clipboard
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitForTextMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitForTextMethodInfo a signature where
    overloadedMethod = clipboardWaitForText

#endif

-- method Clipboard::wait_for_uris
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_for_uris" gtk_clipboard_wait_for_uris :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO (Ptr CString)

-- | /No description available in the introspection data./
clipboardWaitForUris ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m (Maybe [T.Text])
clipboardWaitForUris clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_for_uris clipboard'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr clipboard
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitForUrisMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitForUrisMethodInfo a signature where
    overloadedMethod = clipboardWaitForUris

#endif

-- method Clipboard::wait_is_image_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_is_image_available" gtk_clipboard_wait_is_image_available :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO CInt

-- | /No description available in the introspection data./
clipboardWaitIsImageAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m Bool
clipboardWaitIsImageAvailable clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_is_image_available clipboard'
    let result' = (/= 0) result
    touchManagedPtr clipboard
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitIsImageAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitIsImageAvailableMethodInfo a signature where
    overloadedMethod = clipboardWaitIsImageAvailable

#endif

-- method Clipboard::wait_is_rich_text_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextBuffer" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_is_rich_text_available" gtk_clipboard_wait_is_rich_text_available :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gtk.TextBuffer.TextBuffer ->        -- buffer : TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
    IO CInt

-- | /No description available in the introspection data./
clipboardWaitIsRichTextAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a, Gtk.TextBuffer.IsTextBuffer b) =>
    a
    -> b
    -> m Bool
clipboardWaitIsRichTextAvailable clipboard buffer = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_clipboard_wait_is_rich_text_available clipboard' buffer'
    let result' = (/= 0) result
    touchManagedPtr clipboard
    touchManagedPtr buffer
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitIsRichTextAvailableMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsClipboard a, Gtk.TextBuffer.IsTextBuffer b) => O.MethodInfo ClipboardWaitIsRichTextAvailableMethodInfo a signature where
    overloadedMethod = clipboardWaitIsRichTextAvailable

#endif

-- method Clipboard::wait_is_target_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
--           { argCName = "target"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Atom" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_is_target_available" gtk_clipboard_wait_is_target_available :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    IO CInt

-- | /No description available in the introspection data./
clipboardWaitIsTargetAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> Gdk.Atom.Atom
    -> m Bool
clipboardWaitIsTargetAvailable clipboard target = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    target' <- unsafeManagedPtrGetPtr target
    result <- gtk_clipboard_wait_is_target_available clipboard' target'
    let result' = (/= 0) result
    touchManagedPtr clipboard
    touchManagedPtr target
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitIsTargetAvailableMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> m Bool), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitIsTargetAvailableMethodInfo a signature where
    overloadedMethod = clipboardWaitIsTargetAvailable

#endif

-- method Clipboard::wait_is_text_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_is_text_available" gtk_clipboard_wait_is_text_available :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO CInt

-- | /No description available in the introspection data./
clipboardWaitIsTextAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m Bool
clipboardWaitIsTextAvailable clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_is_text_available clipboard'
    let result' = (/= 0) result
    touchManagedPtr clipboard
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitIsTextAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitIsTextAvailableMethodInfo a signature where
    overloadedMethod = clipboardWaitIsTextAvailable

#endif

-- method Clipboard::wait_is_uris_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "clipboard"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Clipboard" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_wait_is_uris_available" gtk_clipboard_wait_is_uris_available :: 
    Ptr Clipboard ->                        -- clipboard : TInterface (Name {namespace = "Gtk", name = "Clipboard"})
    IO CInt

-- | /No description available in the introspection data./
clipboardWaitIsUrisAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsClipboard a) =>
    a
    -> m Bool
clipboardWaitIsUrisAvailable clipboard = liftIO $ do
    clipboard' <- unsafeManagedPtrCastPtr clipboard
    result <- gtk_clipboard_wait_is_uris_available clipboard'
    let result' = (/= 0) result
    touchManagedPtr clipboard
    return result'

#if defined(ENABLE_OVERLOADING)
data ClipboardWaitIsUrisAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsClipboard a) => O.MethodInfo ClipboardWaitIsUrisAvailableMethodInfo a signature where
    overloadedMethod = clipboardWaitIsUrisAvailable

#endif

-- method Clipboard::get
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "selection"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Atom" }
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Clipboard" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_get" gtk_clipboard_get :: 
    Ptr Gdk.Atom.Atom ->                    -- selection : TInterface (Name {namespace = "Gdk", name = "Atom"})
    IO (Ptr Clipboard)

-- | /No description available in the introspection data./
clipboardGet ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gdk.Atom.Atom
    -> m Clipboard
clipboardGet selection = liftIO $ do
    selection' <- unsafeManagedPtrGetPtr selection
    result <- gtk_clipboard_get selection'
    checkUnexpectedReturnNULL "clipboardGet" result
    result' <- (newObject Clipboard) result
    touchManagedPtr selection
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Clipboard::get_default
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "display"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Display" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GdkDisplay for which the clipboard is to be retrieved."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Clipboard" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_get_default" gtk_clipboard_get_default :: 
    Ptr Gdk.Display.Display ->              -- display : TInterface (Name {namespace = "Gdk", name = "Display"})
    IO (Ptr Clipboard)

-- | Returns the default clipboard object for use with cut\/copy\/paste menu items
-- and keyboard shortcuts.
-- 
-- /Since: 3.16/
clipboardGetDefault ::
    (B.CallStack.HasCallStack, MonadIO m, Gdk.Display.IsDisplay a) =>
    a
    -- ^ /@display@/: the t'GI.Gdk.Objects.Display.Display' for which the clipboard is to be retrieved.
    -> m Clipboard
    -- ^ __Returns:__ the default clipboard object.
clipboardGetDefault display = liftIO $ do
    display' <- unsafeManagedPtrCastPtr display
    result <- gtk_clipboard_get_default display'
    checkUnexpectedReturnNULL "clipboardGetDefault" result
    result' <- (newObject Clipboard) result
    touchManagedPtr display
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Clipboard::get_for_display
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "display"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Display" }
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
--           { argCName = "selection"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Atom" }
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Clipboard" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_clipboard_get_for_display" gtk_clipboard_get_for_display :: 
    Ptr Gdk.Display.Display ->              -- display : TInterface (Name {namespace = "Gdk", name = "Display"})
    Ptr Gdk.Atom.Atom ->                    -- selection : TInterface (Name {namespace = "Gdk", name = "Atom"})
    IO (Ptr Clipboard)

-- | /No description available in the introspection data./
clipboardGetForDisplay ::
    (B.CallStack.HasCallStack, MonadIO m, Gdk.Display.IsDisplay a) =>
    a
    -> Gdk.Atom.Atom
    -> m Clipboard
clipboardGetForDisplay display selection = liftIO $ do
    display' <- unsafeManagedPtrCastPtr display
    selection' <- unsafeManagedPtrGetPtr selection
    result <- gtk_clipboard_get_for_display display' selection'
    checkUnexpectedReturnNULL "clipboardGetForDisplay" result
    result' <- (newObject Clipboard) result
    touchManagedPtr display
    touchManagedPtr selection
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

