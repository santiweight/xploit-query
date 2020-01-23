{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Structs.TargetList.TargetList'-struct is a reference counted list
-- of t'GI.Gtk.Structs.TargetPair.TargetPair' and should be treated as
-- opaque.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.TargetList
    ( 

-- * Exported types
    TargetList(..)                          ,
    noTargetList                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTargetListMethod                 ,
#endif


-- ** add #method:add#

#if defined(ENABLE_OVERLOADING)
    TargetListAddMethodInfo                 ,
#endif
    targetListAdd                           ,


-- ** addImageTargets #method:addImageTargets#

#if defined(ENABLE_OVERLOADING)
    TargetListAddImageTargetsMethodInfo     ,
#endif
    targetListAddImageTargets               ,


-- ** addRichTextTargets #method:addRichTextTargets#

#if defined(ENABLE_OVERLOADING)
    TargetListAddRichTextTargetsMethodInfo  ,
#endif
    targetListAddRichTextTargets            ,


-- ** addTable #method:addTable#

#if defined(ENABLE_OVERLOADING)
    TargetListAddTableMethodInfo            ,
#endif
    targetListAddTable                      ,


-- ** addTextTargets #method:addTextTargets#

#if defined(ENABLE_OVERLOADING)
    TargetListAddTextTargetsMethodInfo      ,
#endif
    targetListAddTextTargets                ,


-- ** addUriTargets #method:addUriTargets#

#if defined(ENABLE_OVERLOADING)
    TargetListAddUriTargetsMethodInfo       ,
#endif
    targetListAddUriTargets                 ,


-- ** find #method:find#

#if defined(ENABLE_OVERLOADING)
    TargetListFindMethodInfo                ,
#endif
    targetListFind                          ,


-- ** new #method:new#

    targetListNew                           ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    TargetListRefMethodInfo                 ,
#endif
    targetListRef                           ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    TargetListRemoveMethodInfo              ,
#endif
    targetListRemove                        ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    TargetListUnrefMethodInfo               ,
#endif
    targetListUnref                         ,




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

import qualified GI.Gdk.Structs.Atom as Gdk.Atom
import {-# SOURCE #-} qualified GI.Gtk.Objects.TextBuffer as Gtk.TextBuffer
import {-# SOURCE #-} qualified GI.Gtk.Structs.TargetEntry as Gtk.TargetEntry

-- | Memory-managed wrapper type.
newtype TargetList = TargetList (ManagedPtr TargetList)
    deriving (Eq)
foreign import ccall "gtk_target_list_get_type" c_gtk_target_list_get_type :: 
    IO GType

instance BoxedObject TargetList where
    boxedType _ = c_gtk_target_list_get_type

-- | Convert 'TargetList' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TargetList where
    toGValue o = do
        gtype <- c_gtk_target_list_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr TargetList)
        B.ManagedPtr.newBoxed TargetList ptr
        
    

-- | A convenience alias for `Nothing` :: `Maybe` `TargetList`.
noTargetList :: Maybe TargetList
noTargetList = Nothing


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TargetList
type instance O.AttributeList TargetList = TargetListAttributeList
type TargetListAttributeList = ('[ ] :: [(Symbol, *)])
#endif

-- method TargetList::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "targets"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 1
--                 (TInterface Name { namespace = "Gtk" , name = "TargetEntry" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Pointer to an array\n  of #GtkTargetEntry"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ntargets"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of entries in @targets."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "ntargets"
--              , argType = TBasicType TUInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "number of entries in @targets."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TargetList" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_target_list_new" gtk_target_list_new :: 
    Ptr Gtk.TargetEntry.TargetEntry ->      -- targets : TCArray False (-1) 1 (TInterface (Name {namespace = "Gtk", name = "TargetEntry"}))
    Word32 ->                               -- ntargets : TBasicType TUInt
    IO (Ptr TargetList)

-- | Creates a new t'GI.Gtk.Structs.TargetList.TargetList' from an array of t'GI.Gtk.Structs.TargetEntry.TargetEntry'.
targetListNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe ([Gtk.TargetEntry.TargetEntry])
    -- ^ /@targets@/: Pointer to an array
    --   of t'GI.Gtk.Structs.TargetEntry.TargetEntry'
    -> m TargetList
    -- ^ __Returns:__ the new t'GI.Gtk.Structs.TargetList.TargetList'.
targetListNew targets = liftIO $ do
    let ntargets = case targets of
            Nothing -> 0
            Just jTargets -> fromIntegral $ length jTargets
    maybeTargets <- case targets of
        Nothing -> return nullPtr
        Just jTargets -> do
            jTargets' <- mapM unsafeManagedPtrGetPtr jTargets
            jTargets'' <- packBlockArray 16 jTargets'
            return jTargets''
    result <- gtk_target_list_new maybeTargets ntargets
    checkUnexpectedReturnNULL "targetListNew" result
    result' <- (wrapBoxed TargetList) result
    whenJust targets (mapM_ touchManagedPtr)
    freeMem maybeTargets
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TargetList::add
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
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
--               Documentation
--                 { rawDocText = Just "the interned atom representing the target"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "flags"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the flags for this target"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an ID that will be passed back to the application"
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

foreign import ccall "gtk_target_list_add" gtk_target_list_add :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    Word32 ->                               -- flags : TBasicType TUInt
    Word32 ->                               -- info : TBasicType TUInt
    IO ()

-- | Appends another target to a t'GI.Gtk.Structs.TargetList.TargetList'.
targetListAdd ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Gdk.Atom.Atom
    -- ^ /@target@/: the interned atom representing the target
    -> Word32
    -- ^ /@flags@/: the flags for this target
    -> Word32
    -- ^ /@info@/: an ID that will be passed back to the application
    -> m ()
targetListAdd list target flags info = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    target' <- unsafeManagedPtrGetPtr target
    gtk_target_list_add list' target' flags info
    touchManagedPtr list
    touchManagedPtr target
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> Word32 -> Word32 -> m ()), MonadIO m) => O.MethodInfo TargetListAddMethodInfo TargetList signature where
    overloadedMethod = targetListAdd

#endif

-- method TargetList::add_image_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an ID that will be passed back to the application"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "writable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether to add only targets for which GTK+ knows\n  how to convert a pixbuf into the format"
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

foreign import ccall "gtk_target_list_add_image_targets" gtk_target_list_add_image_targets :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Word32 ->                               -- info : TBasicType TUInt
    CInt ->                                 -- writable : TBasicType TBoolean
    IO ()

-- | Appends the image targets supported by t'GI.Gtk.Structs.SelectionData.SelectionData' to
-- the target list. All targets are added with the same /@info@/.
-- 
-- /Since: 2.6/
targetListAddImageTargets ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Word32
    -- ^ /@info@/: an ID that will be passed back to the application
    -> Bool
    -- ^ /@writable@/: whether to add only targets for which GTK+ knows
    --   how to convert a pixbuf into the format
    -> m ()
targetListAddImageTargets list info writable = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    let writable' = (fromIntegral . fromEnum) writable
    gtk_target_list_add_image_targets list' info writable'
    touchManagedPtr list
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddImageTargetsMethodInfo
instance (signature ~ (Word32 -> Bool -> m ()), MonadIO m) => O.MethodInfo TargetListAddImageTargetsMethodInfo TargetList signature where
    overloadedMethod = targetListAddImageTargets

#endif

-- method TargetList::add_rich_text_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an ID that will be passed back to the application"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "deserializable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "if %TRUE, then deserializable rich text formats\n                 will be added, serializable formats otherwise."
--                 , sinceVersion = Nothing
--                 }
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
--               Documentation
--                 { rawDocText = Just "a #GtkTextBuffer." , sinceVersion = Nothing }
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

foreign import ccall "gtk_target_list_add_rich_text_targets" gtk_target_list_add_rich_text_targets :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Word32 ->                               -- info : TBasicType TUInt
    CInt ->                                 -- deserializable : TBasicType TBoolean
    Ptr Gtk.TextBuffer.TextBuffer ->        -- buffer : TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
    IO ()

-- | Appends the rich text targets registered with
-- 'GI.Gtk.Objects.TextBuffer.textBufferRegisterSerializeFormat' or
-- 'GI.Gtk.Objects.TextBuffer.textBufferRegisterDeserializeFormat' to the target list. All
-- targets are added with the same /@info@/.
-- 
-- /Since: 2.10/
targetListAddRichTextTargets ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.TextBuffer.IsTextBuffer a) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Word32
    -- ^ /@info@/: an ID that will be passed back to the application
    -> Bool
    -- ^ /@deserializable@/: if 'P.True', then deserializable rich text formats
    --                  will be added, serializable formats otherwise.
    -> a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.TextBuffer.TextBuffer'.
    -> m ()
targetListAddRichTextTargets list info deserializable buffer = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    let deserializable' = (fromIntegral . fromEnum) deserializable
    buffer' <- unsafeManagedPtrCastPtr buffer
    gtk_target_list_add_rich_text_targets list' info deserializable' buffer'
    touchManagedPtr list
    touchManagedPtr buffer
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddRichTextTargetsMethodInfo
instance (signature ~ (Word32 -> Bool -> a -> m ()), MonadIO m, Gtk.TextBuffer.IsTextBuffer a) => O.MethodInfo TargetListAddRichTextTargetsMethodInfo TargetList signature where
    overloadedMethod = targetListAddRichTextTargets

#endif

-- method TargetList::add_table
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the table of #GtkTargetEntry"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ntargets"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of targets in the table"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "ntargets"
--              , argType = TBasicType TUInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "number of targets in the table"
--                    , sinceVersion = Nothing
--                    }
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

foreign import ccall "gtk_target_list_add_table" gtk_target_list_add_table :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Ptr Gtk.TargetEntry.TargetEntry ->      -- targets : TCArray False (-1) 2 (TInterface (Name {namespace = "Gtk", name = "TargetEntry"}))
    Word32 ->                               -- ntargets : TBasicType TUInt
    IO ()

-- | Prepends a table of t'GI.Gtk.Structs.TargetEntry.TargetEntry' to a target list.
targetListAddTable ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> [Gtk.TargetEntry.TargetEntry]
    -- ^ /@targets@/: the table of t'GI.Gtk.Structs.TargetEntry.TargetEntry'
    -> m ()
targetListAddTable list targets = liftIO $ do
    let ntargets = fromIntegral $ length targets
    list' <- unsafeManagedPtrGetPtr list
    targets' <- mapM unsafeManagedPtrGetPtr targets
    targets'' <- packBlockArray 16 targets'
    gtk_target_list_add_table list' targets'' ntargets
    touchManagedPtr list
    mapM_ touchManagedPtr targets
    freeMem targets''
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddTableMethodInfo
instance (signature ~ ([Gtk.TargetEntry.TargetEntry] -> m ()), MonadIO m) => O.MethodInfo TargetListAddTableMethodInfo TargetList signature where
    overloadedMethod = targetListAddTable

#endif

-- method TargetList::add_text_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an ID that will be passed back to the application"
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

foreign import ccall "gtk_target_list_add_text_targets" gtk_target_list_add_text_targets :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Word32 ->                               -- info : TBasicType TUInt
    IO ()

-- | Appends the text targets supported by t'GI.Gtk.Structs.SelectionData.SelectionData' to
-- the target list. All targets are added with the same /@info@/.
-- 
-- /Since: 2.6/
targetListAddTextTargets ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Word32
    -- ^ /@info@/: an ID that will be passed back to the application
    -> m ()
targetListAddTextTargets list info = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    gtk_target_list_add_text_targets list' info
    touchManagedPtr list
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddTextTargetsMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m) => O.MethodInfo TargetListAddTextTargetsMethodInfo TargetList signature where
    overloadedMethod = targetListAddTextTargets

#endif

-- method TargetList::add_uri_targets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an ID that will be passed back to the application"
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

foreign import ccall "gtk_target_list_add_uri_targets" gtk_target_list_add_uri_targets :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Word32 ->                               -- info : TBasicType TUInt
    IO ()

-- | Appends the URI targets supported by t'GI.Gtk.Structs.SelectionData.SelectionData' to
-- the target list. All targets are added with the same /@info@/.
-- 
-- /Since: 2.6/
targetListAddUriTargets ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Word32
    -- ^ /@info@/: an ID that will be passed back to the application
    -> m ()
targetListAddUriTargets list info = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    gtk_target_list_add_uri_targets list' info
    touchManagedPtr list
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListAddUriTargetsMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m) => O.MethodInfo TargetListAddUriTargetsMethodInfo TargetList signature where
    overloadedMethod = targetListAddUriTargets

