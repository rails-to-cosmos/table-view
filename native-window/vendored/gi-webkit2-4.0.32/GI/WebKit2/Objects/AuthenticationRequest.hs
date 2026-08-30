{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents an authentication request.
-- 
-- Whenever a client attempts to load a page protected by HTTP
-- authentication, credentials will need to be provided to authorize access.
-- To allow the client to decide how it wishes to handle authentication,
-- WebKit will fire a [WebView::authenticate]("GI.WebKit2.Objects.WebView#g:signal:authenticate") signal with a
-- WebKitAuthenticationRequest object to provide client side
-- authentication support. Credentials are exposed through the
-- t'GI.WebKit2.Structs.Credential.Credential' object.
-- 
-- In case the client application does not wish
-- to handle this signal WebKit will provide a default handler. To handle
-- authentication asynchronously, simply increase the reference count of the
-- WebKitAuthenticationRequest object.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.AuthenticationRequest
    ( 

-- * Exported types
    AuthenticationRequest(..)               ,
    IsAuthenticationRequest                 ,
    toAuthenticationRequest                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [authenticate]("GI.WebKit2.Objects.AuthenticationRequest#g:method:authenticate"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [canSaveCredentials]("GI.WebKit2.Objects.AuthenticationRequest#g:method:canSaveCredentials"), [cancel]("GI.WebKit2.Objects.AuthenticationRequest#g:method:cancel"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isForProxy]("GI.WebKit2.Objects.AuthenticationRequest#g:method:isForProxy"), [isRetry]("GI.WebKit2.Objects.AuthenticationRequest#g:method:isRetry"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getCertificatePinFlags]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getCertificatePinFlags"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getHost]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getHost"), [getPort]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getPort"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getProposedCredential]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getProposedCredential"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRealm]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getRealm"), [getScheme]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getScheme"), [getSecurityOrigin]("GI.WebKit2.Objects.AuthenticationRequest#g:method:getSecurityOrigin").
-- 
-- ==== Setters
-- [setCanSaveCredentials]("GI.WebKit2.Objects.AuthenticationRequest#g:method:setCanSaveCredentials"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setProposedCredential]("GI.WebKit2.Objects.AuthenticationRequest#g:method:setProposedCredential").

#if defined(ENABLE_OVERLOADING)
    ResolveAuthenticationRequestMethod      ,
#endif

-- ** authenticate #method:authenticate#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestAuthenticateMethodInfo,
#endif
    authenticationRequestAuthenticate       ,


-- ** canSaveCredentials #method:canSaveCredentials#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestCanSaveCredentialsMethodInfo,
#endif
    authenticationRequestCanSaveCredentials ,


-- ** cancel #method:cancel#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestCancelMethodInfo   ,
#endif
    authenticationRequestCancel             ,


-- ** getCertificatePinFlags #method:getCertificatePinFlags#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetCertificatePinFlagsMethodInfo,
#endif
    authenticationRequestGetCertificatePinFlags,


-- ** getHost #method:getHost#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetHostMethodInfo  ,
#endif
    authenticationRequestGetHost            ,


-- ** getPort #method:getPort#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetPortMethodInfo  ,
#endif
    authenticationRequestGetPort            ,


-- ** getProposedCredential #method:getProposedCredential#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetProposedCredentialMethodInfo,
#endif
    authenticationRequestGetProposedCredential,


-- ** getRealm #method:getRealm#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetRealmMethodInfo ,
#endif
    authenticationRequestGetRealm           ,


-- ** getScheme #method:getScheme#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetSchemeMethodInfo,
#endif
    authenticationRequestGetScheme          ,


-- ** getSecurityOrigin #method:getSecurityOrigin#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestGetSecurityOriginMethodInfo,
#endif
    authenticationRequestGetSecurityOrigin  ,


-- ** isForProxy #method:isForProxy#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestIsForProxyMethodInfo,
#endif
    authenticationRequestIsForProxy         ,


-- ** isRetry #method:isRetry#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestIsRetryMethodInfo  ,
#endif
    authenticationRequestIsRetry            ,


-- ** setCanSaveCredentials #method:setCanSaveCredentials#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestSetCanSaveCredentialsMethodInfo,
#endif
    authenticationRequestSetCanSaveCredentials,


