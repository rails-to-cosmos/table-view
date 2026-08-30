{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A request to open a color chooser.
-- 
-- Whenever the user interacts with an \<input type=\'color\' \/>
-- HTML element, WebKit will need to show a dialog to choose a color. For that
-- to happen in a general way, instead of just opening a t'GI.Gtk.Interfaces.ColorChooser.ColorChooser'
-- (which might be not desirable in some cases, which could prefer to use their
-- own color chooser dialog), WebKit will fire the
-- [WebView::runColorChooser]("GI.WebKit2.Objects.WebView#g:signal:runColorChooser") signal with a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
-- object, which will allow the client application to specify the color to be
-- selected, to inspect the details of the request (e.g. to get initial color)
-- and to cancel the request, in case nothing was selected.
-- 
-- In case the client application does not wish to handle this signal,
-- WebKit will provide a default handler which will asynchronously run
-- a regular t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog' for the user to interact with.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.ColorChooserRequest
    ( 

-- * Exported types
    ColorChooserRequest(..)                 ,
    IsColorChooserRequest                   ,
    toColorChooserRequest                   ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [cancel]("GI.WebKit2.Objects.ColorChooserRequest#g:method:cancel"), [finish]("GI.WebKit2.Objects.ColorChooserRequest#g:method:finish"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getElementRectangle]("GI.WebKit2.Objects.ColorChooserRequest#g:method:getElementRectangle"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRgba]("GI.WebKit2.Objects.ColorChooserRequest#g:method:getRgba").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setRgba]("GI.WebKit2.Objects.ColorChooserRequest#g:method:setRgba").

#if defined(ENABLE_OVERLOADING)
    ResolveColorChooserRequestMethod        ,
#endif

-- ** cancel #method:cancel#

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestCancelMethodInfo     ,
#endif
    colorChooserRequestCancel               ,


-- ** finish #method:finish#

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestFinishMethodInfo     ,
#endif
    colorChooserRequestFinish               ,


-- ** getElementRectangle #method:getElementRectangle#

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestGetElementRectangleMethodInfo,
#endif
    colorChooserRequestGetElementRectangle  ,


-- ** getRgba #method:getRgba#

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestGetRgbaMethodInfo    ,
#endif
    colorChooserRequestGetRgba              ,


-- ** setRgba #method:setRgba#

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestSetRgbaMethodInfo    ,
#endif
    colorChooserRequestSetRgba              ,




 -- * Properties


-- ** rgba #attr:rgba#
-- | The t'GI.Gdk.Structs.RGBA.RGBA' color of the request
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestRgbaPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorChooserRequestRgba                 ,
#endif
    constructColorChooserRequestRgba        ,
    getColorChooserRequestRgba              ,
    setColorChooserRequestRgba              ,




 -- * Signals


-- ** finished #signal:finished#

    ColorChooserRequestFinishedCallback     ,
#if defined(ENABLE_OVERLOADING)
    ColorChooserRequestFinishedSignalInfo   ,
#endif
    afterColorChooserRequestFinished        ,
    onColorChooserRequestFinished           ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.BasicTypes as B.Types
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GArray as B.GArray
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GHashTable as B.GHT
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Coerce as Coerce
import qualified Data.Text as T
import qualified Data.Kind as DK
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL
import qualified GHC.Records as R
import qualified Data.Word as DW
import qualified Data.Int as DI
import qualified System.Posix.Types as SPT
import qualified Foreign.C.Types as FCT

-- Workaround for https://gitlab.haskell.org/ghc/ghc/-/issues/23392
#if MIN_VERSION_base(4,18,0)
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle

#endif

-- | Memory-managed wrapper type.
newtype ColorChooserRequest = ColorChooserRequest (SP.ManagedPtr ColorChooserRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype ColorChooserRequest where
    toManagedPtr (ColorChooserRequest p) = p

foreign import ccall "webkit_color_chooser_request_get_type"
    c_webkit_color_chooser_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject ColorChooserRequest where
    glibType = c_webkit_color_chooser_request_get_type

instance B.Types.GObject ColorChooserRequest

-- | Type class for types which can be safely cast to t'ColorChooserRequest', for instance with `toColorChooserRequest`.
class (SP.GObject o, O.IsDescendantOf ColorChooserRequest o) => IsColorChooserRequest o
instance (SP.GObject o, O.IsDescendantOf ColorChooserRequest o) => IsColorChooserRequest o

instance O.HasParentTypes ColorChooserRequest
type instance O.ParentTypes ColorChooserRequest = '[GObject.Object.Object]

-- | Cast to t'ColorChooserRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toColorChooserRequest :: (MIO.MonadIO m, IsColorChooserRequest o) => o -> m ColorChooserRequest
toColorChooserRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo ColorChooserRequest

-- | Convert t'ColorChooserRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ColorChooserRequest) where
    gvalueGType_ = c_webkit_color_chooser_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr ColorChooserRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr ColorChooserRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject ColorChooserRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveColorChooserRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveColorChooserRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorChooserRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorChooserRequestMethod "cancel" o = ColorChooserRequestCancelMethodInfo
    ResolveColorChooserRequestMethod "finish" o = ColorChooserRequestFinishMethodInfo
    ResolveColorChooserRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorChooserRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorChooserRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorChooserRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorChooserRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorChooserRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorChooserRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorChooserRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorChooserRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorChooserRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorChooserRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorChooserRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorChooserRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorChooserRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorChooserRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorChooserRequestMethod "getElementRectangle" o = ColorChooserRequestGetElementRectangleMethodInfo
    ResolveColorChooserRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorChooserRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorChooserRequestMethod "getRgba" o = ColorChooserRequestGetRgbaMethodInfo
    ResolveColorChooserRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorChooserRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorChooserRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorChooserRequestMethod "setRgba" o = ColorChooserRequestSetRgbaMethodInfo
    ResolveColorChooserRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorChooserRequestMethod t ColorChooserRequest, O.OverloadedMethod info ColorChooserRequest p) => OL.IsLabel t (ColorChooserRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveColorChooserRequestMethod t ColorChooserRequest, O.OverloadedMethod info ColorChooserRequest p, R.HasField t ColorChooserRequest p) => R.HasField t ColorChooserRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveColorChooserRequestMethod t ColorChooserRequest, O.OverloadedMethodInfo info ColorChooserRequest) => OL.IsLabel t (O.MethodProxy info ColorChooserRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal ColorChooserRequest::finished
-- | Emitted when the /@request@/ finishes. This signal can be emitted because the
-- user completed the /@request@/ calling 'GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestFinish',
-- or cancelled it with 'GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestCancel' or because the
-- color input element is removed from the DOM.
-- 
-- /Since: 2.8/
type ColorChooserRequestFinishedCallback =
    IO ()

type C_ColorChooserRequestFinishedCallback =
    Ptr ColorChooserRequest ->              -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ColorChooserRequestFinishedCallback`.
foreign import ccall "wrapper"
    mk_ColorChooserRequestFinishedCallback :: C_ColorChooserRequestFinishedCallback -> IO (FunPtr C_ColorChooserRequestFinishedCallback)

wrap_ColorChooserRequestFinishedCallback :: 
    GObject a => (a -> ColorChooserRequestFinishedCallback) ->
    C_ColorChooserRequestFinishedCallback
wrap_ColorChooserRequestFinishedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' colorChooserRequest #finished callback
-- @
-- 
-- 
onColorChooserRequestFinished :: (IsColorChooserRequest a, MonadIO m) => a -> ((?self :: a) => ColorChooserRequestFinishedCallback) -> m SignalHandlerId
onColorChooserRequestFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_ColorChooserRequestFinishedCallback wrapped
    wrapped'' <- mk_ColorChooserRequestFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' colorChooserRequest #finished callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterColorChooserRequestFinished :: (IsColorChooserRequest a, MonadIO m) => a -> ((?self :: a) => ColorChooserRequestFinishedCallback) -> m SignalHandlerId
afterColorChooserRequestFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_ColorChooserRequestFinishedCallback wrapped
    wrapped'' <- mk_ColorChooserRequestFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestFinishedSignalInfo
instance SignalInfo ColorChooserRequestFinishedSignalInfo where
    type HaskellCallbackType ColorChooserRequestFinishedSignalInfo = ColorChooserRequestFinishedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ColorChooserRequestFinishedCallback cb
        cb'' <- mk_ColorChooserRequestFinishedCallback cb'
        connectSignalFunPtr obj "finished" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest::finished"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#g:signal:finished"})

#endif

-- VVV Prop "rgba"
   -- Type: TInterface (Name {namespace = "Gdk", name = "RGBA"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorChooserRequest #rgba
-- @
getColorChooserRequestRgba :: (MonadIO m, IsColorChooserRequest o) => o -> m (Maybe Gdk.RGBA.RGBA)
getColorChooserRequestRgba obj = MIO.liftIO $ B.Properties.getObjectPropertyBoxed obj "rgba" Gdk.RGBA.RGBA

-- | Set the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorChooserRequest [ #rgba 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorChooserRequestRgba :: (MonadIO m, IsColorChooserRequest o) => o -> Gdk.RGBA.RGBA -> m ()
setColorChooserRequestRgba obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBoxed obj "rgba" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@rgba@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorChooserRequestRgba :: (IsColorChooserRequest o, MIO.MonadIO m) => Gdk.RGBA.RGBA -> m (GValueConstruct o)
constructColorChooserRequestRgba val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBoxed "rgba" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestRgbaPropertyInfo
instance AttrInfo ColorChooserRequestRgbaPropertyInfo where
    type AttrAllowedOps ColorChooserRequestRgbaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorChooserRequestRgbaPropertyInfo = IsColorChooserRequest
    type AttrSetTypeConstraint ColorChooserRequestRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferTypeConstraint ColorChooserRequestRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferType ColorChooserRequestRgbaPropertyInfo = Gdk.RGBA.RGBA
    type AttrGetType ColorChooserRequestRgbaPropertyInfo = (Maybe Gdk.RGBA.RGBA)
    type AttrLabel ColorChooserRequestRgbaPropertyInfo = "rgba"
    type AttrOrigin ColorChooserRequestRgbaPropertyInfo = ColorChooserRequest
    attrGet = getColorChooserRequestRgba
    attrSet = setColorChooserRequestRgba
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorChooserRequestRgba
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.rgba"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#g:attr:rgba"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorChooserRequest
type instance O.AttributeList ColorChooserRequest = ColorChooserRequestAttributeList
type ColorChooserRequestAttributeList = ('[ '("rgba", ColorChooserRequestRgbaPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
colorChooserRequestRgba :: AttrLabelProxy "rgba"
colorChooserRequestRgba = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorChooserRequest = ColorChooserRequestSignalList
type ColorChooserRequestSignalList = ('[ '("finished", ColorChooserRequestFinishedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method ColorChooserRequest::cancel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ColorChooserRequest" }
--           , argCType = Just "WebKitColorChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitColorChooserRequest"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_color_chooser_request_cancel" webkit_color_chooser_request_cancel :: 
    Ptr ColorChooserRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "ColorChooserRequest"})
    IO ()

-- | Cancels /@request@/ and the input element changes to use the initial color.
-- 
-- Cancels /@request@/ and the input element changes to use the initial color
-- it has before the request started.
-- The signal [ColorChooserRequest::finished]("GI.WebKit2.Objects.ColorChooserRequest#g:signal:finished")
-- is emitted to notify that the request has finished.
-- 
-- /Since: 2.8/
colorChooserRequestCancel ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
    -> m ()
colorChooserRequestCancel request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_color_chooser_request_cancel request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestCancelMethodInfo
instance (signature ~ (m ()), MonadIO m, IsColorChooserRequest a) => O.OverloadedMethod ColorChooserRequestCancelMethodInfo a signature where
    overloadedMethod = colorChooserRequestCancel

instance O.OverloadedMethodInfo ColorChooserRequestCancelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestCancel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#v:colorChooserRequestCancel"
        })


#endif

-- method ColorChooserRequest::finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ColorChooserRequest" }
--           , argCType = Just "WebKitColorChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitColorChooserRequest"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_color_chooser_request_finish" webkit_color_chooser_request_finish :: 
    Ptr ColorChooserRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "ColorChooserRequest"})
    IO ()

-- | Finishes /@request@/ and the input element keeps the current value of
-- [ColorChooserRequest:rgba]("GI.WebKit2.Objects.ColorChooserRequest#g:attr:rgba").
-- 
-- Finishes /@request@/ and the input element keeps the current value of
-- [ColorChooserRequest:rgba]("GI.WebKit2.Objects.ColorChooserRequest#g:attr:rgba").
-- The signal [ColorChooserRequest::finished]("GI.WebKit2.Objects.ColorChooserRequest#g:signal:finished")
-- is emitted to notify that the request has finished.
-- 
-- /Since: 2.8/
colorChooserRequestFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
    -> m ()
colorChooserRequestFinish request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_color_chooser_request_finish request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestFinishMethodInfo
instance (signature ~ (m ()), MonadIO m, IsColorChooserRequest a) => O.OverloadedMethod ColorChooserRequestFinishMethodInfo a signature where
    overloadedMethod = colorChooserRequestFinish

instance O.OverloadedMethodInfo ColorChooserRequestFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#v:colorChooserRequestFinish"
        })


#endif

-- method ColorChooserRequest::get_element_rectangle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ColorChooserRequest" }
--           , argCType = Just "WebKitColorChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitColorChooserRequest"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , argCType = Just "GdkRectangle*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GdkRectangle to fill in with the element area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_color_chooser_request_get_element_rectangle" webkit_color_chooser_request_get_element_rectangle :: 
    Ptr ColorChooserRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "ColorChooserRequest"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Gets the bounding box of the color input element.
-- 
-- /Since: 2.8/
colorChooserRequestGetElementRectangle ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
    -> m (Gdk.Rectangle.Rectangle)
colorChooserRequestGetElementRectangle request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    rect <- SP.callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    webkit_color_chooser_request_get_element_rectangle request' rect
    rect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rect
    touchManagedPtr request
    return rect'

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestGetElementRectangleMethodInfo
instance (signature ~ (m (Gdk.Rectangle.Rectangle)), MonadIO m, IsColorChooserRequest a) => O.OverloadedMethod ColorChooserRequestGetElementRectangleMethodInfo a signature where
    overloadedMethod = colorChooserRequestGetElementRectangle

instance O.OverloadedMethodInfo ColorChooserRequestGetElementRectangleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestGetElementRectangle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#v:colorChooserRequestGetElementRectangle"
        })


#endif

-- method ColorChooserRequest::get_rgba
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ColorChooserRequest" }
--           , argCType = Just "WebKitColorChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitColorChooserRequest"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "GdkRGBA*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA to fill in with the current color."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_color_chooser_request_get_rgba" webkit_color_chooser_request_get_rgba :: 
    Ptr ColorChooserRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "ColorChooserRequest"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Gets the current t'GI.Gdk.Structs.RGBA.RGBA' color of /@request@/
-- 
-- /Since: 2.8/
colorChooserRequestGetRgba ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
    -> m (Gdk.RGBA.RGBA)
colorChooserRequestGetRgba request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    rgba <- SP.callocBoxedBytes 32 :: IO (Ptr Gdk.RGBA.RGBA)
    webkit_color_chooser_request_get_rgba request' rgba
    rgba' <- (wrapBoxed Gdk.RGBA.RGBA) rgba
    touchManagedPtr request
    return rgba'

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestGetRgbaMethodInfo
instance (signature ~ (m (Gdk.RGBA.RGBA)), MonadIO m, IsColorChooserRequest a) => O.OverloadedMethod ColorChooserRequestGetRgbaMethodInfo a signature where
    overloadedMethod = colorChooserRequestGetRgba

instance O.OverloadedMethodInfo ColorChooserRequestGetRgbaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestGetRgba",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#v:colorChooserRequestGetRgba"
        })


#endif

-- method ColorChooserRequest::set_rgba
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ColorChooserRequest" }
--           , argCType = Just "WebKitColorChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "const GdkRGBA*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a pointer #GdkRGBA" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_color_chooser_request_set_rgba" webkit_color_chooser_request_set_rgba :: 
    Ptr ColorChooserRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "ColorChooserRequest"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Sets the current t'GI.Gdk.Structs.RGBA.RGBA' color of /@request@/
-- 
-- /Since: 2.8/
colorChooserRequestSetRgba ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> Gdk.RGBA.RGBA
    -- ^ /@rgba@/: a pointer t'GI.Gdk.Structs.RGBA.RGBA'
    -> m ()
colorChooserRequestSetRgba request rgba = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    rgba' <- unsafeManagedPtrGetPtr rgba
    webkit_color_chooser_request_set_rgba request' rgba'
    touchManagedPtr request
    touchManagedPtr rgba
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorChooserRequestSetRgbaMethodInfo
instance (signature ~ (Gdk.RGBA.RGBA -> m ()), MonadIO m, IsColorChooserRequest a) => O.OverloadedMethod ColorChooserRequestSetRgbaMethodInfo a signature where
    overloadedMethod = colorChooserRequestSetRgba

instance O.OverloadedMethodInfo ColorChooserRequestSetRgbaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ColorChooserRequest.colorChooserRequestSetRgba",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ColorChooserRequest.html#v:colorChooserRequestSetRgba"
        })


#endif


