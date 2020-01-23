{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Structs.Requisition.Requisition'-struct represents the desired size of a widget. See
-- [GtkWidget’s geometry management section][geometry-management] for
-- more information.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Structs.Requisition
    ( 

-- * Exported types
    Requisition(..)                         ,
    newZeroRequisition                      ,
    noRequisition                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRequisitionMethod                ,
#endif


-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    RequisitionCopyMethodInfo               ,
#endif
    requisitionCopy                         ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    RequisitionFreeMethodInfo               ,
#endif
    requisitionFree                         ,


-- ** new #method:new#

    requisitionNew                          ,




 -- * Properties
-- ** height #attr:height#
-- | the widget’s desired height

    getRequisitionHeight                    ,
#if defined(ENABLE_OVERLOADING)
    requisition_height                      ,
#endif
    setRequisitionHeight                    ,


-- ** width #attr:width#
-- | the widget’s desired width

    getRequisitionWidth                     ,
#if defined(ENABLE_OVERLOADING)
    requisition_width                       ,
#endif
    setRequisitionWidth                     ,




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


-- | Memory-managed wrapper type.
newtype Requisition = Requisition (ManagedPtr Requisition)
    deriving (Eq)
foreign import ccall "gtk_requisition_get_type" c_gtk_requisition_get_type :: 
    IO GType

instance BoxedObject Requisition where
    boxedType _ = c_gtk_requisition_get_type

-- | Convert 'Requisition' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Requisition where
    toGValue o = do
        gtype <- c_gtk_requisition_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_boxed)
        
    fromGValue gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr Requisition)
        B.ManagedPtr.newBoxed Requisition ptr
        
    

-- | Construct a `Requisition` struct initialized to zero.
newZeroRequisition :: MonadIO m => m Requisition
newZeroRequisition = liftIO $ callocBoxedBytes 8 >>= wrapBoxed Requisition

instance tag ~ 'AttrSet => Constructible Requisition tag where
    new _ attrs = do
        o <- newZeroRequisition
        GI.Attributes.set o attrs
        return o


-- | A convenience alias for `Nothing` :: `Maybe` `Requisition`.
noRequisition :: Maybe Requisition
noRequisition = Nothing

-- | Get the value of the “@width@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' requisition #width
-- @
getRequisitionWidth :: MonadIO m => Requisition -> m Int32
getRequisitionWidth s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO Int32
    return val

-- | Set the value of the “@width@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' requisition [ #width 'Data.GI.Base.Attributes.:=' value ]
-- @
setRequisitionWidth :: MonadIO m => Requisition -> Int32 -> m ()
setRequisitionWidth s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data RequisitionWidthFieldInfo
instance AttrInfo RequisitionWidthFieldInfo where
    type AttrBaseTypeConstraint RequisitionWidthFieldInfo = (~) Requisition
    type AttrAllowedOps RequisitionWidthFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint RequisitionWidthFieldInfo = (~) Int32
    type AttrTransferTypeConstraint RequisitionWidthFieldInfo = (~)Int32
    type AttrTransferType RequisitionWidthFieldInfo = Int32
    type AttrGetType RequisitionWidthFieldInfo = Int32
    type AttrLabel RequisitionWidthFieldInfo = "width"
    type AttrOrigin RequisitionWidthFieldInfo = Requisition
    attrGet = getRequisitionWidth
    attrSet = setRequisitionWidth
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

requisition_width :: AttrLabelProxy "width"
requisition_width = AttrLabelProxy

#endif


-- | Get the value of the “@height@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' requisition #height
-- @
getRequisitionHeight :: MonadIO m => Requisition -> m Int32
getRequisitionHeight s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 4) :: IO Int32
    return val

-- | Set the value of the “@height@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' requisition [ #height 'Data.GI.Base.Attributes.:=' value ]
-- @
setRequisitionHeight :: MonadIO m => Requisition -> Int32 -> m ()
setRequisitionHeight s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 4) (val :: Int32)

