{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' renders cell renderers into a row or a column
-- depending on its t'GI.Gtk.Enums.Orientation'.
-- 
-- GtkCellAreaBox uses a notion of packing. Packing
-- refers to adding cell renderers with reference to a particular position
-- in a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'. There are two reference positions: the
-- start and the end of the box.
-- When the t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' is oriented in the 'GI.Gtk.Enums.OrientationVertical'
-- orientation, the start is defined as the top of the box and the end is
-- defined as the bottom. In the 'GI.Gtk.Enums.OrientationHorizontal' orientation
-- start is defined as the left side and the end is defined as the right
-- side.
-- 
-- Alignments of @/GtkCellRenderers/@ rendered in adjacent rows can be
-- configured by configuring the t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' align child cell property
-- with 'GI.Gtk.Objects.CellArea.cellAreaCellSetProperty' or by specifying the \"align\"
-- argument to 'GI.Gtk.Objects.CellAreaBox.cellAreaBoxPackStart' and 'GI.Gtk.Objects.CellAreaBox.cellAreaBoxPackEnd'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellAreaBox
    ( 

-- * Exported types
    CellAreaBox(..)                         ,
    IsCellAreaBox                           ,
    toCellAreaBox                           ,
    noCellAreaBox                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellAreaBoxMethod                ,
#endif


-- ** getSpacing #method:getSpacing#

#if defined(ENABLE_OVERLOADING)
    CellAreaBoxGetSpacingMethodInfo         ,
#endif
    cellAreaBoxGetSpacing                   ,


-- ** new #method:new#

    cellAreaBoxNew                          ,


-- ** packEnd #method:packEnd#

#if defined(ENABLE_OVERLOADING)
    CellAreaBoxPackEndMethodInfo            ,
#endif
    cellAreaBoxPackEnd                      ,


-- ** packStart #method:packStart#

#if defined(ENABLE_OVERLOADING)
    CellAreaBoxPackStartMethodInfo          ,
#endif
    cellAreaBoxPackStart                    ,


-- ** setSpacing #method:setSpacing#

#if defined(ENABLE_OVERLOADING)
    CellAreaBoxSetSpacingMethodInfo         ,
#endif
    cellAreaBoxSetSpacing                   ,




 -- * Properties
-- ** spacing #attr:spacing#
-- | The amount of space to reserve between cells.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    CellAreaBoxSpacingPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellAreaBoxSpacing                      ,
#endif
    constructCellAreaBoxSpacing             ,
    getCellAreaBoxSpacing                   ,
    setCellAreaBoxSpacing                   ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellLayout as Gtk.CellLayout
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellArea as Gtk.CellArea
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype CellAreaBox = CellAreaBox (ManagedPtr CellAreaBox)
    deriving (Eq)
foreign import ccall "gtk_cell_area_box_get_type"
    c_gtk_cell_area_box_get_type :: IO GType

instance GObject CellAreaBox where
    gobjectType = c_gtk_cell_area_box_get_type
    

-- | Convert 'CellAreaBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellAreaBox where
    toGValue o = do
        gtype <- c_gtk_cell_area_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellAreaBox)
        B.ManagedPtr.newObject CellAreaBox ptr
        
    

-- | Type class for types which can be safely cast to `CellAreaBox`, for instance with `toCellAreaBox`.
class (GObject o, O.IsDescendantOf CellAreaBox o) => IsCellAreaBox o
instance (GObject o, O.IsDescendantOf CellAreaBox o) => IsCellAreaBox o

instance O.HasParentTypes CellAreaBox
type instance O.ParentTypes CellAreaBox = '[Gtk.CellArea.CellArea, GObject.Object.Object, Gtk.Buildable.Buildable, Gtk.CellLayout.CellLayout, Gtk.Orientable.Orientable]

-- | Cast to `CellAreaBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellAreaBox :: (MonadIO m, IsCellAreaBox o) => o -> m CellAreaBox
toCellAreaBox = liftIO . unsafeCastTo CellAreaBox

-- | A convenience alias for `Nothing` :: `Maybe` `CellAreaBox`.
noCellAreaBox :: Maybe CellAreaBox
noCellAreaBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellAreaBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellAreaBoxMethod "activate" o = Gtk.CellArea.CellAreaActivateMethodInfo
    ResolveCellAreaBoxMethod "activateCell" o = Gtk.CellArea.CellAreaActivateCellMethodInfo
    ResolveCellAreaBoxMethod "add" o = Gtk.CellArea.CellAreaAddMethodInfo
    ResolveCellAreaBoxMethod "addAttribute" o = Gtk.CellLayout.CellLayoutAddAttributeMethodInfo
    ResolveCellAreaBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCellAreaBoxMethod "addFocusSibling" o = Gtk.CellArea.CellAreaAddFocusSiblingMethodInfo
    ResolveCellAreaBoxMethod "applyAttributes" o = Gtk.CellArea.CellAreaApplyAttributesMethodInfo
    ResolveCellAreaBoxMethod "attributeConnect" o = Gtk.CellArea.CellAreaAttributeConnectMethodInfo
    ResolveCellAreaBoxMethod "attributeDisconnect" o = Gtk.CellArea.CellAreaAttributeDisconnectMethodInfo
    ResolveCellAreaBoxMethod "attributeGetColumn" o = Gtk.CellArea.CellAreaAttributeGetColumnMethodInfo
    ResolveCellAreaBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellAreaBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellAreaBoxMethod "cellGetProperty" o = Gtk.CellArea.CellAreaCellGetPropertyMethodInfo
    ResolveCellAreaBoxMethod "cellSetProperty" o = Gtk.CellArea.CellAreaCellSetPropertyMethodInfo
    ResolveCellAreaBoxMethod "clear" o = Gtk.CellLayout.CellLayoutClearMethodInfo
    ResolveCellAreaBoxMethod "clearAttributes" o = Gtk.CellLayout.CellLayoutClearAttributesMethodInfo
    ResolveCellAreaBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCellAreaBoxMethod "copyContext" o = Gtk.CellArea.CellAreaCopyContextMethodInfo
    ResolveCellAreaBoxMethod "createContext" o = Gtk.CellArea.CellAreaCreateContextMethodInfo
    ResolveCellAreaBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCellAreaBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCellAreaBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCellAreaBoxMethod "event" o = Gtk.CellArea.CellAreaEventMethodInfo
    ResolveCellAreaBoxMethod "focus" o = Gtk.CellArea.CellAreaFocusMethodInfo
    ResolveCellAreaBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellAreaBoxMethod "foreach" o = Gtk.CellArea.CellAreaForeachMethodInfo
    ResolveCellAreaBoxMethod "foreachAlloc" o = Gtk.CellArea.CellAreaForeachAllocMethodInfo
    ResolveCellAreaBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellAreaBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellAreaBoxMethod "hasRenderer" o = Gtk.CellArea.CellAreaHasRendererMethodInfo
    ResolveCellAreaBoxMethod "innerCellArea" o = Gtk.CellArea.CellAreaInnerCellAreaMethodInfo
    ResolveCellAreaBoxMethod "isActivatable" o = Gtk.CellArea.CellAreaIsActivatableMethodInfo
    ResolveCellAreaBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellAreaBoxMethod "isFocusSibling" o = Gtk.CellArea.CellAreaIsFocusSiblingMethodInfo
    ResolveCellAreaBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellAreaBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellAreaBoxMethod "packEnd" o = CellAreaBoxPackEndMethodInfo
    ResolveCellAreaBoxMethod "packStart" o = CellAreaBoxPackStartMethodInfo
    ResolveCellAreaBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCellAreaBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellAreaBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellAreaBoxMethod "remove" o = Gtk.CellArea.CellAreaRemoveMethodInfo
    ResolveCellAreaBoxMethod "removeFocusSibling" o = Gtk.CellArea.CellAreaRemoveFocusSiblingMethodInfo
    ResolveCellAreaBoxMethod "render" o = Gtk.CellArea.CellAreaRenderMethodInfo
    ResolveCellAreaBoxMethod "reorder" o = Gtk.CellLayout.CellLayoutReorderMethodInfo
    ResolveCellAreaBoxMethod "requestRenderer" o = Gtk.CellArea.CellAreaRequestRendererMethodInfo
    ResolveCellAreaBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellAreaBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellAreaBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellAreaBoxMethod "stopEditing" o = Gtk.CellArea.CellAreaStopEditingMethodInfo
    ResolveCellAreaBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellAreaBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellAreaBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellAreaBoxMethod "getArea" o = Gtk.CellLayout.CellLayoutGetAreaMethodInfo
    ResolveCellAreaBoxMethod "getCellAllocation" o = Gtk.CellArea.CellAreaGetCellAllocationMethodInfo
    ResolveCellAreaBoxMethod "getCellAtPosition" o = Gtk.CellArea.CellAreaGetCellAtPositionMethodInfo
    ResolveCellAreaBoxMethod "getCells" o = Gtk.CellLayout.CellLayoutGetCellsMethodInfo
    ResolveCellAreaBoxMethod "getCurrentPathString" o = Gtk.CellArea.CellAreaGetCurrentPathStringMethodInfo
    ResolveCellAreaBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellAreaBoxMethod "getEditWidget" o = Gtk.CellArea.CellAreaGetEditWidgetMethodInfo
    ResolveCellAreaBoxMethod "getEditedCell" o = Gtk.CellArea.CellAreaGetEditedCellMethodInfo
    ResolveCellAreaBoxMethod "getFocusCell" o = Gtk.CellArea.CellAreaGetFocusCellMethodInfo
    ResolveCellAreaBoxMethod "getFocusFromSibling" o = Gtk.CellArea.CellAreaGetFocusFromSiblingMethodInfo
    ResolveCellAreaBoxMethod "getFocusSiblings" o = Gtk.CellArea.CellAreaGetFocusSiblingsMethodInfo
    ResolveCellAreaBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCellAreaBoxMethod "getName" o = Gtk.Buildable.BuildableGetNameMethodInfo
    ResolveCellAreaBoxMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveCellAreaBoxMethod "getPreferredHeight" o = Gtk.CellArea.CellAreaGetPreferredHeightMethodInfo
    ResolveCellAreaBoxMethod "getPreferredHeightForWidth" o = Gtk.CellArea.CellAreaGetPreferredHeightForWidthMethodInfo
    ResolveCellAreaBoxMethod "getPreferredWidth" o = Gtk.CellArea.CellAreaGetPreferredWidthMethodInfo
    ResolveCellAreaBoxMethod "getPreferredWidthForHeight" o = Gtk.CellArea.CellAreaGetPreferredWidthForHeightMethodInfo
    ResolveCellAreaBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellAreaBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellAreaBoxMethod "getRequestMode" o = Gtk.CellArea.CellAreaGetRequestModeMethodInfo
    ResolveCellAreaBoxMethod "getSpacing" o = CellAreaBoxGetSpacingMethodInfo
    ResolveCellAreaBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCellAreaBoxMethod "setCellDataFunc" o = Gtk.CellLayout.CellLayoutSetCellDataFuncMethodInfo
    ResolveCellAreaBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellAreaBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellAreaBoxMethod "setFocusCell" o = Gtk.CellArea.CellAreaSetFocusCellMethodInfo
    ResolveCellAreaBoxMethod "setName" o = Gtk.Buildable.BuildableSetNameMethodInfo
    ResolveCellAreaBoxMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveCellAreaBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellAreaBoxMethod "setSpacing" o = CellAreaBoxSetSpacingMethodInfo
    ResolveCellAreaBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellAreaBoxMethod t CellAreaBox, O.MethodInfo info CellAreaBox p) => OL.IsLabel t (CellAreaBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellAreaBox #spacing
-- @
getCellAreaBoxSpacing :: (MonadIO m, IsCellAreaBox o) => o -> m Int32
getCellAreaBoxSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "spacing"

-- | Set the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellAreaBox [ #spacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellAreaBoxSpacing :: (MonadIO m, IsCellAreaBox o) => o -> Int32 -> m ()
setCellAreaBoxSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellAreaBoxSpacing :: (IsCellAreaBox o) => Int32 -> IO (GValueConstruct o)
constructCellAreaBoxSpacing val = B.Properties.constructObjectPropertyInt32 "spacing" val

#if defined(ENABLE_OVERLOADING)
data CellAreaBoxSpacingPropertyInfo
instance AttrInfo CellAreaBoxSpacingPropertyInfo where
    type AttrAllowedOps CellAreaBoxSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellAreaBoxSpacingPropertyInfo = IsCellAreaBox
    type AttrSetTypeConstraint CellAreaBoxSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CellAreaBoxSpacingPropertyInfo = (~) Int32
    type AttrTransferType CellAreaBoxSpacingPropertyInfo = Int32
    type AttrGetType CellAreaBoxSpacingPropertyInfo = Int32
    type AttrLabel CellAreaBoxSpacingPropertyInfo = "spacing"
    type AttrOrigin CellAreaBoxSpacingPropertyInfo = CellAreaBox
    attrGet = getCellAreaBoxSpacing
    attrSet = setCellAreaBoxSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellAreaBoxSpacing
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellAreaBox
type instance O.AttributeList CellAreaBox = CellAreaBoxAttributeList
type CellAreaBoxAttributeList = ('[ '("editWidget", Gtk.CellArea.CellAreaEditWidgetPropertyInfo), '("editedCell", Gtk.CellArea.CellAreaEditedCellPropertyInfo), '("focusCell", Gtk.CellArea.CellAreaFocusCellPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("spacing", CellAreaBoxSpacingPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellAreaBoxSpacing :: AttrLabelProxy "spacing"
cellAreaBoxSpacing = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellAreaBox = CellAreaBoxSignalList
type CellAreaBoxSignalList = ('[ '("addEditable", Gtk.CellArea.CellAreaAddEditableSignalInfo), '("applyAttributes", Gtk.CellArea.CellAreaApplyAttributesSignalInfo), '("focusChanged", Gtk.CellArea.CellAreaFocusChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("removeEditable", Gtk.CellArea.CellAreaRemoveEditableSignalInfo)] :: [(Symbol, *)])

#endif

-- method CellAreaBox::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellAreaBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_area_box_new" gtk_cell_area_box_new :: 
    IO (Ptr CellAreaBox)

-- | Creates a new t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'.
-- 
-- /Since: 3.0/
cellAreaBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellAreaBox
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'
cellAreaBoxNew  = liftIO $ do
    result <- gtk_cell_area_box_new
    checkUnexpectedReturnNULL "cellAreaBoxNew" result
    result' <- (newObject CellAreaBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellAreaBox::get_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAreaBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellAreaBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_cell_area_box_get_spacing" gtk_cell_area_box_get_spacing :: 
    Ptr CellAreaBox ->                      -- box : TInterface (Name {namespace = "Gtk", name = "CellAreaBox"})
    IO Int32

-- | Gets the spacing added between cell renderers.
-- 
-- /Since: 3.0/
cellAreaBoxGetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAreaBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'
    -> m Int32
    -- ^ __Returns:__ the space added between cell renderers in /@box@/.
cellAreaBoxGetSpacing box = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    result <- gtk_cell_area_box_get_spacing box'
    touchManagedPtr box
    return result

#if defined(ENABLE_OVERLOADING)
data CellAreaBoxGetSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsCellAreaBox a) => O.MethodInfo CellAreaBoxGetSpacingMethodInfo a signature where
    overloadedMethod = cellAreaBoxGetSpacing

#endif

-- method CellAreaBox::pack_end
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAreaBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellAreaBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "renderer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkCellRenderer to add"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "expand"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether @renderer should receive extra space when the area receives\nmore than its natural size"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "align"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @renderer should be aligned in adjacent rows"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fixed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @renderer should have the same size in all rows"
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

foreign import ccall "gtk_cell_area_box_pack_end" gtk_cell_area_box_pack_end :: 
    Ptr CellAreaBox ->                      -- box : TInterface (Name {namespace = "Gtk", name = "CellAreaBox"})
    Ptr Gtk.CellRenderer.CellRenderer ->    -- renderer : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    CInt ->                                 -- expand : TBasicType TBoolean
    CInt ->                                 -- align : TBasicType TBoolean
    CInt ->                                 -- fixed : TBasicType TBoolean
    IO ()

-- | Adds /@renderer@/ to /@box@/, packed with reference to the end of /@box@/.
-- 
-- The /@renderer@/ is packed after (away from end of) any other
-- t'GI.Gtk.Objects.CellRenderer.CellRenderer' packed with reference to the end of /@box@/.
-- 
-- /Since: 3.0/
cellAreaBoxPackEnd ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAreaBox a, Gtk.CellRenderer.IsCellRenderer b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'
    -> b
    -- ^ /@renderer@/: the t'GI.Gtk.Objects.CellRenderer.CellRenderer' to add
    -> Bool
    -- ^ /@expand@/: whether /@renderer@/ should receive extra space when the area receives
    -- more than its natural size
    -> Bool
    -- ^ /@align@/: whether /@renderer@/ should be aligned in adjacent rows
    -> Bool
    -- ^ /@fixed@/: whether /@renderer@/ should have the same size in all rows
    -> m ()
cellAreaBoxPackEnd box renderer expand align fixed = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    renderer' <- unsafeManagedPtrCastPtr renderer
    let expand' = (fromIntegral . fromEnum) expand
    let align' = (fromIntegral . fromEnum) align
    let fixed' = (fromIntegral . fromEnum) fixed
    gtk_cell_area_box_pack_end box' renderer' expand' align' fixed'
    touchManagedPtr box
    touchManagedPtr renderer
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAreaBoxPackEndMethodInfo
instance (signature ~ (b -> Bool -> Bool -> Bool -> m ()), MonadIO m, IsCellAreaBox a, Gtk.CellRenderer.IsCellRenderer b) => O.MethodInfo CellAreaBoxPackEndMethodInfo a signature where
    overloadedMethod = cellAreaBoxPackEnd

#endif

-- method CellAreaBox::pack_start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAreaBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellAreaBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "renderer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkCellRenderer to add"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "expand"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether @renderer should receive extra space when the area receives\nmore than its natural size"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "align"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @renderer should be aligned in adjacent rows"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fixed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @renderer should have the same size in all rows"
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

foreign import ccall "gtk_cell_area_box_pack_start" gtk_cell_area_box_pack_start :: 
    Ptr CellAreaBox ->                      -- box : TInterface (Name {namespace = "Gtk", name = "CellAreaBox"})
    Ptr Gtk.CellRenderer.CellRenderer ->    -- renderer : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    CInt ->                                 -- expand : TBasicType TBoolean
    CInt ->                                 -- align : TBasicType TBoolean
    CInt ->                                 -- fixed : TBasicType TBoolean
    IO ()

-- | Adds /@renderer@/ to /@box@/, packed with reference to the start of /@box@/.
-- 
-- The /@renderer@/ is packed after any other t'GI.Gtk.Objects.CellRenderer.CellRenderer' packed
-- with reference to the start of /@box@/.
-- 
-- /Since: 3.0/
cellAreaBoxPackStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAreaBox a, Gtk.CellRenderer.IsCellRenderer b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'
    -> b
    -- ^ /@renderer@/: the t'GI.Gtk.Objects.CellRenderer.CellRenderer' to add
    -> Bool
    -- ^ /@expand@/: whether /@renderer@/ should receive extra space when the area receives
    -- more than its natural size
    -> Bool
    -- ^ /@align@/: whether /@renderer@/ should be aligned in adjacent rows
    -> Bool
    -- ^ /@fixed@/: whether /@renderer@/ should have the same size in all rows
    -> m ()
cellAreaBoxPackStart box renderer expand align fixed = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    renderer' <- unsafeManagedPtrCastPtr renderer
    let expand' = (fromIntegral . fromEnum) expand
    let align' = (fromIntegral . fromEnum) align
    let fixed' = (fromIntegral . fromEnum) fixed
    gtk_cell_area_box_pack_start box' renderer' expand' align' fixed'
    touchManagedPtr box
    touchManagedPtr renderer
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAreaBoxPackStartMethodInfo
instance (signature ~ (b -> Bool -> Bool -> Bool -> m ()), MonadIO m, IsCellAreaBox a, Gtk.CellRenderer.IsCellRenderer b) => O.MethodInfo CellAreaBoxPackStartMethodInfo a signature where
    overloadedMethod = cellAreaBoxPackStart

#endif

-- method CellAreaBox::set_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAreaBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellAreaBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the space to add between #GtkCellRenderers"
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

foreign import ccall "gtk_cell_area_box_set_spacing" gtk_cell_area_box_set_spacing :: 
    Ptr CellAreaBox ->                      -- box : TInterface (Name {namespace = "Gtk", name = "CellAreaBox"})
    Int32 ->                                -- spacing : TBasicType TInt
    IO ()

-- | Sets the spacing to add between cell renderers in /@box@/.
-- 
-- /Since: 3.0/
cellAreaBoxSetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellAreaBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox'
    -> Int32
    -- ^ /@spacing@/: the space to add between @/GtkCellRenderers/@
    -> m ()
cellAreaBoxSetSpacing box spacing = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    gtk_cell_area_box_set_spacing box' spacing
    touchManagedPtr box
    return ()

#if defined(ENABLE_OVERLOADING)
data CellAreaBoxSetSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsCellAreaBox a) => O.MethodInfo CellAreaBoxSetSpacingMethodInfo a signature where
    overloadedMethod = cellAreaBoxSetSpacing

#endif

