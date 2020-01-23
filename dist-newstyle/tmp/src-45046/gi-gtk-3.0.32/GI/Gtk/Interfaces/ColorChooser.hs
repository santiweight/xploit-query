{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Interfaces.ColorChooser.ColorChooser' is an interface that is implemented by widgets
-- for choosing colors. Depending on the situation, colors may be
-- allowed to have alpha (translucency).
-- 
-- In GTK+, the main widgets that implement this interface are
-- t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget', t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog' and t'GI.Gtk.Objects.ColorButton.ColorButton'.
-- 
-- /Since: 3.4/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.ColorChooser
    ( 

-- * Exported types
    ColorChooser(..)                        ,
    noColorChooser                          ,
    IsColorChooser                          ,
    toColorChooser                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColorChooserMethod               ,
#endif


-- ** addPalette #method:addPalette#

#if defined(ENABLE_OVERLOADING)
    ColorChooserAddPaletteMethodInfo        ,
#endif
    colorChooserAddPalette                  ,


-- ** getRgba #method:getRgba#

#if defined(ENABLE_OVERLOADING)
    ColorChooserGetRgbaMethodInfo           ,
#endif
    colorChooserGetRgba                     ,


-- ** getUseAlpha #method:getUseAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorChooserGetUseAlphaMethodInfo       ,
#endif
    colorChooserGetUseAlpha                 ,


-- ** setRgba #method:setRgba#

#if defined(ENABLE_OVERLOADING)
    ColorChooserSetRgbaMethodInfo           ,
#endif
    colorChooserSetRgba                     ,


-- ** setUseAlpha #method:setUseAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorChooserSetUseAlphaMethodInfo       ,
#endif
    colorChooserSetUseAlpha                 ,




 -- * Properties
-- ** rgba #attr:rgba#
-- | The [rgba](#signal:rgba) property contains the currently selected color,
-- as a t'GI.Gdk.Structs.RGBA.RGBA' struct. The property can be set to change
-- the current selection programmatically.
-- 
-- /Since: 3.4/

#if defined(ENABLE_OVERLOADING)
    ColorChooserRgbaPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorChooserRgba                        ,
#endif
    constructColorChooserRgba               ,
    getColorChooserRgba                     ,
    setColorChooserRgba                     ,


-- ** useAlpha #attr:useAlpha#
-- | When [useAlpha](#signal:useAlpha) is 'P.True', colors may have alpha (translucency)
-- information. When it is 'P.False', the t'GI.Gdk.Structs.RGBA.RGBA' struct obtained
-- via the t'GI.Gtk.Interfaces.ColorChooser.ColorChooser':@/rgba/@ property will be forced to have
-- alpha == 1.
-- 
-- Implementations are expected to show alpha by rendering the color
-- over a non-uniform background (like a checkerboard pattern).
-- 
-- /Since: 3.4/

#if defined(ENABLE_OVERLOADING)
    ColorChooserUseAlphaPropertyInfo        ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorChooserUseAlpha                    ,
#endif
    constructColorChooserUseAlpha           ,
    getColorChooserUseAlpha                 ,
    setColorChooserUseAlpha                 ,




 -- * Signals
-- ** colorActivated #signal:colorActivated#

    C_ColorChooserColorActivatedCallback    ,
    ColorChooserColorActivatedCallback      ,
#if defined(ENABLE_OVERLOADING)
    ColorChooserColorActivatedSignalInfo    ,
#endif
    afterColorChooserColorActivated         ,
    genClosure_ColorChooserColorActivated   ,
    mk_ColorChooserColorActivatedCallback   ,
    noColorChooserColorActivatedCallback    ,
    onColorChooserColorActivated            ,
    wrap_ColorChooserColorActivatedCallback ,




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
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums

-- interface ColorChooser 
-- | Memory-managed wrapper type.
newtype ColorChooser = ColorChooser (ManagedPtr ColorChooser)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `ColorChooser`.
noColorChooser :: Maybe ColorChooser
noColorChooser = Nothing

-- signal ColorChooser::color-activated
-- | Emitted when a color is activated from the color chooser.
-- This usually happens when the user clicks a color swatch,
-- or a color is selected and the user presses one of the keys
-- Space, Shift+Space, Return or Enter.
-- 
-- /Since: 3.4/
type ColorChooserColorActivatedCallback =
    Gdk.RGBA.RGBA
    -- ^ /@color@/: the color
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ColorChooserColorActivatedCallback`@.
noColorChooserColorActivatedCallback :: Maybe ColorChooserColorActivatedCallback
noColorChooserColorActivatedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ColorChooserColorActivatedCallback =
    Ptr () ->                               -- object
    Ptr Gdk.RGBA.RGBA ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ColorChooserColorActivatedCallback`.
foreign import ccall "wrapper"
    mk_ColorChooserColorActivatedCallback :: C_ColorChooserColorActivatedCallback -> IO (FunPtr C_ColorChooserColorActivatedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ColorChooserColorActivated :: MonadIO m => ColorChooserColorActivatedCallback -> m (GClosure C_ColorChooserColorActivatedCallback)
genClosure_ColorChooserColorActivated cb = liftIO $ do
    let cb' = wrap_ColorChooserColorActivatedCallback cb
    mk_ColorChooserColorActivatedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ColorChooserColorActivatedCallback` into a `C_ColorChooserColorActivatedCallback`.
wrap_ColorChooserColorActivatedCallback ::
    ColorChooserColorActivatedCallback ->
    C_ColorChooserColorActivatedCallback
wrap_ColorChooserColorActivatedCallback _cb _ color _ = do
    B.ManagedPtr.withTransient Gdk.RGBA.RGBA color $ \color' -> do
        _cb  color'


-- | Connect a signal handler for the [colorActivated](#signal:colorActivated) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' colorChooser #colorActivated callback
-- @
-- 
-- 
onColorChooserColorActivated :: (IsColorChooser a, MonadIO m) => a -> ColorChooserColorActivatedCallback -> m SignalHandlerId
onColorChooserColorActivated obj cb = liftIO $ do
    let cb' = wrap_ColorChooserColorActivatedCallback cb
    cb'' <- mk_ColorChooserColorActivatedCallback cb'
    connectSignalFunPtr obj "color-activated" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [colorActivated](#signal:colorActivated) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' colorChooser #colorActivated callback
-- @
-- 
-- 
afterColorChooserColorActivated :: (IsColorChooser a, MonadIO m) => a -> ColorChooserColorActivatedCallback -> m SignalHandlerId
afterColorChooserColorActivated obj cb = liftIO $ do
    let cb' = wrap_ColorChooserColorActivatedCallback cb
    cb'' <- mk_ColorChooserColorActivatedCallback cb'
    connectSignalFunPtr obj "color-activated" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ColorChooserColorActivatedSignalInfo
instance SignalInfo ColorChooserColorActivatedSignalInfo where
    type HaskellCallbackType ColorChooserColorActivatedSignalInfo = ColorChooserColorActivatedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ColorChooserColorActivatedCallback cb
        cb'' <- mk_ColorChooserColorActivatedCallback cb'
        connectSignalFunPtr obj "color-activated" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorChooser = ColorChooserSignalList
type ColorChooserSignalList = ('[ '("colorActivated", ColorChooserColorActivatedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_color_chooser_get_type"
    c_gtk_color_chooser_get_type :: IO GType

instance GObject ColorChooser where
    gobjectType = c_gtk_color_chooser_get_type
    

-- | Convert 'ColorChooser' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ColorChooser where
    toGValue o = do
        gtype <- c_gtk_color_chooser_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ColorChooser)
        B.ManagedPtr.newObject ColorChooser ptr
        
    

-- | Type class for types which can be safely cast to `ColorChooser`, for instance with `toColorChooser`.
class (GObject o, O.IsDescendantOf ColorChooser o) => IsColorChooser o
instance (GObject o, O.IsDescendantOf ColorChooser o) => IsColorChooser o

instance O.HasParentTypes ColorChooser
type instance O.ParentTypes ColorChooser = '[GObject.Object.Object]

-- | Cast to `ColorChooser`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColorChooser :: (MonadIO m, IsColorChooser o) => o -> m ColorChooser
toColorChooser = liftIO . unsafeCastTo ColorChooser

-- VVV Prop "rgba"
   -- Type: TInterface (Name {namespace = "Gdk", name = "RGBA"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorChooser #rgba
-- @
getColorChooserRgba :: (MonadIO m, IsColorChooser o) => o -> m (Maybe Gdk.RGBA.RGBA)
getColorChooserRgba obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "rgba" Gdk.RGBA.RGBA

-- | Set the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorChooser [ #rgba 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorChooserRgba :: (MonadIO m, IsColorChooser o) => o -> Gdk.RGBA.RGBA -> m ()
setColorChooserRgba obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "rgba" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@rgba@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorChooserRgba :: (IsColorChooser o) => Gdk.RGBA.RGBA -> IO (GValueConstruct o)
constructColorChooserRgba val = B.Properties.constructObjectPropertyBoxed "rgba" (Just val)

#if defined(ENABLE_OVERLOADING)
data ColorChooserRgbaPropertyInfo
instance AttrInfo ColorChooserRgbaPropertyInfo where
    type AttrAllowedOps ColorChooserRgbaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorChooserRgbaPropertyInfo = IsColorChooser
    type AttrSetTypeConstraint ColorChooserRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferTypeConstraint ColorChooserRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferType ColorChooserRgbaPropertyInfo = Gdk.RGBA.RGBA
    type AttrGetType ColorChooserRgbaPropertyInfo = (Maybe Gdk.RGBA.RGBA)
    type AttrLabel ColorChooserRgbaPropertyInfo = "rgba"
    type AttrOrigin ColorChooserRgbaPropertyInfo = ColorChooser
    attrGet = getColorChooserRgba
    attrSet = setColorChooserRgba
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorChooserRgba
    attrClear = undefined
#endif

-- VVV Prop "use-alpha"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorChooser #useAlpha
-- @
getColorChooserUseAlpha :: (MonadIO m, IsColorChooser o) => o -> m Bool
getColorChooserUseAlpha obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-alpha"

-- | Set the value of the “@use-alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorChooser [ #useAlpha 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorChooserUseAlpha :: (MonadIO m, IsColorChooser o) => o -> Bool -> m ()
setColorChooserUseAlpha obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-alpha" val

-- | Construct a `GValueConstruct` with valid value for the “@use-alpha@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorChooserUseAlpha :: (IsColorChooser o) => Bool -> IO (GValueConstruct o)
constructColorChooserUseAlpha val = B.Properties.constructObjectPropertyBool "use-alpha" val

#if defined(ENABLE_OVERLOADING)
data ColorChooserUseAlphaPropertyInfo
instance AttrInfo ColorChooserUseAlphaPropertyInfo where
    type AttrAllowedOps ColorChooserUseAlphaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorChooserUseAlphaPropertyInfo = IsColorChooser
    type AttrSetTypeConstraint ColorChooserUseAlphaPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ColorChooserUseAlphaPropertyInfo = (~) Bool
    type AttrTransferType ColorChooserUseAlphaPropertyInfo = Bool
    type AttrGetType ColorChooserUseAlphaPropertyInfo = Bool
    type AttrLabel ColorChooserUseAlphaPropertyInfo = "use-alpha"
    type AttrOrigin ColorChooserUseAlphaPropertyInfo = ColorChooser
    attrGet = getColorChooserUseAlpha
    attrSet = setColorChooserUseAlpha
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorChooserUseAlpha
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorChooser
type instance O.AttributeList ColorChooser = ColorChooserAttributeList
type ColorChooserAttributeList = ('[ '("rgba", ColorChooserRgbaPropertyInfo), '("useAlpha", ColorChooserUseAlphaPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
colorChooserRgba :: AttrLabelProxy "rgba"
colorChooserRgba = AttrLabelProxy

colorChooserUseAlpha :: AttrLabelProxy "useAlpha"
colorChooserUseAlpha = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveColorChooserMethod (t :: Symbol) (o :: *) :: * where
    ResolveColorChooserMethod "addPalette" o = ColorChooserAddPaletteMethodInfo
    ResolveColorChooserMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorChooserMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorChooserMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorChooserMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorChooserMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorChooserMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorChooserMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorChooserMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorChooserMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorChooserMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorChooserMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorChooserMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorChooserMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorChooserMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorChooserMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorChooserMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorChooserMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorChooserMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorChooserMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorChooserMethod "getRgba" o = ColorChooserGetRgbaMethodInfo
    ResolveColorChooserMethod "getUseAlpha" o = ColorChooserGetUseAlphaMethodInfo
    ResolveColorChooserMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorChooserMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorChooserMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorChooserMethod "setRgba" o = ColorChooserSetRgbaMethodInfo
    ResolveColorChooserMethod "setUseAlpha" o = ColorChooserSetUseAlphaMethodInfo
    ResolveColorChooserMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorChooserMethod t ColorChooser, O.MethodInfo info ColorChooser p) => OL.IsLabel t (ColorChooser -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method ColorChooser::add_palette
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%GTK_ORIENTATION_HORIZONTAL if the palette should\n    be displayed in rows, %GTK_ORIENTATION_VERTICAL for columns"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "colors_per_line"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the number of colors to show in each row/column"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_colors"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the total number of elements in @colors"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "colors"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 3
--                 (TInterface Name { namespace = "Gdk" , name = "RGBA" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the colors of the palette, or %NULL"
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
--              { argCName = "n_colors"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the total number of elements in @colors"
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

foreign import ccall "gtk_color_chooser_add_palette" gtk_color_chooser_add_palette :: 
    Ptr ColorChooser ->                     -- chooser : TInterface (Name {namespace = "Gtk", name = "ColorChooser"})
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    Int32 ->                                -- colors_per_line : TBasicType TInt
    Int32 ->                                -- n_colors : TBasicType TInt
    Ptr Gdk.RGBA.RGBA ->                    -- colors : TCArray False (-1) 3 (TInterface (Name {namespace = "Gdk", name = "RGBA"}))
    IO ()

-- | Adds a palette to the color chooser. If /@orientation@/ is horizontal,
-- the colors are grouped in rows, with /@colorsPerLine@/ colors
-- in each row. If /@horizontal@/ is 'P.False', the colors are grouped
-- in columns instead.
-- 
-- The default color palette of t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget' has
-- 27 colors, organized in columns of 3 colors. The default gray
-- palette has 9 grays in a single row.
-- 
-- The layout of the color chooser widget works best when the
-- palettes have 9-10 columns.
-- 
-- Calling this function for the first time has the
-- side effect of removing the default color and gray palettes
-- from the color chooser.
-- 
-- If /@colors@/ is 'P.Nothing', removes all previously added palettes.
-- 
-- /Since: 3.4/
colorChooserAddPalette ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooser a) =>
    a
    -- ^ /@chooser@/: a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
    -> Gtk.Enums.Orientation
    -- ^ /@orientation@/: 'GI.Gtk.Enums.OrientationHorizontal' if the palette should
    --     be displayed in rows, 'GI.Gtk.Enums.OrientationVertical' for columns
    -> Int32
    -- ^ /@colorsPerLine@/: the number of colors to show in each row\/column
    -> Maybe ([Gdk.RGBA.RGBA])
    -- ^ /@colors@/: the colors of the palette, or 'P.Nothing'
    -> m ()
colorChooserAddPalette chooser orientation colorsPerLine colors = liftIO $ do
    let nColors = case colors of
            Nothing -> 0
            Just jColors -> fromIntegral $ length jColors
    chooser' <- unsafeManagedPtrCastPtr chooser
    let orientation' = (fromIntegral . fromEnum) orientation
    maybeColors <- case colors of
        Nothing -> return nullPtr
        Just jColors -> do
            jColors' <- mapM unsafeManagedPtrGetPtr jColors
            jColors'' <- packBlockArray 32 jColors'
            return jColors''
    gtk_color_chooser_add_palette chooser' orientation' colorsPerLine nColors maybeColors
    touchManagedPtr chooser
    whenJust colors (mapM_ touchManagedPtr)
    freeMem maybeColors
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserAddPaletteMethodInfo
instance (signature ~ (Gtk.Enums.Orientation -> Int32 -> Maybe ([Gdk.RGBA.RGBA]) -> m ()), MonadIO m, IsColorChooser a) => O.MethodInfo ColorChooserAddPaletteMethodInfo a signature where
    overloadedMethod = colorChooserAddPalette

#endif

-- method ColorChooser::get_rgba
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA to fill in with the current color"
--                 , sinceVersion = Nothing
--                 }
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

foreign import ccall "gtk_color_chooser_get_rgba" gtk_color_chooser_get_rgba :: 
    Ptr ColorChooser ->                     -- chooser : TInterface (Name {namespace = "Gtk", name = "ColorChooser"})
    Ptr Gdk.RGBA.RGBA ->                    -- color : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Gets the currently-selected color.
-- 
-- /Since: 3.4/
colorChooserGetRgba ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooser a) =>
    a
    -- ^ /@chooser@/: a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
    -> m (Gdk.RGBA.RGBA)
colorChooserGetRgba chooser = liftIO $ do
    chooser' <- unsafeManagedPtrCastPtr chooser
    color <- callocBoxedBytes 32 :: IO (Ptr Gdk.RGBA.RGBA)
    gtk_color_chooser_get_rgba chooser' color
    color' <- (wrapBoxed Gdk.RGBA.RGBA) color
    touchManagedPtr chooser
    return color'

#if defined(ENABLE_OVERLOADING)
data ColorChooserGetRgbaMethodInfo
instance (signature ~ (m (Gdk.RGBA.RGBA)), MonadIO m, IsColorChooser a) => O.MethodInfo ColorChooserGetRgbaMethodInfo a signature where
    overloadedMethod = colorChooserGetRgba

#endif

-- method ColorChooser::get_use_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorChooser" , sinceVersion = Nothing }
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

foreign import ccall "gtk_color_chooser_get_use_alpha" gtk_color_chooser_get_use_alpha :: 
    Ptr ColorChooser ->                     -- chooser : TInterface (Name {namespace = "Gtk", name = "ColorChooser"})
    IO CInt

-- | Returns whether the color chooser shows the alpha channel.
-- 
-- /Since: 3.4/
colorChooserGetUseAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooser a) =>
    a
    -- ^ /@chooser@/: a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the color chooser uses the alpha channel,
    --     'P.False' if not
colorChooserGetUseAlpha chooser = liftIO $ do
    chooser' <- unsafeManagedPtrCastPtr chooser
    result <- gtk_color_chooser_get_use_alpha chooser'
    let result' = (/= 0) result
    touchManagedPtr chooser
    return result'

#if defined(ENABLE_OVERLOADING)
data ColorChooserGetUseAlphaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsColorChooser a) => O.MethodInfo ColorChooserGetUseAlphaMethodInfo a signature where
    overloadedMethod = colorChooserGetUseAlpha

#endif

-- method ColorChooser::set_rgba
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new color" , sinceVersion = Nothing }
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

foreign import ccall "gtk_color_chooser_set_rgba" gtk_color_chooser_set_rgba :: 
    Ptr ColorChooser ->                     -- chooser : TInterface (Name {namespace = "Gtk", name = "ColorChooser"})
    Ptr Gdk.RGBA.RGBA ->                    -- color : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Sets the color.
-- 
-- /Since: 3.4/
colorChooserSetRgba ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooser a) =>
    a
    -- ^ /@chooser@/: a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
    -> Gdk.RGBA.RGBA
    -- ^ /@color@/: the new color
    -> m ()
colorChooserSetRgba chooser color = liftIO $ do
    chooser' <- unsafeManagedPtrCastPtr chooser
    color' <- unsafeManagedPtrGetPtr color
    gtk_color_chooser_set_rgba chooser' color'
    touchManagedPtr chooser
    touchManagedPtr color
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserSetRgbaMethodInfo
instance (signature ~ (Gdk.RGBA.RGBA -> m ()), MonadIO m, IsColorChooser a) => O.MethodInfo ColorChooserSetRgbaMethodInfo a signature where
    overloadedMethod = colorChooserSetRgba

#endif

-- method ColorChooser::set_use_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chooser"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorChooser" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorChooser" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_alpha"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if color chooser should use alpha channel, %FALSE if not"
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

foreign import ccall "gtk_color_chooser_set_use_alpha" gtk_color_chooser_set_use_alpha :: 
    Ptr ColorChooser ->                     -- chooser : TInterface (Name {namespace = "Gtk", name = "ColorChooser"})
    CInt ->                                 -- use_alpha : TBasicType TBoolean
    IO ()

-- | Sets whether or not the color chooser should use the alpha channel.
-- 
-- /Since: 3.4/
colorChooserSetUseAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooser a) =>
    a
    -- ^ /@chooser@/: a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
    -> Bool
    -- ^ /@useAlpha@/: 'P.True' if color chooser should use alpha channel, 'P.False' if not
    -> m ()
colorChooserSetUseAlpha chooser useAlpha = liftIO $ do
    chooser' <- unsafeManagedPtrCastPtr chooser
    let useAlpha' = (fromIntegral . fromEnum) useAlpha
    gtk_color_chooser_set_use_alpha chooser' useAlpha'
    touchManagedPtr chooser
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserSetUseAlphaMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsColorChooser a) => O.MethodInfo ColorChooserSetUseAlphaMethodInfo a signature where
    overloadedMethod = colorChooserSetUseAlpha

#endif

