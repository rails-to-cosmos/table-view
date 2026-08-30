{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a URI scheme response.
-- 
-- If you register a particular URI scheme in a t'GI.WebKit2.Objects.WebContext.WebContext',
-- using 'GI.WebKit2.Objects.WebContext.webContextRegisterUriScheme', you have to provide
-- a t'GI.WebKit2.Callbacks.URISchemeRequestCallback'. After that, when a URI response
-- is made with that particular scheme, your callback will be
-- called. There you will be able to provide more response parameters
-- when the methods and properties of a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest' is not
-- enough.
-- 
-- When you finished setting up your t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse', call
-- @/webkit_uri_request_finish_with_response()/@ with it to return the response.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.URISchemeResponse
    ( 

-- * Exported types
    URISchemeResponse(..)                   ,
    IsURISchemeResponse                     ,
    toURISchemeResponse                     ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setContentType]("GI.WebKit2.Objects.URISchemeResponse#g:method:setContentType"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setHttpHeaders]("GI.WebKit2.Objects.URISchemeResponse#g:method:setHttpHeaders"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setStatus]("GI.WebKit2.Objects.URISchemeResponse#g:method:setStatus").

#if defined(ENABLE_OVERLOADING)
    ResolveURISchemeResponseMethod          ,
#endif

-- ** new #method:new#

    uRISchemeResponseNew                    ,


-- ** setContentType #method:setContentType#

#if defined(ENABLE_OVERLOADING)
    URISchemeResponseSetContentTypeMethodInfo,
#endif
    uRISchemeResponseSetContentType         ,


-- ** setHttpHeaders #method:setHttpHeaders#

#if defined(ENABLE_OVERLOADING)
    URISchemeResponseSetHttpHeadersMethodInfo,
#endif
    uRISchemeResponseSetHttpHeaders         ,


-- ** setStatus #method:setStatus#

#if defined(ENABLE_OVERLOADING)
    URISchemeResponseSetStatusMethodInfo    ,
#endif
    uRISchemeResponseSetStatus              ,




 -- * Properties


-- ** stream #attr:stream#
-- | The input stream to read from.
-- 
-- /Since: 2.36/

#if defined(ENABLE_OVERLOADING)
    URISchemeResponseStreamPropertyInfo     ,
#endif
    constructURISchemeResponseStream        ,
#if defined(ENABLE_OVERLOADING)
    uRISchemeResponseStream                 ,
#endif


-- ** streamLength #attr:streamLength#
-- | The input stream length in bytes, @-1@ for unknown length.
-- 
-- /Since: 2.36/

#if defined(ENABLE_OVERLOADING)
    URISchemeResponseStreamLengthPropertyInfo,
#endif
    constructURISchemeResponseStreamLength  ,
#if defined(ENABLE_OVERLOADING)
    uRISchemeResponseStreamLength           ,
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
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders

#endif

-- | Memory-managed wrapper type.
newtype URISchemeResponse = URISchemeResponse (SP.ManagedPtr URISchemeResponse)
    deriving (Eq)

instance SP.ManagedPtrNewtype URISchemeResponse where
    toManagedPtr (URISchemeResponse p) = p

foreign import ccall "webkit_uri_scheme_response_get_type"
    c_webkit_uri_scheme_response_get_type :: IO B.Types.GType

instance B.Types.TypedObject URISchemeResponse where
    glibType = c_webkit_uri_scheme_response_get_type

instance B.Types.GObject URISchemeResponse

-- | Type class for types which can be safely cast to t'URISchemeResponse', for instance with `toURISchemeResponse`.
class (SP.GObject o, O.IsDescendantOf URISchemeResponse o) => IsURISchemeResponse o
instance (SP.GObject o, O.IsDescendantOf URISchemeResponse o) => IsURISchemeResponse o

instance O.HasParentTypes URISchemeResponse
type instance O.ParentTypes URISchemeResponse = '[GObject.Object.Object]

-- | Cast to t'URISchemeResponse', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toURISchemeResponse :: (MIO.MonadIO m, IsURISchemeResponse o) => o -> m URISchemeResponse
toURISchemeResponse = MIO.liftIO . B.ManagedPtr.unsafeCastTo URISchemeResponse

-- | Convert t'URISchemeResponse' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe URISchemeResponse) where
    gvalueGType_ = c_webkit_uri_scheme_response_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr URISchemeResponse)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr URISchemeResponse)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject URISchemeResponse ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveURISchemeResponseMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveURISchemeResponseMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveURISchemeResponseMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveURISchemeResponseMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveURISchemeResponseMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveURISchemeResponseMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveURISchemeResponseMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveURISchemeResponseMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveURISchemeResponseMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveURISchemeResponseMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveURISchemeResponseMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveURISchemeResponseMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveURISchemeResponseMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveURISchemeResponseMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveURISchemeResponseMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveURISchemeResponseMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveURISchemeResponseMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveURISchemeResponseMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveURISchemeResponseMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveURISchemeResponseMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveURISchemeResponseMethod "setContentType" o = URISchemeResponseSetContentTypeMethodInfo
    ResolveURISchemeResponseMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveURISchemeResponseMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveURISchemeResponseMethod "setHttpHeaders" o = URISchemeResponseSetHttpHeadersMethodInfo
    ResolveURISchemeResponseMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveURISchemeResponseMethod "setStatus" o = URISchemeResponseSetStatusMethodInfo
    ResolveURISchemeResponseMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveURISchemeResponseMethod t URISchemeResponse, O.OverloadedMethod info URISchemeResponse p) => OL.IsLabel t (URISchemeResponse -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveURISchemeResponseMethod t URISchemeResponse, O.OverloadedMethod info URISchemeResponse p, R.HasField t URISchemeResponse p) => R.HasField t URISchemeResponse p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveURISchemeResponseMethod t URISchemeResponse, O.OverloadedMethodInfo info URISchemeResponse) => OL.IsLabel t (O.MethodProxy info URISchemeResponse) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "stream"
   -- Type: TInterface (Name {namespace = "Gio", name = "InputStream"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@stream@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructURISchemeResponseStream :: (IsURISchemeResponse o, MIO.MonadIO m, Gio.InputStream.IsInputStream a) => a -> m (GValueConstruct o)
constructURISchemeResponseStream val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "stream" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data URISchemeResponseStreamPropertyInfo
instance AttrInfo URISchemeResponseStreamPropertyInfo where
    type AttrAllowedOps URISchemeResponseStreamPropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint URISchemeResponseStreamPropertyInfo = IsURISchemeResponse
    type AttrSetTypeConstraint URISchemeResponseStreamPropertyInfo = Gio.InputStream.IsInputStream
    type AttrTransferTypeConstraint URISchemeResponseStreamPropertyInfo = Gio.InputStream.IsInputStream
    type AttrTransferType URISchemeResponseStreamPropertyInfo = Gio.InputStream.InputStream
    type AttrGetType URISchemeResponseStreamPropertyInfo = ()
    type AttrLabel URISchemeResponseStreamPropertyInfo = "stream"
    type AttrOrigin URISchemeResponseStreamPropertyInfo = URISchemeResponse
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Gio.InputStream.InputStream v
    attrConstruct = constructURISchemeResponseStream
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeResponse.stream"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeResponse.html#g:attr:stream"
        })
