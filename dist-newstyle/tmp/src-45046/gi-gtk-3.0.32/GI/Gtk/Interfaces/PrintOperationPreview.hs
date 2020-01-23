{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.PrintOperationPreview
    ( 

-- * Exported types
    PrintOperationPreview(..)               ,
    noPrintOperationPreview                 ,
    IsPrintOperationPreview                 ,
    toPrintOperationPreview                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePrintOperationPreviewMethod      ,
#endif


-- ** endPreview #method:endPreview#

#if defined(ENABLE_OVERLOADING)
    PrintOperationPreviewEndPreviewMethodInfo,
#endif
    printOperationPreviewEndPreview         ,


-- ** isSelected #method:isSelected#

#if defined(ENABLE_OVERLOADING)
    PrintOperationPreviewIsSelectedMethodInfo,
#endif
    printOperationPreviewIsSelected         ,


-- ** renderPage #method:renderPage#

#if defined(ENABLE_OVERLOADING)
    PrintOperationPreviewRenderPageMethodInfo,
#endif
    printOperationPreviewRenderPage         ,




 -- * Signals
-- ** gotPageSize #signal:gotPageSize#

    C_PrintOperationPreviewGotPageSizeCallback,
    PrintOperationPreviewGotPageSizeCallback,
#if defined(ENABLE_OVERLOADING)
    PrintOperationPreviewGotPageSizeSignalInfo,
#endif
    afterPrintOperationPreviewGotPageSize   ,
    genClosure_PrintOperationPreviewGotPageSize,
    mk_PrintOperationPreviewGotPageSizeCallback,
    noPrintOperationPreviewGotPageSizeCallback,
    onPrintOperationPreviewGotPageSize      ,
    wrap_PrintOperationPreviewGotPageSizeCallback,


-- ** ready #signal:ready#

    C_PrintOperationPreviewReadyCallback    ,
    PrintOperationPreviewReadyCallback      ,
#if defined(ENABLE_OVERLOADING)
    PrintOperationPreviewReadySignalInfo    ,
#endif
    afterPrintOperationPreviewReady         ,
    genClosure_PrintOperationPreviewReady   ,
    mk_PrintOperationPreviewReadyCallback   ,
    noPrintOperationPreviewReadyCallback    ,
    onPrintOperationPreviewReady            ,
    wrap_PrintOperationPreviewReadyCallback ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import {-# SOURCE #-} qualified GI.Gtk.Objects.PrintContext as Gtk.PrintContext

-- interface PrintOperationPreview 
-- | Memory-managed wrapper type.
newtype PrintOperationPreview = PrintOperationPreview (ManagedPtr PrintOperationPreview)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `PrintOperationPreview`.
noPrintOperationPreview :: Maybe PrintOperationPreview
noPrintOperationPreview = Nothing

-- signal PrintOperationPreview::got-page-size
-- | The [gotPageSize](#signal:gotPageSize) signal is emitted once for each page
-- that gets rendered to the preview.
-- 
-- A handler for this signal should update the /@context@/
-- according to /@pageSetup@/ and set up a suitable cairo
-- context, using 'GI.Gtk.Objects.PrintContext.printContextSetCairoContext'.
type PrintOperationPreviewGotPageSizeCallback =
    Gtk.PrintContext.PrintContext
    -- ^ /@context@/: the current t'GI.Gtk.Objects.PrintContext.PrintContext'
    -> Gtk.PageSetup.PageSetup
    -- ^ /@pageSetup@/: the t'GI.Gtk.Objects.PageSetup.PageSetup' for the current page
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PrintOperationPreviewGotPageSizeCallback`@.
noPrintOperationPreviewGotPageSizeCallback :: Maybe PrintOperationPreviewGotPageSizeCallback
noPrintOperationPreviewGotPageSizeCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PrintOperationPreviewGotPageSizeCallback =
    Ptr () ->                               -- object
    Ptr Gtk.PrintContext.PrintContext ->
    Ptr Gtk.PageSetup.PageSetup ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintOperationPreviewGotPageSizeCallback`.
foreign import ccall "wrapper"
    mk_PrintOperationPreviewGotPageSizeCallback :: C_PrintOperationPreviewGotPageSizeCallback -> IO (FunPtr C_PrintOperationPreviewGotPageSizeCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PrintOperationPreviewGotPageSize :: MonadIO m => PrintOperationPreviewGotPageSizeCallback -> m (GClosure C_PrintOperationPreviewGotPageSizeCallback)
genClosure_PrintOperationPreviewGotPageSize cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewGotPageSizeCallback cb
    mk_PrintOperationPreviewGotPageSizeCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PrintOperationPreviewGotPageSizeCallback` into a `C_PrintOperationPreviewGotPageSizeCallback`.
wrap_PrintOperationPreviewGotPageSizeCallback ::
    PrintOperationPreviewGotPageSizeCallback ->
    C_PrintOperationPreviewGotPageSizeCallback
wrap_PrintOperationPreviewGotPageSizeCallback _cb _ context pageSetup _ = do
    context' <- (newObject Gtk.PrintContext.PrintContext) context
    pageSetup' <- (newObject Gtk.PageSetup.PageSetup) pageSetup
    _cb  context' pageSetup'


-- | Connect a signal handler for the [gotPageSize](#signal:gotPageSize) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printOperationPreview #gotPageSize callback
-- @
-- 
-- 
onPrintOperationPreviewGotPageSize :: (IsPrintOperationPreview a, MonadIO m) => a -> PrintOperationPreviewGotPageSizeCallback -> m SignalHandlerId
onPrintOperationPreviewGotPageSize obj cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewGotPageSizeCallback cb
    cb'' <- mk_PrintOperationPreviewGotPageSizeCallback cb'
    connectSignalFunPtr obj "got-page-size" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [gotPageSize](#signal:gotPageSize) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printOperationPreview #gotPageSize callback
-- @
-- 
-- 
afterPrintOperationPreviewGotPageSize :: (IsPrintOperationPreview a, MonadIO m) => a -> PrintOperationPreviewGotPageSizeCallback -> m SignalHandlerId
afterPrintOperationPreviewGotPageSize obj cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewGotPageSizeCallback cb
    cb'' <- mk_PrintOperationPreviewGotPageSizeCallback cb'
    connectSignalFunPtr obj "got-page-size" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintOperationPreviewGotPageSizeSignalInfo
instance SignalInfo PrintOperationPreviewGotPageSizeSignalInfo where
    type HaskellCallbackType PrintOperationPreviewGotPageSizeSignalInfo = PrintOperationPreviewGotPageSizeCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintOperationPreviewGotPageSizeCallback cb
        cb'' <- mk_PrintOperationPreviewGotPageSizeCallback cb'
        connectSignalFunPtr obj "got-page-size" cb'' connectMode detail

#endif

-- signal PrintOperationPreview::ready
-- | The [ready](#signal:ready) signal gets emitted once per preview operation,
-- before the first page is rendered.
-- 
-- A handler for this signal can be used for setup tasks.
type PrintOperationPreviewReadyCallback =
    Gtk.PrintContext.PrintContext
    -- ^ /@context@/: the current t'GI.Gtk.Objects.PrintContext.PrintContext'
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PrintOperationPreviewReadyCallback`@.
noPrintOperationPreviewReadyCallback :: Maybe PrintOperationPreviewReadyCallback
noPrintOperationPreviewReadyCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PrintOperationPreviewReadyCallback =
    Ptr () ->                               -- object
    Ptr Gtk.PrintContext.PrintContext ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintOperationPreviewReadyCallback`.
foreign import ccall "wrapper"
    mk_PrintOperationPreviewReadyCallback :: C_PrintOperationPreviewReadyCallback -> IO (FunPtr C_PrintOperationPreviewReadyCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PrintOperationPreviewReady :: MonadIO m => PrintOperationPreviewReadyCallback -> m (GClosure C_PrintOperationPreviewReadyCallback)
genClosure_PrintOperationPreviewReady cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewReadyCallback cb
    mk_PrintOperationPreviewReadyCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PrintOperationPreviewReadyCallback` into a `C_PrintOperationPreviewReadyCallback`.
wrap_PrintOperationPreviewReadyCallback ::
    PrintOperationPreviewReadyCallback ->
    C_PrintOperationPreviewReadyCallback
wrap_PrintOperationPreviewReadyCallback _cb _ context _ = do
    context' <- (newObject Gtk.PrintContext.PrintContext) context
    _cb  context'


-- | Connect a signal handler for the [ready](#signal:ready) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printOperationPreview #ready callback
-- @
-- 
-- 
onPrintOperationPreviewReady :: (IsPrintOperationPreview a, MonadIO m) => a -> PrintOperationPreviewReadyCallback -> m SignalHandlerId
onPrintOperationPreviewReady obj cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewReadyCallback cb
    cb'' <- mk_PrintOperationPreviewReadyCallback cb'
    connectSignalFunPtr obj "ready" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [ready](#signal:ready) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printOperationPreview #ready callback
-- @
-- 
-- 
afterPrintOperationPreviewReady :: (IsPrintOperationPreview a, MonadIO m) => a -> PrintOperationPreviewReadyCallback -> m SignalHandlerId
afterPrintOperationPreviewReady obj cb = liftIO $ do
    let cb' = wrap_PrintOperationPreviewReadyCallback cb
    cb'' <- mk_PrintOperationPreviewReadyCallback cb'
    connectSignalFunPtr obj "ready" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintOperationPreviewReadySignalInfo
instance SignalInfo PrintOperationPreviewReadySignalInfo where
    type HaskellCallbackType PrintOperationPreviewReadySignalInfo = PrintOperationPreviewReadyCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintOperationPreviewReadyCallback cb
        cb'' <- mk_PrintOperationPreviewReadyCallback cb'
        connectSignalFunPtr obj "ready" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PrintOperationPreview = PrintOperationPreviewSignalList
type PrintOperationPreviewSignalList = ('[ '("gotPageSize", PrintOperationPreviewGotPageSizeSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("ready", PrintOperationPreviewReadySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_print_operation_preview_get_type"
    c_gtk_print_operation_preview_get_type :: IO GType

instance GObject PrintOperationPreview where
    gobjectType = c_gtk_print_operation_preview_get_type
    

-- | Convert 'PrintOperationPreview' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue PrintOperationPreview where
    toGValue o = do
        gtype <- c_gtk_print_operation_preview_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr PrintOperationPreview)
        B.ManagedPtr.newObject PrintOperationPreview ptr
        
    

-- | Type class for types which can be safely cast to `PrintOperationPreview`, for instance with `toPrintOperationPreview`.
class (GObject o, O.IsDescendantOf PrintOperationPreview o) => IsPrintOperationPreview o
instance (GObject o, O.IsDescendantOf PrintOperationPreview o) => IsPrintOperationPreview o

instance O.HasParentTypes PrintOperationPreview
type instance O.ParentTypes PrintOperationPreview = '[GObject.Object.Object]

-- | Cast to `PrintOperationPreview`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPrintOperationPreview :: (MonadIO m, IsPrintOperationPreview o) => o -> m PrintOperationPreview
toPrintOperationPreview = liftIO . unsafeCastTo PrintOperationPreview

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PrintOperationPreview
type instance O.AttributeList PrintOperationPreview = PrintOperationPreviewAttributeList
type PrintOperationPreviewAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePrintOperationPreviewMethod (t :: Symbol) (o :: *) :: * where
    ResolvePrintOperationPreviewMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePrintOperationPreviewMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePrintOperationPreviewMethod "endPreview" o = PrintOperationPreviewEndPreviewMethodInfo
    ResolvePrintOperationPreviewMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePrintOperationPreviewMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePrintOperationPreviewMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePrintOperationPreviewMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePrintOperationPreviewMethod "isSelected" o = PrintOperationPreviewIsSelectedMethodInfo
    ResolvePrintOperationPreviewMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePrintOperationPreviewMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePrintOperationPreviewMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePrintOperationPreviewMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePrintOperationPreviewMethod "renderPage" o = PrintOperationPreviewRenderPageMethodInfo
    ResolvePrintOperationPreviewMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePrintOperationPreviewMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePrintOperationPreviewMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePrintOperationPreviewMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePrintOperationPreviewMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePrintOperationPreviewMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePrintOperationPreviewMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePrintOperationPreviewMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePrintOperationPreviewMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePrintOperationPreviewMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePrintOperationPreviewMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePrintOperationPreviewMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePrintOperationPreviewMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePrintOperationPreviewMethod t PrintOperationPreview, O.MethodInfo info PrintOperationPreview p) => OL.IsLabel t (PrintOperationPreview -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method PrintOperationPreview::end_preview
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "preview"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "PrintOperationPreview" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPrintOperationPreview"
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

foreign import ccall "gtk_print_operation_preview_end_preview" gtk_print_operation_preview_end_preview :: 
    Ptr PrintOperationPreview ->            -- preview : TInterface (Name {namespace = "Gtk", name = "PrintOperationPreview"})
    IO ()

-- | Ends a preview.
-- 
-- This function must be called to finish a custom print preview.
-- 
-- /Since: 2.10/
printOperationPreviewEndPreview ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperationPreview a) =>
    a
    -- ^ /@preview@/: a t'GI.Gtk.Interfaces.PrintOperationPreview.PrintOperationPreview'
    -> m ()
printOperationPreviewEndPreview preview = liftIO $ do
    preview' <- unsafeManagedPtrCastPtr preview
    gtk_print_operation_preview_end_preview preview'
    touchManagedPtr preview
    return ()

#if defined(ENABLE_OVERLOADING)
data PrintOperationPreviewEndPreviewMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPrintOperationPreview a) => O.MethodInfo PrintOperationPreviewEndPreviewMethodInfo a signature where
    overloadedMethod = printOperationPreviewEndPreview

#endif

-- method PrintOperationPreview::is_selected
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "preview"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "PrintOperationPreview" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPrintOperationPreview"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_nr"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a page number" , sinceVersion = Nothing }
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

foreign import ccall "gtk_print_operation_preview_is_selected" gtk_print_operation_preview_is_selected :: 
    Ptr PrintOperationPreview ->            -- preview : TInterface (Name {namespace = "Gtk", name = "PrintOperationPreview"})
    Int32 ->                                -- page_nr : TBasicType TInt
    IO CInt

-- | Returns whether the given page is included in the set of pages that
-- have been selected for printing.
-- 
-- /Since: 2.10/
printOperationPreviewIsSelected ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperationPreview a) =>
    a
    -- ^ /@preview@/: a t'GI.Gtk.Interfaces.PrintOperationPreview.PrintOperationPreview'
    -> Int32
    -- ^ /@pageNr@/: a page number
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the page has been selected for printing
printOperationPreviewIsSelected preview pageNr = liftIO $ do
    preview' <- unsafeManagedPtrCastPtr preview
    result <- gtk_print_operation_preview_is_selected preview' pageNr
    let result' = (/= 0) result
    touchManagedPtr preview
    return result'

#if defined(ENABLE_OVERLOADING)
data PrintOperationPreviewIsSelectedMethodInfo
instance (signature ~ (Int32 -> m Bool), MonadIO m, IsPrintOperationPreview a) => O.MethodInfo PrintOperationPreviewIsSelectedMethodInfo a signature where
    overloadedMethod = printOperationPreviewIsSelected

#endif

-- method PrintOperationPreview::render_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "preview"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "PrintOperationPreview" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPrintOperationPreview"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_nr"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the page to render" , sinceVersion = Nothing }
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

foreign import ccall "gtk_print_operation_preview_render_page" gtk_print_operation_preview_render_page :: 
    Ptr PrintOperationPreview ->            -- preview : TInterface (Name {namespace = "Gtk", name = "PrintOperationPreview"})
    Int32 ->                                -- page_nr : TBasicType TInt
    IO ()

-- | Renders a page to the preview, using the print context that
-- was passed to the [preview]("GI.Gtk.Objects.PrintOperation#signal:preview") handler together
-- with /@preview@/.
-- 
-- A custom iprint preview should use this function in its [expose](#signal:expose)
-- handler to render the currently selected page.
-- 
-- Note that this function requires a suitable cairo context to
-- be associated with the print context.
-- 
-- /Since: 2.10/
printOperationPreviewRenderPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperationPreview a) =>
    a
    -- ^ /@preview@/: a t'GI.Gtk.Interfaces.PrintOperationPreview.PrintOperationPreview'
    -> Int32
    -- ^ /@pageNr@/: the page to render
    -> m ()
printOperationPreviewRenderPage preview pageNr = liftIO $ do
    preview' <- unsafeManagedPtrCastPtr preview
    gtk_print_operation_preview_render_page preview' pageNr
    touchManagedPtr preview
    return ()

#if defined(ENABLE_OVERLOADING)
data PrintOperationPreviewRenderPageMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsPrintOperationPreview a) => O.MethodInfo PrintOperationPreviewRenderPageMethodInfo a signature where
    overloadedMethod = printOperationPreviewRenderPage

#endif

