{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.EntryBuffer.EntryBuffer' class contains the actual text displayed in a
-- t'GI.Gtk.Objects.Entry.Entry' widget.
-- 
-- A single t'GI.Gtk.Objects.EntryBuffer.EntryBuffer' object can be shared by multiple t'GI.Gtk.Objects.Entry.Entry'
-- widgets which will then share the same text content, but not the cursor
-- position, visibility attributes, icon etc.
-- 
-- t'GI.Gtk.Objects.EntryBuffer.EntryBuffer' may be derived from. Such a derived class might allow
-- text to be stored in an alternate location, such as non-pageable memory,
-- useful in the case of important passwords. Or a derived class could
-- integrate with an application’s concept of undo\/redo.
-- 
-- /Since: 2.18/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EntryBuffer
    ( 

-- * Exported types
    EntryBuffer(..)                         ,
    IsEntryBuffer                           ,
    toEntryBuffer                           ,
    noEntryBuffer                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEntryBufferMethod                ,
#endif


-- ** deleteText #method:deleteText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferDeleteTextMethodInfo         ,
#endif
    entryBufferDeleteText                   ,


-- ** emitDeletedText #method:emitDeletedText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferEmitDeletedTextMethodInfo    ,
#endif
    entryBufferEmitDeletedText              ,


-- ** emitInsertedText #method:emitInsertedText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferEmitInsertedTextMethodInfo   ,
#endif
    entryBufferEmitInsertedText             ,


-- ** getBytes #method:getBytes#

#if defined(ENABLE_OVERLOADING)
    EntryBufferGetBytesMethodInfo           ,
#endif
    entryBufferGetBytes                     ,


-- ** getLength #method:getLength#

#if defined(ENABLE_OVERLOADING)
    EntryBufferGetLengthMethodInfo          ,
#endif
    entryBufferGetLength                    ,


-- ** getMaxLength #method:getMaxLength#

#if defined(ENABLE_OVERLOADING)
    EntryBufferGetMaxLengthMethodInfo       ,
#endif
    entryBufferGetMaxLength                 ,


-- ** getText #method:getText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferGetTextMethodInfo            ,
#endif
    entryBufferGetText                      ,


-- ** insertText #method:insertText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferInsertTextMethodInfo         ,
#endif
    entryBufferInsertText                   ,


-- ** new #method:new#

    entryBufferNew                          ,


-- ** setMaxLength #method:setMaxLength#

#if defined(ENABLE_OVERLOADING)
    EntryBufferSetMaxLengthMethodInfo       ,
#endif
    entryBufferSetMaxLength                 ,


-- ** setText #method:setText#

#if defined(ENABLE_OVERLOADING)
    EntryBufferSetTextMethodInfo            ,
#endif
    entryBufferSetText                      ,




 -- * Properties
-- ** length #attr:length#
-- | The length (in characters) of the text in buffer.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    EntryBufferLengthPropertyInfo           ,
#endif
#if defined(ENABLE_OVERLOADING)
    entryBufferLength                       ,
#endif
    getEntryBufferLength                    ,


-- ** maxLength #attr:maxLength#
-- | The maximum length (in characters) of the text in the buffer.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    EntryBufferMaxLengthPropertyInfo        ,
#endif
    constructEntryBufferMaxLength           ,
#if defined(ENABLE_OVERLOADING)
    entryBufferMaxLength                    ,
#endif
    getEntryBufferMaxLength                 ,
    setEntryBufferMaxLength                 ,


-- ** text #attr:text#
-- | The contents of the buffer.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    EntryBufferTextPropertyInfo             ,
#endif
    clearEntryBufferText                    ,
    constructEntryBufferText                ,
#if defined(ENABLE_OVERLOADING)
    entryBufferText                         ,
#endif
    getEntryBufferText                      ,
    setEntryBufferText                      ,




 -- * Signals
-- ** deletedText #signal:deletedText#

    C_EntryBufferDeletedTextCallback        ,
    EntryBufferDeletedTextCallback          ,
#if defined(ENABLE_OVERLOADING)
    EntryBufferDeletedTextSignalInfo        ,
#endif
    afterEntryBufferDeletedText             ,
    genClosure_EntryBufferDeletedText       ,
    mk_EntryBufferDeletedTextCallback       ,
    noEntryBufferDeletedTextCallback        ,
    onEntryBufferDeletedText                ,
    wrap_EntryBufferDeletedTextCallback     ,


-- ** insertedText #signal:insertedText#

    C_EntryBufferInsertedTextCallback       ,
    EntryBufferInsertedTextCallback         ,
#if defined(ENABLE_OVERLOADING)
    EntryBufferInsertedTextSignalInfo       ,
#endif
    afterEntryBufferInsertedText            ,
    genClosure_EntryBufferInsertedText      ,
    mk_EntryBufferInsertedTextCallback      ,
    noEntryBufferInsertedTextCallback       ,
    onEntryBufferInsertedText               ,
    wrap_EntryBufferInsertedTextCallback    ,




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

-- | Memory-managed wrapper type.
newtype EntryBuffer = EntryBuffer (ManagedPtr EntryBuffer)
    deriving (Eq)
foreign import ccall "gtk_entry_buffer_get_type"
    c_gtk_entry_buffer_get_type :: IO GType

instance GObject EntryBuffer where
    gobjectType = c_gtk_entry_buffer_get_type
    

-- | Convert 'EntryBuffer' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EntryBuffer where
    toGValue o = do
        gtype <- c_gtk_entry_buffer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EntryBuffer)
        B.ManagedPtr.newObject EntryBuffer ptr
        
    

-- | Type class for types which can be safely cast to `EntryBuffer`, for instance with `toEntryBuffer`.
class (GObject o, O.IsDescendantOf EntryBuffer o) => IsEntryBuffer o
instance (GObject o, O.IsDescendantOf EntryBuffer o) => IsEntryBuffer o

instance O.HasParentTypes EntryBuffer
type instance O.ParentTypes EntryBuffer = '[GObject.Object.Object]

-- | Cast to `EntryBuffer`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEntryBuffer :: (MonadIO m, IsEntryBuffer o) => o -> m EntryBuffer
toEntryBuffer = liftIO . unsafeCastTo EntryBuffer

-- | A convenience alias for `Nothing` :: `Maybe` `EntryBuffer`.
noEntryBuffer :: Maybe EntryBuffer
noEntryBuffer = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEntryBufferMethod (t :: Symbol) (o :: *) :: * where
    ResolveEntryBufferMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEntryBufferMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEntryBufferMethod "deleteText" o = EntryBufferDeleteTextMethodInfo
    ResolveEntryBufferMethod "emitDeletedText" o = EntryBufferEmitDeletedTextMethodInfo
    ResolveEntryBufferMethod "emitInsertedText" o = EntryBufferEmitInsertedTextMethodInfo
    ResolveEntryBufferMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEntryBufferMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEntryBufferMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEntryBufferMethod "insertText" o = EntryBufferInsertTextMethodInfo
    ResolveEntryBufferMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEntryBufferMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEntryBufferMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEntryBufferMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEntryBufferMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEntryBufferMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEntryBufferMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEntryBufferMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEntryBufferMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEntryBufferMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEntryBufferMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEntryBufferMethod "getBytes" o = EntryBufferGetBytesMethodInfo
    ResolveEntryBufferMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEntryBufferMethod "getLength" o = EntryBufferGetLengthMethodInfo
    ResolveEntryBufferMethod "getMaxLength" o = EntryBufferGetMaxLengthMethodInfo
    ResolveEntryBufferMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEntryBufferMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEntryBufferMethod "getText" o = EntryBufferGetTextMethodInfo
    ResolveEntryBufferMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEntryBufferMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEntryBufferMethod "setMaxLength" o = EntryBufferSetMaxLengthMethodInfo
    ResolveEntryBufferMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEntryBufferMethod "setText" o = EntryBufferSetTextMethodInfo
    ResolveEntryBufferMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEntryBufferMethod t EntryBuffer, O.MethodInfo info EntryBuffer p) => OL.IsLabel t (EntryBuffer -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal EntryBuffer::deleted-text
-- | This signal is emitted after text is deleted from the buffer.
-- 
-- /Since: 2.18/
type EntryBufferDeletedTextCallback =
    Word32
    -- ^ /@position@/: the position the text was deleted at.
    -> Word32
    -- ^ /@nChars@/: The number of characters that were deleted.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EntryBufferDeletedTextCallback`@.
noEntryBufferDeletedTextCallback :: Maybe EntryBufferDeletedTextCallback
noEntryBufferDeletedTextCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EntryBufferDeletedTextCallback =
    Ptr () ->                               -- object
    Word32 ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EntryBufferDeletedTextCallback`.
foreign import ccall "wrapper"
    mk_EntryBufferDeletedTextCallback :: C_EntryBufferDeletedTextCallback -> IO (FunPtr C_EntryBufferDeletedTextCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EntryBufferDeletedText :: MonadIO m => EntryBufferDeletedTextCallback -> m (GClosure C_EntryBufferDeletedTextCallback)
genClosure_EntryBufferDeletedText cb = liftIO $ do
    let cb' = wrap_EntryBufferDeletedTextCallback cb
    mk_EntryBufferDeletedTextCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EntryBufferDeletedTextCallback` into a `C_EntryBufferDeletedTextCallback`.
wrap_EntryBufferDeletedTextCallback ::
    EntryBufferDeletedTextCallback ->
    C_EntryBufferDeletedTextCallback
wrap_EntryBufferDeletedTextCallback _cb _ position nChars _ = do
    _cb  position nChars


-- | Connect a signal handler for the [deletedText](#signal:deletedText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' entryBuffer #deletedText callback
-- @
-- 
-- 
onEntryBufferDeletedText :: (IsEntryBuffer a, MonadIO m) => a -> EntryBufferDeletedTextCallback -> m SignalHandlerId
onEntryBufferDeletedText obj cb = liftIO $ do
    let cb' = wrap_EntryBufferDeletedTextCallback cb
    cb'' <- mk_EntryBufferDeletedTextCallback cb'
    connectSignalFunPtr obj "deleted-text" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [deletedText](#signal:deletedText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' entryBuffer #deletedText callback
-- @
-- 
-- 
afterEntryBufferDeletedText :: (IsEntryBuffer a, MonadIO m) => a -> EntryBufferDeletedTextCallback -> m SignalHandlerId
afterEntryBufferDeletedText obj cb = liftIO $ do
    let cb' = wrap_EntryBufferDeletedTextCallback cb
    cb'' <- mk_EntryBufferDeletedTextCallback cb'
    connectSignalFunPtr obj "deleted-text" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EntryBufferDeletedTextSignalInfo
instance SignalInfo EntryBufferDeletedTextSignalInfo where
    type HaskellCallbackType EntryBufferDeletedTextSignalInfo = EntryBufferDeletedTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EntryBufferDeletedTextCallback cb
        cb'' <- mk_EntryBufferDeletedTextCallback cb'
        connectSignalFunPtr obj "deleted-text" cb'' connectMode detail

#endif

-- signal EntryBuffer::inserted-text
-- | This signal is emitted after text is inserted into the buffer.
-- 
-- /Since: 2.18/
type EntryBufferInsertedTextCallback =
    Word32
    -- ^ /@position@/: the position the text was inserted at.
    -> T.Text
    -- ^ /@chars@/: The text that was inserted.
    -> Word32
    -- ^ /@nChars@/: The number of characters that were inserted.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EntryBufferInsertedTextCallback`@.
noEntryBufferInsertedTextCallback :: Maybe EntryBufferInsertedTextCallback
noEntryBufferInsertedTextCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EntryBufferInsertedTextCallback =
    Ptr () ->                               -- object
    Word32 ->
    CString ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EntryBufferInsertedTextCallback`.
foreign import ccall "wrapper"
    mk_EntryBufferInsertedTextCallback :: C_EntryBufferInsertedTextCallback -> IO (FunPtr C_EntryBufferInsertedTextCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EntryBufferInsertedText :: MonadIO m => EntryBufferInsertedTextCallback -> m (GClosure C_EntryBufferInsertedTextCallback)
genClosure_EntryBufferInsertedText cb = liftIO $ do
    let cb' = wrap_EntryBufferInsertedTextCallback cb
    mk_EntryBufferInsertedTextCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EntryBufferInsertedTextCallback` into a `C_EntryBufferInsertedTextCallback`.
wrap_EntryBufferInsertedTextCallback ::
    EntryBufferInsertedTextCallback ->
    C_EntryBufferInsertedTextCallback
wrap_EntryBufferInsertedTextCallback _cb _ position chars nChars _ = do
    chars' <- cstringToText chars
    _cb  position chars' nChars


-- | Connect a signal handler for the [insertedText](#signal:insertedText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' entryBuffer #insertedText callback
-- @
-- 
-- 
onEntryBufferInsertedText :: (IsEntryBuffer a, MonadIO m) => a -> EntryBufferInsertedTextCallback -> m SignalHandlerId
onEntryBufferInsertedText obj cb = liftIO $ do
    let cb' = wrap_EntryBufferInsertedTextCallback cb
    cb'' <- mk_EntryBufferInsertedTextCallback cb'
    connectSignalFunPtr obj "inserted-text" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insertedText](#signal:insertedText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' entryBuffer #insertedText callback
-- @
-- 
-- 
afterEntryBufferInsertedText :: (IsEntryBuffer a, MonadIO m) => a -> EntryBufferInsertedTextCallback -> m SignalHandlerId
afterEntryBufferInsertedText obj cb = liftIO $ do
    let cb' = wrap_EntryBufferInsertedTextCallback cb
    cb'' <- mk_EntryBufferInsertedTextCallback cb'
    connectSignalFunPtr obj "inserted-text" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EntryBufferInsertedTextSignalInfo
instance SignalInfo EntryBufferInsertedTextSignalInfo where
    type HaskellCallbackType EntryBufferInsertedTextSignalInfo = EntryBufferInsertedTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EntryBufferInsertedTextCallback cb
        cb'' <- mk_EntryBufferInsertedTextCallback cb'
        connectSignalFunPtr obj "inserted-text" cb'' connectMode detail

#endif

-- VVV Prop "length"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@length@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' entryBuffer #length
-- @
getEntryBufferLength :: (MonadIO m, IsEntryBuffer o) => o -> m Word32
getEntryBufferLength obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "length"

#if defined(ENABLE_OVERLOADING)
data EntryBufferLengthPropertyInfo
instance AttrInfo EntryBufferLengthPropertyInfo where
    type AttrAllowedOps EntryBufferLengthPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint EntryBufferLengthPropertyInfo = IsEntryBuffer
    type AttrSetTypeConstraint EntryBufferLengthPropertyInfo = (~) ()
    type AttrTransferTypeConstraint EntryBufferLengthPropertyInfo = (~) ()
    type AttrTransferType EntryBufferLengthPropertyInfo = ()
    type AttrGetType EntryBufferLengthPropertyInfo = Word32
    type AttrLabel EntryBufferLengthPropertyInfo = "length"
    type AttrOrigin EntryBufferLengthPropertyInfo = EntryBuffer
    attrGet = getEntryBufferLength
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "max-length"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@max-length@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' entryBuffer #maxLength
-- @
getEntryBufferMaxLength :: (MonadIO m, IsEntryBuffer o) => o -> m Int32
getEntryBufferMaxLength obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "max-length"

-- | Set the value of the “@max-length@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' entryBuffer [ #maxLength 'Data.GI.Base.Attributes.:=' value ]
-- @
setEntryBufferMaxLength :: (MonadIO m, IsEntryBuffer o) => o -> Int32 -> m ()
setEntryBufferMaxLength obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "max-length" val

-- | Construct a `GValueConstruct` with valid value for the “@max-length@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEntryBufferMaxLength :: (IsEntryBuffer o) => Int32 -> IO (GValueConstruct o)
constructEntryBufferMaxLength val = B.Properties.constructObjectPropertyInt32 "max-length" val

#if defined(ENABLE_OVERLOADING)
data EntryBufferMaxLengthPropertyInfo
instance AttrInfo EntryBufferMaxLengthPropertyInfo where
    type AttrAllowedOps EntryBufferMaxLengthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint EntryBufferMaxLengthPropertyInfo = IsEntryBuffer
    type AttrSetTypeConstraint EntryBufferMaxLengthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint EntryBufferMaxLengthPropertyInfo = (~) Int32
    type AttrTransferType EntryBufferMaxLengthPropertyInfo = Int32
    type AttrGetType EntryBufferMaxLengthPropertyInfo = Int32
    type AttrLabel EntryBufferMaxLengthPropertyInfo = "max-length"
    type AttrOrigin EntryBufferMaxLengthPropertyInfo = EntryBuffer
    attrGet = getEntryBufferMaxLength
    attrSet = setEntryBufferMaxLength
    attrTransfer _ v = do
        return v
    attrConstruct = constructEntryBufferMaxLength
    attrClear = undefined
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' entryBuffer #text
-- @
getEntryBufferText :: (MonadIO m, IsEntryBuffer o) => o -> m T.Text
getEntryBufferText obj = liftIO $ checkUnexpectedNothing "getEntryBufferText" $ B.Properties.getObjectPropertyString obj "text"

-- | Set the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' entryBuffer [ #text 'Data.GI.Base.Attributes.:=' value ]
-- @
setEntryBufferText :: (MonadIO m, IsEntryBuffer o) => o -> T.Text -> m ()
setEntryBufferText obj val = liftIO $ B.Properties.setObjectPropertyString obj "text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEntryBufferText :: (IsEntryBuffer o) => T.Text -> IO (GValueConstruct o)
constructEntryBufferText val = B.Properties.constructObjectPropertyString "text" (Just val)

-- | Set the value of the “@text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #text
-- @
clearEntryBufferText :: (MonadIO m, IsEntryBuffer o) => o -> m ()
clearEntryBufferText obj = liftIO $ B.Properties.setObjectPropertyString obj "text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data EntryBufferTextPropertyInfo
instance AttrInfo EntryBufferTextPropertyInfo where
    type AttrAllowedOps EntryBufferTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint EntryBufferTextPropertyInfo = IsEntryBuffer
    type AttrSetTypeConstraint EntryBufferTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint EntryBufferTextPropertyInfo = (~) T.Text
    type AttrTransferType EntryBufferTextPropertyInfo = T.Text
    type AttrGetType EntryBufferTextPropertyInfo = T.Text
    type AttrLabel EntryBufferTextPropertyInfo = "text"
    type AttrOrigin EntryBufferTextPropertyInfo = EntryBuffer
    attrGet = getEntryBufferText
    attrSet = setEntryBufferText
    attrTransfer _ v = do
        return v
    attrConstruct = constructEntryBufferText
    attrClear = clearEntryBufferText
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EntryBuffer
type instance O.AttributeList EntryBuffer = EntryBufferAttributeList
type EntryBufferAttributeList = ('[ '("length", EntryBufferLengthPropertyInfo), '("maxLength", EntryBufferMaxLengthPropertyInfo), '("text", EntryBufferTextPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
entryBufferLength :: AttrLabelProxy "length"
entryBufferLength = AttrLabelProxy

entryBufferMaxLength :: AttrLabelProxy "maxLength"
entryBufferMaxLength = AttrLabelProxy

entryBufferText :: AttrLabelProxy "text"
entryBufferText = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EntryBuffer = EntryBufferSignalList
type EntryBufferSignalList = ('[ '("deletedText", EntryBufferDeletedTextSignalInfo), '("insertedText", EntryBufferInsertedTextSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method EntryBuffer::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "initial_chars"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "initial buffer text, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_initial_chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of characters in @initial_chars, or -1"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "EntryBuffer" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_entry_buffer_new" gtk_entry_buffer_new :: 
    CString ->                              -- initial_chars : TBasicType TUTF8
    Int32 ->                                -- n_initial_chars : TBasicType TInt
    IO (Ptr EntryBuffer)

-- | Create a new GtkEntryBuffer object.
-- 
-- Optionally, specify initial text to set in the buffer.
-- 
-- /Since: 2.18/
entryBufferNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe (T.Text)
    -- ^ /@initialChars@/: initial buffer text, or 'P.Nothing'
    -> Int32
    -- ^ /@nInitialChars@/: number of characters in /@initialChars@/, or -1
    -> m EntryBuffer
    -- ^ __Returns:__ A new GtkEntryBuffer object.
entryBufferNew initialChars nInitialChars = liftIO $ do
    maybeInitialChars <- case initialChars of
        Nothing -> return nullPtr
        Just jInitialChars -> do
            jInitialChars' <- textToCString jInitialChars
            return jInitialChars'
    result <- gtk_entry_buffer_new maybeInitialChars nInitialChars
    checkUnexpectedReturnNULL "entryBufferNew" result
    result' <- (wrapObject EntryBuffer) result
    freeMem maybeInitialChars
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method EntryBuffer::delete_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "position at which to delete text"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of characters to delete"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_entry_buffer_delete_text" gtk_entry_buffer_delete_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    Word32 ->                               -- position : TBasicType TUInt
    Int32 ->                                -- n_chars : TBasicType TInt
    IO Word32

-- | Deletes a sequence of characters from the buffer. /@nChars@/ characters are
-- deleted starting at /@position@/. If /@nChars@/ is negative, then all characters
-- until the end of the text are deleted.
-- 
-- If /@position@/ or /@nChars@/ are out of bounds, then they are coerced to sane
-- values.
-- 
-- Note that the positions are specified in characters, not bytes.
-- 
-- /Since: 2.18/
entryBufferDeleteText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> Word32
    -- ^ /@position@/: position at which to delete text
    -> Int32
    -- ^ /@nChars@/: number of characters to delete
    -> m Word32
    -- ^ __Returns:__ The number of characters deleted.
entryBufferDeleteText buffer position nChars = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_entry_buffer_delete_text buffer' position nChars
    touchManagedPtr buffer
    return result

#if defined(ENABLE_OVERLOADING)
data EntryBufferDeleteTextMethodInfo
instance (signature ~ (Word32 -> Int32 -> m Word32), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferDeleteTextMethodInfo a signature where
    overloadedMethod = entryBufferDeleteText

#endif

-- method EntryBuffer::emit_deleted_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "position at which text was deleted"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of characters deleted"
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

foreign import ccall "gtk_entry_buffer_emit_deleted_text" gtk_entry_buffer_emit_deleted_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    Word32 ->                               -- position : TBasicType TUInt
    Word32 ->                               -- n_chars : TBasicType TUInt
    IO ()

-- | Used when subclassing t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
-- 
-- /Since: 2.18/
entryBufferEmitDeletedText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> Word32
    -- ^ /@position@/: position at which text was deleted
    -> Word32
    -- ^ /@nChars@/: number of characters deleted
    -> m ()
entryBufferEmitDeletedText buffer position nChars = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    gtk_entry_buffer_emit_deleted_text buffer' position nChars
    touchManagedPtr buffer
    return ()

#if defined(ENABLE_OVERLOADING)
data EntryBufferEmitDeletedTextMethodInfo
instance (signature ~ (Word32 -> Word32 -> m ()), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferEmitDeletedTextMethodInfo a signature where
    overloadedMethod = entryBufferEmitDeletedText

#endif

-- method EntryBuffer::emit_inserted_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "position at which text was inserted"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "chars"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text that was inserted"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of characters inserted"
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

foreign import ccall "gtk_entry_buffer_emit_inserted_text" gtk_entry_buffer_emit_inserted_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    Word32 ->                               -- position : TBasicType TUInt
    CString ->                              -- chars : TBasicType TUTF8
    Word32 ->                               -- n_chars : TBasicType TUInt
    IO ()

-- | Used when subclassing t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
-- 
-- /Since: 2.18/
entryBufferEmitInsertedText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> Word32
    -- ^ /@position@/: position at which text was inserted
    -> T.Text
    -- ^ /@chars@/: text that was inserted
    -> Word32
    -- ^ /@nChars@/: number of characters inserted
    -> m ()
entryBufferEmitInsertedText buffer position chars nChars = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    chars' <- textToCString chars
    gtk_entry_buffer_emit_inserted_text buffer' position chars' nChars
    touchManagedPtr buffer
    freeMem chars'
    return ()

#if defined(ENABLE_OVERLOADING)
data EntryBufferEmitInsertedTextMethodInfo
instance (signature ~ (Word32 -> T.Text -> Word32 -> m ()), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferEmitInsertedTextMethodInfo a signature where
    overloadedMethod = entryBufferEmitInsertedText

#endif

-- method EntryBuffer::get_bytes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_entry_buffer_get_bytes" gtk_entry_buffer_get_bytes :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    IO Word64

-- | Retrieves the length in bytes of the buffer.
-- See 'GI.Gtk.Objects.EntryBuffer.entryBufferGetLength'.
-- 
-- /Since: 2.18/
entryBufferGetBytes ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> m Word64
    -- ^ __Returns:__ The byte length of the buffer.
entryBufferGetBytes buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_entry_buffer_get_bytes buffer'
    touchManagedPtr buffer
    return result

#if defined(ENABLE_OVERLOADING)
data EntryBufferGetBytesMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferGetBytesMethodInfo a signature where
    overloadedMethod = entryBufferGetBytes

#endif

-- method EntryBuffer::get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_entry_buffer_get_length" gtk_entry_buffer_get_length :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    IO Word32

-- | Retrieves the length in characters of the buffer.
-- 
-- /Since: 2.18/
entryBufferGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> m Word32
    -- ^ __Returns:__ The number of characters in the buffer.
entryBufferGetLength buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_entry_buffer_get_length buffer'
    touchManagedPtr buffer
    return result

#if defined(ENABLE_OVERLOADING)
data EntryBufferGetLengthMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferGetLengthMethodInfo a signature where
    overloadedMethod = entryBufferGetLength

#endif

-- method EntryBuffer::get_max_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_entry_buffer_get_max_length" gtk_entry_buffer_get_max_length :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    IO Int32

-- | Retrieves the maximum allowed length of the text in
-- /@buffer@/. See 'GI.Gtk.Objects.EntryBuffer.entryBufferSetMaxLength'.
-- 
-- /Since: 2.18/
entryBufferGetMaxLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> m Int32
    -- ^ __Returns:__ the maximum allowed number of characters
    --               in t'GI.Gtk.Objects.EntryBuffer.EntryBuffer', or 0 if there is no maximum.
entryBufferGetMaxLength buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_entry_buffer_get_max_length buffer'
    touchManagedPtr buffer
    return result

#if defined(ENABLE_OVERLOADING)
data EntryBufferGetMaxLengthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferGetMaxLengthMethodInfo a signature where
    overloadedMethod = entryBufferGetMaxLength

#endif

-- method EntryBuffer::get_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_entry_buffer_get_text" gtk_entry_buffer_get_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    IO CString

-- | Retrieves the contents of the buffer.
-- 
-- The memory pointer returned by this call will not change
-- unless this object emits a signal, or is finalized.
-- 
-- /Since: 2.18/
entryBufferGetText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> m T.Text
    -- ^ __Returns:__ a pointer to the contents of the widget as a
    --      string. This string points to internally allocated
    --      storage in the buffer and must not be freed, modified or
    --      stored.
entryBufferGetText buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_entry_buffer_get_text buffer'
    checkUnexpectedReturnNULL "entryBufferGetText" result
    result' <- cstringToText result
    touchManagedPtr buffer
    return result'

#if defined(ENABLE_OVERLOADING)
data EntryBufferGetTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferGetTextMethodInfo a signature where
    overloadedMethod = entryBufferGetText

#endif

-- method EntryBuffer::insert_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position at which to insert text."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "chars"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to insert into the buffer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the text in characters, or -1"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_entry_buffer_insert_text" gtk_entry_buffer_insert_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    Word32 ->                               -- position : TBasicType TUInt
    CString ->                              -- chars : TBasicType TUTF8
    Int32 ->                                -- n_chars : TBasicType TInt
    IO Word32

-- | Inserts /@nChars@/ characters of /@chars@/ into the contents of the
-- buffer, at position /@position@/.
-- 
-- If /@nChars@/ is negative, then characters from chars will be inserted
-- until a null-terminator is found. If /@position@/ or /@nChars@/ are out of
-- bounds, or the maximum buffer text length is exceeded, then they are
-- coerced to sane values.
-- 
-- Note that the position and length are in characters, not in bytes.
-- 
-- /Since: 2.18/
entryBufferInsertText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> Word32
    -- ^ /@position@/: the position at which to insert text.
    -> T.Text
    -- ^ /@chars@/: the text to insert into the buffer.
    -> Int32
    -- ^ /@nChars@/: the length of the text in characters, or -1
    -> m Word32
    -- ^ __Returns:__ The number of characters actually inserted.
entryBufferInsertText buffer position chars nChars = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    chars' <- textToCString chars
    result <- gtk_entry_buffer_insert_text buffer' position chars' nChars
    touchManagedPtr buffer
    freeMem chars'
    return result

#if defined(ENABLE_OVERLOADING)
data EntryBufferInsertTextMethodInfo
instance (signature ~ (Word32 -> T.Text -> Int32 -> m Word32), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferInsertTextMethodInfo a signature where
    overloadedMethod = entryBufferInsertText

#endif

-- method EntryBuffer::set_max_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "max_length"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the maximum length of the entry buffer, or 0 for no maximum.\n  (other than the maximum length of entries.) The value passed in will\n  be clamped to the range 0-65536."
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

foreign import ccall "gtk_entry_buffer_set_max_length" gtk_entry_buffer_set_max_length :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    Int32 ->                                -- max_length : TBasicType TInt
    IO ()

-- | Sets the maximum allowed length of the contents of the buffer. If
-- the current contents are longer than the given length, then they
-- will be truncated to fit.
-- 
-- /Since: 2.18/
entryBufferSetMaxLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> Int32
    -- ^ /@maxLength@/: the maximum length of the entry buffer, or 0 for no maximum.
    --   (other than the maximum length of entries.) The value passed in will
    --   be clamped to the range 0-65536.
    -> m ()
entryBufferSetMaxLength buffer maxLength = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    gtk_entry_buffer_set_max_length buffer' maxLength
    touchManagedPtr buffer
    return ()

#if defined(ENABLE_OVERLOADING)
data EntryBufferSetMaxLengthMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferSetMaxLengthMethodInfo a signature where
    overloadedMethod = entryBufferSetMaxLength

#endif

-- method EntryBuffer::set_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EntryBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntryBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "chars"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new text" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of characters in @text, or -1"
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

foreign import ccall "gtk_entry_buffer_set_text" gtk_entry_buffer_set_text :: 
    Ptr EntryBuffer ->                      -- buffer : TInterface (Name {namespace = "Gtk", name = "EntryBuffer"})
    CString ->                              -- chars : TBasicType TUTF8
    Int32 ->                                -- n_chars : TBasicType TInt
    IO ()

-- | Sets the text in the buffer.
-- 
-- This is roughly equivalent to calling 'GI.Gtk.Objects.EntryBuffer.entryBufferDeleteText'
-- and 'GI.Gtk.Objects.EntryBuffer.entryBufferInsertText'.
-- 
-- Note that /@nChars@/ is in characters, not in bytes.
-- 
-- /Since: 2.18/
entryBufferSetText ::
    (B.CallStack.HasCallStack, MonadIO m, IsEntryBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.EntryBuffer.EntryBuffer'
    -> T.Text
    -- ^ /@chars@/: the new text
    -> Int32
    -- ^ /@nChars@/: the number of characters in /@text@/, or -1
    -> m ()
entryBufferSetText buffer chars nChars = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    chars' <- textToCString chars
    gtk_entry_buffer_set_text buffer' chars' nChars
    touchManagedPtr buffer
    freeMem chars'
    return ()

#if defined(ENABLE_OVERLOADING)
data EntryBufferSetTextMethodInfo
instance (signature ~ (T.Text -> Int32 -> m ()), MonadIO m, IsEntryBuffer a) => O.MethodInfo EntryBufferSetTextMethodInfo a signature where
    overloadedMethod = entryBufferSetText

#endif