-- ** setProposedCredential #method:setProposedCredential#

#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestSetProposedCredentialMethodInfo,
#endif
    authenticationRequestSetProposedCredential,




 -- * Signals


-- ** authenticated #signal:authenticated#

    AuthenticationRequestAuthenticatedCallback,
#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestAuthenticatedSignalInfo,
#endif
    afterAuthenticationRequestAuthenticated ,
    onAuthenticationRequestAuthenticated    ,


-- ** cancelled #signal:cancelled#

    AuthenticationRequestCancelledCallback  ,
#if defined(ENABLE_OVERLOADING)
    AuthenticationRequestCancelledSignalInfo,
#endif
    afterAuthenticationRequestCancelled     ,
    onAuthenticationRequestCancelled        ,




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
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Credential as WebKit2.Credential
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Flags as Gio.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Credential as WebKit2.Credential
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#endif

-- | Memory-managed wrapper type.
newtype AuthenticationRequest = AuthenticationRequest (SP.ManagedPtr AuthenticationRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype AuthenticationRequest where
    toManagedPtr (AuthenticationRequest p) = p

foreign import ccall "webkit_authentication_request_get_type"
    c_webkit_authentication_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject AuthenticationRequest where
    glibType = c_webkit_authentication_request_get_type

instance B.Types.GObject AuthenticationRequest

-- | Type class for types which can be safely cast to t'AuthenticationRequest', for instance with `toAuthenticationRequest`.
class (SP.GObject o, O.IsDescendantOf AuthenticationRequest o) => IsAuthenticationRequest o
instance (SP.GObject o, O.IsDescendantOf AuthenticationRequest o) => IsAuthenticationRequest o

instance O.HasParentTypes AuthenticationRequest
type instance O.ParentTypes AuthenticationRequest = '[GObject.Object.Object]

-- | Cast to t'AuthenticationRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toAuthenticationRequest :: (MIO.MonadIO m, IsAuthenticationRequest o) => o -> m AuthenticationRequest
toAuthenticationRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo AuthenticationRequest

-- | Convert t'AuthenticationRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe AuthenticationRequest) where
    gvalueGType_ = c_webkit_authentication_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr AuthenticationRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr AuthenticationRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject AuthenticationRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveAuthenticationRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveAuthenticationRequestMethod "authenticate" o = AuthenticationRequestAuthenticateMethodInfo
    ResolveAuthenticationRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAuthenticationRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAuthenticationRequestMethod "canSaveCredentials" o = AuthenticationRequestCanSaveCredentialsMethodInfo
    ResolveAuthenticationRequestMethod "cancel" o = AuthenticationRequestCancelMethodInfo
    ResolveAuthenticationRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAuthenticationRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAuthenticationRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAuthenticationRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAuthenticationRequestMethod "isForProxy" o = AuthenticationRequestIsForProxyMethodInfo
    ResolveAuthenticationRequestMethod "isRetry" o = AuthenticationRequestIsRetryMethodInfo
    ResolveAuthenticationRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAuthenticationRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAuthenticationRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAuthenticationRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAuthenticationRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAuthenticationRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAuthenticationRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAuthenticationRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAuthenticationRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAuthenticationRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAuthenticationRequestMethod "getCertificatePinFlags" o = AuthenticationRequestGetCertificatePinFlagsMethodInfo
    ResolveAuthenticationRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAuthenticationRequestMethod "getHost" o = AuthenticationRequestGetHostMethodInfo
    ResolveAuthenticationRequestMethod "getPort" o = AuthenticationRequestGetPortMethodInfo
    ResolveAuthenticationRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAuthenticationRequestMethod "getProposedCredential" o = AuthenticationRequestGetProposedCredentialMethodInfo
    ResolveAuthenticationRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAuthenticationRequestMethod "getRealm" o = AuthenticationRequestGetRealmMethodInfo
    ResolveAuthenticationRequestMethod "getScheme" o = AuthenticationRequestGetSchemeMethodInfo
    ResolveAuthenticationRequestMethod "getSecurityOrigin" o = AuthenticationRequestGetSecurityOriginMethodInfo
    ResolveAuthenticationRequestMethod "setCanSaveCredentials" o = AuthenticationRequestSetCanSaveCredentialsMethodInfo
    ResolveAuthenticationRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAuthenticationRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAuthenticationRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAuthenticationRequestMethod "setProposedCredential" o = AuthenticationRequestSetProposedCredentialMethodInfo
    ResolveAuthenticationRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAuthenticationRequestMethod t AuthenticationRequest, O.OverloadedMethod info AuthenticationRequest p) => OL.IsLabel t (AuthenticationRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveAuthenticationRequestMethod t AuthenticationRequest, O.OverloadedMethod info AuthenticationRequest p, R.HasField t AuthenticationRequest p) => R.HasField t AuthenticationRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveAuthenticationRequestMethod t AuthenticationRequest, O.OverloadedMethodInfo info AuthenticationRequest) => OL.IsLabel t (O.MethodProxy info AuthenticationRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal AuthenticationRequest::authenticated
-- | This signal is emitted when the user authentication request succeeded.
-- Applications handling their own credential storage should connect to
-- this signal to save the credentials.
-- 
-- /Since: 2.30/
type AuthenticationRequestAuthenticatedCallback =
    WebKit2.Credential.Credential
    -- ^ /@credential@/: the t'GI.WebKit2.Structs.Credential.Credential' accepted
    -> IO ()

type C_AuthenticationRequestAuthenticatedCallback =
    Ptr AuthenticationRequest ->            -- object
    Ptr WebKit2.Credential.Credential ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AuthenticationRequestAuthenticatedCallback`.
foreign import ccall "wrapper"
    mk_AuthenticationRequestAuthenticatedCallback :: C_AuthenticationRequestAuthenticatedCallback -> IO (FunPtr C_AuthenticationRequestAuthenticatedCallback)

wrap_AuthenticationRequestAuthenticatedCallback :: 
    GObject a => (a -> AuthenticationRequestAuthenticatedCallback) ->
    C_AuthenticationRequestAuthenticatedCallback
wrap_AuthenticationRequestAuthenticatedCallback gi'cb gi'selfPtr credential _ = do
    B.ManagedPtr.withTransient  credential $ \credential' -> do
        B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  credential'


-- | Connect a signal handler for the [authenticated](#signal:authenticated) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' authenticationRequest #authenticated callback
-- @
-- 
-- 
onAuthenticationRequestAuthenticated :: (IsAuthenticationRequest a, MonadIO m) => a -> ((?self :: a) => AuthenticationRequestAuthenticatedCallback) -> m SignalHandlerId
onAuthenticationRequestAuthenticated obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AuthenticationRequestAuthenticatedCallback wrapped
    wrapped'' <- mk_AuthenticationRequestAuthenticatedCallback wrapped'
    connectSignalFunPtr obj "authenticated" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [authenticated](#signal:authenticated) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' authenticationRequest #authenticated callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterAuthenticationRequestAuthenticated :: (IsAuthenticationRequest a, MonadIO m) => a -> ((?self :: a) => AuthenticationRequestAuthenticatedCallback) -> m SignalHandlerId
afterAuthenticationRequestAuthenticated obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AuthenticationRequestAuthenticatedCallback wrapped
    wrapped'' <- mk_AuthenticationRequestAuthenticatedCallback wrapped'
    connectSignalFunPtr obj "authenticated" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestAuthenticatedSignalInfo
instance SignalInfo AuthenticationRequestAuthenticatedSignalInfo where
    type HaskellCallbackType AuthenticationRequestAuthenticatedSignalInfo = AuthenticationRequestAuthenticatedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AuthenticationRequestAuthenticatedCallback cb
        cb'' <- mk_AuthenticationRequestAuthenticatedCallback cb'
        connectSignalFunPtr obj "authenticated" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest::authenticated"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#g:signal:authenticated"})

#endif

-- signal AuthenticationRequest::cancelled
-- | This signal is emitted when the user authentication request is
-- cancelled. It allows the application to dismiss its authentication
-- dialog in case of page load failure for example.
-- 
-- /Since: 2.2/
type AuthenticationRequestCancelledCallback =
    IO ()

type C_AuthenticationRequestCancelledCallback =
    Ptr AuthenticationRequest ->            -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AuthenticationRequestCancelledCallback`.
foreign import ccall "wrapper"
    mk_AuthenticationRequestCancelledCallback :: C_AuthenticationRequestCancelledCallback -> IO (FunPtr C_AuthenticationRequestCancelledCallback)

wrap_AuthenticationRequestCancelledCallback :: 
    GObject a => (a -> AuthenticationRequestCancelledCallback) ->
    C_AuthenticationRequestCancelledCallback
wrap_AuthenticationRequestCancelledCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [cancelled](#signal:cancelled) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' authenticationRequest #cancelled callback
-- @
-- 
-- 
onAuthenticationRequestCancelled :: (IsAuthenticationRequest a, MonadIO m) => a -> ((?self :: a) => AuthenticationRequestCancelledCallback) -> m SignalHandlerId
onAuthenticationRequestCancelled obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AuthenticationRequestCancelledCallback wrapped
    wrapped'' <- mk_AuthenticationRequestCancelledCallback wrapped'
    connectSignalFunPtr obj "cancelled" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cancelled](#signal:cancelled) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' authenticationRequest #cancelled callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterAuthenticationRequestCancelled :: (IsAuthenticationRequest a, MonadIO m) => a -> ((?self :: a) => AuthenticationRequestCancelledCallback) -> m SignalHandlerId
afterAuthenticationRequestCancelled obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AuthenticationRequestCancelledCallback wrapped
    wrapped'' <- mk_AuthenticationRequestCancelledCallback wrapped'
    connectSignalFunPtr obj "cancelled" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestCancelledSignalInfo
instance SignalInfo AuthenticationRequestCancelledSignalInfo where
    type HaskellCallbackType AuthenticationRequestCancelledSignalInfo = AuthenticationRequestCancelledCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AuthenticationRequestCancelledCallback cb
        cb'' <- mk_AuthenticationRequestCancelledCallback cb'
        connectSignalFunPtr obj "cancelled" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest::cancelled"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#g:signal:cancelled"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AuthenticationRequest
type instance O.AttributeList AuthenticationRequest = AuthenticationRequestAttributeList
type AuthenticationRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList AuthenticationRequest = AuthenticationRequestSignalList
type AuthenticationRequestSignalList = ('[ '("authenticated", AuthenticationRequestAuthenticatedSignalInfo), '("cancelled", AuthenticationRequestCancelledSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method AuthenticationRequest::authenticate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitCredential, or %NULL"
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

foreign import ccall "webkit_authentication_request_authenticate" webkit_authentication_request_authenticate :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    Ptr WebKit2.Credential.Credential ->    -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO ()

-- | Authenticate the t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'.
-- 
-- Authenticate the t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest' using the t'GI.WebKit2.Structs.Credential.Credential'
-- supplied. To continue without credentials, pass 'P.Nothing' as /@credential@/.
-- 
-- /Since: 2.2/
authenticationRequestAuthenticate ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> Maybe (WebKit2.Credential.Credential)
    -- ^ /@credential@/: A t'GI.WebKit2.Structs.Credential.Credential', or 'P.Nothing'
    -> m ()
authenticationRequestAuthenticate request credential = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    maybeCredential <- case credential of
        Nothing -> return FP.nullPtr
        Just jCredential -> do
            jCredential' <- unsafeManagedPtrGetPtr jCredential
            return jCredential'
    webkit_authentication_request_authenticate request' maybeCredential
    touchManagedPtr request
    whenJust credential touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestAuthenticateMethodInfo
instance (signature ~ (Maybe (WebKit2.Credential.Credential) -> m ()), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestAuthenticateMethodInfo a signature where
    overloadedMethod = authenticationRequestAuthenticate

instance O.OverloadedMethodInfo AuthenticationRequestAuthenticateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestAuthenticate",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestAuthenticate"
        })


#endif

-- method AuthenticationRequest::can_save_credentials
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_can_save_credentials" webkit_authentication_request_can_save_credentials :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CInt

-- | Determine whether this t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest' should allow the storage of credentials.
-- 
-- Determine whether the authentication method associated with this
-- t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest' should allow the storage of credentials.
-- This will return 'P.False' if WebKit doesn\'t support credential storing,
-- if private browsing is enabled, or if persistent credential storage has been
-- disabled in t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager', unless credentials saving has been
-- explicitly enabled with 'GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestSetCanSaveCredentials'.
-- 
-- /Since: 2.2/
authenticationRequestCanSaveCredentials ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if WebKit can store credentials or 'P.False' otherwise.
authenticationRequestCanSaveCredentials request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_can_save_credentials request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestCanSaveCredentialsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestCanSaveCredentialsMethodInfo a signature where
    overloadedMethod = authenticationRequestCanSaveCredentials

instance O.OverloadedMethodInfo AuthenticationRequestCanSaveCredentialsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestCanSaveCredentials",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestCanSaveCredentials"
        })


