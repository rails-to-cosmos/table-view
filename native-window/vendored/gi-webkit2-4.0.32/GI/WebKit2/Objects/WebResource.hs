{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a resource at the end of a URI.
-- 
-- A t'GI.WebKit2.Objects.WebResource.WebResource' encapsulates content for each resource at the
-- end of a particular URI. For example, one t'GI.WebKit2.Objects.WebResource.WebResource' will
-- be created for each separate image and stylesheet when a page is
-- loaded.
-- 
-- You can access the response and the URI for a given
-- t'GI.WebKit2.Objects.WebResource.WebResource', using 'GI.WebKit2.Objects.WebResource.webResourceGetUri' and
-- 'GI.WebKit2.Objects.WebResource.webResourceGetResponse', as well as the raw data, using
-- 'GI.WebKit2.Objects.WebResource.webResourceGetData'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebResource
    ( 

-- * Exported types
    WebResource(..)                         ,
    IsWebResource                           ,
    toWebResource                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.WebKit2.Objects.WebResource#g:method:getData"), [getDataFinish]("GI.WebKit2.Objects.WebResource#g:method:getDataFinish"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getResponse]("GI.WebKit2.Objects.WebResource#g:method:getResponse"), [getUri]("GI.WebKit2.Objects.WebResource#g:method:getUri").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWebResourceMethod                ,
#endif

-- ** getData #method:getData#

#if defined(ENABLE_OVERLOADING)
    WebResourceGetDataMethodInfo            ,
#endif
    webResourceGetData                      ,


-- ** getDataFinish #method:getDataFinish#

#if defined(ENABLE_OVERLOADING)
    WebResourceGetDataFinishMethodInfo      ,
#endif
    webResourceGetDataFinish                ,


-- ** getResponse #method:getResponse#

#if defined(ENABLE_OVERLOADING)
    WebResourceGetResponseMethodInfo        ,
#endif
    webResourceGetResponse                  ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    WebResourceGetUriMethodInfo             ,
#endif
    webResourceGetUri                       ,




 -- * Properties


-- ** response #attr:response#
-- | The t'GI.WebKit2.Objects.URIResponse.URIResponse' associated with this resource.

#if defined(ENABLE_OVERLOADING)
    WebResourceResponsePropertyInfo         ,
#endif
    getWebResourceResponse                  ,
#if defined(ENABLE_OVERLOADING)
    webResourceResponse                     ,
#endif


-- ** uri #attr:uri#
-- | The current active URI of the t'GI.WebKit2.Objects.WebResource.WebResource'.
-- See 'GI.WebKit2.Objects.WebResource.webResourceGetUri' for more details.

#if defined(ENABLE_OVERLOADING)
    WebResourceUriPropertyInfo              ,
#endif
    getWebResourceUri                       ,
#if defined(ENABLE_OVERLOADING)
    webResourceUri                          ,
#endif




 -- * Signals


-- ** failed #signal:failed#

    WebResourceFailedCallback               ,
#if defined(ENABLE_OVERLOADING)
    WebResourceFailedSignalInfo             ,
#endif
    afterWebResourceFailed                  ,
    onWebResourceFailed                     ,


-- ** failedWithTlsErrors #signal:failedWithTlsErrors#

    WebResourceFailedWithTlsErrorsCallback  ,
#if defined(ENABLE_OVERLOADING)
    WebResourceFailedWithTlsErrorsSignalInfo,
#endif
    afterWebResourceFailedWithTlsErrors     ,
    onWebResourceFailedWithTlsErrors        ,


-- ** finished #signal:finished#

    WebResourceFinishedCallback             ,
#if defined(ENABLE_OVERLOADING)
    WebResourceFinishedSignalInfo           ,
#endif
    afterWebResourceFinished                ,
    onWebResourceFinished                   ,


-- ** receivedData #signal:receivedData#

    WebResourceReceivedDataCallback         ,
#if defined(ENABLE_OVERLOADING)
    WebResourceReceivedDataSignalInfo       ,
#endif
    afterWebResourceReceivedData            ,
    onWebResourceReceivedData               ,


-- ** sentRequest #signal:sentRequest#

    WebResourceSentRequestCallback          ,
#if defined(ENABLE_OVERLOADING)
    WebResourceSentRequestSignalInfo        ,
#endif
    afterWebResourceSentRequest             ,
    onWebResourceSentRequest                ,




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
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse

#endif

-- | Memory-managed wrapper type.
newtype WebResource = WebResource (SP.ManagedPtr WebResource)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebResource where
    toManagedPtr (WebResource p) = p

foreign import ccall "webkit_web_resource_get_type"
    c_webkit_web_resource_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebResource where
    glibType = c_webkit_web_resource_get_type

instance B.Types.GObject WebResource

-- | Type class for types which can be safely cast to t'WebResource', for instance with `toWebResource`.
class (SP.GObject o, O.IsDescendantOf WebResource o) => IsWebResource o
instance (SP.GObject o, O.IsDescendantOf WebResource o) => IsWebResource o

instance O.HasParentTypes WebResource
type instance O.ParentTypes WebResource = '[GObject.Object.Object]

-- | Cast to t'WebResource', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebResource :: (MIO.MonadIO m, IsWebResource o) => o -> m WebResource
toWebResource = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebResource

-- | Convert t'WebResource' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebResource) where
    gvalueGType_ = c_webkit_web_resource_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebResource)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebResource)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebResource ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebResourceMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebResourceMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebResourceMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebResourceMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebResourceMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebResourceMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebResourceMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebResourceMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebResourceMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebResourceMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebResourceMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebResourceMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebResourceMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebResourceMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebResourceMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebResourceMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebResourceMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebResourceMethod "getData" o = WebResourceGetDataMethodInfo
    ResolveWebResourceMethod "getDataFinish" o = WebResourceGetDataFinishMethodInfo
    ResolveWebResourceMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebResourceMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebResourceMethod "getResponse" o = WebResourceGetResponseMethodInfo
    ResolveWebResourceMethod "getUri" o = WebResourceGetUriMethodInfo
    ResolveWebResourceMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebResourceMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebResourceMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebResourceMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebResourceMethod t WebResource, O.OverloadedMethod info WebResource p) => OL.IsLabel t (WebResource -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebResourceMethod t WebResource, O.OverloadedMethod info WebResource p, R.HasField t WebResource p) => R.HasField t WebResource p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebResourceMethod t WebResource, O.OverloadedMethodInfo info WebResource) => OL.IsLabel t (O.MethodProxy info WebResource) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal WebResource::failed