#endif

-- VVV Prop "stream-length"
   -- Type: TBasicType TInt64
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@stream-length@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructURISchemeResponseStreamLength :: (IsURISchemeResponse o, MIO.MonadIO m) => Int64 -> m (GValueConstruct o)
constructURISchemeResponseStreamLength val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyInt64 "stream-length" val

#if defined(ENABLE_OVERLOADING)
data URISchemeResponseStreamLengthPropertyInfo
instance AttrInfo URISchemeResponseStreamLengthPropertyInfo where
    type AttrAllowedOps URISchemeResponseStreamLengthPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint URISchemeResponseStreamLengthPropertyInfo = IsURISchemeResponse
    type AttrSetTypeConstraint URISchemeResponseStreamLengthPropertyInfo = (~) Int64
    type AttrTransferTypeConstraint URISchemeResponseStreamLengthPropertyInfo = (~) Int64
    type AttrTransferType URISchemeResponseStreamLengthPropertyInfo = Int64
    type AttrGetType URISchemeResponseStreamLengthPropertyInfo = ()
    type AttrLabel URISchemeResponseStreamLengthPropertyInfo = "stream-length"
    type AttrOrigin URISchemeResponseStreamLengthPropertyInfo = URISchemeResponse
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructURISchemeResponseStreamLength
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeResponse.streamLength"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeResponse.html#g:attr:streamLength"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList URISchemeResponse
type instance O.AttributeList URISchemeResponse = URISchemeResponseAttributeList
type URISchemeResponseAttributeList = ('[ '("stream", URISchemeResponseStreamPropertyInfo), '("streamLength", URISchemeResponseStreamLengthPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
uRISchemeResponseStream :: AttrLabelProxy "stream"
uRISchemeResponseStream = AttrLabelProxy

uRISchemeResponseStreamLength :: AttrLabelProxy "streamLength"
uRISchemeResponseStreamLength = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList URISchemeResponse = URISchemeResponseSignalList
type URISchemeResponseSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method URISchemeResponse::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "input_stream"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "InputStream" }
--           , argCType = Just "GInputStream*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GInputStream to read the contents of the request"
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
--           { argCName = "stream_length"
--           , argType = TBasicType TInt64
--           , argCType = Just "gint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the stream or -1 if not known"
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
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "URISchemeResponse" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_scheme_response_new" webkit_uri_scheme_response_new :: 
    Ptr Gio.InputStream.InputStream ->      -- input_stream : TInterface (Name {namespace = "Gio", name = "InputStream"})
    Int64 ->                                -- stream_length : TBasicType TInt64
    IO (Ptr URISchemeResponse)

-- | Create a new t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
-- 
-- /Since: 2.36/
uRISchemeResponseNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.InputStream.IsInputStream a) =>
    a
    -- ^ /@inputStream@/: a t'GI.Gio.Objects.InputStream.InputStream' to read the contents of the request
    -> Int64
    -- ^ /@streamLength@/: the length of the stream or -1 if not known
    -> m URISchemeResponse
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'.
uRISchemeResponseNew inputStream streamLength = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    result <- webkit_uri_scheme_response_new inputStream' streamLength
    checkUnexpectedReturnNULL "uRISchemeResponseNew" result
    result' <- (wrapObject URISchemeResponse) result
    touchManagedPtr inputStream
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method URISchemeResponse::set_content_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeResponse" }
--           , argCType = Just "WebKitURISchemeResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeResponse"
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
--           { argCName = "content_type"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the content type of the stream"
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

foreign import ccall "webkit_uri_scheme_response_set_content_type" webkit_uri_scheme_response_set_content_type :: 
    Ptr URISchemeResponse ->                -- response : TInterface (Name {namespace = "WebKit2", name = "URISchemeResponse"})
    CString ->                              -- content_type : TBasicType TUTF8
    IO ()

-- | Sets the content type for the /@response@/
-- 
-- /Since: 2.36/
uRISchemeResponseSetContentType ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
    -> T.Text
    -- ^ /@contentType@/: the content type of the stream
    -> m ()
uRISchemeResponseSetContentType response contentType = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    contentType' <- textToCString contentType
    webkit_uri_scheme_response_set_content_type response' contentType'
    touchManagedPtr response
    freeMem contentType'
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeResponseSetContentTypeMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsURISchemeResponse a) => O.OverloadedMethod URISchemeResponseSetContentTypeMethodInfo a signature where
    overloadedMethod = uRISchemeResponseSetContentType