#endif

-- method TargetList::find
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
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
--               Documentation
--                 { rawDocText =
--                     Just "an interned atom representing the target to search for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "info"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a pointer to the location to store\n       application info for target, or %NULL"
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

foreign import ccall "gtk_target_list_find" gtk_target_list_find :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    Ptr Word32 ->                           -- info : TBasicType TUInt
    IO CInt

-- | Looks up a given target in a t'GI.Gtk.Structs.TargetList.TargetList'.
targetListFind ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Gdk.Atom.Atom
    -- ^ /@target@/: an interned atom representing the target to search for
    -> m ((Bool, Word32))
    -- ^ __Returns:__ 'P.True' if the target was found, otherwise 'P.False'
targetListFind list target = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    target' <- unsafeManagedPtrGetPtr target
    info <- allocMem :: IO (Ptr Word32)
    result <- gtk_target_list_find list' target' info
    let result' = (/= 0) result
    info' <- peek info
    touchManagedPtr list
    touchManagedPtr target
    freeMem info
    return (result', info')

#if defined(ENABLE_OVERLOADING)
data TargetListFindMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> m ((Bool, Word32))), MonadIO m) => O.MethodInfo TargetListFindMethodInfo TargetList signature where
    overloadedMethod = targetListFind

#endif

-- method TargetList::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TargetList" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_target_list_ref" gtk_target_list_ref :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    IO (Ptr TargetList)