-- | This signal is emitted when an error occurs during the resource
-- load operation.
type WebResourceFailedCallback =
    GError
    -- ^ /@error@/: the t'GError' that was triggered
    -> IO ()

type C_WebResourceFailedCallback =
    Ptr WebResource ->                      -- object
    Ptr GError ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebResourceFailedCallback`.
foreign import ccall "wrapper"
    mk_WebResourceFailedCallback :: C_WebResourceFailedCallback -> IO (FunPtr C_WebResourceFailedCallback)

wrap_WebResourceFailedCallback :: 
    GObject a => (a -> WebResourceFailedCallback) ->
    C_WebResourceFailedCallback
wrap_WebResourceFailedCallback gi'cb gi'selfPtr error_ _ = do
    error_' <- (newBoxed GError) error_
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  error_'


-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webResource #failed callback
-- @
-- 
-- 
onWebResourceFailed :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFailedCallback) -> m SignalHandlerId
onWebResourceFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFailedCallback wrapped
    wrapped'' <- mk_WebResourceFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webResource #failed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebResourceFailed :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFailedCallback) -> m SignalHandlerId
afterWebResourceFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFailedCallback wrapped
    wrapped'' <- mk_WebResourceFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebResourceFailedSignalInfo
instance SignalInfo WebResourceFailedSignalInfo where
    type HaskellCallbackType WebResourceFailedSignalInfo = WebResourceFailedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebResourceFailedCallback cb
        cb'' <- mk_WebResourceFailedCallback cb'
        connectSignalFunPtr obj "failed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource::failed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:signal:failed"})

#endif

-- signal WebResource::failed-with-tls-errors
-- | This signal is emitted when a TLS error occurs during the resource load operation.
-- 
-- /Since: 2.8/
type WebResourceFailedWithTlsErrorsCallback =
    Gio.TlsCertificate.TlsCertificate
    -- ^ /@certificate@/: a t'GI.Gio.Objects.TlsCertificate.TlsCertificate'
    -> [Gio.Flags.TlsCertificateFlags]
    -- ^ /@errors@/: a t'GI.Gio.Flags.TlsCertificateFlags' with the verification status of /@certificate@/
    -> IO ()

type C_WebResourceFailedWithTlsErrorsCallback =
    Ptr WebResource ->                      -- object
    Ptr Gio.TlsCertificate.TlsCertificate ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebResourceFailedWithTlsErrorsCallback`.
