{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Interfaces.Editable.Editable' interface is an interface which should be implemented by
-- text editing widgets, such as t'GI.Gtk.Objects.Entry.Entry' and t'GI.Gtk.Objects.SpinButton.SpinButton'. It contains functions
-- for generically manipulating an editable widget, a large number of action
-- signals used for key bindings, and several signals that an application can
-- connect to to modify the behavior of a widget.
-- 
-- As an example of the latter usage, by connecting
-- the following handler to [insertText]("GI.Gtk.Interfaces.Editable#signal:insertText"), an application
-- can convert all entry into a widget into uppercase.
-- 
-- == Forcing entry to uppercase.
-- 
-- 
-- === /C code/
-- >
-- >#include <ctype.h>;
-- >
-- >void
-- >insert_text_handler (GtkEditable *editable,
-- >                     const gchar *text,
-- >                     gint         length,
-- >                     gint        *position,
-- >                     gpointer     data)
-- >{
-- >  gchar *result = g_utf8_strup (text, length);
-- >
-- >  g_signal_handlers_block_by_func (editable,
-- >                               (gpointer) insert_text_handler, data);
-- >  gtk_editable_insert_text (editable, result, length, position);
-- >  g_signal_handlers_unblock_by_func (editable,
-- >                                     (gpointer) insert_text_handler, data);
-- >
-- >  g_signal_stop_emission_by_name (editable, "insert_text");
-- >
-- >  g_free (result);
-- >}
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.Editable
    ( 

-- * Exported types
    Editable(..)                            ,
    noEditable                              ,
    IsEditable                              ,
    toEditable                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEditableMethod                   ,
#endif


-- ** copyClipboard #method:copyClipboard#

#if defined(ENABLE_OVERLOADING)
    EditableCopyClipboardMethodInfo         ,
#endif
    editableCopyClipboard                   ,


-- ** cutClipboard #method:cutClipboard#

#if defined(ENABLE_OVERLOADING)
    EditableCutClipboardMethodInfo          ,
#endif
    editableCutClipboard                    ,


-- ** deleteSelection #method:deleteSelection#

#if defined(ENABLE_OVERLOADING)
    EditableDeleteSelectionMethodInfo       ,
#endif
    editableDeleteSelection                 ,


-- ** deleteText #method:deleteText#

#if defined(ENABLE_OVERLOADING)
    EditableDeleteTextMethodInfo            ,
#endif
    editableDeleteText                      ,


-- ** getChars #method:getChars#

#if defined(ENABLE_OVERLOADING)
    EditableGetCharsMethodInfo              ,
#endif
    editableGetChars                        ,


-- ** getEditable #method:getEditable#

#if defined(ENABLE_OVERLOADING)
    EditableGetEditableMethodInfo           ,
#endif
    editableGetEditable                     ,


-- ** getPosition #method:getPosition#

#if defined(ENABLE_OVERLOADING)
    EditableGetPositionMethodInfo           ,
#endif
    editableGetPosition                     ,


-- ** getSelectionBounds #method:getSelectionBounds#

#if defined(ENABLE_OVERLOADING)
    EditableGetSelectionBoundsMethodInfo    ,
#endif
    editableGetSelectionBounds              ,


-- ** insertText #method:insertText#

#if defined(ENABLE_OVERLOADING)
    EditableInsertTextMethodInfo            ,
#endif
    editableInsertText                      ,


-- ** pasteClipboard #method:pasteClipboard#

#if defined(ENABLE_OVERLOADING)
    EditablePasteClipboardMethodInfo        ,
#endif
    editablePasteClipboard                  ,


-- ** selectRegion #method:selectRegion#

#if defined(ENABLE_OVERLOADING)
    EditableSelectRegionMethodInfo          ,
#endif
    editableSelectRegion                    ,


-- ** setEditable #method:setEditable#

#if defined(ENABLE_OVERLOADING)
    EditableSetEditableMethodInfo           ,
#endif
    editableSetEditable                     ,


-- ** setPosition #method:setPosition#

#if defined(ENABLE_OVERLOADING)
    EditableSetPositionMethodInfo           ,
#endif
    editableSetPosition                     ,




 -- * Signals
-- ** changed #signal:changed#

    C_EditableChangedCallback               ,
    EditableChangedCallback                 ,
#if defined(ENABLE_OVERLOADING)
    EditableChangedSignalInfo               ,
#endif
    afterEditableChanged                    ,
    genClosure_EditableChanged              ,
    mk_EditableChangedCallback              ,
    noEditableChangedCallback               ,
    onEditableChanged                       ,
    wrap_EditableChangedCallback            ,


-- ** deleteText #signal:deleteText#

    C_EditableDeleteTextCallback            ,
    EditableDeleteTextCallback              ,
#if defined(ENABLE_OVERLOADING)
    EditableDeleteTextSignalInfo            ,
#endif
    afterEditableDeleteText                 ,
    genClosure_EditableDeleteText           ,
    mk_EditableDeleteTextCallback           ,
    noEditableDeleteTextCallback            ,
    onEditableDeleteText                    ,
    wrap_EditableDeleteTextCallback         ,


-- ** insertText #signal:insertText#

    C_EditableInsertTextCallback            ,
    EditableInsertTextCallback              ,
#if defined(ENABLE_OVERLOADING)
    EditableInsertTextSignalInfo            ,
#endif
    afterEditableInsertText                 ,
    genClosure_EditableInsertText           ,
    mk_EditableInsertTextCallback           ,
    noEditableInsertTextCallback            ,
    onEditableInsertText                    ,
    wrap_EditableInsertTextCallback         ,




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

-- interface Editable 
-- | Memory-managed wrapper type.
newtype Editable = Editable (ManagedPtr Editable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `Editable`.
noEditable :: Maybe Editable
noEditable = Nothing

-- signal Editable::changed
-- | The [changed](#signal:changed) signal is emitted at the end of a single
-- user-visible operation on the contents of the t'GI.Gtk.Interfaces.Editable.Editable'.
-- 
-- E.g., a paste operation that replaces the contents of the
-- selection will cause only one signal emission (even though it
-- is implemented by first deleting the selection, then inserting
-- the new content, and may cause multiple [notify](#signal:notify)[text](#signal:text) signals
-- to be emitted).
type EditableChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EditableChangedCallback`@.
noEditableChangedCallback :: Maybe EditableChangedCallback
noEditableChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EditableChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EditableChangedCallback`.
foreign import ccall "wrapper"
    mk_EditableChangedCallback :: C_EditableChangedCallback -> IO (FunPtr C_EditableChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EditableChanged :: MonadIO m => EditableChangedCallback -> m (GClosure C_EditableChangedCallback)
genClosure_EditableChanged cb = liftIO $ do
    let cb' = wrap_EditableChangedCallback cb
    mk_EditableChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EditableChangedCallback` into a `C_EditableChangedCallback`.
wrap_EditableChangedCallback ::
    EditableChangedCallback ->
    C_EditableChangedCallback
wrap_EditableChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' editable #changed callback
-- @
-- 
-- 
onEditableChanged :: (IsEditable a, MonadIO m) => a -> EditableChangedCallback -> m SignalHandlerId
onEditableChanged obj cb = liftIO $ do
    let cb' = wrap_EditableChangedCallback cb
    cb'' <- mk_EditableChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' editable #changed callback
-- @
-- 
-- 
afterEditableChanged :: (IsEditable a, MonadIO m) => a -> EditableChangedCallback -> m SignalHandlerId
afterEditableChanged obj cb = liftIO $ do
    let cb' = wrap_EditableChangedCallback cb
    cb'' <- mk_EditableChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EditableChangedSignalInfo
instance SignalInfo EditableChangedSignalInfo where
    type HaskellCallbackType EditableChangedSignalInfo = EditableChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EditableChangedCallback cb
        cb'' <- mk_EditableChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- signal Editable::delete-text
-- | This signal is emitted when text is deleted from
-- the widget by the user. The default handler for
-- this signal will normally be responsible for deleting
-- the text, so by connecting to this signal and then
-- stopping the signal with 'GI.GObject.Functions.signalStopEmission', it
-- is possible to modify the range of deleted text, or
-- prevent it from being deleted entirely. The /@startPos@/
-- and /@endPos@/ parameters are interpreted as for
-- 'GI.Gtk.Interfaces.Editable.editableDeleteText'.
type EditableDeleteTextCallback =
    Int32
    -- ^ /@startPos@/: the starting position
    -> Int32
    -- ^ /@endPos@/: the end position
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EditableDeleteTextCallback`@.
noEditableDeleteTextCallback :: Maybe EditableDeleteTextCallback
noEditableDeleteTextCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EditableDeleteTextCallback =
    Ptr () ->                               -- object
    Int32 ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EditableDeleteTextCallback`.
foreign import ccall "wrapper"
    mk_EditableDeleteTextCallback :: C_EditableDeleteTextCallback -> IO (FunPtr C_EditableDeleteTextCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EditableDeleteText :: MonadIO m => EditableDeleteTextCallback -> m (GClosure C_EditableDeleteTextCallback)
genClosure_EditableDeleteText cb = liftIO $ do
    let cb' = wrap_EditableDeleteTextCallback cb
    mk_EditableDeleteTextCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EditableDeleteTextCallback` into a `C_EditableDeleteTextCallback`.
wrap_EditableDeleteTextCallback ::
    EditableDeleteTextCallback ->
    C_EditableDeleteTextCallback
wrap_EditableDeleteTextCallback _cb _ startPos endPos _ = do
    _cb  startPos endPos


-- | Connect a signal handler for the [deleteText](#signal:deleteText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' editable #deleteText callback
-- @
-- 
-- 
onEditableDeleteText :: (IsEditable a, MonadIO m) => a -> EditableDeleteTextCallback -> m SignalHandlerId
onEditableDeleteText obj cb = liftIO $ do
    let cb' = wrap_EditableDeleteTextCallback cb
    cb'' <- mk_EditableDeleteTextCallback cb'
    connectSignalFunPtr obj "delete-text" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [deleteText](#signal:deleteText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' editable #deleteText callback
-- @
-- 
-- 
afterEditableDeleteText :: (IsEditable a, MonadIO m) => a -> EditableDeleteTextCallback -> m SignalHandlerId
afterEditableDeleteText obj cb = liftIO $ do
    let cb' = wrap_EditableDeleteTextCallback cb
    cb'' <- mk_EditableDeleteTextCallback cb'
    connectSignalFunPtr obj "delete-text" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EditableDeleteTextSignalInfo
instance SignalInfo EditableDeleteTextSignalInfo where
    type HaskellCallbackType EditableDeleteTextSignalInfo = EditableDeleteTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EditableDeleteTextCallback cb
        cb'' <- mk_EditableDeleteTextCallback cb'
        connectSignalFunPtr obj "delete-text" cb'' connectMode detail

#endif

-- signal Editable::insert-text
-- | This signal is emitted when text is inserted into
-- the widget by the user. The default handler for
-- this signal will normally be responsible for inserting
-- the text, so by connecting to this signal and then
-- stopping the signal with 'GI.GObject.Functions.signalStopEmission', it
-- is possible to modify the inserted text, or prevent
-- it from being inserted entirely.
type EditableInsertTextCallback =
    T.Text
    -- ^ /@newText@/: the new text to insert
    -> Int32
    -- ^ /@newTextLength@/: the length of the new text, in bytes,
    --     or -1 if new_text is nul-terminated
    -> Int32
    -- ^ /@position@/: the position, in characters,
    --     at which to insert the new text. this is an in-out
    --     parameter.  After the signal emission is finished, it
    --     should point after the newly inserted text.
    -> IO (Int32)

-- | A convenience synonym for @`Nothing` :: `Maybe` `EditableInsertTextCallback`@.
noEditableInsertTextCallback :: Maybe EditableInsertTextCallback
noEditableInsertTextCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EditableInsertTextCallback =
    Ptr () ->                               -- object
    CString ->
    Int32 ->
    Ptr Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EditableInsertTextCallback`.
foreign import ccall "wrapper"
    mk_EditableInsertTextCallback :: C_EditableInsertTextCallback -> IO (FunPtr C_EditableInsertTextCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EditableInsertText :: MonadIO m => EditableInsertTextCallback -> m (GClosure C_EditableInsertTextCallback)
genClosure_EditableInsertText cb = liftIO $ do
    let cb' = wrap_EditableInsertTextCallback cb
    mk_EditableInsertTextCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EditableInsertTextCallback` into a `C_EditableInsertTextCallback`.
wrap_EditableInsertTextCallback ::
    EditableInsertTextCallback ->
    C_EditableInsertTextCallback
wrap_EditableInsertTextCallback _cb _ newText newTextLength position _ = do
    newText' <- cstringToText newText
    position' <- peek position
    outposition <- _cb  newText' newTextLength position'
    poke position outposition


-- | Connect a signal handler for the [insertText](#signal:insertText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' editable #insertText callback
-- @
-- 
-- 
onEditableInsertText :: (IsEditable a, MonadIO m) => a -> EditableInsertTextCallback -> m SignalHandlerId
onEditableInsertText obj cb = liftIO $ do
    let cb' = wrap_EditableInsertTextCallback cb
    cb'' <- mk_EditableInsertTextCallback cb'
    connectSignalFunPtr obj "insert-text" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insertText](#signal:insertText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' editable #insertText callback
-- @
-- 
-- 
afterEditableInsertText :: (IsEditable a, MonadIO m) => a -> EditableInsertTextCallback -> m SignalHandlerId
afterEditableInsertText obj cb = liftIO $ do
    let cb' = wrap_EditableInsertTextCallback cb
    cb'' <- mk_EditableInsertTextCallback cb'
    connectSignalFunPtr obj "insert-text" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EditableInsertTextSignalInfo
instance SignalInfo EditableInsertTextSignalInfo where
    type HaskellCallbackType EditableInsertTextSignalInfo = EditableInsertTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EditableInsertTextCallback cb
        cb'' <- mk_EditableInsertTextCallback cb'
        connectSignalFunPtr obj "insert-text" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Editable = EditableSignalList
type EditableSignalList = ('[ '("changed", EditableChangedSignalInfo), '("deleteText", EditableDeleteTextSignalInfo), '("insertText", EditableInsertTextSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_editable_get_type"
    c_gtk_editable_get_type :: IO GType

instance GObject Editable where
    gobjectType = c_gtk_editable_get_type
    

-- | Convert 'Editable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Editable where
    toGValue o = do
        gtype <- c_gtk_editable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Editable)
        B.ManagedPtr.newObject Editable ptr
        
    

-- | Type class for types which can be safely cast to `Editable`, for instance with `toEditable`.
class (GObject o, O.IsDescendantOf Editable o) => IsEditable o
instance (GObject o, O.IsDescendantOf Editable o) => IsEditable o

instance O.HasParentTypes Editable
type instance O.ParentTypes Editable = '[GObject.Object.Object]

-- | Cast to `Editable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEditable :: (MonadIO m, IsEditable o) => o -> m Editable
toEditable = liftIO . unsafeCastTo Editable

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Editable
type instance O.AttributeList Editable = EditableAttributeList
type EditableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveEditableMethod (t :: Symbol) (o :: *) :: * where
    ResolveEditableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEditableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEditableMethod "copyClipboard" o = EditableCopyClipboardMethodInfo
    ResolveEditableMethod "cutClipboard" o = EditableCutClipboardMethodInfo
    ResolveEditableMethod "deleteSelection" o = EditableDeleteSelectionMethodInfo
    ResolveEditableMethod "deleteText" o = EditableDeleteTextMethodInfo
    ResolveEditableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEditableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEditableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEditableMethod "insertText" o = EditableInsertTextMethodInfo
    ResolveEditableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEditableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEditableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEditableMethod "pasteClipboard" o = EditablePasteClipboardMethodInfo
    ResolveEditableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEditableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEditableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEditableMethod "selectRegion" o = EditableSelectRegionMethodInfo
    ResolveEditableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEditableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEditableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEditableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEditableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEditableMethod "getChars" o = EditableGetCharsMethodInfo
    ResolveEditableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEditableMethod "getEditable" o = EditableGetEditableMethodInfo
    ResolveEditableMethod "getPosition" o = EditableGetPositionMethodInfo
    ResolveEditableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEditableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEditableMethod "getSelectionBounds" o = EditableGetSelectionBoundsMethodInfo
    ResolveEditableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEditableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEditableMethod "setEditable" o = EditableSetEditableMethodInfo
    ResolveEditableMethod "setPosition" o = EditableSetPositionMethodInfo
    ResolveEditableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEditableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEditableMethod t Editable, O.MethodInfo info Editable p) => OL.IsLabel t (Editable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method Editable::copy_clipboard
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_copy_clipboard" gtk_editable_copy_clipboard :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO ()

-- | Copies the contents of the currently selected content in the editable and
-- puts it on the clipboard.
editableCopyClipboard ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m ()
editableCopyClipboard editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_copy_clipboard editable'
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableCopyClipboardMethodInfo
instance (signature ~ (m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableCopyClipboardMethodInfo a signature where
    overloadedMethod = editableCopyClipboard

#endif

-- method Editable::cut_clipboard
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_cut_clipboard" gtk_editable_cut_clipboard :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO ()

-- | Removes the contents of the currently selected content in the editable and
-- puts it on the clipboard.
editableCutClipboard ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m ()
editableCutClipboard editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_cut_clipboard editable'
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableCutClipboardMethodInfo
instance (signature ~ (m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableCutClipboardMethodInfo a signature where
    overloadedMethod = editableCutClipboard

#endif

-- method Editable::delete_selection
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_delete_selection" gtk_editable_delete_selection :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO ()

-- | Deletes the currently selected text of the editable.
-- This call doesn’t do anything if there is no selected text.
editableDeleteSelection ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m ()
editableDeleteSelection editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_delete_selection editable'
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableDeleteSelectionMethodInfo
instance (signature ~ (m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableDeleteSelectionMethodInfo a signature where
    overloadedMethod = editableDeleteSelection

#endif

-- method Editable::delete_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "start position" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "end_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "end position" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_delete_text" gtk_editable_delete_text :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    Int32 ->                                -- start_pos : TBasicType TInt
    Int32 ->                                -- end_pos : TBasicType TInt
    IO ()

-- | Deletes a sequence of characters. The characters that are deleted are
-- those characters at positions from /@startPos@/ up to, but not including
-- /@endPos@/. If /@endPos@/ is negative, then the characters deleted
-- are those from /@startPos@/ to the end of the text.
-- 
-- Note that the positions are specified in characters, not bytes.
editableDeleteText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> Int32
    -- ^ /@startPos@/: start position
    -> Int32
    -- ^ /@endPos@/: end position
    -> m ()
editableDeleteText editable startPos endPos = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_delete_text editable' startPos endPos
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableDeleteTextMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableDeleteTextMethodInfo a signature where
    overloadedMethod = editableDeleteText

#endif

-- method Editable::get_chars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "start of text" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "end_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "end of text" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_get_chars" gtk_editable_get_chars :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    Int32 ->                                -- start_pos : TBasicType TInt
    Int32 ->                                -- end_pos : TBasicType TInt
    IO CString

-- | Retrieves a sequence of characters. The characters that are retrieved
-- are those characters at positions from /@startPos@/ up to, but not
-- including /@endPos@/. If /@endPos@/ is negative, then the characters
-- retrieved are those characters from /@startPos@/ to the end of the text.
-- 
-- Note that positions are specified in characters, not bytes.
editableGetChars ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> Int32
    -- ^ /@startPos@/: start of text
    -> Int32
    -- ^ /@endPos@/: end of text
    -> m T.Text
    -- ^ __Returns:__ a pointer to the contents of the widget as a
    --      string. This string is allocated by the t'GI.Gtk.Interfaces.Editable.Editable'
    --      implementation and should be freed by the caller.
editableGetChars editable startPos endPos = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    result <- gtk_editable_get_chars editable' startPos endPos
    checkUnexpectedReturnNULL "editableGetChars" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr editable
    return result'

#if defined(ENABLE_OVERLOADING)
data EditableGetCharsMethodInfo
instance (signature ~ (Int32 -> Int32 -> m T.Text), MonadIO m, IsEditable a) => O.MethodInfo EditableGetCharsMethodInfo a signature where
    overloadedMethod = editableGetChars

#endif

-- method Editable::get_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_get_editable" gtk_editable_get_editable :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO CInt

-- | Retrieves whether /@editable@/ is editable. See
-- 'GI.Gtk.Interfaces.Editable.editableSetEditable'.
editableGetEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@editable@/ is editable.
editableGetEditable editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    result <- gtk_editable_get_editable editable'
    let result' = (/= 0) result
    touchManagedPtr editable
    return result'

#if defined(ENABLE_OVERLOADING)
data EditableGetEditableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditable a) => O.MethodInfo EditableGetEditableMethodInfo a signature where
    overloadedMethod = editableGetEditable

#endif

-- method Editable::get_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_editable_get_position" gtk_editable_get_position :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO Int32

-- | Retrieves the current position of the cursor relative to the start
-- of the content of the editable.
-- 
-- Note that this position is in characters, not in bytes.
editableGetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m Int32
    -- ^ __Returns:__ the cursor position
editableGetPosition editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    result <- gtk_editable_get_position editable'
    touchManagedPtr editable
    return result

#if defined(ENABLE_OVERLOADING)
data EditableGetPositionMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsEditable a) => O.MethodInfo EditableGetPositionMethodInfo a signature where
    overloadedMethod = editableGetPosition

#endif

-- method Editable::get_selection_bounds
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store the starting position, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "end_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to store the end position, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_editable_get_selection_bounds" gtk_editable_get_selection_bounds :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    Ptr Int32 ->                            -- start_pos : TBasicType TInt
    Ptr Int32 ->                            -- end_pos : TBasicType TInt
    IO CInt

-- | Retrieves the selection bound of the editable. start_pos will be filled
-- with the start of the selection and /@endPos@/ with end. If no text was
-- selected both will be identical and 'P.False' will be returned.
-- 
-- Note that positions are specified in characters, not bytes.
editableGetSelectionBounds ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m ((Bool, Int32, Int32))
    -- ^ __Returns:__ 'P.True' if an area is selected, 'P.False' otherwise
editableGetSelectionBounds editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    startPos <- allocMem :: IO (Ptr Int32)
    endPos <- allocMem :: IO (Ptr Int32)
    result <- gtk_editable_get_selection_bounds editable' startPos endPos
    let result' = (/= 0) result
    startPos' <- peek startPos
    endPos' <- peek endPos
    touchManagedPtr editable
    freeMem startPos
    freeMem endPos
    return (result', startPos', endPos')

#if defined(ENABLE_OVERLOADING)
data EditableGetSelectionBoundsMethodInfo
instance (signature ~ (m ((Bool, Int32, Int32))), MonadIO m, IsEditable a) => O.MethodInfo EditableGetSelectionBoundsMethodInfo a signature where
    overloadedMethod = editableGetSelectionBounds

#endif

-- method Editable::insert_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to append" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_text_length"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the text in bytes, or -1"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionInout
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location of the position text will be inserted at"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_editable_insert_text" gtk_editable_insert_text :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    CString ->                              -- new_text : TBasicType TUTF8
    Int32 ->                                -- new_text_length : TBasicType TInt
    Ptr Int32 ->                            -- position : TBasicType TInt
    IO ()

-- | Inserts /@newTextLength@/ bytes of /@newText@/ into the contents of the
-- widget, at position /@position@/.
-- 
-- Note that the position is in characters, not in bytes.
-- The function updates /@position@/ to point after the newly inserted text.
editableInsertText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> T.Text
    -- ^ /@newText@/: the text to append
    -> Int32
    -- ^ /@newTextLength@/: the length of the text in bytes, or -1
    -> Int32
    -- ^ /@position@/: location of the position text will be inserted at
    -> m (Int32)
editableInsertText editable newText newTextLength position = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    newText' <- textToCString newText
    position' <- allocMem :: IO (Ptr Int32)
    poke position' position
    gtk_editable_insert_text editable' newText' newTextLength position'
    position'' <- peek position'
    touchManagedPtr editable
    freeMem newText'
    freeMem position'
    return position''

#if defined(ENABLE_OVERLOADING)
data EditableInsertTextMethodInfo
instance (signature ~ (T.Text -> Int32 -> Int32 -> m (Int32)), MonadIO m, IsEditable a) => O.MethodInfo EditableInsertTextMethodInfo a signature where
    overloadedMethod = editableInsertText

#endif

-- method Editable::paste_clipboard
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_paste_clipboard" gtk_editable_paste_clipboard :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    IO ()

-- | Pastes the content of the clipboard to the current position of the
-- cursor in the editable.
editablePasteClipboard ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> m ()
editablePasteClipboard editable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_paste_clipboard editable'
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditablePasteClipboardMethodInfo
instance (signature ~ (m ()), MonadIO m, IsEditable a) => O.MethodInfo EditablePasteClipboardMethodInfo a signature where
    overloadedMethod = editablePasteClipboard

#endif

-- method Editable::select_region
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "start of region" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "end_pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "end of region" , sinceVersion = Nothing }
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

foreign import ccall "gtk_editable_select_region" gtk_editable_select_region :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    Int32 ->                                -- start_pos : TBasicType TInt
    Int32 ->                                -- end_pos : TBasicType TInt
    IO ()

-- | Selects a region of text. The characters that are selected are
-- those characters at positions from /@startPos@/ up to, but not
-- including /@endPos@/. If /@endPos@/ is negative, then the
-- characters selected are those characters from /@startPos@/ to
-- the end of the text.
-- 
-- Note that positions are specified in characters, not bytes.
editableSelectRegion ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> Int32
    -- ^ /@startPos@/: start of region
    -> Int32
    -- ^ /@endPos@/: end of region
    -> m ()
editableSelectRegion editable startPos endPos = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_select_region editable' startPos endPos
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableSelectRegionMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableSelectRegionMethodInfo a signature where
    overloadedMethod = editableSelectRegion

#endif

-- method Editable::set_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_editable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if the user is allowed to edit the text\n  in the widget"
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

foreign import ccall "gtk_editable_set_editable" gtk_editable_set_editable :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    CInt ->                                 -- is_editable : TBasicType TBoolean
    IO ()

-- | Determines if the user can edit the text in the editable
-- widget or not.
editableSetEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> Bool
    -- ^ /@isEditable@/: 'P.True' if the user is allowed to edit the text
    --   in the widget
    -> m ()
editableSetEditable editable isEditable = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    let isEditable' = (fromIntegral . fromEnum) isEditable
    gtk_editable_set_editable editable' isEditable'
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableSetEditableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableSetEditableMethodInfo a signature where
    overloadedMethod = editableSetEditable

#endif

-- method Editable::set_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Editable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEditable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position of the cursor"
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

foreign import ccall "gtk_editable_set_position" gtk_editable_set_position :: 
    Ptr Editable ->                         -- editable : TInterface (Name {namespace = "Gtk", name = "Editable"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Sets the cursor position in the editable to the given value.
-- 
-- The cursor is displayed before the character with the given (base 0)
-- index in the contents of the editable. The value must be less than or
-- equal to the number of characters in the editable. A value of -1
-- indicates that the position should be set after the last character
-- of the editable. Note that /@position@/ is in characters, not in bytes.
editableSetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditable a) =>
    a
    -- ^ /@editable@/: a t'GI.Gtk.Interfaces.Editable.Editable'
    -> Int32
    -- ^ /@position@/: the position of the cursor
    -> m ()
editableSetPosition editable position = liftIO $ do
    editable' <- unsafeManagedPtrCastPtr editable
    gtk_editable_set_position editable' position
    touchManagedPtr editable
    return ()

#if defined(ENABLE_OVERLOADING)
data EditableSetPositionMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsEditable a) => O.MethodInfo EditableSetPositionMethodInfo a signature where
    overloadedMethod = editableSetPosition

#endif