#endif

-- method AuthenticationRequest::cancel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_cancel" webkit_authentication_request_cancel :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO ()

-- | Cancel the authentication challenge.
-- 
-- This will also cancel the page loading and result in a
-- [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") signal with a t'GI.WebKit2.Enums.NetworkError' of type 'GI.WebKit2.Enums.NetworkErrorCancelled' being emitted.
-- 
-- /Since: 2.2/
authenticationRequestCancel ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m ()
authenticationRequestCancel request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_authentication_request_cancel request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestCancelMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestCancelMethodInfo a signature where
    overloadedMethod = authenticationRequestCancel

instance O.OverloadedMethodInfo AuthenticationRequestCancelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestCancel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestCancel"
        })


#endif

-- method AuthenticationRequest::get_certificate_pin_flags
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--               (TInterface Name { namespace = "Gio" , name = "TlsPasswordFlags" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_authentication_request_get_certificate_pin_flags" webkit_authentication_request_get_certificate_pin_flags :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CUInt

-- | Get the t'GI.Gio.Flags.TlsPasswordFlags' of the 'GI.WebKit2.Enums.AuthenticationSchemeClientCertificatePinRequested' authentication challenge.
-- 
-- /Since: 2.34/
authenticationRequestGetCertificatePinFlags ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m [Gio.Flags.TlsPasswordFlags]
    -- ^ __Returns:__ a t'GI.Gio.Flags.TlsPasswordFlags'
authenticationRequestGetCertificatePinFlags request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_certificate_pin_flags request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetCertificatePinFlagsMethodInfo
instance (signature ~ (m [Gio.Flags.TlsPasswordFlags]), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetCertificatePinFlagsMethodInfo a signature where
    overloadedMethod = authenticationRequestGetCertificatePinFlags

instance O.OverloadedMethodInfo AuthenticationRequestGetCertificatePinFlagsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetCertificatePinFlags",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetCertificatePinFlags"
        })


#endif

-- method AuthenticationRequest::get_host
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_get_host" webkit_authentication_request_get_host :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CString

-- | Get the host that this authentication challenge is applicable to.
-- 
-- /Since: 2.2/
authenticationRequestGetHost ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m T.Text
    -- ^ __Returns:__ The host of /@request@/.
authenticationRequestGetHost request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_host request'
    checkUnexpectedReturnNULL "authenticationRequestGetHost" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetHostMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetHostMethodInfo a signature where
    overloadedMethod = authenticationRequestGetHost

instance O.OverloadedMethodInfo AuthenticationRequestGetHostMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetHost",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetHost"
        })


