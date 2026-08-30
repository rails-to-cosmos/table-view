{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents an URI response.
-- 
-- A t'GI.WebKit2.Objects.URIResponse.URIResponse' contains information such as the URI, the
-- status code, the content length, the mime type, the HTTP status or
-- the suggested filename.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.URIResponse
    ( 

-- * Exported types
    URIResponse(..)                         ,
    IsURIResponse                           ,
    toURIResponse                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getContentLength]("GI.WebKit2.Objects.URIResponse#g:method:getContentLength"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getHttpHeaders]("GI.WebKit2.Objects.URIResponse#g:method:getHttpHeaders"), [getMimeType]("GI.WebKit2.Objects.URIResponse#g:method:getMimeType"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getStatusCode]("GI.WebKit2.Objects.URIResponse#g:method:getStatusCode"), [getSuggestedFilename]("GI.WebKit2.Objects.URIResponse#g:method:getSuggestedFilename"), [getUri]("GI.WebKit2.Objects.URIResponse#g:method:getUri").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveURIResponseMethod                ,
#endif

-- ** getContentLength #method:getContentLength#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetContentLengthMethodInfo   ,
#endif
    uRIResponseGetContentLength             ,


-- ** getHttpHeaders #method:getHttpHeaders#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetHttpHeadersMethodInfo     ,
#endif
    uRIResponseGetHttpHeaders               ,


-- ** getMimeType #method:getMimeType#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetMimeTypeMethodInfo        ,
#endif
    uRIResponseGetMimeType                  ,


-- ** getStatusCode #method:getStatusCode#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetStatusCodeMethodInfo      ,
#endif
    uRIResponseGetStatusCode                ,


-- ** getSuggestedFilename #method:getSuggestedFilename#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetSuggestedFilenameMethodInfo,
#endif
    uRIResponseGetSuggestedFilename         ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    URIResponseGetUriMethodInfo             ,
#endif
    uRIResponseGetUri                       ,




 -- * Properties


-- ** contentLength #attr:contentLength#
-- | The expected content length of the response.

#if defined(ENABLE_OVERLOADING)
    URIResponseContentLengthPropertyInfo    ,
#endif
    getURIResponseContentLength             ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseContentLength                ,
#endif


-- ** httpHeaders #attr:httpHeaders#
-- | The HTTP headers of the response, or 'P.Nothing' if the response is not an HTTP response.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    URIResponseHttpHeadersPropertyInfo      ,
#endif
    getURIResponseHttpHeaders               ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseHttpHeaders                  ,
#endif


-- ** mimeType #attr:mimeType#
-- | The MIME type of the response.

#if defined(ENABLE_OVERLOADING)
    URIResponseMimeTypePropertyInfo         ,
#endif
    getURIResponseMimeType                  ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseMimeType                     ,
#endif


-- ** statusCode #attr:statusCode#
-- | The status code of the response as returned by the server.

#if defined(ENABLE_OVERLOADING)
    URIResponseStatusCodePropertyInfo       ,
#endif
    getURIResponseStatusCode                ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseStatusCode                   ,
#endif


-- ** suggestedFilename #attr:suggestedFilename#
-- | The suggested filename for the URI response.

#if defined(ENABLE_OVERLOADING)
    URIResponseSuggestedFilenamePropertyInfo,
#endif
    getURIResponseSuggestedFilename         ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseSuggestedFilename            ,
#endif


-- ** uri #attr:uri#
-- | The URI for which the response was made.

#if defined(ENABLE_OVERLOADING)
    URIResponseUriPropertyInfo              ,
#endif
    getURIResponseUri                       ,
#if defined(ENABLE_OVERLOADING)
    uRIResponseUri                          ,
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
newtype URIResponse = URIResponse (SP.ManagedPtr URIResponse)
    deriving (Eq)

instance SP.ManagedPtrNewtype URIResponse where
    toManagedPtr (URIResponse p) = p

foreign import ccall "webkit_uri_response_get_type"
    c_webkit_uri_response_get_type :: IO B.Types.GType

instance B.Types.TypedObject URIResponse where
    glibType = c_webkit_uri_response_get_type

instance B.Types.GObject URIResponse

-- | Type class for types which can be safely cast to t'URIResponse', for instance with `toURIResponse`.
class (SP.GObject o, O.IsDescendantOf URIResponse o) => IsURIResponse o
instance (SP.GObject o, O.IsDescendantOf URIResponse o) => IsURIResponse o

instance O.HasParentTypes URIResponse
type instance O.ParentTypes URIResponse = '[GObject.Object.Object]

-- | Cast to t'URIResponse', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toURIResponse :: (MIO.MonadIO m, IsURIResponse o) => o -> m URIResponse
toURIResponse = MIO.liftIO . B.ManagedPtr.unsafeCastTo URIResponse

-- | Convert t'URIResponse' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe URIResponse) where
    gvalueGType_ = c_webkit_uri_response_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr URIResponse)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr URIResponse)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject URIResponse ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveURIResponseMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveURIResponseMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveURIResponseMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveURIResponseMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveURIResponseMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveURIResponseMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveURIResponseMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveURIResponseMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveURIResponseMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveURIResponseMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveURIResponseMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveURIResponseMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveURIResponseMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveURIResponseMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveURIResponseMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveURIResponseMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveURIResponseMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveURIResponseMethod "getContentLength" o = URIResponseGetContentLengthMethodInfo
    ResolveURIResponseMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveURIResponseMethod "getHttpHeaders" o = URIResponseGetHttpHeadersMethodInfo
    ResolveURIResponseMethod "getMimeType" o = URIResponseGetMimeTypeMethodInfo
    ResolveURIResponseMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveURIResponseMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveURIResponseMethod "getStatusCode" o = URIResponseGetStatusCodeMethodInfo
    ResolveURIResponseMethod "getSuggestedFilename" o = URIResponseGetSuggestedFilenameMethodInfo
    ResolveURIResponseMethod "getUri" o = URIResponseGetUriMethodInfo
    ResolveURIResponseMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveURIResponseMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveURIResponseMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveURIResponseMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveURIResponseMethod t URIResponse, O.OverloadedMethod info URIResponse p) => OL.IsLabel t (URIResponse -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveURIResponseMethod t URIResponse, O.OverloadedMethod info URIResponse p, R.HasField t URIResponse p) => R.HasField t URIResponse p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveURIResponseMethod t URIResponse, O.OverloadedMethodInfo info URIResponse) => OL.IsLabel t (O.MethodProxy info URIResponse) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "content-length"
   -- Type: TBasicType TUInt64
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@content-length@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIResponse #contentLength
-- @
getURIResponseContentLength :: (MonadIO m, IsURIResponse o) => o -> m Word64
getURIResponseContentLength obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt64 obj "content-length"