-- | Increases the reference count of a t'GI.Gtk.Structs.TargetList.TargetList' by one.
targetListRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> m TargetList
    -- ^ __Returns:__ the passed in t'GI.Gtk.Structs.TargetList.TargetList'.
targetListRef list = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    result <- gtk_target_list_ref list'
    checkUnexpectedReturnNULL "targetListRef" result
    result' <- (wrapBoxed TargetList) result
    touchManagedPtr list
    return result'

#if defined(ENABLE_OVERLOADING)
data TargetListRefMethodInfo
instance (signature ~ (m TargetList), MonadIO m) => O.MethodInfo TargetListRefMethodInfo TargetList signature where
    overloadedMethod = targetListRef

#endif

-- method TargetList::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
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
--               Documentation
--                 { rawDocText = Just "the interned atom representing the target"
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

foreign import ccall "gtk_target_list_remove" gtk_target_list_remove :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    Ptr Gdk.Atom.Atom ->                    -- target : TInterface (Name {namespace = "Gdk", name = "Atom"})
    IO ()

-- | Removes a target from a target list.
targetListRemove ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> Gdk.Atom.Atom
    -- ^ /@target@/: the interned atom representing the target
    -> m ()
targetListRemove list target = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    target' <- unsafeManagedPtrGetPtr target
    gtk_target_list_remove list' target'
    touchManagedPtr list
    touchManagedPtr target
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListRemoveMethodInfo
instance (signature ~ (Gdk.Atom.Atom -> m ()), MonadIO m) => O.MethodInfo TargetListRemoveMethodInfo TargetList signature where
    overloadedMethod = targetListRemove

#endif

-- method TargetList::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TargetList" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTargetList" , sinceVersion = Nothing }
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

