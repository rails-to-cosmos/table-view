{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A policy decision for resource responses.
-- 
-- WebKitResponsePolicyDecision represents a policy decision for a
-- resource response, whether from the network or the local system.
-- A very common use case for these types of decision is deciding
-- whether or not to download a particular resource or to load it
-- normally.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.ResponsePolicyDecision
    ( 

-- * Exported types
    ResponsePolicyDecision(..)              ,
    IsResponsePolicyDecision                ,
    toResponsePolicyDecision                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [download]("GI.WebKit2.Objects.PolicyDecision#g:method:download"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [ignore]("GI.WebKit2.Objects.PolicyDecision#g:method:ignore"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isMainFrameMainResource]("GI.WebKit2.Objects.ResponsePolicyDecision#g:method:isMainFrameMainResource"), [isMimeTypeSupported]("GI.WebKit2.Objects.ResponsePolicyDecision#g:method:isMimeTypeSupported"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [use]("GI.WebKit2.Objects.PolicyDecision#g:method:use"), [useWithPolicies]("GI.WebKit2.Objects.PolicyDecision#g:method:useWithPolicies"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRequest]("GI.WebKit2.Objects.ResponsePolicyDecision#g:method:getRequest"), [getResponse]("GI.WebKit2.Objects.ResponsePolicyDecision#g:method:getResponse").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveResponsePolicyDecisionMethod     ,
#endif

-- ** getRequest #method:getRequest#

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionGetRequestMethodInfo,
#endif
    responsePolicyDecisionGetRequest        ,


-- ** getResponse #method:getResponse#

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionGetResponseMethodInfo,
#endif
    responsePolicyDecisionGetResponse       ,


-- ** isMainFrameMainResource #method:isMainFrameMainResource#

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionIsMainFrameMainResourceMethodInfo,
#endif
    responsePolicyDecisionIsMainFrameMainResource,


-- ** isMimeTypeSupported #method:isMimeTypeSupported#

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionIsMimeTypeSupportedMethodInfo,
#endif
    responsePolicyDecisionIsMimeTypeSupported,




 -- * Properties


-- ** request #attr:request#
-- | This property contains the t'GI.WebKit2.Objects.URIRequest.URIRequest' associated with this
-- policy decision.

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionRequestPropertyInfo,
#endif
    getResponsePolicyDecisionRequest        ,
#if defined(ENABLE_OVERLOADING)
    responsePolicyDecisionRequest           ,
#endif


-- ** response #attr:response#
-- | This property contains the t'GI.WebKit2.Objects.URIResponse.URIResponse' associated with this
-- policy decision.

#if defined(ENABLE_OVERLOADING)
    ResponsePolicyDecisionResponsePropertyInfo,
#endif
    getResponsePolicyDecisionResponse       ,
#if defined(ENABLE_OVERLOADING)
    responsePolicyDecisionResponse          ,
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
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse

#endif

-- | Memory-managed wrapper type.
newtype ResponsePolicyDecision = ResponsePolicyDecision (SP.ManagedPtr ResponsePolicyDecision)
    deriving (Eq)

instance SP.ManagedPtrNewtype ResponsePolicyDecision where
    toManagedPtr (ResponsePolicyDecision p) = p

foreign import ccall "webkit_response_policy_decision_get_type"
    c_webkit_response_policy_decision_get_type :: IO B.Types.GType

instance B.Types.TypedObject ResponsePolicyDecision where
    glibType = c_webkit_response_policy_decision_get_type

instance B.Types.GObject ResponsePolicyDecision

-- | Type class for types which can be safely cast to t'ResponsePolicyDecision', for instance with `toResponsePolicyDecision`.
class (SP.GObject o, O.IsDescendantOf ResponsePolicyDecision o) => IsResponsePolicyDecision o
instance (SP.GObject o, O.IsDescendantOf ResponsePolicyDecision o) => IsResponsePolicyDecision o

instance O.HasParentTypes ResponsePolicyDecision
type instance O.ParentTypes ResponsePolicyDecision = '[WebKit2.PolicyDecision.PolicyDecision, GObject.Object.Object]

-- | Cast to t'ResponsePolicyDecision', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toResponsePolicyDecision :: (MIO.MonadIO m, IsResponsePolicyDecision o) => o -> m ResponsePolicyDecision
toResponsePolicyDecision = MIO.liftIO . B.ManagedPtr.unsafeCastTo ResponsePolicyDecision

-- | Convert t'ResponsePolicyDecision' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ResponsePolicyDecision) where
    gvalueGType_ = c_webkit_response_policy_decision_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr ResponsePolicyDecision)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr ResponsePolicyDecision)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject ResponsePolicyDecision ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveResponsePolicyDecisionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveResponsePolicyDecisionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveResponsePolicyDecisionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveResponsePolicyDecisionMethod "download" o = WebKit2.PolicyDecision.PolicyDecisionDownloadMethodInfo
    ResolveResponsePolicyDecisionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveResponsePolicyDecisionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveResponsePolicyDecisionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveResponsePolicyDecisionMethod "ignore" o = WebKit2.PolicyDecision.PolicyDecisionIgnoreMethodInfo
    ResolveResponsePolicyDecisionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveResponsePolicyDecisionMethod "isMainFrameMainResource" o = ResponsePolicyDecisionIsMainFrameMainResourceMethodInfo
    ResolveResponsePolicyDecisionMethod "isMimeTypeSupported" o = ResponsePolicyDecisionIsMimeTypeSupportedMethodInfo
    ResolveResponsePolicyDecisionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveResponsePolicyDecisionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveResponsePolicyDecisionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveResponsePolicyDecisionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveResponsePolicyDecisionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveResponsePolicyDecisionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveResponsePolicyDecisionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveResponsePolicyDecisionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveResponsePolicyDecisionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveResponsePolicyDecisionMethod "use" o = WebKit2.PolicyDecision.PolicyDecisionUseMethodInfo
    ResolveResponsePolicyDecisionMethod "useWithPolicies" o = WebKit2.PolicyDecision.PolicyDecisionUseWithPoliciesMethodInfo
    ResolveResponsePolicyDecisionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveResponsePolicyDecisionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveResponsePolicyDecisionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveResponsePolicyDecisionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveResponsePolicyDecisionMethod "getRequest" o = ResponsePolicyDecisionGetRequestMethodInfo
    ResolveResponsePolicyDecisionMethod "getResponse" o = ResponsePolicyDecisionGetResponseMethodInfo
    ResolveResponsePolicyDecisionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveResponsePolicyDecisionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveResponsePolicyDecisionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveResponsePolicyDecisionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveResponsePolicyDecisionMethod t ResponsePolicyDecision, O.OverloadedMethod info ResponsePolicyDecision p) => OL.IsLabel t (ResponsePolicyDecision -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveResponsePolicyDecisionMethod t ResponsePolicyDecision, O.OverloadedMethod info ResponsePolicyDecision p, R.HasField t ResponsePolicyDecision p) => R.HasField t ResponsePolicyDecision p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveResponsePolicyDecisionMethod t ResponsePolicyDecision, O.OverloadedMethodInfo info ResponsePolicyDecision) => OL.IsLabel t (O.MethodProxy info ResponsePolicyDecision) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "request"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@request@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' responsePolicyDecision #request
