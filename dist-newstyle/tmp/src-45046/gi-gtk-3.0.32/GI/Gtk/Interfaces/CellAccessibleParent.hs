{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.CellAccessibleParent
    ( 

-- * Exported types
    CellAccessibleParent(..)                ,
    noCellAccessibleParent                  ,
    IsCellAccessibleParent                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellAccessibleParentMethod       ,
#endif


-- ** activate #method:activate#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentActivateMethodInfo  ,
#endif
    cellAccessibleParentActivate            ,


-- ** edit #method:edit#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentEditMethodInfo      ,
#endif
    cellAccessibleParentEdit                ,


-- ** expandCollapse #method:expandCollapse#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentExpandCollapseMethodInfo,
#endif
    cellAccessibleParentExpandCollapse      ,


-- ** getCellArea #method:getCellArea#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetCellAreaMethodInfo,
#endif
    cellAccessibleParentGetCellArea         ,


-- ** getCellExtents #method:getCellExtents#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetCellExtentsMethodInfo,
#endif
    cellAccessibleParentGetCellExtents      ,


-- ** getCellPosition #method:getCellPosition#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetCellPositionMethodInfo,
#endif
    cellAccessibleParentGetCellPosition     ,


-- ** getChildIndex #method:getChildIndex#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetChildIndexMethodInfo,
#endif
    cellAccessibleParentGetChildIndex       ,


-- ** getColumnHeaderCells #method:getColumnHeaderCells#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetColumnHeaderCellsMethodInfo,
#endif
    cellAccessibleParentGetColumnHeaderCells,


-- ** getRendererState #method:getRendererState#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetRendererStateMethodInfo,
#endif
    cellAccessibleParentGetRendererState    ,


-- ** getRowHeaderCells #method:getRowHeaderCells#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGetRowHeaderCellsMethodInfo,
#endif
    cellAccessibleParentGetRowHeaderCells   ,


-- ** grabFocus #method:grabFocus#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentGrabFocusMethodInfo ,
#endif
    cellAccessibleParentGrabFocus           ,


-- ** updateRelationset #method:updateRelationset#

#if defined(ENABLE_OVERLOADING)
    CellAccessibleParentUpdateRelationsetMethodInfo,
#endif
    cellAccessibleParentUpdateRelationset   ,




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

import qualified GI.Atk.Enums as Atk.Enums
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.Atk.Objects.RelationSet as Atk.RelationSet
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAccessible as Gtk.CellAccessible

-- interface CellAccessibleParent 
-- | Memory-managed wrapper type.
newtype CellAccessibleParent = CellAccessibleParent (ManagedPtr CellAccessibleParent)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `CellAccessibleParent`.
noCellAccessibleParent :: Maybe CellAccessibleParent
noCellAccessibleParent = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellAccessibleParent = CellAccessibleParentSignalList
type CellAccessibleParentSignalList = ('[ ] :: [(Symbol, *)])

#endif

-- | Type class for types which implement `CellAccessibleParent`.
class (ManagedPtrNewtype o, O.IsDescendantOf CellAccessibleParent o) => IsCellAccessibleParent o
instance (ManagedPtrNewtype o, O.IsDescendantOf CellAccessibleParent o) => IsCellAccessibleParent o
-- XXX Wrapping a foreign struct/union with no known destructor or size, leak?
instance WrappedPtr CellAccessibleParent where
    wrappedPtrCalloc = return nullPtr
    wrappedPtrCopy = return
    wrappedPtrFree = Nothing


#if defined(ENABLE_OVERLOADING)
type family ResolveCellAccessibleParentMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellAccessibleParentMethod "activate" o = CellAccessibleParentActivateMethodInfo
    ResolveCellAccessibleParentMethod "edit" o = CellAccessibleParentEditMethodInfo
    ResolveCellAccessibleParentMethod "expandCollapse" o = CellAccessibleParentExpandCollapseMethodInfo
    ResolveCellAccessibleParentMethod "grabFocus" o = CellAccessibleParentGrabFocusMethodInfo
    ResolveCellAccessibleParentMethod "updateRelationset" o = CellAccessibleParentUpdateRelationsetMethodInfo
    ResolveCellAccessibleParentMethod "getCellArea" o = CellAccessibleParentGetCellAreaMethodInfo
    ResolveCellAccessibleParentMethod "getCellExtents" o = CellAccessibleParentGetCellExtentsMethodInfo
    ResolveCellAccessibleParentMethod "getCellPosition" o = CellAccessibleParentGetCellPositionMethodInfo
    ResolveCellAccessibleParentMethod "getChildIndex" o = CellAccessibleParentGetChildIndexMethodInfo
    ResolveCellAccessibleParentMethod "getColumnHeaderCells" o = CellAccessibleParentGetColumnHeaderCellsMethodInfo
    ResolveCellAccessibleParentMethod "getRendererState" o = CellAccessibleParentGetRendererStateMethodInfo
    ResolveCellAccessibleParentMethod "getRowHeaderCells" o = CellAccessibleParentGetRowHeaderCellsMethodInfo
    ResolveCellAccessibleParentMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellAccessibleParentMethod t CellAccessibleParent, O.MethodInfo info CellAccessibleParent p) => OL.IsLabel t (CellAccessibleParent -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method CellAccessibleParent::activate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_cell_accessible_parent_activate" gtk_cell_accessible_parent_activate :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentActivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ()
cellAccessibleParentActivate parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    gtk_cell_accessible_parent_activate parent' cell'
    touchManagedPtr parent
    touchManagedPtr cell
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentActivateMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentActivateMethodInfo a signature where
    overloadedMethod = cellAccessibleParentActivate

#endif

-- method CellAccessibleParent::edit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_cell_accessible_parent_edit" gtk_cell_accessible_parent_edit :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentEdit ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ()
cellAccessibleParentEdit parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    gtk_cell_accessible_parent_edit parent' cell'
    touchManagedPtr parent
    touchManagedPtr cell
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentEditMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentEditMethodInfo a signature where
    overloadedMethod = cellAccessibleParentEdit

#endif

-- method CellAccessibleParent::expand_collapse
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_cell_accessible_parent_expand_collapse" gtk_cell_accessible_parent_expand_collapse :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentExpandCollapse ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ()
cellAccessibleParentExpandCollapse parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    gtk_cell_accessible_parent_expand_collapse parent' cell'
    touchManagedPtr parent
    touchManagedPtr cell
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentExpandCollapseMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentExpandCollapseMethodInfo a signature where
    overloadedMethod = cellAccessibleParentExpandCollapse

#endif

-- method CellAccessibleParent::get_cell_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--           { argCName = "cell_rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_accessible_parent_get_cell_area" gtk_cell_accessible_parent_get_cell_area :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    Ptr Gdk.Rectangle.Rectangle ->          -- cell_rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentGetCellArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m (Gdk.Rectangle.Rectangle)
cellAccessibleParentGetCellArea parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    cellRect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    gtk_cell_accessible_parent_get_cell_area parent' cell' cellRect
    cellRect' <- (wrapBoxed Gdk.Rectangle.Rectangle) cellRect
    touchManagedPtr parent
    touchManagedPtr cell
    return cellRect'

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellAreaMethodInfo
instance (signature ~ (b -> m (Gdk.Rectangle.Rectangle)), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetCellAreaMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetCellArea

#endif

-- method CellAccessibleParent::get_cell_extents
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "coord_type"
--           , argType =
--               TInterface Name { namespace = "Atk" , name = "CoordType" }
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

foreign import ccall "gtk_cell_accessible_parent_get_cell_extents" gtk_cell_accessible_parent_get_cell_extents :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    Ptr Int32 ->                            -- x : TBasicType TInt
    Ptr Int32 ->                            -- y : TBasicType TInt
    Ptr Int32 ->                            -- width : TBasicType TInt
    Ptr Int32 ->                            -- height : TBasicType TInt
    CUInt ->                                -- coord_type : TInterface (Name {namespace = "Atk", name = "CoordType"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentGetCellExtents ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> Atk.Enums.CoordType
    -> m ((Int32, Int32, Int32, Int32))
cellAccessibleParentGetCellExtents parent cell coordType = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    x <- allocMem :: IO (Ptr Int32)
    y <- allocMem :: IO (Ptr Int32)
    width <- allocMem :: IO (Ptr Int32)
    height <- allocMem :: IO (Ptr Int32)
    let coordType' = (fromIntegral . fromEnum) coordType
    gtk_cell_accessible_parent_get_cell_extents parent' cell' x y width height coordType'
    x' <- peek x
    y' <- peek y
    width' <- peek width
    height' <- peek height
    touchManagedPtr parent
    touchManagedPtr cell
    freeMem x
    freeMem y
    freeMem width
    freeMem height
    return (x', y', width', height')

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellExtentsMethodInfo
instance (signature ~ (b -> Atk.Enums.CoordType -> m ((Int32, Int32, Int32, Int32))), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetCellExtentsMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetCellExtents

#endif

-- method CellAccessibleParent::get_cell_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--           { argCName = "row"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
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

foreign import ccall "gtk_cell_accessible_parent_get_cell_position" gtk_cell_accessible_parent_get_cell_position :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    Ptr Int32 ->                            -- row : TBasicType TInt
    Ptr Int32 ->                            -- column : TBasicType TInt
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentGetCellPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ((Int32, Int32))
cellAccessibleParentGetCellPosition parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    row <- allocMem :: IO (Ptr Int32)
    column <- allocMem :: IO (Ptr Int32)
    gtk_cell_accessible_parent_get_cell_position parent' cell' row column
    row' <- peek row
    column' <- peek column
    touchManagedPtr parent
    touchManagedPtr cell
    freeMem row
    freeMem column
    return (row', column')

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetCellPositionMethodInfo
instance (signature ~ (b -> m ((Int32, Int32))), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetCellPositionMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetCellPosition

#endif

-- method CellAccessibleParent::get_child_index
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_accessible_parent_get_child_index" gtk_cell_accessible_parent_get_child_index :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO Int32

-- | /No description available in the introspection data./
cellAccessibleParentGetChildIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m Int32
cellAccessibleParentGetChildIndex parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    result <- gtk_cell_accessible_parent_get_child_index parent' cell'
    touchManagedPtr parent
    touchManagedPtr cell
    return result

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetChildIndexMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetChildIndexMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetChildIndex

#endif

-- method CellAccessibleParent::get_column_header_cells
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--               (TPtrArray
--                  (TInterface Name { namespace = "Atk" , name = "Object" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_accessible_parent_get_column_header_cells" gtk_cell_accessible_parent_get_column_header_cells :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO (Ptr (GPtrArray (Ptr Atk.Object.Object)))

-- | /No description available in the introspection data./
cellAccessibleParentGetColumnHeaderCells ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m [Atk.Object.Object]
cellAccessibleParentGetColumnHeaderCells parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    result <- gtk_cell_accessible_parent_get_column_header_cells parent' cell'
    checkUnexpectedReturnNULL "cellAccessibleParentGetColumnHeaderCells" result
    result' <- unpackGPtrArray result
    result'' <- mapM (wrapObject Atk.Object.Object) result'
    unrefPtrArray result
    touchManagedPtr parent
    touchManagedPtr cell
    return result''

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetColumnHeaderCellsMethodInfo
instance (signature ~ (b -> m [Atk.Object.Object]), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetColumnHeaderCellsMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetColumnHeaderCells

#endif

-- method CellAccessibleParent::get_renderer_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererState" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_accessible_parent_get_renderer_state" gtk_cell_accessible_parent_get_renderer_state :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO CUInt

-- | /No description available in the introspection data./
cellAccessibleParentGetRendererState ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m [Gtk.Flags.CellRendererState]
cellAccessibleParentGetRendererState parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    result <- gtk_cell_accessible_parent_get_renderer_state parent' cell'
    let result' = wordToGFlags result
    touchManagedPtr parent
    touchManagedPtr cell
    return result'

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetRendererStateMethodInfo
instance (signature ~ (b -> m [Gtk.Flags.CellRendererState]), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetRendererStateMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetRendererState

#endif

-- method CellAccessibleParent::get_row_header_cells
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--               (TPtrArray
--                  (TInterface Name { namespace = "Atk" , name = "Object" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_accessible_parent_get_row_header_cells" gtk_cell_accessible_parent_get_row_header_cells :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO (Ptr (GPtrArray (Ptr Atk.Object.Object)))

-- | /No description available in the introspection data./
cellAccessibleParentGetRowHeaderCells ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m [Atk.Object.Object]
cellAccessibleParentGetRowHeaderCells parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    result <- gtk_cell_accessible_parent_get_row_header_cells parent' cell'
    checkUnexpectedReturnNULL "cellAccessibleParentGetRowHeaderCells" result
    result' <- unpackGPtrArray result
    result'' <- mapM (wrapObject Atk.Object.Object) result'
    unrefPtrArray result
    touchManagedPtr parent
    touchManagedPtr cell
    return result''

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGetRowHeaderCellsMethodInfo
instance (signature ~ (b -> m [Atk.Object.Object]), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGetRowHeaderCellsMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGetRowHeaderCells

#endif

-- method CellAccessibleParent::grab_focus
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_cell_accessible_parent_grab_focus" gtk_cell_accessible_parent_grab_focus :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO CInt

-- | /No description available in the introspection data./
cellAccessibleParentGrabFocus ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m Bool
cellAccessibleParentGrabFocus parent cell = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    result <- gtk_cell_accessible_parent_grab_focus parent' cell'
    let result' = (/= 0) result
    touchManagedPtr parent
    touchManagedPtr cell
    return result'

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentGrabFocusMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo CellAccessibleParentGrabFocusMethodInfo a signature where
    overloadedMethod = cellAccessibleParentGrabFocus

#endif

-- method CellAccessibleParent::update_relationset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "parent"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "CellAccessibleParent" }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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
--           { argCName = "relationset"
--           , argType =
--               TInterface Name { namespace = "Atk" , name = "RelationSet" }
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

foreign import ccall "gtk_cell_accessible_parent_update_relationset" gtk_cell_accessible_parent_update_relationset :: 
    Ptr CellAccessibleParent ->             -- parent : TInterface (Name {namespace = "Gtk", name = "CellAccessibleParent"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    Ptr Atk.RelationSet.RelationSet ->      -- relationset : TInterface (Name {namespace = "Atk", name = "RelationSet"})
    IO ()

-- | /No description available in the introspection data./
cellAccessibleParentUpdateRelationset ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b, Atk.RelationSet.IsRelationSet c) =>
    a
    -> b
    -> c
    -> m ()
cellAccessibleParentUpdateRelationset parent cell relationset = liftIO $ do
    parent' <- unsafeManagedPtrCastPtr parent
    cell' <- unsafeManagedPtrCastPtr cell
    relationset' <- unsafeManagedPtrCastPtr relationset
    gtk_cell_accessible_parent_update_relationset parent' cell' relationset'
    touchManagedPtr parent
    touchManagedPtr cell
    touchManagedPtr relationset
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAccessibleParentUpdateRelationsetMethodInfo
instance (signature ~ (b -> c -> m ()), MonadIO m, IsCellAccessibleParent a, Gtk.CellAccessible.IsCellAccessible b, Atk.RelationSet.IsRelationSet c) => O.MethodInfo CellAccessibleParentUpdateRelationsetMethodInfo a signature where
    overloadedMethod = cellAccessibleParentUpdateRelationset

#endif