instance O.OverloadedMethodInfo URISchemeResponseSetContentTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeResponse.uRISchemeResponseSetContentType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeResponse.html#v:uRISchemeResponseSetContentType"
        })


#endif

-- method URISchemeResponse::set_http_headers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeResponse" }
--           , argCType = Just "WebKitURISchemeResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeResponse"
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
--           { argCName = "headers"
--           , argType =
--               TInterface Name { namespace = "Soup" , name = "MessageHeaders" }
--           , argCType = Just "SoupMessageHeaders*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the HTTP headers to be set"
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
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_scheme_response_set_http_headers" webkit_uri_scheme_response_set_http_headers :: 
    Ptr URISchemeResponse ->                -- response : TInterface (Name {namespace = "WebKit2", name = "URISchemeResponse"})
    Ptr Soup.MessageHeaders.MessageHeaders -> -- headers : TInterface (Name {namespace = "Soup", name = "MessageHeaders"})
    IO ()

-- | Assign the provided t'GI.Soup.Structs.MessageHeaders.MessageHeaders' to the response.
-- 
-- /@headers@/ need to be of the type 'GI.Soup.Enums.MessageHeadersTypeResponse'.
-- Any existing headers will be overwritten.
-- 
-- /Since: 2.36/
uRISchemeResponseSetHttpHeaders ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
    -> Soup.MessageHeaders.MessageHeaders
    -- ^ /@headers@/: the HTTP headers to be set
    -> m ()
uRISchemeResponseSetHttpHeaders response headers = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    headers' <- B.ManagedPtr.disownBoxed headers
    webkit_uri_scheme_response_set_http_headers response' headers'
    touchManagedPtr response
    touchManagedPtr headers
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeResponseSetHttpHeadersMethodInfo
instance (signature ~ (Soup.MessageHeaders.MessageHeaders -> m ()), MonadIO m, IsURISchemeResponse a) => O.OverloadedMethod URISchemeResponseSetHttpHeadersMethodInfo a signature where
    overloadedMethod = uRISchemeResponseSetHttpHeaders

instance O.OverloadedMethodInfo URISchemeResponseSetHttpHeadersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeResponse.uRISchemeResponseSetHttpHeaders",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeResponse.html#v:uRISchemeResponseSetHttpHeaders"
        })