-- @
getResponsePolicyDecisionRequest :: (MonadIO m, IsResponsePolicyDecision o) => o -> m WebKit2.URIRequest.URIRequest
getResponsePolicyDecisionRequest obj = MIO.liftIO $ checkUnexpectedNothing "getResponsePolicyDecisionRequest" $ B.Properties.getObjectPropertyObject obj "request" WebKit2.URIRequest.URIRequest

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionRequestPropertyInfo
instance AttrInfo ResponsePolicyDecisionRequestPropertyInfo where
    type AttrAllowedOps ResponsePolicyDecisionRequestPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ResponsePolicyDecisionRequestPropertyInfo = IsResponsePolicyDecision
    type AttrSetTypeConstraint ResponsePolicyDecisionRequestPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ResponsePolicyDecisionRequestPropertyInfo = (~) ()
    type AttrTransferType ResponsePolicyDecisionRequestPropertyInfo = ()
    type AttrGetType ResponsePolicyDecisionRequestPropertyInfo = WebKit2.URIRequest.URIRequest
    type AttrLabel ResponsePolicyDecisionRequestPropertyInfo = "request"
    type AttrOrigin ResponsePolicyDecisionRequestPropertyInfo = ResponsePolicyDecision
    attrGet = getResponsePolicyDecisionRequest
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.request"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#g:attr:request"
        })
#endif