foreign import ccall "wrapper"
    mk_WebResourceFailedWithTlsErrorsCallback :: C_WebResourceFailedWithTlsErrorsCallback -> IO (FunPtr C_WebResourceFailedWithTlsErrorsCallback)

wrap_WebResourceFailedWithTlsErrorsCallback :: 
    GObject a => (a -> WebResourceFailedWithTlsErrorsCallback) ->
    C_WebResourceFailedWithTlsErrorsCallback
wrap_WebResourceFailedWithTlsErrorsCallback gi'cb gi'selfPtr certificate errors _ = do
    certificate' <- (newObject Gio.TlsCertificate.TlsCertificate) certificate
    let errors' = wordToGFlags errors
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  certificate' errors'


-- | Connect a signal handler for the [failedWithTlsErrors](#signal:failedWithTlsErrors) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webResource #failedWithTlsErrors callback
-- @
-- 
-- 
onWebResourceFailedWithTlsErrors :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFailedWithTlsErrorsCallback) -> m SignalHandlerId
onWebResourceFailedWithTlsErrors obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFailedWithTlsErrorsCallback wrapped
    wrapped'' <- mk_WebResourceFailedWithTlsErrorsCallback wrapped'
    connectSignalFunPtr obj "failed-with-tls-errors" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [failedWithTlsErrors](#signal:failedWithTlsErrors) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webResource #failedWithTlsErrors callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebResourceFailedWithTlsErrors :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFailedWithTlsErrorsCallback) -> m SignalHandlerId
afterWebResourceFailedWithTlsErrors obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFailedWithTlsErrorsCallback wrapped
    wrapped'' <- mk_WebResourceFailedWithTlsErrorsCallback wrapped'
    connectSignalFunPtr obj "failed-with-tls-errors" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebResourceFailedWithTlsErrorsSignalInfo
instance SignalInfo WebResourceFailedWithTlsErrorsSignalInfo where
    type HaskellCallbackType WebResourceFailedWithTlsErrorsSignalInfo = WebResourceFailedWithTlsErrorsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebResourceFailedWithTlsErrorsCallback cb
        cb'' <- mk_WebResourceFailedWithTlsErrorsCallback cb'
        connectSignalFunPtr obj "failed-with-tls-errors" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource::failed-with-tls-errors"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:signal:failedWithTlsErrors"})

#endif

-- signal WebResource::finished
-- | This signal is emitted when the resource load finishes successfully
-- or due to an error. In case of errors [WebResource::failed]("GI.WebKit2.Objects.WebResource#g:signal:failed") signal
-- is emitted before this one.
type WebResourceFinishedCallback =
    IO ()

