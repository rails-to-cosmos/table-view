{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a URI request.
-- 
-- A t'GI.WebKit2.Objects.URIRequest.URIRequest' can be created with a URI using the
-- 'GI.WebKit2.Objects.URIRequest.uRIRequestNew' method, and you can get the URI of an
-- existing request with the 'GI.WebKit2.Objects.URIRequest.uRIRequestGetUri' one.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.URIRequest
    ( 

-- * Exported types
    URIRequest(..)                          ,
    IsURIRequest                            ,
    toURIRequest                            ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getHttpHeaders]("GI.WebKit2.Objects.URIRequest#g:method:getHttpHeaders"), [getHttpMethod]("GI.WebKit2.Objects.URIRequest#g:method:getHttpMethod"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getUri]("GI.WebKit2.Objects.URIRequest#g:method:getUri").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setUri]("GI.WebKit2.Objects.URIRequest#g:method:setUri").

#if defined(ENABLE_OVERLOADING)
    ResolveURIRequestMethod                 ,
#endif

-- ** getHttpHeaders #method:getHttpHeaders#

#if defined(ENABLE_OVERLOADING)
    URIRequestGetHttpHeadersMethodInfo      ,
#endif
    uRIRequestGetHttpHeaders                ,


-- ** getHttpMethod #method:getHttpMethod#

#if defined(ENABLE_OVERLOADING)
    URIRequestGetHttpMethodMethodInfo       ,
#endif
    uRIRequestGetHttpMethod                 ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    URIRequestGetUriMethodInfo              ,
#endif
    uRIRequestGetUri                        ,


-- ** new #method:new#

    uRIRequestNew                           ,


-- ** setUri #method:setUri#

#if defined(ENABLE_OVERLOADING)
    URIRequestSetUriMethodInfo              ,
#endif
    uRIRequestSetUri                        ,




 -- * Properties


-- ** uri #attr:uri#
-- | The URI to which the request will be made.

#if defined(ENABLE_OVERLOADING)
    URIRequestUriPropertyInfo               ,
#endif
    constructURIRequestUri                  ,
    getURIRequestUri                        ,
    setURIRequestUri                        ,
#if defined(ENABLE_OVERLOADING)
    uRIRequestUri                           ,
#endif




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
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders

#endif