#endif

-- method AuthenticationRequest::get_port
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_get_port" webkit_authentication_request_get_port :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO Word32

-- | Get the port that this authentication challenge is applicable to.
-- 
-- /Since: 2.2/
authenticationRequestGetPort ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m Word32
    -- ^ __Returns:__ The port of /@request@/.
authenticationRequestGetPort request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_port request'
    touchManagedPtr request
    return result

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetPortMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetPortMethodInfo a signature where
    overloadedMethod = authenticationRequestGetPort

instance O.OverloadedMethodInfo AuthenticationRequestGetPortMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetPort",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetPort"
        })


#endif

-- method AuthenticationRequest::get_proposed_credential
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Credential" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_authentication_request_get_proposed_credential" webkit_authentication_request_get_proposed_credential :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO (Ptr WebKit2.Credential.Credential)

-- | Get the t'GI.WebKit2.Structs.Credential.Credential' of the proposed authentication challenge.
-- 
-- Get the t'GI.WebKit2.Structs.Credential.Credential' of the proposed authentication challenge that was
-- stored from a previous session. The client can use this directly for
-- authentication or construct their own t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
authenticationRequestGetProposedCredential ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m WebKit2.Credential.Credential
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.Credential.Credential' encapsulating credential details
    -- or 'P.Nothing' if there is no stored credential.
