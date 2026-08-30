{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request.
-- 
-- There are situations where an embedder would need to ask the user
-- for permission to do certain types of operations, such as switching
-- to fullscreen mode or reporting the user\'s location through the
-- standard Geolocation API. In those cases, WebKit will emit a
-- [WebView::permissionRequest]("GI.WebKit2.Objects.WebView#g:signal:permissionRequest") signal with a
-- t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest' object attached to it.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Interfaces.PermissionRequest
    ( 

-- * Exported types
    PermissionRequest(..)                   ,
    IsPermissionRequest                     ,
    toPermissionRequest                     ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [allow]("GI.WebKit2.Interfaces.PermissionRequest#g:method:allow"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deny]("GI.WebKit2.Interfaces.PermissionRequest#g:method:deny"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolvePermissionRequestMethod          ,
#endif

-- ** allow #method:allow#

#if defined(ENABLE_OVERLOADING)
    PermissionRequestAllowMethodInfo        ,
#endif
    permissionRequestAllow                  ,


-- ** deny #method:deny#

#if defined(ENABLE_OVERLOADING)
    PermissionRequestDenyMethodInfo         ,
#endif
    permissionRequestDeny                   ,




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

#else
import qualified GI.GObject.Objects.Object as GObject.Object

#endif

-- interface PermissionRequest 
-- | Memory-managed wrapper type.
newtype PermissionRequest = PermissionRequest (SP.ManagedPtr PermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype PermissionRequest where
    toManagedPtr (PermissionRequest p) = p

foreign import ccall "webkit_permission_request_get_type"
    c_webkit_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject PermissionRequest where
    glibType = c_webkit_permission_request_get_type

instance B.Types.GObject PermissionRequest

-- | Type class for types which can be safely cast to t'PermissionRequest', for instance with `toPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf PermissionRequest o) => IsPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf PermissionRequest o) => IsPermissionRequest o

instance O.HasParentTypes PermissionRequest
type instance O.ParentTypes PermissionRequest = '[GObject.Object.Object]

-- | Cast to t'PermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPermissionRequest :: (MIO.MonadIO m, IsPermissionRequest o) => o -> m PermissionRequest
toPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo PermissionRequest

-- | Convert t'PermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PermissionRequest) where
    gvalueGType_ = c_webkit_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr PermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr PermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject PermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PermissionRequest
type instance O.AttributeList PermissionRequest = PermissionRequestAttributeList
type PermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePermissionRequestMethod "allow" o = PermissionRequestAllowMethodInfo
    ResolvePermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePermissionRequestMethod "deny" o = PermissionRequestDenyMethodInfo
    ResolvePermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePermissionRequestMethod t PermissionRequest, O.OverloadedMethod info PermissionRequest p) => OL.IsLabel t (PermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePermissionRequestMethod t PermissionRequest, O.OverloadedMethod info PermissionRequest p, R.HasField t PermissionRequest p) => R.HasField t PermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePermissionRequestMethod t PermissionRequest, O.OverloadedMethodInfo info PermissionRequest) => OL.IsLabel t (O.MethodProxy info PermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- method PermissionRequest::allow
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionRequest" }
--           , argCType = Just "WebKitPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionRequest"
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

foreign import ccall "webkit_permission_request_allow" webkit_permission_request_allow :: 
    Ptr PermissionRequest ->                -- request : TInterface (Name {namespace = "WebKit2", name = "PermissionRequest"})
    IO ()

-- | Allow the action which triggered this request.
permissionRequestAllow ::
    (B.CallStack.HasCallStack, MonadIO m, IsPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest'
    -> m ()
permissionRequestAllow request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_permission_request_allow request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data PermissionRequestAllowMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPermissionRequest a) => O.OverloadedMethod PermissionRequestAllowMethodInfo a signature where
    overloadedMethod = permissionRequestAllow

instance O.OverloadedMethodInfo PermissionRequestAllowMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Interfaces.PermissionRequest.permissionRequestAllow",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Interfaces-PermissionRequest.html#v:permissionRequestAllow"
        })


#endif

-- method PermissionRequest::deny
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionRequest" }
--           , argCType = Just "WebKitPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionRequest"
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

foreign import ccall "webkit_permission_request_deny" webkit_permission_request_deny :: 
    Ptr PermissionRequest ->                -- request : TInterface (Name {namespace = "WebKit2", name = "PermissionRequest"})
    IO ()

-- | Deny the action which triggered this request.
permissionRequestDeny ::
    (B.CallStack.HasCallStack, MonadIO m, IsPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest'
    -> m ()
permissionRequestDeny request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_permission_request_deny request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data PermissionRequestDenyMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPermissionRequest a) => O.OverloadedMethod PermissionRequestDenyMethodInfo a signature where
    overloadedMethod = permissionRequestDeny

instance O.OverloadedMethodInfo PermissionRequestDenyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Interfaces.PermissionRequest.permissionRequestDeny",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Interfaces-PermissionRequest.html#v:permissionRequestDeny"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PermissionRequest = PermissionRequestSignalList
type PermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