-- | Memory-managed wrapper type.
newtype URIRequest = URIRequest (SP.ManagedPtr URIRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype URIRequest where
    toManagedPtr (URIRequest p) = p

foreign import ccall "webkit_uri_request_get_type"
    c_webkit_uri_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject URIRequest where
    glibType = c_webkit_uri_request_get_type

instance B.Types.GObject URIRequest

-- | Type class for types which can be safely cast to t'URIRequest', for instance with `toURIRequest`.
class (SP.GObject o, O.IsDescendantOf URIRequest o) => IsURIRequest o
instance (SP.GObject o, O.IsDescendantOf URIRequest o) => IsURIRequest o

instance O.HasParentTypes URIRequest
type instance O.ParentTypes URIRequest = '[GObject.Object.Object]

-- | Cast to t'URIRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toURIRequest :: (MIO.MonadIO m, IsURIRequest o) => o -> m URIRequest
toURIRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo URIRequest

-- | Convert t'URIRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe URIRequest) where
    gvalueGType_ = c_webkit_uri_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr URIRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr URIRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject URIRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveURIRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveURIRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveURIRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveURIRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveURIRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveURIRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveURIRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveURIRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveURIRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveURIRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveURIRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveURIRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveURIRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveURIRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveURIRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveURIRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveURIRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveURIRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveURIRequestMethod "getHttpHeaders" o = URIRequestGetHttpHeadersMethodInfo
    ResolveURIRequestMethod "getHttpMethod" o = URIRequestGetHttpMethodMethodInfo
    ResolveURIRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveURIRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveURIRequestMethod "getUri" o = URIRequestGetUriMethodInfo
    ResolveURIRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveURIRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveURIRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveURIRequestMethod "setUri" o = URIRequestSetUriMethodInfo
    ResolveURIRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveURIRequestMethod t URIRequest, O.OverloadedMethod info URIRequest p) => OL.IsLabel t (URIRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveURIRequestMethod t URIRequest, O.OverloadedMethod info URIRequest p, R.HasField t URIRequest p) => R.HasField t URIRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveURIRequestMethod t URIRequest, O.OverloadedMethodInfo info URIRequest) => OL.IsLabel t (O.MethodProxy info URIRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIRequest #uri
-- @
getURIRequestUri :: (MonadIO m, IsURIRequest o) => o -> m T.Text
getURIRequestUri obj = MIO.liftIO $ checkUnexpectedNothing "getURIRequestUri" $ B.Properties.getObjectPropertyString obj "uri"

-- | Set the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' uRIRequest [ #uri 'Data.GI.Base.Attributes.:=' value ]
-- @
setURIRequestUri :: (MonadIO m, IsURIRequest o) => o -> T.Text -> m ()
setURIRequestUri obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "uri" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@uri@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructURIRequestUri :: (IsURIRequest o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructURIRequestUri val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "uri" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data URIRequestUriPropertyInfo
instance AttrInfo URIRequestUriPropertyInfo where
    type AttrAllowedOps URIRequestUriPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint URIRequestUriPropertyInfo = IsURIRequest
    type AttrSetTypeConstraint URIRequestUriPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint URIRequestUriPropertyInfo = (~) T.Text
    type AttrTransferType URIRequestUriPropertyInfo = T.Text
    type AttrGetType URIRequestUriPropertyInfo = T.Text
    type AttrLabel URIRequestUriPropertyInfo = "uri"
    type AttrOrigin URIRequestUriPropertyInfo = URIRequest
    attrGet = getURIRequestUri
    attrSet = setURIRequestUri
    attrPut = setURIRequestUri
    attrTransfer _ v = do
        return v
    attrConstruct = constructURIRequestUri
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIRequest.uri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIRequest.html#g:attr:uri"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList URIRequest
type instance O.AttributeList URIRequest = URIRequestAttributeList
type URIRequestAttributeList = ('[ '("uri", URIRequestUriPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
uRIRequestUri :: AttrLabelProxy "uri"
uRIRequestUri = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList URIRequest = URIRequestSignalList
type URIRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method URIRequest::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an URI" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIRequest" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_request_new" webkit_uri_request_new :: 
    CString ->                              -- uri : TBasicType TUTF8
    IO (Ptr URIRequest)

-- | Creates a new t'GI.WebKit2.Objects.URIRequest.URIRequest' for the given URI.
uRIRequestNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@uri@/: an URI
    -> m URIRequest
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.URIRequest.URIRequest'
uRIRequestNew uri = liftIO $ do
    uri' <- textToCString uri
    result <- webkit_uri_request_new uri'
    checkUnexpectedReturnNULL "uRIRequestNew" result
    result' <- (wrapObject URIRequest) result
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method URIRequest::get_http_headers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIRequest" }
--           , argCType = Just "WebKitURIRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIRequest"
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
--               (TInterface Name { namespace = "Soup" , name = "MessageHeaders" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_request_get_http_headers" webkit_uri_request_get_http_headers :: 
    Ptr URIRequest ->                       -- request : TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
    IO (Ptr Soup.MessageHeaders.MessageHeaders)

-- | Get the HTTP headers of a t'GI.WebKit2.Objects.URIRequest.URIRequest' as a t'GI.Soup.Structs.MessageHeaders.MessageHeaders'.
uRIRequestGetHttpHeaders ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> m (Maybe Soup.MessageHeaders.MessageHeaders)
    -- ^ __Returns:__ a t'GI.Soup.Structs.MessageHeaders.MessageHeaders' with the HTTP headers of /@request@/
    --    or 'P.Nothing' if /@request@/ is not an HTTP request.
uRIRequestGetHttpHeaders request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_request_get_http_headers request'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Soup.MessageHeaders.MessageHeaders) result'
        return result''
    touchManagedPtr request
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data URIRequestGetHttpHeadersMethodInfo
instance (signature ~ (m (Maybe Soup.MessageHeaders.MessageHeaders)), MonadIO m, IsURIRequest a) => O.OverloadedMethod URIRequestGetHttpHeadersMethodInfo a signature where
    overloadedMethod = uRIRequestGetHttpHeaders

instance O.OverloadedMethodInfo URIRequestGetHttpHeadersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIRequest.uRIRequestGetHttpHeaders",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIRequest.html#v:uRIRequestGetHttpHeaders"
        })


#endif

-- method URIRequest::get_http_method
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIRequest" }
--           , argCType = Just "WebKitURIRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIRequest"
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

foreign import ccall "webkit_uri_request_get_http_method" webkit_uri_request_get_http_method :: 
    Ptr URIRequest ->                       -- request : TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
    IO CString

-- | Get the HTTP method of the t'GI.WebKit2.Objects.URIRequest.URIRequest'.
-- 
-- /Since: 2.12/
uRIRequestGetHttpMethod ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the HTTP method of the t'GI.WebKit2.Objects.URIRequest.URIRequest' or 'P.Nothing' if /@request@/ is not
    --    an HTTP request.
uRIRequestGetHttpMethod request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_request_get_http_method request'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr request
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data URIRequestGetHttpMethodMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsURIRequest a) => O.OverloadedMethod URIRequestGetHttpMethodMethodInfo a signature where
    overloadedMethod = uRIRequestGetHttpMethod

instance O.OverloadedMethodInfo URIRequestGetHttpMethodMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIRequest.uRIRequestGetHttpMethod",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIRequest.html#v:uRIRequestGetHttpMethod"
        })


#endif

-- method URIRequest::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIRequest" }
--           , argCType = Just "WebKitURIRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIRequest"
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

foreign import ccall "webkit_uri_request_get_uri" webkit_uri_request_get_uri :: 
    Ptr URIRequest ->                       -- request : TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
    IO CString

-- | Obtains the request URI.
uRIRequestGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> m T.Text
    -- ^ __Returns:__ request URI, as a string.
uRIRequestGetUri request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_request_get_uri request'
    checkUnexpectedReturnNULL "uRIRequestGetUri" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URIRequestGetUriMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURIRequest a) => O.OverloadedMethod URIRequestGetUriMethodInfo a signature where
    overloadedMethod = uRIRequestGetUri

instance O.OverloadedMethodInfo URIRequestGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIRequest.uRIRequestGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIRequest.html#v:uRIRequestGetUri"
        })


#endif

-- method URIRequest::set_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIRequest" }
--           , argCType = Just "WebKitURIRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIRequest"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an URI" , sinceVersion = Nothing }
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

foreign import ccall "webkit_uri_request_set_uri" webkit_uri_request_set_uri :: 
    Ptr URIRequest ->                       -- request : TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
    CString ->                              -- uri : TBasicType TUTF8
    IO ()

-- | Set the URI of /@request@/
uRIRequestSetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> T.Text
    -- ^ /@uri@/: an URI
    -> m ()
uRIRequestSetUri request uri = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    uri' <- textToCString uri
    webkit_uri_request_set_uri request' uri'
    touchManagedPtr request
    freeMem uri'
    return ()

#if defined(ENABLE_OVERLOADING)
data URIRequestSetUriMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsURIRequest a) => O.OverloadedMethod URIRequestSetUriMethodInfo a signature where
    overloadedMethod = uRIRequestSetUri

instance O.OverloadedMethodInfo URIRequestSetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIRequest.uRIRequestSetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIRequest.html#v:uRIRequestSetUri"
        })


#endif