#if defined(ENABLE_OVERLOADING)
data URIResponseContentLengthPropertyInfo
instance AttrInfo URIResponseContentLengthPropertyInfo where
    type AttrAllowedOps URIResponseContentLengthPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint URIResponseContentLengthPropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseContentLengthPropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseContentLengthPropertyInfo = (~) ()
    type AttrTransferType URIResponseContentLengthPropertyInfo = ()
    type AttrGetType URIResponseContentLengthPropertyInfo = Word64
    type AttrLabel URIResponseContentLengthPropertyInfo = "content-length"
    type AttrOrigin URIResponseContentLengthPropertyInfo = URIResponse
    attrGet = getURIResponseContentLength
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.contentLength"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:contentLength"
        })
#endif

-- VVV Prop "http-headers"
   -- Type: TInterface (Name {namespace = "Soup", name = "MessageHeaders"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@http-headers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIResponse #httpHeaders
-- @
getURIResponseHttpHeaders :: (MonadIO m, IsURIResponse o) => o -> m (Maybe Soup.MessageHeaders.MessageHeaders)
getURIResponseHttpHeaders obj = MIO.liftIO $ B.Properties.getObjectPropertyBoxed obj "http-headers" Soup.MessageHeaders.MessageHeaders

#if defined(ENABLE_OVERLOADING)
data URIResponseHttpHeadersPropertyInfo
instance AttrInfo URIResponseHttpHeadersPropertyInfo where
    type AttrAllowedOps URIResponseHttpHeadersPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint URIResponseHttpHeadersPropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseHttpHeadersPropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseHttpHeadersPropertyInfo = (~) ()
    type AttrTransferType URIResponseHttpHeadersPropertyInfo = ()
    type AttrGetType URIResponseHttpHeadersPropertyInfo = (Maybe Soup.MessageHeaders.MessageHeaders)
    type AttrLabel URIResponseHttpHeadersPropertyInfo = "http-headers"
    type AttrOrigin URIResponseHttpHeadersPropertyInfo = URIResponse
    attrGet = getURIResponseHttpHeaders
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.httpHeaders"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:httpHeaders"
        })