type C_WebResourceFinishedCallback =
    Ptr WebResource ->                      -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebResourceFinishedCallback`.
foreign import ccall "wrapper"
    mk_WebResourceFinishedCallback :: C_WebResourceFinishedCallback -> IO (FunPtr C_WebResourceFinishedCallback)

wrap_WebResourceFinishedCallback :: 
    GObject a => (a -> WebResourceFinishedCallback) ->
    C_WebResourceFinishedCallback
wrap_WebResourceFinishedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webResource #finished callback
-- @
-- 
-- 
onWebResourceFinished :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFinishedCallback) -> m SignalHandlerId
onWebResourceFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFinishedCallback wrapped
    wrapped'' <- mk_WebResourceFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webResource #finished callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebResourceFinished :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceFinishedCallback) -> m SignalHandlerId
afterWebResourceFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceFinishedCallback wrapped
    wrapped'' <- mk_WebResourceFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebResourceFinishedSignalInfo
instance SignalInfo WebResourceFinishedSignalInfo where
    type HaskellCallbackType WebResourceFinishedSignalInfo = WebResourceFinishedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebResourceFinishedCallback cb
        cb'' <- mk_WebResourceFinishedCallback cb'
        connectSignalFunPtr obj "finished" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource::finished"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:signal:finished"})

#endif

-- signal WebResource::received-data
{-# DEPRECATED WebResourceReceivedDataCallback ["(Since version 2.40)"] #-}
-- | This signal is emitted after response is received,
-- every time new data has been received. It\'s
-- useful to know the progress of the resource load operation.
-- 
-- This is signal is deprecated since version 2.40 and it\'s never emitted.
type WebResourceReceivedDataCallback =
    Word64
    -- ^ /@dataLength@/: the length of data received in bytes
    -> IO ()

type C_WebResourceReceivedDataCallback =
    Ptr WebResource ->                      -- object
    Word64 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebResourceReceivedDataCallback`.
foreign import ccall "wrapper"
    mk_WebResourceReceivedDataCallback :: C_WebResourceReceivedDataCallback -> IO (FunPtr C_WebResourceReceivedDataCallback)

wrap_WebResourceReceivedDataCallback :: 
    GObject a => (a -> WebResourceReceivedDataCallback) ->
    C_WebResourceReceivedDataCallback
wrap_WebResourceReceivedDataCallback gi'cb gi'selfPtr dataLength _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  dataLength


-- | Connect a signal handler for the [receivedData](#signal:receivedData) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webResource #receivedData callback
-- @
-- 
-- 
onWebResourceReceivedData :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceReceivedDataCallback) -> m SignalHandlerId
onWebResourceReceivedData obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceReceivedDataCallback wrapped
    wrapped'' <- mk_WebResourceReceivedDataCallback wrapped'
    connectSignalFunPtr obj "received-data" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [receivedData](#signal:receivedData) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webResource #receivedData callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebResourceReceivedData :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceReceivedDataCallback) -> m SignalHandlerId
afterWebResourceReceivedData obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceReceivedDataCallback wrapped
    wrapped'' <- mk_WebResourceReceivedDataCallback wrapped'
    connectSignalFunPtr obj "received-data" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebResourceReceivedDataSignalInfo
instance SignalInfo WebResourceReceivedDataSignalInfo where
    type HaskellCallbackType WebResourceReceivedDataSignalInfo = WebResourceReceivedDataCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebResourceReceivedDataCallback cb
        cb'' <- mk_WebResourceReceivedDataCallback cb'
        connectSignalFunPtr obj "received-data" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource::received-data"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:signal:receivedData"})

#endif

-- signal WebResource::sent-request
-- | This signal is emitted when /@request@/ has been sent to the
-- server. In case of a server redirection this signal is
-- emitted again with the /@request@/ argument containing the new
-- request sent to the server due to the redirection and the
-- /@redirectedResponse@/ parameter containing the response
-- received by the server for the initial request.
type WebResourceSentRequestCallback =
    WebKit2.URIRequest.URIRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> WebKit2.URIResponse.URIResponse
    -- ^ /@redirectedResponse@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse', or 'P.Nothing'
    -> IO ()