authenticationRequestGetProposedCredential request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_proposed_credential request'
    checkUnexpectedReturnNULL "authenticationRequestGetProposedCredential" result
    result' <- (wrapBoxed WebKit2.Credential.Credential) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetProposedCredentialMethodInfo
instance (signature ~ (m WebKit2.Credential.Credential), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetProposedCredentialMethodInfo a signature where
    overloadedMethod = authenticationRequestGetProposedCredential

instance O.OverloadedMethodInfo AuthenticationRequestGetProposedCredentialMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetProposedCredential",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetProposedCredential"
        })


#endif

-- method AuthenticationRequest::get_realm
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_get_realm" webkit_authentication_request_get_realm :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CString

-- | Get the realm that this authentication challenge is applicable to.
-- 
-- /Since: 2.2/
authenticationRequestGetRealm ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m T.Text
    -- ^ __Returns:__ The realm of /@request@/.
authenticationRequestGetRealm request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_realm request'
    checkUnexpectedReturnNULL "authenticationRequestGetRealm" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetRealmMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetRealmMethodInfo a signature where
    overloadedMethod = authenticationRequestGetRealm

instance O.OverloadedMethodInfo AuthenticationRequestGetRealmMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetRealm",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetRealm"
        })


#endif

-- method AuthenticationRequest::get_scheme
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--                  Name { namespace = "WebKit2" , name = "AuthenticationScheme" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_authentication_request_get_scheme" webkit_authentication_request_get_scheme :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CUInt

-- | Get the authentication scheme of the authentication challenge.
-- 
-- /Since: 2.2/
authenticationRequestGetScheme ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m WebKit2.Enums.AuthenticationScheme
    -- ^ __Returns:__ The t'GI.WebKit2.Enums.AuthenticationScheme' of /@request@/.
authenticationRequestGetScheme request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_scheme request'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetSchemeMethodInfo
instance (signature ~ (m WebKit2.Enums.AuthenticationScheme), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetSchemeMethodInfo a signature where
    overloadedMethod = authenticationRequestGetScheme

instance O.OverloadedMethodInfo AuthenticationRequestGetSchemeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetScheme",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetScheme"
        })