#endif

-- VVV Prop "mime-type"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@mime-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIResponse #mimeType
-- @
getURIResponseMimeType :: (MonadIO m, IsURIResponse o) => o -> m T.Text
getURIResponseMimeType obj = MIO.liftIO $ checkUnexpectedNothing "getURIResponseMimeType" $ B.Properties.getObjectPropertyString obj "mime-type"

#if defined(ENABLE_OVERLOADING)
data URIResponseMimeTypePropertyInfo
instance AttrInfo URIResponseMimeTypePropertyInfo where
    type AttrAllowedOps URIResponseMimeTypePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint URIResponseMimeTypePropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseMimeTypePropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseMimeTypePropertyInfo = (~) ()
    type AttrTransferType URIResponseMimeTypePropertyInfo = ()
    type AttrGetType URIResponseMimeTypePropertyInfo = T.Text
    type AttrLabel URIResponseMimeTypePropertyInfo = "mime-type"
    type AttrOrigin URIResponseMimeTypePropertyInfo = URIResponse
    attrGet = getURIResponseMimeType
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.mimeType"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:mimeType"
        })
#endif

-- VVV Prop "status-code"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@status-code@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIResponse #statusCode
-- @
getURIResponseStatusCode :: (MonadIO m, IsURIResponse o) => o -> m Word32
getURIResponseStatusCode obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "status-code"

#if defined(ENABLE_OVERLOADING)
data URIResponseStatusCodePropertyInfo
instance AttrInfo URIResponseStatusCodePropertyInfo where
    type AttrAllowedOps URIResponseStatusCodePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint URIResponseStatusCodePropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseStatusCodePropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseStatusCodePropertyInfo = (~) ()
    type AttrTransferType URIResponseStatusCodePropertyInfo = ()
    type AttrGetType URIResponseStatusCodePropertyInfo = Word32
    type AttrLabel URIResponseStatusCodePropertyInfo = "status-code"
    type AttrOrigin URIResponseStatusCodePropertyInfo = URIResponse
    attrGet = getURIResponseStatusCode
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.statusCode"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:statusCode"
        })
#endif

-- VVV Prop "suggested-filename"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@suggested-filename@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' uRIResponse #suggestedFilename
-- @
getURIResponseSuggestedFilename :: (MonadIO m, IsURIResponse o) => o -> m (Maybe T.Text)
getURIResponseSuggestedFilename obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "suggested-filename"

#if defined(ENABLE_OVERLOADING)
data URIResponseSuggestedFilenamePropertyInfo
instance AttrInfo URIResponseSuggestedFilenamePropertyInfo where
    type AttrAllowedOps URIResponseSuggestedFilenamePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint URIResponseSuggestedFilenamePropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseSuggestedFilenamePropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseSuggestedFilenamePropertyInfo = (~) ()
    type AttrTransferType URIResponseSuggestedFilenamePropertyInfo = ()
    type AttrGetType URIResponseSuggestedFilenamePropertyInfo = (Maybe T.Text)
    type AttrLabel URIResponseSuggestedFilenamePropertyInfo = "suggested-filename"
    type AttrOrigin URIResponseSuggestedFilenamePropertyInfo = URIResponse
    attrGet = getURIResponseSuggestedFilename
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.suggestedFilename"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:suggestedFilename"
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
-- 'Data.GI.Base.Attributes.get' uRIResponse #uri
-- @
getURIResponseUri :: (MonadIO m, IsURIResponse o) => o -> m T.Text
getURIResponseUri obj = MIO.liftIO $ checkUnexpectedNothing "getURIResponseUri" $ B.Properties.getObjectPropertyString obj "uri"