type C_WebResourceSentRequestCallback =
    Ptr WebResource ->                      -- object
    Ptr WebKit2.URIRequest.URIRequest ->
    Ptr WebKit2.URIResponse.URIResponse ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebResourceSentRequestCallback`.
foreign import ccall "wrapper"
    mk_WebResourceSentRequestCallback :: C_WebResourceSentRequestCallback -> IO (FunPtr C_WebResourceSentRequestCallback)

wrap_WebResourceSentRequestCallback :: 
    GObject a => (a -> WebResourceSentRequestCallback) ->
    C_WebResourceSentRequestCallback
wrap_WebResourceSentRequestCallback gi'cb gi'selfPtr request redirectedResponse _ = do
    request' <- (newObject WebKit2.URIRequest.URIRequest) request
    redirectedResponse' <- (newObject WebKit2.URIResponse.URIResponse) redirectedResponse
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request' redirectedResponse'


-- | Connect a signal handler for the [sentRequest](#signal:sentRequest) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webResource #sentRequest callback
-- @
-- 
-- 
onWebResourceSentRequest :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceSentRequestCallback) -> m SignalHandlerId
onWebResourceSentRequest obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceSentRequestCallback wrapped
    wrapped'' <- mk_WebResourceSentRequestCallback wrapped'
    connectSignalFunPtr obj "sent-request" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [sentRequest](#signal:sentRequest) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webResource #sentRequest callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebResourceSentRequest :: (IsWebResource a, MonadIO m) => a -> ((?self :: a) => WebResourceSentRequestCallback) -> m SignalHandlerId
afterWebResourceSentRequest obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebResourceSentRequestCallback wrapped
    wrapped'' <- mk_WebResourceSentRequestCallback wrapped'
    connectSignalFunPtr obj "sent-request" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebResourceSentRequestSignalInfo
instance SignalInfo WebResourceSentRequestSignalInfo where
    type HaskellCallbackType WebResourceSentRequestSignalInfo = WebResourceSentRequestCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebResourceSentRequestCallback cb
        cb'' <- mk_WebResourceSentRequestCallback cb'
        connectSignalFunPtr obj "sent-request" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource::sent-request"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:signal:sentRequest"})

#endif

-- VVV Prop "response"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@response@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webResource #response
-- @
getWebResourceResponse :: (MonadIO m, IsWebResource o) => o -> m (Maybe WebKit2.URIResponse.URIResponse)
getWebResourceResponse obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "response" WebKit2.URIResponse.URIResponse

#if defined(ENABLE_OVERLOADING)
data WebResourceResponsePropertyInfo
instance AttrInfo WebResourceResponsePropertyInfo where
    type AttrAllowedOps WebResourceResponsePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebResourceResponsePropertyInfo = IsWebResource
    type AttrSetTypeConstraint WebResourceResponsePropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebResourceResponsePropertyInfo = (~) ()
    type AttrTransferType WebResourceResponsePropertyInfo = ()
    type AttrGetType WebResourceResponsePropertyInfo = (Maybe WebKit2.URIResponse.URIResponse)
    type AttrLabel WebResourceResponsePropertyInfo = "response"
    type AttrOrigin WebResourceResponsePropertyInfo = WebResource
    attrGet = getWebResourceResponse
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.response"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:attr:response"
        })
#endif

-- VVV Prop "uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webResource #uri
-- @
getWebResourceUri :: (MonadIO m, IsWebResource o) => o -> m T.Text
getWebResourceUri obj = MIO.liftIO $ checkUnexpectedNothing "getWebResourceUri" $ B.Properties.getObjectPropertyString obj "uri"

#if defined(ENABLE_OVERLOADING)
data WebResourceUriPropertyInfo
instance AttrInfo WebResourceUriPropertyInfo where
    type AttrAllowedOps WebResourceUriPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebResourceUriPropertyInfo = IsWebResource
    type AttrSetTypeConstraint WebResourceUriPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebResourceUriPropertyInfo = (~) ()
    type AttrTransferType WebResourceUriPropertyInfo = ()
    type AttrGetType WebResourceUriPropertyInfo = T.Text
    type AttrLabel WebResourceUriPropertyInfo = "uri"
    type AttrOrigin WebResourceUriPropertyInfo = WebResource
    attrGet = getWebResourceUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.uri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#g:attr:uri"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebResource
type instance O.AttributeList WebResource = WebResourceAttributeList
type WebResourceAttributeList = ('[ '("response", WebResourceResponsePropertyInfo), '("uri", WebResourceUriPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
webResourceResponse :: AttrLabelProxy "response"
webResourceResponse = AttrLabelProxy

webResourceUri :: AttrLabelProxy "uri"
webResourceUri = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebResource = WebResourceSignalList
type WebResourceSignalList = ('[ '("failed", WebResourceFailedSignalInfo), '("failedWithTlsErrors", WebResourceFailedWithTlsErrorsSignalInfo), '("finished", WebResourceFinishedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("receivedData", WebResourceReceivedDataSignalInfo), '("sentRequest", WebResourceSentRequestSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebResource::get_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "resource"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebResource" }
--           , argCType = Just "WebKitWebResource*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebResource"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 3
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_web_resource_get_data" webkit_web_resource_get_data :: 
    Ptr WebResource ->                      -- resource : TInterface (Name {namespace = "WebKit2", name = "WebResource"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get the raw data for /@resource@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebResource.webResourceGetDataFinish' to get the result of the operation.
webResourceGetData ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebResource a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@resource@/: a t'GI.WebKit2.Objects.WebResource.WebResource'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
webResourceGetData resource cancellable callback = liftIO $ do
    resource' <- unsafeManagedPtrCastPtr resource
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_resource_get_data resource' maybeCancellable maybeCallback userData
    touchManagedPtr resource
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebResourceGetDataMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebResource a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebResourceGetDataMethodInfo a signature where
    overloadedMethod = webResourceGetData

instance O.OverloadedMethodInfo WebResourceGetDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.webResourceGetData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#v:webResourceGetData"
        })


#endif

-- method WebResource::get_data_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "resource"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebResource" }
--           , argCType = Just "WebKitWebResource*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebResource"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for the length of the resource data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TSize
--              , argCType = Just "gsize*"
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just "return location for the length of the resource data"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TCArray False (-1) 2 (TBasicType TUInt8))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_resource_get_data_finish" webkit_web_resource_get_data_finish :: 
    Ptr WebResource ->                      -- resource : TInterface (Name {namespace = "WebKit2", name = "WebResource"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr FCT.CSize ->                        -- length : TBasicType TSize
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Word8)

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebResource.webResourceGetData'.
webResourceGetDataFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebResource a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@resource@/: a t'GI.WebKit2.Objects.WebResource.WebResource'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ByteString
    -- ^ __Returns:__ a
    --    string with the data of /@resource@/, or 'P.Nothing' in case of error. if /@length@/
    --    is not 'P.Nothing', the size of the data will be assigned to it. /(Can throw 'Data.GI.Base.GError.GError')/
webResourceGetDataFinish resource result_ = liftIO $ do
    resource' <- unsafeManagedPtrCastPtr resource
    result_' <- unsafeManagedPtrCastPtr result_
    length_ <- allocMem :: IO (Ptr FCT.CSize)
    onException (do
        result <- propagateGError $ webkit_web_resource_get_data_finish resource' result_' length_
        length_' <- peek length_
        checkUnexpectedReturnNULL "webResourceGetDataFinish" result
        result' <- (unpackByteStringWithLength length_') result
        freeMem result
        touchManagedPtr resource
        touchManagedPtr result_
        freeMem length_
        return result'
     ) (do
        freeMem length_
     )

#if defined(ENABLE_OVERLOADING)
data WebResourceGetDataFinishMethodInfo
instance (signature ~ (b -> m ByteString), MonadIO m, IsWebResource a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebResourceGetDataFinishMethodInfo a signature where
    overloadedMethod = webResourceGetDataFinish

instance O.OverloadedMethodInfo WebResourceGetDataFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.webResourceGetDataFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#v:webResourceGetDataFinish"
        })


#endif

-- method WebResource::get_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "resource"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebResource" }
--           , argCType = Just "WebKitWebResource*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebResource"
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
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "URIResponse" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_resource_get_response" webkit_web_resource_get_response :: 
    Ptr WebResource ->                      -- resource : TInterface (Name {namespace = "WebKit2", name = "WebResource"})
    IO (Ptr WebKit2.URIResponse.URIResponse)

-- | Retrieves the t'GI.WebKit2.Objects.URIResponse.URIResponse' of the resource load operation.
-- 
-- This method returns 'P.Nothing' if called before the response
-- is received from the server. You can connect to notify[response](#g:signal:response)
-- signal to be notified when the response is received.
webResourceGetResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebResource a) =>
    a
    -- ^ /@resource@/: a t'GI.WebKit2.Objects.WebResource.WebResource'
    -> m (Maybe WebKit2.URIResponse.URIResponse)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.URIResponse.URIResponse', or 'P.Nothing' if
    --     the response hasn\'t been received yet.
webResourceGetResponse resource = liftIO $ do
    resource' <- unsafeManagedPtrCastPtr resource
    result <- webkit_web_resource_get_response resource'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.URIResponse.URIResponse) result'
        return result''
    touchManagedPtr resource
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebResourceGetResponseMethodInfo
instance (signature ~ (m (Maybe WebKit2.URIResponse.URIResponse)), MonadIO m, IsWebResource a) => O.OverloadedMethod WebResourceGetResponseMethodInfo a signature where
    overloadedMethod = webResourceGetResponse

instance O.OverloadedMethodInfo WebResourceGetResponseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.webResourceGetResponse",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#v:webResourceGetResponse"
        })


#endif

-- method WebResource::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "resource"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebResource" }
--           , argCType = Just "WebKitWebResource*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebResource"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_resource_get_uri" webkit_web_resource_get_uri :: 
    Ptr WebResource ->                      -- resource : TInterface (Name {namespace = "WebKit2", name = "WebResource"})
    IO CString

-- | Returns the current active URI of /@resource@/.
-- 
-- The active URI might change during
-- a load operation:
-- 
-- \<orderedlist>
-- \<listitem>\<para>
--   When the resource load starts, the active URI is the requested URI
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   When the initial request is sent to the server, [WebResource::sentRequest]("GI.WebKit2.Objects.WebResource#g:signal:sentRequest")
--   signal is emitted without a redirected response, the active URI is the URI of
--   the request sent to the server.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   In case of a server redirection, [WebResource::sentRequest]("GI.WebKit2.Objects.WebResource#g:signal:sentRequest") signal
--   is emitted again with a redirected response, the active URI is the URI the request
--   was redirected to.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   When the response is received from the server, the active URI is the final
--   one and it will not change again.
-- \<\/para>\<\/listitem>
-- \<\/orderedlist>
-- 
-- You can monitor the active URI by connecting to the notify[uri](#g:signal:uri)
-- signal of /@resource@/.
webResourceGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebResource a) =>
    a
    -- ^ /@resource@/: a t'GI.WebKit2.Objects.WebResource.WebResource'
    -> m T.Text
    -- ^ __Returns:__ the current active URI of /@resource@/
webResourceGetUri resource = liftIO $ do
    resource' <- unsafeManagedPtrCastPtr resource
    result <- webkit_web_resource_get_uri resource'
    checkUnexpectedReturnNULL "webResourceGetUri" result
    result' <- cstringToText result
    touchManagedPtr resource
    return result'

#if defined(ENABLE_OVERLOADING)
data WebResourceGetUriMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsWebResource a) => O.OverloadedMethod WebResourceGetUriMethodInfo a signature where
    overloadedMethod = webResourceGetUri

instance O.OverloadedMethodInfo WebResourceGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebResource.webResourceGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebResource.html#v:webResourceGetUri"
        })


#endif