-- VVV Prop "response"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@response@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' responsePolicyDecision #response
-- @
getResponsePolicyDecisionResponse :: (MonadIO m, IsResponsePolicyDecision o) => o -> m WebKit2.URIResponse.URIResponse
getResponsePolicyDecisionResponse obj = MIO.liftIO $ checkUnexpectedNothing "getResponsePolicyDecisionResponse" $ B.Properties.getObjectPropertyObject obj "response" WebKit2.URIResponse.URIResponse

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionResponsePropertyInfo
instance AttrInfo ResponsePolicyDecisionResponsePropertyInfo where
    type AttrAllowedOps ResponsePolicyDecisionResponsePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ResponsePolicyDecisionResponsePropertyInfo = IsResponsePolicyDecision
    type AttrSetTypeConstraint ResponsePolicyDecisionResponsePropertyInfo = (~) ()
    type AttrTransferTypeConstraint ResponsePolicyDecisionResponsePropertyInfo = (~) ()
    type AttrTransferType ResponsePolicyDecisionResponsePropertyInfo = ()
    type AttrGetType ResponsePolicyDecisionResponsePropertyInfo = WebKit2.URIResponse.URIResponse
    type AttrLabel ResponsePolicyDecisionResponsePropertyInfo = "response"
    type AttrOrigin ResponsePolicyDecisionResponsePropertyInfo = ResponsePolicyDecision
    attrGet = getResponsePolicyDecisionResponse
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.response"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#g:attr:response"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ResponsePolicyDecision
type instance O.AttributeList ResponsePolicyDecision = ResponsePolicyDecisionAttributeList
type ResponsePolicyDecisionAttributeList = ('[ '("request", ResponsePolicyDecisionRequestPropertyInfo), '("response", ResponsePolicyDecisionResponsePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
responsePolicyDecisionRequest :: AttrLabelProxy "request"
responsePolicyDecisionRequest = AttrLabelProxy

responsePolicyDecisionResponse :: AttrLabelProxy "response"
responsePolicyDecisionResponse = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ResponsePolicyDecision = ResponsePolicyDecisionSignalList
type ResponsePolicyDecisionSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method ResponsePolicyDecision::get_request
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ResponsePolicyDecision" }
--           , argCType = Just "WebKitResponsePolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitResponsePolicyDecision"
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIRequest" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_response_policy_decision_get_request" webkit_response_policy_decision_get_request :: 
    Ptr ResponsePolicyDecision ->           -- decision : TInterface (Name {namespace = "WebKit2", name = "ResponsePolicyDecision"})
    IO (Ptr WebKit2.URIRequest.URIRequest)

-- | Return the t'GI.WebKit2.Objects.URIRequest.URIRequest' associated with the response decision.
-- 
-- Modifications to the returned object are \<emphasis>not\<\/emphasis> taken
-- into account when the request is sent over the network, and is intended
-- only to aid in evaluating whether a response decision should be taken or
-- not. To modify requests before they are sent over the network the
-- @/WebKitPage::send-request/@ signal can be used instead.
responsePolicyDecisionGetRequest ::
    (B.CallStack.HasCallStack, MonadIO m, IsResponsePolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision'
    -> m WebKit2.URIRequest.URIRequest
    -- ^ __Returns:__ The URI request that is associated with this policy decision.
responsePolicyDecisionGetRequest decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_response_policy_decision_get_request decision'
    checkUnexpectedReturnNULL "responsePolicyDecisionGetRequest" result
    result' <- (newObject WebKit2.URIRequest.URIRequest) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionGetRequestMethodInfo
instance (signature ~ (m WebKit2.URIRequest.URIRequest), MonadIO m, IsResponsePolicyDecision a) => O.OverloadedMethod ResponsePolicyDecisionGetRequestMethodInfo a signature where
    overloadedMethod = responsePolicyDecisionGetRequest

instance O.OverloadedMethodInfo ResponsePolicyDecisionGetRequestMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.responsePolicyDecisionGetRequest",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#v:responsePolicyDecisionGetRequest"
        })


#endif

-- method ResponsePolicyDecision::get_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ResponsePolicyDecision" }
--           , argCType = Just "WebKitResponsePolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitResponsePolicyDecision"
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

foreign import ccall "webkit_response_policy_decision_get_response" webkit_response_policy_decision_get_response :: 
    Ptr ResponsePolicyDecision ->           -- decision : TInterface (Name {namespace = "WebKit2", name = "ResponsePolicyDecision"})
    IO (Ptr WebKit2.URIResponse.URIResponse)