#if defined(ENABLE_OVERLOADING)
data URIResponseUriPropertyInfo
instance AttrInfo URIResponseUriPropertyInfo where
    type AttrAllowedOps URIResponseUriPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint URIResponseUriPropertyInfo = IsURIResponse
    type AttrSetTypeConstraint URIResponseUriPropertyInfo = (~) ()
    type AttrTransferTypeConstraint URIResponseUriPropertyInfo = (~) ()
    type AttrTransferType URIResponseUriPropertyInfo = ()
    type AttrGetType URIResponseUriPropertyInfo = T.Text
    type AttrLabel URIResponseUriPropertyInfo = "uri"
    type AttrOrigin URIResponseUriPropertyInfo = URIResponse
    attrGet = getURIResponseUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#g:attr:uri"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList URIResponse
type instance O.AttributeList URIResponse = URIResponseAttributeList
type URIResponseAttributeList = ('[ '("contentLength", URIResponseContentLengthPropertyInfo), '("httpHeaders", URIResponseHttpHeadersPropertyInfo), '("mimeType", URIResponseMimeTypePropertyInfo), '("statusCode", URIResponseStatusCodePropertyInfo), '("suggestedFilename", URIResponseSuggestedFilenamePropertyInfo), '("uri", URIResponseUriPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
uRIResponseContentLength :: AttrLabelProxy "contentLength"
uRIResponseContentLength = AttrLabelProxy

uRIResponseHttpHeaders :: AttrLabelProxy "httpHeaders"
uRIResponseHttpHeaders = AttrLabelProxy

uRIResponseMimeType :: AttrLabelProxy "mimeType"
uRIResponseMimeType = AttrLabelProxy

uRIResponseStatusCode :: AttrLabelProxy "statusCode"
uRIResponseStatusCode = AttrLabelProxy

uRIResponseSuggestedFilename :: AttrLabelProxy "suggestedFilename"
uRIResponseSuggestedFilename = AttrLabelProxy

uRIResponseUri :: AttrLabelProxy "uri"
uRIResponseUri = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList URIResponse = URIResponseSignalList
type URIResponseSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method URIResponse::get_content_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_response_get_content_length" webkit_uri_response_get_content_length :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO Word64

-- | Get the expected content length of the t'GI.WebKit2.Objects.URIResponse.URIResponse'.
-- 
-- It can be 0 if the server provided an incorrect or missing Content-Length.
uRIResponseGetContentLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m Word64
    -- ^ __Returns:__ the expected content length of /@response@/.
uRIResponseGetContentLength response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_content_length response'
    touchManagedPtr response
    return result

#if defined(ENABLE_OVERLOADING)
data URIResponseGetContentLengthMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetContentLengthMethodInfo a signature where
    overloadedMethod = uRIResponseGetContentLength

instance O.OverloadedMethodInfo URIResponseGetContentLengthMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetContentLength",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetContentLength"
        })


#endif

-- method URIResponse::get_http_headers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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

foreign import ccall "webkit_uri_response_get_http_headers" webkit_uri_response_get_http_headers :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO (Ptr Soup.MessageHeaders.MessageHeaders)

-- | Get the HTTP headers of a t'GI.WebKit2.Objects.URIResponse.URIResponse' as a t'GI.Soup.Structs.MessageHeaders.MessageHeaders'.
-- 
-- /Since: 2.6/
uRIResponseGetHttpHeaders ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m (Maybe Soup.MessageHeaders.MessageHeaders)
    -- ^ __Returns:__ a t'GI.Soup.Structs.MessageHeaders.MessageHeaders' with the HTTP headers of /@response@/
    --    or 'P.Nothing' if /@response@/ is not an HTTP response.
uRIResponseGetHttpHeaders response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_http_headers response'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Soup.MessageHeaders.MessageHeaders) result'
        return result''
    touchManagedPtr response
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data URIResponseGetHttpHeadersMethodInfo
instance (signature ~ (m (Maybe Soup.MessageHeaders.MessageHeaders)), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetHttpHeadersMethodInfo a signature where
    overloadedMethod = uRIResponseGetHttpHeaders

instance O.OverloadedMethodInfo URIResponseGetHttpHeadersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetHttpHeaders",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetHttpHeaders"
        })


