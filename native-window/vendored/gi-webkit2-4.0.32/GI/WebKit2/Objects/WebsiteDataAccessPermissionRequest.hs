{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for accessing website data from third-party domains.
-- 
-- WebKitWebsiteDataAccessPermissionRequest represents a request for
-- permission to allow a third-party domain access its cookies.
-- 
-- When a WebKitWebsiteDataAccessPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- /Since: 2.30/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest
    ( 

-- * Exported types
    WebsiteDataAccessPermissionRequest(..)  ,
    IsWebsiteDataAccessPermissionRequest    ,
    toWebsiteDataAccessPermissionRequest    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [allow]("GI.WebKit2.Interfaces.PermissionRequest#g:method:allow"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deny]("GI.WebKit2.Interfaces.PermissionRequest#g:method:deny"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getCurrentDomain]("GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest#g:method:getCurrentDomain"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRequestingDomain]("GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest#g:method:getRequestingDomain").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWebsiteDataAccessPermissionRequestMethod,
#endif

-- ** getCurrentDomain #method:getCurrentDomain#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataAccessPermissionRequestGetCurrentDomainMethodInfo,
#endif
    websiteDataAccessPermissionRequestGetCurrentDomain,


-- ** getRequestingDomain #method:getRequestingDomain#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataAccessPermissionRequestGetRequestingDomainMethodInfo,
#endif
    websiteDataAccessPermissionRequestGetRequestingDomain,




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
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest

#endif

-- | Memory-managed wrapper type.
newtype WebsiteDataAccessPermissionRequest = WebsiteDataAccessPermissionRequest (SP.ManagedPtr WebsiteDataAccessPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebsiteDataAccessPermissionRequest where
    toManagedPtr (WebsiteDataAccessPermissionRequest p) = p

foreign import ccall "webkit_website_data_access_permission_request_get_type"
    c_webkit_website_data_access_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebsiteDataAccessPermissionRequest where
    glibType = c_webkit_website_data_access_permission_request_get_type

instance B.Types.GObject WebsiteDataAccessPermissionRequest

-- | Type class for types which can be safely cast to t'WebsiteDataAccessPermissionRequest', for instance with `toWebsiteDataAccessPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf WebsiteDataAccessPermissionRequest o) => IsWebsiteDataAccessPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf WebsiteDataAccessPermissionRequest o) => IsWebsiteDataAccessPermissionRequest o

instance O.HasParentTypes WebsiteDataAccessPermissionRequest
type instance O.ParentTypes WebsiteDataAccessPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'WebsiteDataAccessPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebsiteDataAccessPermissionRequest :: (MIO.MonadIO m, IsWebsiteDataAccessPermissionRequest o) => o -> m WebsiteDataAccessPermissionRequest
toWebsiteDataAccessPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebsiteDataAccessPermissionRequest

-- | Convert t'WebsiteDataAccessPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebsiteDataAccessPermissionRequest) where
    gvalueGType_ = c_webkit_website_data_access_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebsiteDataAccessPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebsiteDataAccessPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebsiteDataAccessPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebsiteDataAccessPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebsiteDataAccessPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getCurrentDomain" o = WebsiteDataAccessPermissionRequestGetCurrentDomainMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "getRequestingDomain" o = WebsiteDataAccessPermissionRequestGetRequestingDomainMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebsiteDataAccessPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebsiteDataAccessPermissionRequestMethod t WebsiteDataAccessPermissionRequest, O.OverloadedMethod info WebsiteDataAccessPermissionRequest p) => OL.IsLabel t (WebsiteDataAccessPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebsiteDataAccessPermissionRequestMethod t WebsiteDataAccessPermissionRequest, O.OverloadedMethod info WebsiteDataAccessPermissionRequest p, R.HasField t WebsiteDataAccessPermissionRequest p) => R.HasField t WebsiteDataAccessPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebsiteDataAccessPermissionRequestMethod t WebsiteDataAccessPermissionRequest, O.OverloadedMethodInfo info WebsiteDataAccessPermissionRequest) => OL.IsLabel t (O.MethodProxy info WebsiteDataAccessPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebsiteDataAccessPermissionRequest
type instance O.AttributeList WebsiteDataAccessPermissionRequest = WebsiteDataAccessPermissionRequestAttributeList
type WebsiteDataAccessPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebsiteDataAccessPermissionRequest = WebsiteDataAccessPermissionRequestSignalList
type WebsiteDataAccessPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebsiteDataAccessPermissionRequest::get_current_domain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2"
--                   , name = "WebsiteDataAccessPermissionRequest"
--                   }
--           , argCType = Just "WebKitWebsiteDataAccessPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataAccessPermissionRequest"
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

foreign import ccall "webkit_website_data_access_permission_request_get_current_domain" webkit_website_data_access_permission_request_get_current_domain :: 
    Ptr WebsiteDataAccessPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataAccessPermissionRequest"})
    IO CString

-- | Get the current domain being browsed.
-- 
-- /Since: 2.30/
websiteDataAccessPermissionRequestGetCurrentDomain ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataAccessPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest.WebsiteDataAccessPermissionRequest'
    -> m T.Text
    -- ^ __Returns:__ the current domain name
websiteDataAccessPermissionRequestGetCurrentDomain request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_website_data_access_permission_request_get_current_domain request'
    checkUnexpectedReturnNULL "websiteDataAccessPermissionRequestGetCurrentDomain" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataAccessPermissionRequestGetCurrentDomainMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsWebsiteDataAccessPermissionRequest a) => O.OverloadedMethod WebsiteDataAccessPermissionRequestGetCurrentDomainMethodInfo a signature where
    overloadedMethod = websiteDataAccessPermissionRequestGetCurrentDomain

instance O.OverloadedMethodInfo WebsiteDataAccessPermissionRequestGetCurrentDomainMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest.websiteDataAccessPermissionRequestGetCurrentDomain",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataAccessPermissionRequest.html#v:websiteDataAccessPermissionRequestGetCurrentDomain"
        })


#endif

-- method WebsiteDataAccessPermissionRequest::get_requesting_domain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2"
--                   , name = "WebsiteDataAccessPermissionRequest"
--                   }
--           , argCType = Just "WebKitWebsiteDataAccessPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataAccessPermissionRequest"
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

foreign import ccall "webkit_website_data_access_permission_request_get_requesting_domain" webkit_website_data_access_permission_request_get_requesting_domain :: 
    Ptr WebsiteDataAccessPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataAccessPermissionRequest"})
    IO CString

-- | Get the domain requesting permission to access its cookies while browsing the current domain.
-- 
-- /Since: 2.30/
websiteDataAccessPermissionRequestGetRequestingDomain ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataAccessPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest.WebsiteDataAccessPermissionRequest'
    -> m T.Text
    -- ^ __Returns:__ the requesting domain name
websiteDataAccessPermissionRequestGetRequestingDomain request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_website_data_access_permission_request_get_requesting_domain request'
    checkUnexpectedReturnNULL "websiteDataAccessPermissionRequestGetRequestingDomain" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataAccessPermissionRequestGetRequestingDomainMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsWebsiteDataAccessPermissionRequest a) => O.OverloadedMethod WebsiteDataAccessPermissionRequestGetRequestingDomainMethodInfo a signature where
    overloadedMethod = websiteDataAccessPermissionRequestGetRequestingDomain

instance O.OverloadedMethodInfo WebsiteDataAccessPermissionRequestGetRequestingDomainMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest.websiteDataAccessPermissionRequestGetRequestingDomain",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataAccessPermissionRequest.html#v:websiteDataAccessPermissionRequestGetRequestingDomain"
        })


#endif