foreign import ccall "gtk_target_list_unref" gtk_target_list_unref :: 
    Ptr TargetList ->                       -- list : TInterface (Name {namespace = "Gtk", name = "TargetList"})
    IO ()

-- | Decreases the reference count of a t'GI.Gtk.Structs.TargetList.TargetList' by one.
-- If the resulting reference count is zero, frees the list.
targetListUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    TargetList
    -- ^ /@list@/: a t'GI.Gtk.Structs.TargetList.TargetList'
    -> m ()
targetListUnref list = liftIO $ do
    list' <- unsafeManagedPtrGetPtr list
    gtk_target_list_unref list'
    touchManagedPtr list
    return ()

#if defined(ENABLE_OVERLOADING)
data TargetListUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo TargetListUnrefMethodInfo TargetList signature where
    overloadedMethod = targetListUnref

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveTargetListMethod (t :: Symbol) (o :: *) :: * where
    ResolveTargetListMethod "add" o = TargetListAddMethodInfo
    ResolveTargetListMethod "addImageTargets" o = TargetListAddImageTargetsMethodInfo
    ResolveTargetListMethod "addRichTextTargets" o = TargetListAddRichTextTargetsMethodInfo
    ResolveTargetListMethod "addTable" o = TargetListAddTableMethodInfo
    ResolveTargetListMethod "addTextTargets" o = TargetListAddTextTargetsMethodInfo
    ResolveTargetListMethod "addUriTargets" o = TargetListAddUriTargetsMethodInfo
    ResolveTargetListMethod "find" o = TargetListFindMethodInfo
    ResolveTargetListMethod "ref" o = TargetListRefMethodInfo
    ResolveTargetListMethod "remove" o = TargetListRemoveMethodInfo
    ResolveTargetListMethod "unref" o = TargetListUnrefMethodInfo
    ResolveTargetListMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTargetListMethod t TargetList, O.MethodInfo info TargetList p) => OL.IsLabel t (TargetList -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

