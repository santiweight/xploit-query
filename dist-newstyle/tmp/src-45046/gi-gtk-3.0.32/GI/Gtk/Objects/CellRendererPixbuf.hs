{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf' can be used to render an image in a cell. It allows
-- to render either a given t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' (set via the
-- t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf':@/pixbuf/@ property) or a named icon (set via the
-- t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf':@/icon-name/@ property).
-- 
-- To support the tree view, t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf' also supports rendering two
-- alternative pixbufs, when the t'GI.Gtk.Objects.CellRenderer.CellRenderer':@/is-expander/@ property is 'P.True'.
-- If the t'GI.Gtk.Objects.CellRenderer.CellRenderer':@/is-expanded/@ property is 'P.True' and the
-- t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf':@/pixbuf-expander-open/@ property is set to a pixbuf, it
-- renders that pixbuf, if the t'GI.Gtk.Objects.CellRenderer.CellRenderer':@/is-expanded/@ property is 'P.False'
-- and the t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf':@/pixbuf-expander-closed/@ property is set to a
-- pixbuf, it renders that one.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellRendererPixbuf
    ( 

-- * Exported types
    CellRendererPixbuf(..)                  ,
    IsCellRendererPixbuf                    ,
    toCellRendererPixbuf                    ,
    noCellRendererPixbuf                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellRendererPixbufMethod         ,
#endif


-- ** new #method:new#

    cellRendererPixbufNew                   ,




 -- * Properties
-- ** followState #attr:followState#
-- | Specifies whether the rendered pixbuf should be colorized
-- according to the t'GI.Gtk.Flags.CellRendererState'.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufFollowStatePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufFollowState           ,
#endif
    constructCellRendererPixbufFollowState  ,
    getCellRendererPixbufFollowState        ,
    setCellRendererPixbufFollowState        ,


-- ** gicon #attr:gicon#
-- | The GIcon representing the icon to display.
-- If the icon theme is changed, the image will be updated
-- automatically.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufGiconPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufGicon                 ,
#endif
    clearCellRendererPixbufGicon            ,
    constructCellRendererPixbufGicon        ,
    getCellRendererPixbufGicon              ,
    setCellRendererPixbufGicon              ,


-- ** iconName #attr:iconName#
-- | The name of the themed icon to display.
-- This property only has an effect if not overridden by \"stock_id\"
-- or \"pixbuf\" properties.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufIconNamePropertyInfo  ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufIconName              ,
#endif
    clearCellRendererPixbufIconName         ,
    constructCellRendererPixbufIconName     ,
    getCellRendererPixbufIconName           ,
    setCellRendererPixbufIconName           ,


-- ** pixbuf #attr:pixbuf#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufPixbufPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufPixbuf                ,
#endif
    clearCellRendererPixbufPixbuf           ,
    constructCellRendererPixbufPixbuf       ,
    getCellRendererPixbufPixbuf             ,
    setCellRendererPixbufPixbuf             ,


-- ** pixbufExpanderClosed #attr:pixbufExpanderClosed#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufPixbufExpanderClosedPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufPixbufExpanderClosed  ,
#endif
    clearCellRendererPixbufPixbufExpanderClosed,
    constructCellRendererPixbufPixbufExpanderClosed,
    getCellRendererPixbufPixbufExpanderClosed,
    setCellRendererPixbufPixbufExpanderClosed,


-- ** pixbufExpanderOpen #attr:pixbufExpanderOpen#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufPixbufExpanderOpenPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufPixbufExpanderOpen    ,
#endif
    clearCellRendererPixbufPixbufExpanderOpen,
    constructCellRendererPixbufPixbufExpanderOpen,
    getCellRendererPixbufPixbufExpanderOpen ,
    setCellRendererPixbufPixbufExpanderOpen ,


-- ** stockDetail #attr:stockDetail#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufStockDetailPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufStockDetail           ,
#endif
    clearCellRendererPixbufStockDetail      ,
    constructCellRendererPixbufStockDetail  ,
    getCellRendererPixbufStockDetail        ,
    setCellRendererPixbufStockDetail        ,


-- ** stockId #attr:stockId#
-- | /No description available in the introspection data./
-- 
-- /Since: 2.2/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufStockIdPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufStockId               ,
#endif
    clearCellRendererPixbufStockId          ,
    constructCellRendererPixbufStockId      ,
    getCellRendererPixbufStockId            ,
    setCellRendererPixbufStockId            ,


-- ** stockSize #attr:stockSize#
-- | The t'GI.Gtk.Enums.IconSize' value that specifies the size of the rendered icon.
-- 
-- /Since: 2.2/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufStockSizePropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufStockSize             ,
#endif
    constructCellRendererPixbufStockSize    ,
    getCellRendererPixbufStockSize          ,
    setCellRendererPixbufStockSize          ,


-- ** surface #attr:surface#
-- | /No description available in the introspection data./
-- 
-- /Since: 3.10/

#if defined(ENABLE_OVERLOADING)
    CellRendererPixbufSurfacePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellRendererPixbufSurface               ,
#endif
    clearCellRendererPixbufSurface          ,
    constructCellRendererPixbufSurface      ,
    getCellRendererPixbufSurface            ,
    setCellRendererPixbufSurface            ,




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

import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import qualified GI.Gio.Interfaces.Icon as Gio.Icon
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype CellRendererPixbuf = CellRendererPixbuf (ManagedPtr CellRendererPixbuf)
    deriving (Eq)
foreign import ccall "gtk_cell_renderer_pixbuf_get_type"
    c_gtk_cell_renderer_pixbuf_get_type :: IO GType

instance GObject CellRendererPixbuf where
    gobjectType = c_gtk_cell_renderer_pixbuf_get_type
    

-- | Convert 'CellRendererPixbuf' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellRendererPixbuf where
    toGValue o = do
        gtype <- c_gtk_cell_renderer_pixbuf_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellRendererPixbuf)
        B.ManagedPtr.newObject CellRendererPixbuf ptr
        
    

-- | Type class for types which can be safely cast to `CellRendererPixbuf`, for instance with `toCellRendererPixbuf`.
class (GObject o, O.IsDescendantOf CellRendererPixbuf o) => IsCellRendererPixbuf o
instance (GObject o, O.IsDescendantOf CellRendererPixbuf o) => IsCellRendererPixbuf o

instance O.HasParentTypes CellRendererPixbuf
type instance O.ParentTypes CellRendererPixbuf = '[Gtk.CellRenderer.CellRenderer, GObject.Object.Object]

-- | Cast to `CellRendererPixbuf`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellRendererPixbuf :: (MonadIO m, IsCellRendererPixbuf o) => o -> m CellRendererPixbuf
toCellRendererPixbuf = liftIO . unsafeCastTo CellRendererPixbuf

-- | A convenience alias for `Nothing` :: `Maybe` `CellRendererPixbuf`.
noCellRendererPixbuf :: Maybe CellRendererPixbuf
noCellRendererPixbuf = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellRendererPixbufMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellRendererPixbufMethod "activate" o = Gtk.CellRenderer.CellRendererActivateMethodInfo
    ResolveCellRendererPixbufMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellRendererPixbufMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellRendererPixbufMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellRendererPixbufMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellRendererPixbufMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellRendererPixbufMethod "isActivatable" o = Gtk.CellRenderer.CellRendererIsActivatableMethodInfo
    ResolveCellRendererPixbufMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellRendererPixbufMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellRendererPixbufMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellRendererPixbufMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellRendererPixbufMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellRendererPixbufMethod "render" o = Gtk.CellRenderer.CellRendererRenderMethodInfo
    ResolveCellRendererPixbufMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellRendererPixbufMethod "startEditing" o = Gtk.CellRenderer.CellRendererStartEditingMethodInfo
    ResolveCellRendererPixbufMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellRendererPixbufMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellRendererPixbufMethod "stopEditing" o = Gtk.CellRenderer.CellRendererStopEditingMethodInfo
    ResolveCellRendererPixbufMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellRendererPixbufMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellRendererPixbufMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellRendererPixbufMethod "getAlignedArea" o = Gtk.CellRenderer.CellRendererGetAlignedAreaMethodInfo
    ResolveCellRendererPixbufMethod "getAlignment" o = Gtk.CellRenderer.CellRendererGetAlignmentMethodInfo
    ResolveCellRendererPixbufMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellRendererPixbufMethod "getFixedSize" o = Gtk.CellRenderer.CellRendererGetFixedSizeMethodInfo
    ResolveCellRendererPixbufMethod "getPadding" o = Gtk.CellRenderer.CellRendererGetPaddingMethodInfo
    ResolveCellRendererPixbufMethod "getPreferredHeight" o = Gtk.CellRenderer.CellRendererGetPreferredHeightMethodInfo
    ResolveCellRendererPixbufMethod "getPreferredHeightForWidth" o = Gtk.CellRenderer.CellRendererGetPreferredHeightForWidthMethodInfo
    ResolveCellRendererPixbufMethod "getPreferredSize" o = Gtk.CellRenderer.CellRendererGetPreferredSizeMethodInfo
    ResolveCellRendererPixbufMethod "getPreferredWidth" o = Gtk.CellRenderer.CellRendererGetPreferredWidthMethodInfo
    ResolveCellRendererPixbufMethod "getPreferredWidthForHeight" o = Gtk.CellRenderer.CellRendererGetPreferredWidthForHeightMethodInfo
    ResolveCellRendererPixbufMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellRendererPixbufMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellRendererPixbufMethod "getRequestMode" o = Gtk.CellRenderer.CellRendererGetRequestModeMethodInfo
    ResolveCellRendererPixbufMethod "getSensitive" o = Gtk.CellRenderer.CellRendererGetSensitiveMethodInfo
    ResolveCellRendererPixbufMethod "getSize" o = Gtk.CellRenderer.CellRendererGetSizeMethodInfo
    ResolveCellRendererPixbufMethod "getState" o = Gtk.CellRenderer.CellRendererGetStateMethodInfo
    ResolveCellRendererPixbufMethod "getVisible" o = Gtk.CellRenderer.CellRendererGetVisibleMethodInfo
    ResolveCellRendererPixbufMethod "setAlignment" o = Gtk.CellRenderer.CellRendererSetAlignmentMethodInfo
    ResolveCellRendererPixbufMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellRendererPixbufMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellRendererPixbufMethod "setFixedSize" o = Gtk.CellRenderer.CellRendererSetFixedSizeMethodInfo
    ResolveCellRendererPixbufMethod "setPadding" o = Gtk.CellRenderer.CellRendererSetPaddingMethodInfo
    ResolveCellRendererPixbufMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellRendererPixbufMethod "setSensitive" o = Gtk.CellRenderer.CellRendererSetSensitiveMethodInfo
    ResolveCellRendererPixbufMethod "setVisible" o = Gtk.CellRenderer.CellRendererSetVisibleMethodInfo
    ResolveCellRendererPixbufMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellRendererPixbufMethod t CellRendererPixbuf, O.MethodInfo info CellRendererPixbuf p) => OL.IsLabel t (CellRendererPixbuf -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "follow-state"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@follow-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #followState
-- @
getCellRendererPixbufFollowState :: (MonadIO m, IsCellRendererPixbuf o) => o -> m Bool
getCellRendererPixbufFollowState obj = liftIO $ B.Properties.getObjectPropertyBool obj "follow-state"

-- | Set the value of the “@follow-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #followState 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufFollowState :: (MonadIO m, IsCellRendererPixbuf o) => o -> Bool -> m ()
setCellRendererPixbufFollowState obj val = liftIO $ B.Properties.setObjectPropertyBool obj "follow-state" val

-- | Construct a `GValueConstruct` with valid value for the “@follow-state@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufFollowState :: (IsCellRendererPixbuf o) => Bool -> IO (GValueConstruct o)
constructCellRendererPixbufFollowState val = B.Properties.constructObjectPropertyBool "follow-state" val

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufFollowStatePropertyInfo
instance AttrInfo CellRendererPixbufFollowStatePropertyInfo where
    type AttrAllowedOps CellRendererPixbufFollowStatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererPixbufFollowStatePropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufFollowStatePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellRendererPixbufFollowStatePropertyInfo = (~) Bool
    type AttrTransferType CellRendererPixbufFollowStatePropertyInfo = Bool
    type AttrGetType CellRendererPixbufFollowStatePropertyInfo = Bool
    type AttrLabel CellRendererPixbufFollowStatePropertyInfo = "follow-state"
    type AttrOrigin CellRendererPixbufFollowStatePropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufFollowState
    attrSet = setCellRendererPixbufFollowState
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufFollowState
    attrClear = undefined
#endif

-- VVV Prop "gicon"
   -- Type: TInterface (Name {namespace = "Gio", name = "Icon"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #gicon
-- @
getCellRendererPixbufGicon :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe Gio.Icon.Icon)
getCellRendererPixbufGicon obj = liftIO $ B.Properties.getObjectPropertyObject obj "gicon" Gio.Icon.Icon

-- | Set the value of the “@gicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #gicon 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufGicon :: (MonadIO m, IsCellRendererPixbuf o, Gio.Icon.IsIcon a) => o -> a -> m ()
setCellRendererPixbufGicon obj val = liftIO $ B.Properties.setObjectPropertyObject obj "gicon" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@gicon@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufGicon :: (IsCellRendererPixbuf o, Gio.Icon.IsIcon a) => a -> IO (GValueConstruct o)
constructCellRendererPixbufGicon val = B.Properties.constructObjectPropertyObject "gicon" (Just val)

-- | Set the value of the “@gicon@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #gicon
-- @
clearCellRendererPixbufGicon :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufGicon obj = liftIO $ B.Properties.setObjectPropertyObject obj "gicon" (Nothing :: Maybe Gio.Icon.Icon)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufGiconPropertyInfo
instance AttrInfo CellRendererPixbufGiconPropertyInfo where
    type AttrAllowedOps CellRendererPixbufGiconPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufGiconPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferTypeConstraint CellRendererPixbufGiconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferType CellRendererPixbufGiconPropertyInfo = Gio.Icon.Icon
    type AttrGetType CellRendererPixbufGiconPropertyInfo = (Maybe Gio.Icon.Icon)
    type AttrLabel CellRendererPixbufGiconPropertyInfo = "gicon"
    type AttrOrigin CellRendererPixbufGiconPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufGicon
    attrSet = setCellRendererPixbufGicon
    attrTransfer _ v = do
        unsafeCastTo Gio.Icon.Icon v
    attrConstruct = constructCellRendererPixbufGicon
    attrClear = clearCellRendererPixbufGicon
#endif

-- VVV Prop "icon-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #iconName
-- @
getCellRendererPixbufIconName :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe T.Text)
getCellRendererPixbufIconName obj = liftIO $ B.Properties.getObjectPropertyString obj "icon-name"

-- | Set the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #iconName 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufIconName :: (MonadIO m, IsCellRendererPixbuf o) => o -> T.Text -> m ()
setCellRendererPixbufIconName obj val = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufIconName :: (IsCellRendererPixbuf o) => T.Text -> IO (GValueConstruct o)
constructCellRendererPixbufIconName val = B.Properties.constructObjectPropertyString "icon-name" (Just val)

-- | Set the value of the “@icon-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #iconName
-- @
clearCellRendererPixbufIconName :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufIconName obj = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufIconNamePropertyInfo
instance AttrInfo CellRendererPixbufIconNamePropertyInfo where
    type AttrAllowedOps CellRendererPixbufIconNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufIconNamePropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufIconNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint CellRendererPixbufIconNamePropertyInfo = (~) T.Text
    type AttrTransferType CellRendererPixbufIconNamePropertyInfo = T.Text
    type AttrGetType CellRendererPixbufIconNamePropertyInfo = (Maybe T.Text)
    type AttrLabel CellRendererPixbufIconNamePropertyInfo = "icon-name"
    type AttrOrigin CellRendererPixbufIconNamePropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufIconName
    attrSet = setCellRendererPixbufIconName
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufIconName
    attrClear = clearCellRendererPixbufIconName
#endif

-- VVV Prop "pixbuf"
   -- Type: TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@pixbuf@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #pixbuf
-- @
getCellRendererPixbufPixbuf :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
getCellRendererPixbufPixbuf obj = liftIO $ B.Properties.getObjectPropertyObject obj "pixbuf" GdkPixbuf.Pixbuf.Pixbuf

-- | Set the value of the “@pixbuf@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #pixbuf 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufPixbuf :: (MonadIO m, IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => o -> a -> m ()
setCellRendererPixbufPixbuf obj val = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@pixbuf@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufPixbuf :: (IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => a -> IO (GValueConstruct o)
constructCellRendererPixbufPixbuf val = B.Properties.constructObjectPropertyObject "pixbuf" (Just val)

-- | Set the value of the “@pixbuf@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #pixbuf
-- @
clearCellRendererPixbufPixbuf :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufPixbuf obj = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf" (Nothing :: Maybe GdkPixbuf.Pixbuf.Pixbuf)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufPixbufPropertyInfo
instance AttrInfo CellRendererPixbufPixbufPropertyInfo where
    type AttrAllowedOps CellRendererPixbufPixbufPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufPixbufPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufPixbufPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferTypeConstraint CellRendererPixbufPixbufPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferType CellRendererPixbufPixbufPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrGetType CellRendererPixbufPixbufPropertyInfo = (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    type AttrLabel CellRendererPixbufPixbufPropertyInfo = "pixbuf"
    type AttrOrigin CellRendererPixbufPixbufPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufPixbuf
    attrSet = setCellRendererPixbufPixbuf
    attrTransfer _ v = do
        unsafeCastTo GdkPixbuf.Pixbuf.Pixbuf v
    attrConstruct = constructCellRendererPixbufPixbuf
    attrClear = clearCellRendererPixbufPixbuf
#endif

-- VVV Prop "pixbuf-expander-closed"
   -- Type: TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@pixbuf-expander-closed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #pixbufExpanderClosed
-- @
getCellRendererPixbufPixbufExpanderClosed :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
getCellRendererPixbufPixbufExpanderClosed obj = liftIO $ B.Properties.getObjectPropertyObject obj "pixbuf-expander-closed" GdkPixbuf.Pixbuf.Pixbuf

-- | Set the value of the “@pixbuf-expander-closed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #pixbufExpanderClosed 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufPixbufExpanderClosed :: (MonadIO m, IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => o -> a -> m ()
setCellRendererPixbufPixbufExpanderClosed obj val = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf-expander-closed" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@pixbuf-expander-closed@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufPixbufExpanderClosed :: (IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => a -> IO (GValueConstruct o)
constructCellRendererPixbufPixbufExpanderClosed val = B.Properties.constructObjectPropertyObject "pixbuf-expander-closed" (Just val)

-- | Set the value of the “@pixbuf-expander-closed@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #pixbufExpanderClosed
-- @
clearCellRendererPixbufPixbufExpanderClosed :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufPixbufExpanderClosed obj = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf-expander-closed" (Nothing :: Maybe GdkPixbuf.Pixbuf.Pixbuf)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufPixbufExpanderClosedPropertyInfo
instance AttrInfo CellRendererPixbufPixbufExpanderClosedPropertyInfo where
    type AttrAllowedOps CellRendererPixbufPixbufExpanderClosedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufPixbufExpanderClosedPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufPixbufExpanderClosedPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferTypeConstraint CellRendererPixbufPixbufExpanderClosedPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferType CellRendererPixbufPixbufExpanderClosedPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrGetType CellRendererPixbufPixbufExpanderClosedPropertyInfo = (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    type AttrLabel CellRendererPixbufPixbufExpanderClosedPropertyInfo = "pixbuf-expander-closed"
    type AttrOrigin CellRendererPixbufPixbufExpanderClosedPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufPixbufExpanderClosed
    attrSet = setCellRendererPixbufPixbufExpanderClosed
    attrTransfer _ v = do
        unsafeCastTo GdkPixbuf.Pixbuf.Pixbuf v
    attrConstruct = constructCellRendererPixbufPixbufExpanderClosed
    attrClear = clearCellRendererPixbufPixbufExpanderClosed
#endif

-- VVV Prop "pixbuf-expander-open"
   -- Type: TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@pixbuf-expander-open@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #pixbufExpanderOpen
-- @
getCellRendererPixbufPixbufExpanderOpen :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
getCellRendererPixbufPixbufExpanderOpen obj = liftIO $ B.Properties.getObjectPropertyObject obj "pixbuf-expander-open" GdkPixbuf.Pixbuf.Pixbuf

-- | Set the value of the “@pixbuf-expander-open@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #pixbufExpanderOpen 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufPixbufExpanderOpen :: (MonadIO m, IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => o -> a -> m ()
setCellRendererPixbufPixbufExpanderOpen obj val = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf-expander-open" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@pixbuf-expander-open@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufPixbufExpanderOpen :: (IsCellRendererPixbuf o, GdkPixbuf.Pixbuf.IsPixbuf a) => a -> IO (GValueConstruct o)
constructCellRendererPixbufPixbufExpanderOpen val = B.Properties.constructObjectPropertyObject "pixbuf-expander-open" (Just val)

-- | Set the value of the “@pixbuf-expander-open@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #pixbufExpanderOpen
-- @
clearCellRendererPixbufPixbufExpanderOpen :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufPixbufExpanderOpen obj = liftIO $ B.Properties.setObjectPropertyObject obj "pixbuf-expander-open" (Nothing :: Maybe GdkPixbuf.Pixbuf.Pixbuf)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufPixbufExpanderOpenPropertyInfo
instance AttrInfo CellRendererPixbufPixbufExpanderOpenPropertyInfo where
    type AttrAllowedOps CellRendererPixbufPixbufExpanderOpenPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufPixbufExpanderOpenPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufPixbufExpanderOpenPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferTypeConstraint CellRendererPixbufPixbufExpanderOpenPropertyInfo = GdkPixbuf.Pixbuf.IsPixbuf
    type AttrTransferType CellRendererPixbufPixbufExpanderOpenPropertyInfo = GdkPixbuf.Pixbuf.Pixbuf
    type AttrGetType CellRendererPixbufPixbufExpanderOpenPropertyInfo = (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    type AttrLabel CellRendererPixbufPixbufExpanderOpenPropertyInfo = "pixbuf-expander-open"
    type AttrOrigin CellRendererPixbufPixbufExpanderOpenPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufPixbufExpanderOpen
    attrSet = setCellRendererPixbufPixbufExpanderOpen
    attrTransfer _ v = do
        unsafeCastTo GdkPixbuf.Pixbuf.Pixbuf v
    attrConstruct = constructCellRendererPixbufPixbufExpanderOpen
    attrClear = clearCellRendererPixbufPixbufExpanderOpen
#endif

-- VVV Prop "stock-detail"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@stock-detail@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #stockDetail
-- @
getCellRendererPixbufStockDetail :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe T.Text)
getCellRendererPixbufStockDetail obj = liftIO $ B.Properties.getObjectPropertyString obj "stock-detail"

-- | Set the value of the “@stock-detail@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #stockDetail 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufStockDetail :: (MonadIO m, IsCellRendererPixbuf o) => o -> T.Text -> m ()
setCellRendererPixbufStockDetail obj val = liftIO $ B.Properties.setObjectPropertyString obj "stock-detail" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stock-detail@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufStockDetail :: (IsCellRendererPixbuf o) => T.Text -> IO (GValueConstruct o)
constructCellRendererPixbufStockDetail val = B.Properties.constructObjectPropertyString "stock-detail" (Just val)

-- | Set the value of the “@stock-detail@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #stockDetail
-- @
clearCellRendererPixbufStockDetail :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufStockDetail obj = liftIO $ B.Properties.setObjectPropertyString obj "stock-detail" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufStockDetailPropertyInfo
instance AttrInfo CellRendererPixbufStockDetailPropertyInfo where
    type AttrAllowedOps CellRendererPixbufStockDetailPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufStockDetailPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufStockDetailPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint CellRendererPixbufStockDetailPropertyInfo = (~) T.Text
    type AttrTransferType CellRendererPixbufStockDetailPropertyInfo = T.Text
    type AttrGetType CellRendererPixbufStockDetailPropertyInfo = (Maybe T.Text)
    type AttrLabel CellRendererPixbufStockDetailPropertyInfo = "stock-detail"
    type AttrOrigin CellRendererPixbufStockDetailPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufStockDetail
    attrSet = setCellRendererPixbufStockDetail
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufStockDetail
    attrClear = clearCellRendererPixbufStockDetail
#endif

-- VVV Prop "stock-id"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #stockId
-- @
getCellRendererPixbufStockId :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe T.Text)
getCellRendererPixbufStockId obj = liftIO $ B.Properties.getObjectPropertyString obj "stock-id"

-- | Set the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #stockId 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufStockId :: (MonadIO m, IsCellRendererPixbuf o) => o -> T.Text -> m ()
setCellRendererPixbufStockId obj val = liftIO $ B.Properties.setObjectPropertyString obj "stock-id" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stock-id@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufStockId :: (IsCellRendererPixbuf o) => T.Text -> IO (GValueConstruct o)
constructCellRendererPixbufStockId val = B.Properties.constructObjectPropertyString "stock-id" (Just val)

-- | Set the value of the “@stock-id@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #stockId
-- @
clearCellRendererPixbufStockId :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufStockId obj = liftIO $ B.Properties.setObjectPropertyString obj "stock-id" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufStockIdPropertyInfo
instance AttrInfo CellRendererPixbufStockIdPropertyInfo where
    type AttrAllowedOps CellRendererPixbufStockIdPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufStockIdPropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufStockIdPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint CellRendererPixbufStockIdPropertyInfo = (~) T.Text
    type AttrTransferType CellRendererPixbufStockIdPropertyInfo = T.Text
    type AttrGetType CellRendererPixbufStockIdPropertyInfo = (Maybe T.Text)
    type AttrLabel CellRendererPixbufStockIdPropertyInfo = "stock-id"
    type AttrOrigin CellRendererPixbufStockIdPropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufStockId
    attrSet = setCellRendererPixbufStockId
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufStockId
    attrClear = clearCellRendererPixbufStockId
#endif

-- VVV Prop "stock-size"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@stock-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #stockSize
-- @
getCellRendererPixbufStockSize :: (MonadIO m, IsCellRendererPixbuf o) => o -> m Word32
getCellRendererPixbufStockSize obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "stock-size"

-- | Set the value of the “@stock-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #stockSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufStockSize :: (MonadIO m, IsCellRendererPixbuf o) => o -> Word32 -> m ()
setCellRendererPixbufStockSize obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "stock-size" val

-- | Construct a `GValueConstruct` with valid value for the “@stock-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufStockSize :: (IsCellRendererPixbuf o) => Word32 -> IO (GValueConstruct o)
constructCellRendererPixbufStockSize val = B.Properties.constructObjectPropertyUInt32 "stock-size" val

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufStockSizePropertyInfo
instance AttrInfo CellRendererPixbufStockSizePropertyInfo where
    type AttrAllowedOps CellRendererPixbufStockSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellRendererPixbufStockSizePropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufStockSizePropertyInfo = (~) Word32
    type AttrTransferTypeConstraint CellRendererPixbufStockSizePropertyInfo = (~) Word32
    type AttrTransferType CellRendererPixbufStockSizePropertyInfo = Word32
    type AttrGetType CellRendererPixbufStockSizePropertyInfo = Word32
    type AttrLabel CellRendererPixbufStockSizePropertyInfo = "stock-size"
    type AttrOrigin CellRendererPixbufStockSizePropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufStockSize
    attrSet = setCellRendererPixbufStockSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufStockSize
    attrClear = undefined
#endif

-- VVV Prop "surface"
   -- Type: TInterface (Name {namespace = "cairo", name = "Surface"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@surface@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellRendererPixbuf #surface
-- @
getCellRendererPixbufSurface :: (MonadIO m, IsCellRendererPixbuf o) => o -> m (Maybe Cairo.Surface.Surface)
getCellRendererPixbufSurface obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "surface" Cairo.Surface.Surface

-- | Set the value of the “@surface@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellRendererPixbuf [ #surface 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellRendererPixbufSurface :: (MonadIO m, IsCellRendererPixbuf o) => o -> Cairo.Surface.Surface -> m ()
setCellRendererPixbufSurface obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "surface" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@surface@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellRendererPixbufSurface :: (IsCellRendererPixbuf o) => Cairo.Surface.Surface -> IO (GValueConstruct o)
constructCellRendererPixbufSurface val = B.Properties.constructObjectPropertyBoxed "surface" (Just val)

-- | Set the value of the “@surface@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #surface
-- @
clearCellRendererPixbufSurface :: (MonadIO m, IsCellRendererPixbuf o) => o -> m ()
clearCellRendererPixbufSurface obj = liftIO $ B.Properties.setObjectPropertyBoxed obj "surface" (Nothing :: Maybe Cairo.Surface.Surface)

#if defined(ENABLE_OVERLOADING)
data CellRendererPixbufSurfacePropertyInfo
instance AttrInfo CellRendererPixbufSurfacePropertyInfo where
    type AttrAllowedOps CellRendererPixbufSurfacePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellRendererPixbufSurfacePropertyInfo = IsCellRendererPixbuf
    type AttrSetTypeConstraint CellRendererPixbufSurfacePropertyInfo = (~) Cairo.Surface.Surface
    type AttrTransferTypeConstraint CellRendererPixbufSurfacePropertyInfo = (~) Cairo.Surface.Surface
    type AttrTransferType CellRendererPixbufSurfacePropertyInfo = Cairo.Surface.Surface
    type AttrGetType CellRendererPixbufSurfacePropertyInfo = (Maybe Cairo.Surface.Surface)
    type AttrLabel CellRendererPixbufSurfacePropertyInfo = "surface"
    type AttrOrigin CellRendererPixbufSurfacePropertyInfo = CellRendererPixbuf
    attrGet = getCellRendererPixbufSurface
    attrSet = setCellRendererPixbufSurface
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellRendererPixbufSurface
    attrClear = clearCellRendererPixbufSurface
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellRendererPixbuf
type instance O.AttributeList CellRendererPixbuf = CellRendererPixbufAttributeList
type CellRendererPixbufAttributeList = ('[ '("cellBackground", Gtk.CellRenderer.CellRendererCellBackgroundPropertyInfo), '("cellBackgroundGdk", Gtk.CellRenderer.CellRendererCellBackgroundGdkPropertyInfo), '("cellBackgroundRgba", Gtk.CellRenderer.CellRendererCellBackgroundRgbaPropertyInfo), '("cellBackgroundSet", Gtk.CellRenderer.CellRendererCellBackgroundSetPropertyInfo), '("editing", Gtk.CellRenderer.CellRendererEditingPropertyInfo), '("followState", CellRendererPixbufFollowStatePropertyInfo), '("gicon", CellRendererPixbufGiconPropertyInfo), '("height", Gtk.CellRenderer.CellRendererHeightPropertyInfo), '("iconName", CellRendererPixbufIconNamePropertyInfo), '("isExpanded", Gtk.CellRenderer.CellRendererIsExpandedPropertyInfo), '("isExpander", Gtk.CellRenderer.CellRendererIsExpanderPropertyInfo), '("mode", Gtk.CellRenderer.CellRendererModePropertyInfo), '("pixbuf", CellRendererPixbufPixbufPropertyInfo), '("pixbufExpanderClosed", CellRendererPixbufPixbufExpanderClosedPropertyInfo), '("pixbufExpanderOpen", CellRendererPixbufPixbufExpanderOpenPropertyInfo), '("sensitive", Gtk.CellRenderer.CellRendererSensitivePropertyInfo), '("stockDetail", CellRendererPixbufStockDetailPropertyInfo), '("stockId", CellRendererPixbufStockIdPropertyInfo), '("stockSize", CellRendererPixbufStockSizePropertyInfo), '("surface", CellRendererPixbufSurfacePropertyInfo), '("visible", Gtk.CellRenderer.CellRendererVisiblePropertyInfo), '("width", Gtk.CellRenderer.CellRendererWidthPropertyInfo), '("xalign", Gtk.CellRenderer.CellRendererXalignPropertyInfo), '("xpad", Gtk.CellRenderer.CellRendererXpadPropertyInfo), '("yalign", Gtk.CellRenderer.CellRendererYalignPropertyInfo), '("ypad", Gtk.CellRenderer.CellRendererYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellRendererPixbufFollowState :: AttrLabelProxy "followState"
cellRendererPixbufFollowState = AttrLabelProxy

cellRendererPixbufGicon :: AttrLabelProxy "gicon"
cellRendererPixbufGicon = AttrLabelProxy

cellRendererPixbufIconName :: AttrLabelProxy "iconName"
cellRendererPixbufIconName = AttrLabelProxy

cellRendererPixbufPixbuf :: AttrLabelProxy "pixbuf"
cellRendererPixbufPixbuf = AttrLabelProxy

cellRendererPixbufPixbufExpanderClosed :: AttrLabelProxy "pixbufExpanderClosed"
cellRendererPixbufPixbufExpanderClosed = AttrLabelProxy

cellRendererPixbufPixbufExpanderOpen :: AttrLabelProxy "pixbufExpanderOpen"
cellRendererPixbufPixbufExpanderOpen = AttrLabelProxy

cellRendererPixbufStockDetail :: AttrLabelProxy "stockDetail"
cellRendererPixbufStockDetail = AttrLabelProxy

cellRendererPixbufStockId :: AttrLabelProxy "stockId"
cellRendererPixbufStockId = AttrLabelProxy

cellRendererPixbufStockSize :: AttrLabelProxy "stockSize"
cellRendererPixbufStockSize = AttrLabelProxy

cellRendererPixbufSurface :: AttrLabelProxy "surface"
cellRendererPixbufSurface = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellRendererPixbuf = CellRendererPixbufSignalList
type CellRendererPixbufSignalList = ('[ '("editingCanceled", Gtk.CellRenderer.CellRendererEditingCanceledSignalInfo), '("editingStarted", Gtk.CellRenderer.CellRendererEditingStartedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CellRendererPixbuf::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "CellRendererPixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_renderer_pixbuf_new" gtk_cell_renderer_pixbuf_new :: 
    IO (Ptr CellRendererPixbuf)

-- | Creates a new t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf'. Adjust rendering
-- parameters using object properties. Object properties can be set
-- globally (with @/g_object_set()/@). Also, with t'GI.Gtk.Objects.TreeViewColumn.TreeViewColumn', you
-- can bind a property to a value in a t'GI.Gtk.Interfaces.TreeModel.TreeModel'. For example, you
-- can bind the “pixbuf” property on the cell renderer to a pixbuf value
-- in the model, thus rendering a different image in each row of the
-- t'GI.Gtk.Objects.TreeView.TreeView'.
cellRendererPixbufNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellRendererPixbuf
    -- ^ __Returns:__ the new cell renderer
cellRendererPixbufNew  = liftIO $ do
    result <- gtk_cell_renderer_pixbuf_new
    checkUnexpectedReturnNULL "cellRendererPixbufNew" result
    result' <- (newObject CellRendererPixbuf) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