-- | Gets the value of the [ResponsePolicyDecision:response]("GI.WebKit2.Objects.ResponsePolicyDecision#g:attr:response") property.
responsePolicyDecisionGetResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsResponsePolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision'
    -> m WebKit2.URIResponse.URIResponse
    -- ^ __Returns:__ The URI response that is associated with this policy decision.
responsePolicyDecisionGetResponse decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_response_policy_decision_get_response decision'
    checkUnexpectedReturnNULL "responsePolicyDecisionGetResponse" result
    result' <- (newObject WebKit2.URIResponse.URIResponse) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionGetResponseMethodInfo
instance (signature ~ (m WebKit2.URIResponse.URIResponse), MonadIO m, IsResponsePolicyDecision a) => O.OverloadedMethod ResponsePolicyDecisionGetResponseMethodInfo a signature where
    overloadedMethod = responsePolicyDecisionGetResponse

instance O.OverloadedMethodInfo ResponsePolicyDecisionGetResponseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.responsePolicyDecisionGetResponse",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#v:responsePolicyDecisionGetResponse"
        })


#endif

-- method ResponsePolicyDecision::is_main_frame_main_resource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ResponsePolicyDecision" }
--           , argCType = Just "WebKitResponsePolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitResponsePolicyDecision"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_response_policy_decision_is_main_frame_main_resource" webkit_response_policy_decision_is_main_frame_main_resource :: 
    Ptr ResponsePolicyDecision ->           -- decision : TInterface (Name {namespace = "WebKit2", name = "ResponsePolicyDecision"})
    IO CInt

-- | Gets whether the request is the main frame main resource
-- 
-- /Since: 2.40/
responsePolicyDecisionIsMainFrameMainResource ::
    (B.CallStack.HasCallStack, MonadIO m, IsResponsePolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the request is the main frame main resouce or 'P.False' otherwise
responsePolicyDecisionIsMainFrameMainResource decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_response_policy_decision_is_main_frame_main_resource decision'
    let result' = (/= 0) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionIsMainFrameMainResourceMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsResponsePolicyDecision a) => O.OverloadedMethod ResponsePolicyDecisionIsMainFrameMainResourceMethodInfo a signature where
    overloadedMethod = responsePolicyDecisionIsMainFrameMainResource

instance O.OverloadedMethodInfo ResponsePolicyDecisionIsMainFrameMainResourceMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.responsePolicyDecisionIsMainFrameMainResource",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#v:responsePolicyDecisionIsMainFrameMainResource"
        })


#endif

-- method ResponsePolicyDecision::is_mime_type_supported
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ResponsePolicyDecision" }
--           , argCType = Just "WebKitResponsePolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitResponsePolicyDecision"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_response_policy_decision_is_mime_type_supported" webkit_response_policy_decision_is_mime_type_supported :: 
    Ptr ResponsePolicyDecision ->           -- decision : TInterface (Name {namespace = "WebKit2", name = "ResponsePolicyDecision"})
    IO CInt

-- | Gets whether the MIME type of the response can be displayed in the t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- Gets whether the MIME type of the response can be displayed in the t'GI.WebKit2.Objects.WebView.WebView'
-- that triggered this policy decision request. See also 'GI.WebKit2.Objects.WebView.webViewCanShowMimeType'.
-- 
-- /Since: 2.4/
responsePolicyDecisionIsMimeTypeSupported ::
    (B.CallStack.HasCallStack, MonadIO m, IsResponsePolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the MIME type of the response is supported or 'P.False' otherwise
responsePolicyDecisionIsMimeTypeSupported decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_response_policy_decision_is_mime_type_supported decision'
    let result' = (/= 0) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data ResponsePolicyDecisionIsMimeTypeSupportedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsResponsePolicyDecision a) => O.OverloadedMethod ResponsePolicyDecisionIsMimeTypeSupportedMethodInfo a signature where
    overloadedMethod = responsePolicyDecisionIsMimeTypeSupported

instance O.OverloadedMethodInfo ResponsePolicyDecisionIsMimeTypeSupportedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ResponsePolicyDecision.responsePolicyDecisionIsMimeTypeSupported",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ResponsePolicyDecision.html#v:responsePolicyDecisionIsMimeTypeSupported"
        })


#endif