#endif

-- method AuthenticationRequest::get_security_origin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--                  Name { namespace = "WebKit2" , name = "SecurityOrigin" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_authentication_request_get_security_origin" webkit_authentication_request_get_security_origin :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO (Ptr WebKit2.SecurityOrigin.SecurityOrigin)

-- | Get the t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' that this authentication challenge is applicable to.
-- 
-- /Since: 2.30/
authenticationRequestGetSecurityOrigin ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m WebKit2.SecurityOrigin.SecurityOrigin
    -- ^ __Returns:__ a newly created t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'.
authenticationRequestGetSecurityOrigin request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_get_security_origin request'
    checkUnexpectedReturnNULL "authenticationRequestGetSecurityOrigin" result
    result' <- (wrapBoxed WebKit2.SecurityOrigin.SecurityOrigin) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestGetSecurityOriginMethodInfo
instance (signature ~ (m WebKit2.SecurityOrigin.SecurityOrigin), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestGetSecurityOriginMethodInfo a signature where
    overloadedMethod = authenticationRequestGetSecurityOrigin

instance O.OverloadedMethodInfo AuthenticationRequestGetSecurityOriginMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetSecurityOrigin",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestGetSecurityOrigin"
        })


#endif

-- method AuthenticationRequest::is_for_proxy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_is_for_proxy" webkit_authentication_request_is_for_proxy :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CInt

-- | Determine whether the authentication challenge is associated with a proxy server.
-- 
-- Determine whether the authentication challenge is associated with a proxy server rather than an \"origin\" server.
-- 
-- /Since: 2.2/
authenticationRequestIsForProxy ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if authentication is for a proxy or 'P.False' otherwise.
authenticationRequestIsForProxy request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_is_for_proxy request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestIsForProxyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestIsForProxyMethodInfo a signature where
    overloadedMethod = authenticationRequestIsForProxy