#if defined(ENABLE_OVERLOADING)
data RequisitionHeightFieldInfo
instance AttrInfo RequisitionHeightFieldInfo where
    type AttrBaseTypeConstraint RequisitionHeightFieldInfo = (~) Requisition
    type AttrAllowedOps RequisitionHeightFieldInfo = '[ 'AttrSet, 'AttrGet]
    type AttrSetTypeConstraint RequisitionHeightFieldInfo = (~) Int32
    type AttrTransferTypeConstraint RequisitionHeightFieldInfo = (~)Int32
    type AttrTransferType RequisitionHeightFieldInfo = Int32
    type AttrGetType RequisitionHeightFieldInfo = Int32
    type AttrLabel RequisitionHeightFieldInfo = "height"
    type AttrOrigin RequisitionHeightFieldInfo = Requisition
    attrGet = getRequisitionHeight
    attrSet = setRequisitionHeight
    attrConstruct = undefined
    attrClear = undefined
    attrTransfer _ v = do
        return v

requisition_height :: AttrLabelProxy "height"
requisition_height = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Requisition
type instance O.AttributeList Requisition = RequisitionAttributeList
type RequisitionAttributeList = ('[ '("width", RequisitionWidthFieldInfo), '("height", RequisitionHeightFieldInfo)] :: [(Symbol, *)])
#endif

-- method Requisition::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Requisition" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_requisition_new" gtk_requisition_new :: 
    IO (Ptr Requisition)

-- | Allocates a new t'GI.Gtk.Structs.Requisition.Requisition'-struct and initializes its elements to zero.
-- 
-- /Since: 3.0/
requisitionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Requisition
    -- ^ __Returns:__ a new empty t'GI.Gtk.Structs.Requisition.Requisition'. The newly allocated t'GI.Gtk.Structs.Requisition.Requisition' should
    --   be freed with 'GI.Gtk.Structs.Requisition.requisitionFree'.
requisitionNew  = liftIO $ do
    result <- gtk_requisition_new
    checkUnexpectedReturnNULL "requisitionNew" result
    result' <- (wrapBoxed Requisition) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Requisition::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "requisition"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Requisition" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRequisition" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Requisition" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_requisition_copy" gtk_requisition_copy :: 
    Ptr Requisition ->                      -- requisition : TInterface (Name {namespace = "Gtk", name = "Requisition"})
    IO (Ptr Requisition)

-- | Copies a t'GI.Gtk.Structs.Requisition.Requisition'.
requisitionCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Requisition
    -- ^ /@requisition@/: a t'GI.Gtk.Structs.Requisition.Requisition'
    -> m Requisition
    -- ^ __Returns:__ a copy of /@requisition@/
requisitionCopy requisition = liftIO $ do
    requisition' <- unsafeManagedPtrGetPtr requisition
    result <- gtk_requisition_copy requisition'
    checkUnexpectedReturnNULL "requisitionCopy" result
    result' <- (wrapBoxed Requisition) result
    touchManagedPtr requisition
    return result'

#if defined(ENABLE_OVERLOADING)
data RequisitionCopyMethodInfo
instance (signature ~ (m Requisition), MonadIO m) => O.MethodInfo RequisitionCopyMethodInfo Requisition signature where
    overloadedMethod = requisitionCopy

#endif

-- method Requisition::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "requisition"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Requisition" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRequisition" , sinceVersion = Nothing }
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

foreign import ccall "gtk_requisition_free" gtk_requisition_free :: 
    Ptr Requisition ->                      -- requisition : TInterface (Name {namespace = "Gtk", name = "Requisition"})
    IO ()

-- | Frees a t'GI.Gtk.Structs.Requisition.Requisition'.
requisitionFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Requisition
    -- ^ /@requisition@/: a t'GI.Gtk.Structs.Requisition.Requisition'
    -> m ()
requisitionFree requisition = liftIO $ do
    requisition' <- unsafeManagedPtrGetPtr requisition
    gtk_requisition_free requisition'
    touchManagedPtr requisition
    return ()

#if defined(ENABLE_OVERLOADING)
data RequisitionFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.MethodInfo RequisitionFreeMethodInfo Requisition signature where
    overloadedMethod = requisitionFree

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveRequisitionMethod (t :: Symbol) (o :: *) :: * where
    ResolveRequisitionMethod "copy" o = RequisitionCopyMethodInfo
    ResolveRequisitionMethod "free" o = RequisitionFreeMethodInfo
    ResolveRequisitionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRequisitionMethod t Requisition, O.MethodInfo info Requisition p) => OL.IsLabel t (Requisition -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