#endif

-- method URIResponse::get_mime_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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

foreign import ccall "webkit_uri_response_get_mime_type" webkit_uri_response_get_mime_type :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO CString

-- | Gets the MIME type of the response.
uRIResponseGetMimeType ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m T.Text
    -- ^ __Returns:__ MIME type, as a string.
uRIResponseGetMimeType response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_mime_type response'
    checkUnexpectedReturnNULL "uRIResponseGetMimeType" result
    result' <- cstringToText result
    touchManagedPtr response
    return result'

#if defined(ENABLE_OVERLOADING)
data URIResponseGetMimeTypeMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetMimeTypeMethodInfo a signature where
    overloadedMethod = uRIResponseGetMimeType

instance O.OverloadedMethodInfo URIResponseGetMimeTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetMimeType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetMimeType"
        })


#endif

-- method URIResponse::get_status_code
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_response_get_status_code" webkit_uri_response_get_status_code :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO Word32

-- | Get the status code of the t'GI.WebKit2.Objects.URIResponse.URIResponse'.
-- 
-- Get the status code of the t'GI.WebKit2.Objects.URIResponse.URIResponse' as returned by
-- the server. It will normally be a @/SoupKnownStatusCode/@, for
-- example 'GI.Soup.Enums.StatusOk', though the server can respond with any
-- unsigned integer.
uRIResponseGetStatusCode ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m Word32
    -- ^ __Returns:__ the status code of /@response@/
uRIResponseGetStatusCode response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_status_code response'
    touchManagedPtr response
    return result

#if defined(ENABLE_OVERLOADING)
data URIResponseGetStatusCodeMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetStatusCodeMethodInfo a signature where
    overloadedMethod = uRIResponseGetStatusCode

instance O.OverloadedMethodInfo URIResponseGetStatusCodeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetStatusCode",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetStatusCode"
        })


#endif

-- method URIResponse::get_suggested_filename
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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

foreign import ccall "webkit_uri_response_get_suggested_filename" webkit_uri_response_get_suggested_filename :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO CString

-- | Get the suggested filename for /@response@/.
-- 
-- Get the suggested filename for /@response@/, as specified by
-- the \'Content-Disposition\' HTTP header, or 'P.Nothing' if it\'s not
-- present.
uRIResponseGetSuggestedFilename ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the suggested filename or 'P.Nothing' if
    --    the \'Content-Disposition\' HTTP header is not present.
uRIResponseGetSuggestedFilename response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_suggested_filename response'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr response
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data URIResponseGetSuggestedFilenameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetSuggestedFilenameMethodInfo a signature where
    overloadedMethod = uRIResponseGetSuggestedFilename

instance O.OverloadedMethodInfo URIResponseGetSuggestedFilenameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetSuggestedFilename",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetSuggestedFilename"
        })


#endif

-- method URIResponse::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "response"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIResponse" }
--           , argCType = Just "WebKitURIResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIResponse"
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

foreign import ccall "webkit_uri_response_get_uri" webkit_uri_response_get_uri :: 
    Ptr URIResponse ->                      -- response : TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
    IO CString

-- | Gets the URI which resulted in the response.
uRIResponseGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsURIResponse a) =>
    a
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URIResponse.URIResponse'
    -> m T.Text
    -- ^ __Returns:__ response URI, as a string.
uRIResponseGetUri response = liftIO $ do
    response' <- unsafeManagedPtrCastPtr response
    result <- webkit_uri_response_get_uri response'
    checkUnexpectedReturnNULL "uRIResponseGetUri" result
    result' <- cstringToText result
    touchManagedPtr response
    return result'

#if defined(ENABLE_OVERLOADING)
data URIResponseGetUriMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURIResponse a) => O.OverloadedMethod URIResponseGetUriMethodInfo a signature where
    overloadedMethod = uRIResponseGetUri

instance O.OverloadedMethodInfo URIResponseGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URIResponse.uRIResponseGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URIResponse.html#v:uRIResponseGetUri"
        })


#endif


