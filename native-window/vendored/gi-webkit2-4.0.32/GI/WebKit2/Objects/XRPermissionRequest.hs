{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for accessing virtual reality (VR) and
-- augmented reality (AR) devices, including sensors and head-mounted
-- displays.
-- 
-- WebKitXRPermissionRequest represents a request for permission to
-- decide whether WebKit can initialize an XR session through the
-- WebXR API.
-- 
-- When a WebKitXRPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- /Since: 2.52/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.XRPermissionRequest
    ( 

-- * Exported types
    XRPermissionRequest(..)                 ,
    IsXRPermissionRequest                   ,
    toXRPermissionRequest                   ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [allow]("GI.WebKit2.Interfaces.PermissionRequest#g:method:allow"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deny]("GI.WebKit2.Interfaces.PermissionRequest#g:method:deny"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getConsentOptionalFeatures]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getConsentOptionalFeatures"), [getConsentRequiredFeatures]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getConsentRequiredFeatures"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getGrantedFeatures]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getGrantedFeatures"), [getOptionalFeaturesRequested]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getOptionalFeaturesRequested"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRequiredFeaturesRequested]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getRequiredFeaturesRequested"), [getSecurityOrigin]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getSecurityOrigin"), [getSessionMode]("GI.WebKit2.Objects.XRPermissionRequest#g:method:getSessionMode").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setGrantedOptionalFeatures]("GI.WebKit2.Objects.XRPermissionRequest#g:method:setGrantedOptionalFeatures"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveXRPermissionRequestMethod        ,
#endif

-- ** getConsentOptionalFeatures #method:getConsentOptionalFeatures#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetConsentOptionalFeaturesMethodInfo,
#endif
    xRPermissionRequestGetConsentOptionalFeatures,


-- ** getConsentRequiredFeatures #method:getConsentRequiredFeatures#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetConsentRequiredFeaturesMethodInfo,
#endif
    xRPermissionRequestGetConsentRequiredFeatures,


-- ** getGrantedFeatures #method:getGrantedFeatures#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetGrantedFeaturesMethodInfo,
#endif
    xRPermissionRequestGetGrantedFeatures   ,


-- ** getOptionalFeaturesRequested #method:getOptionalFeaturesRequested#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetOptionalFeaturesRequestedMethodInfo,
#endif
    xRPermissionRequestGetOptionalFeaturesRequested,


-- ** getRequiredFeaturesRequested #method:getRequiredFeaturesRequested#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetRequiredFeaturesRequestedMethodInfo,
#endif
    xRPermissionRequestGetRequiredFeaturesRequested,


-- ** getSecurityOrigin #method:getSecurityOrigin#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetSecurityOriginMethodInfo,
#endif
    xRPermissionRequestGetSecurityOrigin    ,


-- ** getSessionMode #method:getSessionMode#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestGetSessionModeMethodInfo,
#endif
    xRPermissionRequestGetSessionMode       ,


-- ** setGrantedOptionalFeatures #method:setGrantedOptionalFeatures#

#if defined(ENABLE_OVERLOADING)
    XRPermissionRequestSetGrantedOptionalFeaturesMethodInfo,
#endif
    xRPermissionRequestSetGrantedOptionalFeatures,




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
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#endif

-- | Memory-managed wrapper type.
newtype XRPermissionRequest = XRPermissionRequest (SP.ManagedPtr XRPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype XRPermissionRequest where
    toManagedPtr (XRPermissionRequest p) = p

foreign import ccall "webkit_xr_permission_request_get_type"
    c_webkit_xr_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject XRPermissionRequest where
    glibType = c_webkit_xr_permission_request_get_type

instance B.Types.GObject XRPermissionRequest

-- | Type class for types which can be safely cast to t'XRPermissionRequest', for instance with `toXRPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf XRPermissionRequest o) => IsXRPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf XRPermissionRequest o) => IsXRPermissionRequest o

instance O.HasParentTypes XRPermissionRequest
type instance O.ParentTypes XRPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'XRPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toXRPermissionRequest :: (MIO.MonadIO m, IsXRPermissionRequest o) => o -> m XRPermissionRequest
toXRPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo XRPermissionRequest

-- | Convert t'XRPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe XRPermissionRequest) where
    gvalueGType_ = c_webkit_xr_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr XRPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr XRPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject XRPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveXRPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveXRPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveXRPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveXRPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveXRPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveXRPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveXRPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveXRPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveXRPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveXRPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveXRPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveXRPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveXRPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveXRPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveXRPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveXRPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveXRPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveXRPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveXRPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveXRPermissionRequestMethod "getConsentOptionalFeatures" o = XRPermissionRequestGetConsentOptionalFeaturesMethodInfo
    ResolveXRPermissionRequestMethod "getConsentRequiredFeatures" o = XRPermissionRequestGetConsentRequiredFeaturesMethodInfo
    ResolveXRPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveXRPermissionRequestMethod "getGrantedFeatures" o = XRPermissionRequestGetGrantedFeaturesMethodInfo
    ResolveXRPermissionRequestMethod "getOptionalFeaturesRequested" o = XRPermissionRequestGetOptionalFeaturesRequestedMethodInfo
    ResolveXRPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveXRPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveXRPermissionRequestMethod "getRequiredFeaturesRequested" o = XRPermissionRequestGetRequiredFeaturesRequestedMethodInfo
    ResolveXRPermissionRequestMethod "getSecurityOrigin" o = XRPermissionRequestGetSecurityOriginMethodInfo
    ResolveXRPermissionRequestMethod "getSessionMode" o = XRPermissionRequestGetSessionModeMethodInfo
    ResolveXRPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveXRPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveXRPermissionRequestMethod "setGrantedOptionalFeatures" o = XRPermissionRequestSetGrantedOptionalFeaturesMethodInfo
    ResolveXRPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveXRPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveXRPermissionRequestMethod t XRPermissionRequest, O.OverloadedMethod info XRPermissionRequest p) => OL.IsLabel t (XRPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveXRPermissionRequestMethod t XRPermissionRequest, O.OverloadedMethod info XRPermissionRequest p, R.HasField t XRPermissionRequest p) => R.HasField t XRPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveXRPermissionRequestMethod t XRPermissionRequest, O.OverloadedMethodInfo info XRPermissionRequest) => OL.IsLabel t (O.MethodProxy info XRPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList XRPermissionRequest
type instance O.AttributeList XRPermissionRequest = XRPermissionRequestAttributeList
type XRPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList XRPermissionRequest = XRPermissionRequestSignalList
type XRPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method XRPermissionRequest::get_consent_optional_features
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionFeatures" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_consent_optional_features" webkit_xr_permission_request_get_consent_optional_features :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the optional features that need user consent.
-- 
-- These features can be granted by calling
-- 'GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestSetGrantedOptionalFeatures'
-- before allowing the request with 'GI.WebKit2.Interfaces.PermissionRequest.permissionRequestAllow'.
-- 
-- /Since: 2.52/
xRPermissionRequestGetConsentOptionalFeatures ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m [WebKit2.Flags.XRSessionFeatures]
    -- ^ __Returns:__ a t'GI.WebKit2.Flags.XRSessionFeatures' flag combination
xRPermissionRequestGetConsentOptionalFeatures request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_consent_optional_features request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetConsentOptionalFeaturesMethodInfo
instance (signature ~ (m [WebKit2.Flags.XRSessionFeatures]), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetConsentOptionalFeaturesMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetConsentOptionalFeatures

instance O.OverloadedMethodInfo XRPermissionRequestGetConsentOptionalFeaturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetConsentOptionalFeatures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetConsentOptionalFeatures"
        })


#endif

-- method XRPermissionRequest::get_consent_required_features
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionFeatures" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_consent_required_features" webkit_xr_permission_request_get_consent_required_features :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the required features that need user consent.
-- 
-- These features are automatically granted if the request is allowed with
-- 'GI.WebKit2.Interfaces.PermissionRequest.permissionRequestAllow'.
-- 
-- /Since: 2.52/
xRPermissionRequestGetConsentRequiredFeatures ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m [WebKit2.Flags.XRSessionFeatures]
    -- ^ __Returns:__ a t'GI.WebKit2.Flags.XRSessionFeatures' flag combination
xRPermissionRequestGetConsentRequiredFeatures request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_consent_required_features request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetConsentRequiredFeaturesMethodInfo
instance (signature ~ (m [WebKit2.Flags.XRSessionFeatures]), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetConsentRequiredFeaturesMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetConsentRequiredFeatures

instance O.OverloadedMethodInfo XRPermissionRequestGetConsentRequiredFeaturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetConsentRequiredFeatures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetConsentRequiredFeatures"
        })


#endif

-- method XRPermissionRequest::get_granted_features
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionFeatures" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_granted_features" webkit_xr_permission_request_get_granted_features :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the features requested by the origin for the XR device, which
-- are either granted by default or have been explicitly granted by
-- the user.
-- 
-- /Since: 2.52/
xRPermissionRequestGetGrantedFeatures ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m [WebKit2.Flags.XRSessionFeatures]
    -- ^ __Returns:__ a t'GI.WebKit2.Flags.XRSessionFeatures' flag combination
xRPermissionRequestGetGrantedFeatures request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_granted_features request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetGrantedFeaturesMethodInfo
instance (signature ~ (m [WebKit2.Flags.XRSessionFeatures]), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetGrantedFeaturesMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetGrantedFeatures

instance O.OverloadedMethodInfo XRPermissionRequestGetGrantedFeaturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetGrantedFeatures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetGrantedFeatures"
        })


#endif

-- method XRPermissionRequest::get_optional_features_requested
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionFeatures" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_optional_features_requested" webkit_xr_permission_request_get_optional_features_requested :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the full set of optional features requested by the web application.
-- 
-- This includes both already granted features and those requiring consent.
-- 
-- /Since: 2.52/
xRPermissionRequestGetOptionalFeaturesRequested ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m [WebKit2.Flags.XRSessionFeatures]
    -- ^ __Returns:__ a t'GI.WebKit2.Flags.XRSessionFeatures' flag combination
xRPermissionRequestGetOptionalFeaturesRequested request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_optional_features_requested request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetOptionalFeaturesRequestedMethodInfo
instance (signature ~ (m [WebKit2.Flags.XRSessionFeatures]), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetOptionalFeaturesRequestedMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetOptionalFeaturesRequested

instance O.OverloadedMethodInfo XRPermissionRequestGetOptionalFeaturesRequestedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetOptionalFeaturesRequested",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetOptionalFeaturesRequested"
        })


#endif

-- method XRPermissionRequest::get_required_features_requested
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionFeatures" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_required_features_requested" webkit_xr_permission_request_get_required_features_requested :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the full set of required features requested by the web application.
-- 
-- This includes both already granted features and those requiring consent.
-- 
-- /Since: 2.52/
xRPermissionRequestGetRequiredFeaturesRequested ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m [WebKit2.Flags.XRSessionFeatures]
    -- ^ __Returns:__ a t'GI.WebKit2.Flags.XRSessionFeatures' flag combination
xRPermissionRequestGetRequiredFeaturesRequested request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_required_features_requested request'
    let result' = wordToGFlags result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetRequiredFeaturesRequestedMethodInfo
instance (signature ~ (m [WebKit2.Flags.XRSessionFeatures]), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetRequiredFeaturesRequestedMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetRequiredFeaturesRequested

instance O.OverloadedMethodInfo XRPermissionRequestGetRequiredFeaturesRequestedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetRequiredFeaturesRequested",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetRequiredFeaturesRequested"
        })


#endif

-- method XRPermissionRequest::get_security_origin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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

foreign import ccall "webkit_xr_permission_request_get_security_origin" webkit_xr_permission_request_get_security_origin :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO (Ptr WebKit2.SecurityOrigin.SecurityOrigin)

-- | Gets the security origin that initiated the permission request.
-- 
-- /Since: 2.52/
xRPermissionRequestGetSecurityOrigin ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m WebKit2.SecurityOrigin.SecurityOrigin
    -- ^ __Returns:__ the t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' that initiated the request
xRPermissionRequestGetSecurityOrigin request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_security_origin request'
    checkUnexpectedReturnNULL "xRPermissionRequestGetSecurityOrigin" result
    result' <- (newBoxed WebKit2.SecurityOrigin.SecurityOrigin) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetSecurityOriginMethodInfo
instance (signature ~ (m WebKit2.SecurityOrigin.SecurityOrigin), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetSecurityOriginMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetSecurityOrigin

instance O.OverloadedMethodInfo XRPermissionRequestGetSecurityOriginMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetSecurityOrigin",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetSecurityOrigin"
        })


#endif

-- method XRPermissionRequest::get_session_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--                  Name { namespace = "WebKit2" , name = "XRSessionMode" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_xr_permission_request_get_session_mode" webkit_xr_permission_request_get_session_mode :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    IO CUInt

-- | Gets the session mode for which permission is being requested.
-- 
-- /Since: 2.52/
xRPermissionRequestGetSessionMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> m WebKit2.Enums.XRSessionMode
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.XRSessionMode'
xRPermissionRequestGetSessionMode request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_xr_permission_request_get_session_mode request'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestGetSessionModeMethodInfo
instance (signature ~ (m WebKit2.Enums.XRSessionMode), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestGetSessionModeMethodInfo a signature where
    overloadedMethod = xRPermissionRequestGetSessionMode

instance O.OverloadedMethodInfo XRPermissionRequestGetSessionModeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetSessionMode",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestGetSessionMode"
        })


#endif

-- method XRPermissionRequest::set_granted_optional_features
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRPermissionRequest" }
--           , argCType = Just "WebKitXRPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitXRPermissionRequest"
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
--           { argCName = "granted"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "XRSessionFeatures" }
--           , argCType = Just "WebKitXRSessionFeatures"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "granted features" , sinceVersion = Nothing }
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

foreign import ccall "webkit_xr_permission_request_set_granted_optional_features" webkit_xr_permission_request_set_granted_optional_features :: 
    Ptr XRPermissionRequest ->              -- request : TInterface (Name {namespace = "WebKit2", name = "XRPermissionRequest"})
    CUInt ->                                -- granted : TInterface (Name {namespace = "WebKit2", name = "XRSessionFeatures"})
    IO ()

-- | Sets which optional features should be granted if the permission request is allowed.
-- 
-- This function should be called with a subset of the features from
-- 'GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestGetConsentOptionalFeatures' before calling
-- 'GI.WebKit2.Interfaces.PermissionRequest.permissionRequestAllow'. If the request is denied, no features are
-- granted, regardless of what is set here.
-- 
-- /Since: 2.52/
xRPermissionRequestSetGrantedOptionalFeatures ::
    (B.CallStack.HasCallStack, MonadIO m, IsXRPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.XRPermissionRequest.XRPermissionRequest'
    -> [WebKit2.Flags.XRSessionFeatures]
    -- ^ /@granted@/: granted features
    -> m ()
xRPermissionRequestSetGrantedOptionalFeatures request granted = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    let granted' = gflagsToWord granted
    webkit_xr_permission_request_set_granted_optional_features request' granted'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data XRPermissionRequestSetGrantedOptionalFeaturesMethodInfo
instance (signature ~ ([WebKit2.Flags.XRSessionFeatures] -> m ()), MonadIO m, IsXRPermissionRequest a) => O.OverloadedMethod XRPermissionRequestSetGrantedOptionalFeaturesMethodInfo a signature where
    overloadedMethod = xRPermissionRequestSetGrantedOptionalFeatures

instance O.OverloadedMethodInfo XRPermissionRequestSetGrantedOptionalFeaturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.XRPermissionRequest.xRPermissionRequestSetGrantedOptionalFeatures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-XRPermissionRequest.html#v:xRPermissionRequestSetGrantedOptionalFeatures"
        })


#endif