instance O.OverloadedMethodInfo AuthenticationRequestIsForProxyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestIsForProxy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestIsForProxy"
        })


#endif

-- method AuthenticationRequest::is_retry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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

foreign import ccall "webkit_authentication_request_is_retry" webkit_authentication_request_is_retry :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    IO CInt

-- | Determine whether this this is a first attempt or a retry for this authentication challenge.
-- 
-- /Since: 2.2/
authenticationRequestIsRetry ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if authentication attempt is a retry or 'P.False' otherwise.
authenticationRequestIsRetry request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_authentication_request_is_retry request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestIsRetryMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestIsRetryMethodInfo a signature where
    overloadedMethod = authenticationRequestIsRetry

instance O.OverloadedMethodInfo AuthenticationRequestIsRetryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestIsRetry",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestIsRetry"
        })


#endif

-- method AuthenticationRequest::set_can_save_credentials
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--           { argCName = "enabled"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "value to set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_authentication_request_set_can_save_credentials" webkit_authentication_request_set_can_save_credentials :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set whether the authentication method associated with /@request@/
-- should allow the storage of credentials.
-- 
-- Set whether the authentication method associated with /@request@/
-- should allow the storage of credentials.
-- This should be used by applications handling their own credentials
-- storage to indicate that it should be supported even when internal
-- credential storage is disabled or unsupported.
-- Note that storing of credentials will not be allowed on ephemeral
-- sessions in any case.
-- 
-- /Since: 2.30/
authenticationRequestSetCanSaveCredentials ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> Bool
    -- ^ /@enabled@/: value to set
    -> m ()
authenticationRequestSetCanSaveCredentials request enabled = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_authentication_request_set_can_save_credentials request' enabled'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestSetCanSaveCredentialsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestSetCanSaveCredentialsMethodInfo a signature where
    overloadedMethod = authenticationRequestSetCanSaveCredentials

instance O.OverloadedMethodInfo AuthenticationRequestSetCanSaveCredentialsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestSetCanSaveCredentials",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestSetCanSaveCredentials"
        })


#endif

-- method AuthenticationRequest::set_proposed_credential
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AuthenticationRequest" }
--           , argCType = Just "WebKitAuthenticationRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAuthenticationRequest"
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
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential, or %NULL"
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

foreign import ccall "webkit_authentication_request_set_proposed_credential" webkit_authentication_request_set_proposed_credential :: 
    Ptr AuthenticationRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "AuthenticationRequest"})
    Ptr WebKit2.Credential.Credential ->    -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO ()

-- | Set the t'GI.WebKit2.Structs.Credential.Credential' of the proposed authentication challenge.
-- 
-- Set the t'GI.WebKit2.Structs.Credential.Credential' of the proposed authentication challenge that was
-- stored from a previous session. This should only be used by applications handling
-- their own credential storage. (When using the default WebKit credential storage,
-- 'GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestGetProposedCredential' already contains previously-stored
-- credentials.)
-- Passing a 'P.Nothing' /@credential@/ will clear the proposed credential.
-- 
-- /Since: 2.30/
authenticationRequestSetProposedCredential ::
    (B.CallStack.HasCallStack, MonadIO m, IsAuthenticationRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> WebKit2.Credential.Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential', or 'P.Nothing'
    -> m ()
authenticationRequestSetProposedCredential request credential = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    credential' <- unsafeManagedPtrGetPtr credential
    webkit_authentication_request_set_proposed_credential request' credential'
    touchManagedPtr request
    touchManagedPtr credential
    return ()

#if defined(ENABLE_OVERLOADING)
data AuthenticationRequestSetProposedCredentialMethodInfo
instance (signature ~ (WebKit2.Credential.Credential -> m ()), MonadIO m, IsAuthenticationRequest a) => O.OverloadedMethod AuthenticationRequestSetProposedCredentialMethodInfo a signature where
    overloadedMethod = authenticationRequestSetProposedCredential

instance O.OverloadedMethodInfo AuthenticationRequestSetProposedCredentialMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AuthenticationRequest.authenticationRequestSetProposedCredential",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AuthenticationRequest.html#v:authenticationRequestSetProposedCredential"
        })


#endif