#endif

-- method URISchemeResponse::set_status
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeResponse" }
--           , argCType = Just "WebKitURISchemeResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeResponse"
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
--           { argCName = "status_code"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the HTTP status code to be returned"
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
--           { argCName = "reason_phrase"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a reason phrase" , sinceVersion = Nothing }
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

foreign import ccall "webkit_uri_scheme_response_set_status" webkit_uri_scheme_response_set_status :: 
    Ptr URISchemeResponse ->                -- response : TInterface (Name {namespace = "WebKit2", name = "URISchemeResponse"})
    Word32 ->                               -- status_code : TBasicType TUInt
    CString ->                              -- reason_phrase : TBasicType TUTF8
    IO ()

-- | Sets the status code and reason phrase for the /@response@/.
-- 
-- If /@statusCode@/ is a known value and /@reasonPhrase@/ is 'P.Nothing', the /@reasonPhrase@/ will be set automatically.
-- 
-- /Since: 2.36/
uRISchemeResponseSetStatus ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
    -> Word32
    -- ^ /@statusCode@/: the HTTP status code to be returned
    -> Maybe (T.Text)
    -- ^ /@reasonPhrase@/: a reason phrase
    -> m ()
uRISchemeResponseSetStatus response statusCode reasonPhrase = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    maybeReasonPhrase <- case reasonPhrase of
        Nothing -> return FP.nullPtr
        Just jReasonPhrase -> do
            jReasonPhrase' <- textToCString jReasonPhrase
            return jReasonPhrase'
    webkit_uri_scheme_response_set_status response' statusCode maybeReasonPhrase
    touchManagedPtr response
    freeMem maybeReasonPhrase
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeResponseSetStatusMethodInfo
instance (signature ~ (Word32 -> Maybe (T.Text) -> m ()), MonadIO m, IsURISchemeResponse a) => O.OverloadedMethod URISchemeResponseSetStatusMethodInfo a signature where
    overloadedMethod = uRISchemeResponseSetStatus

instance O.OverloadedMethodInfo URISchemeResponseSetStatusMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeResponse.uRISchemeResponseSetStatus",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeResponse.html#v:uRISchemeResponseSetStatus"
        })


#endif


