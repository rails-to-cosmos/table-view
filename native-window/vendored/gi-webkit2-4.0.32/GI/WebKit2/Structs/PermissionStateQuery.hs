{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- This query represents a user\'s choice to allow or deny access to \"powerful features\" of the
-- platform, as specified in the <https://w3c.github.io/permissions/ Permissions W3C
-- Specification>.
-- 
-- When signalled by the t'GI.WebKit2.Objects.WebView.WebView' through the @query-permission-state@ signal, the application
-- has to eventually respond, via @webkit_permission_state_query_finish()@, whether it grants,
-- denies or requests a dedicated permission prompt for the given query.
-- 
-- When a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery' is not handled by the user, the user-agent is instructed to
-- @prompt@ the user for the given permission.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.PermissionStateQuery
    ( 

-- * Exported types
    PermissionStateQuery(..)                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [finish]("GI.WebKit2.Structs.PermissionStateQuery#g:method:finish"), [ref]("GI.WebKit2.Structs.PermissionStateQuery#g:method:ref"), [unref]("GI.WebKit2.Structs.PermissionStateQuery#g:method:unref").
-- 
-- ==== Getters
-- [getName]("GI.WebKit2.Structs.PermissionStateQuery#g:method:getName"), [getSecurityOrigin]("GI.WebKit2.Structs.PermissionStateQuery#g:method:getSecurityOrigin").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolvePermissionStateQueryMethod       ,
#endif

-- ** finish #method:finish#

#if defined(ENABLE_OVERLOADING)
    PermissionStateQueryFinishMethodInfo    ,
#endif
    permissionStateQueryFinish              ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    PermissionStateQueryGetNameMethodInfo   ,
#endif
    permissionStateQueryGetName             ,


-- ** getSecurityOrigin #method:getSecurityOrigin#

#if defined(ENABLE_OVERLOADING)
    PermissionStateQueryGetSecurityOriginMethodInfo,
#endif
    permissionStateQueryGetSecurityOrigin   ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    PermissionStateQueryRefMethodInfo       ,
#endif
    permissionStateQueryRef                 ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    PermissionStateQueryUnrefMethodInfo     ,
#endif
    permissionStateQueryUnref               ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#else
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#endif

-- | Memory-managed wrapper type.
newtype PermissionStateQuery = PermissionStateQuery (SP.ManagedPtr PermissionStateQuery)
    deriving (Eq)

instance SP.ManagedPtrNewtype PermissionStateQuery where
    toManagedPtr (PermissionStateQuery p) = p

foreign import ccall "webkit_permission_state_query_get_type" c_webkit_permission_state_query_get_type :: 
    IO GType

type instance O.ParentTypes PermissionStateQuery = '[]
instance O.HasParentTypes PermissionStateQuery

instance B.Types.TypedObject PermissionStateQuery where
    glibType = c_webkit_permission_state_query_get_type

instance B.Types.GBoxed PermissionStateQuery

-- | Convert t'PermissionStateQuery' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PermissionStateQuery) where
    gvalueGType_ = c_webkit_permission_state_query_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr PermissionStateQuery)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr PermissionStateQuery)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed PermissionStateQuery ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PermissionStateQuery
type instance O.AttributeList PermissionStateQuery = PermissionStateQueryAttributeList
type PermissionStateQueryAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method PermissionStateQuery::finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "query"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionStateQuery" }
--           , argCType = Just "WebKitPermissionStateQuery*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionStateQuery"
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
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionState" }
--           , argCType = Just "WebKitPermissionState"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionState"
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

foreign import ccall "webkit_permission_state_query_finish" webkit_permission_state_query_finish :: 
    Ptr PermissionStateQuery ->             -- query : TInterface (Name {namespace = "WebKit2", name = "PermissionStateQuery"})
    CUInt ->                                -- state : TInterface (Name {namespace = "WebKit2", name = "PermissionState"})
    IO ()

-- | Notify the web-engine of the selected permission state for the given query. This function should
-- only be called as a response to the @WebKitWebView::query-permission-state@ signal.
-- 
-- /Since: 2.40/
permissionStateQueryFinish ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PermissionStateQuery
    -- ^ /@query@/: a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> WebKit2.Enums.PermissionState
    -- ^ /@state@/: a t'GI.WebKit2.Enums.PermissionState'
    -> m ()
permissionStateQueryFinish query state = liftIO $ do
    query' <- unsafeManagedPtrGetPtr query
    let state' = (fromIntegral . fromEnum) state
    webkit_permission_state_query_finish query' state'
    touchManagedPtr query
    return ()

#if defined(ENABLE_OVERLOADING)
data PermissionStateQueryFinishMethodInfo
instance (signature ~ (WebKit2.Enums.PermissionState -> m ()), MonadIO m) => O.OverloadedMethod PermissionStateQueryFinishMethodInfo PermissionStateQuery signature where
    overloadedMethod = permissionStateQueryFinish

instance O.OverloadedMethodInfo PermissionStateQueryFinishMethodInfo PermissionStateQuery where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-PermissionStateQuery.html#v:permissionStateQueryFinish"
        })


#endif

-- method PermissionStateQuery::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "query"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionStateQuery" }
--           , argCType = Just "WebKitPermissionStateQuery*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionStateQuery"
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

foreign import ccall "webkit_permission_state_query_get_name" webkit_permission_state_query_get_name :: 
    Ptr PermissionStateQuery ->             -- query : TInterface (Name {namespace = "WebKit2", name = "PermissionStateQuery"})
    IO CString

-- | Get the permission name for which access is being queried.
-- 
-- /Since: 2.40/
permissionStateQueryGetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PermissionStateQuery
    -- ^ /@query@/: a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> m T.Text
    -- ^ __Returns:__ the permission name for /@query@/
permissionStateQueryGetName query = liftIO $ do
    query' <- unsafeManagedPtrGetPtr query
    result <- webkit_permission_state_query_get_name query'
    checkUnexpectedReturnNULL "permissionStateQueryGetName" result
    result' <- cstringToText result
    touchManagedPtr query
    return result'

#if defined(ENABLE_OVERLOADING)
data PermissionStateQueryGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod PermissionStateQueryGetNameMethodInfo PermissionStateQuery signature where
    overloadedMethod = permissionStateQueryGetName

instance O.OverloadedMethodInfo PermissionStateQueryGetNameMethodInfo PermissionStateQuery where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-PermissionStateQuery.html#v:permissionStateQueryGetName"
        })


#endif

-- method PermissionStateQuery::get_security_origin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "query"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionStateQuery" }
--           , argCType = Just "WebKitPermissionStateQuery*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionStateQuery"
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

foreign import ccall "webkit_permission_state_query_get_security_origin" webkit_permission_state_query_get_security_origin :: 
    Ptr PermissionStateQuery ->             -- query : TInterface (Name {namespace = "WebKit2", name = "PermissionStateQuery"})
    IO (Ptr WebKit2.SecurityOrigin.SecurityOrigin)

-- | Get the permission origin for which access is being queried.
-- 
-- /Since: 2.40/
permissionStateQueryGetSecurityOrigin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PermissionStateQuery
    -- ^ /@query@/: a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> m WebKit2.SecurityOrigin.SecurityOrigin
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' representing the origin from which the
    -- /@query@/ was emitted.
permissionStateQueryGetSecurityOrigin query = liftIO $ do
    query' <- unsafeManagedPtrGetPtr query
    result <- webkit_permission_state_query_get_security_origin query'
    checkUnexpectedReturnNULL "permissionStateQueryGetSecurityOrigin" result
    result' <- (newBoxed WebKit2.SecurityOrigin.SecurityOrigin) result
    touchManagedPtr query
    return result'

#if defined(ENABLE_OVERLOADING)
data PermissionStateQueryGetSecurityOriginMethodInfo
instance (signature ~ (m WebKit2.SecurityOrigin.SecurityOrigin), MonadIO m) => O.OverloadedMethod PermissionStateQueryGetSecurityOriginMethodInfo PermissionStateQuery signature where
    overloadedMethod = permissionStateQueryGetSecurityOrigin

instance O.OverloadedMethodInfo PermissionStateQueryGetSecurityOriginMethodInfo PermissionStateQuery where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryGetSecurityOrigin",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-PermissionStateQuery.html#v:permissionStateQueryGetSecurityOrigin"
        })


#endif

-- method PermissionStateQuery::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "query"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionStateQuery" }
--           , argCType = Just "WebKitPermissionStateQuery*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionStateQuery"
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
--                  Name { namespace = "WebKit2" , name = "PermissionStateQuery" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_permission_state_query_ref" webkit_permission_state_query_ref :: 
    Ptr PermissionStateQuery ->             -- query : TInterface (Name {namespace = "WebKit2", name = "PermissionStateQuery"})
    IO (Ptr PermissionStateQuery)

-- | Atomically increments the reference count of /@query@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.40/
permissionStateQueryRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PermissionStateQuery
    -- ^ /@query@/: a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> m PermissionStateQuery
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
permissionStateQueryRef query = liftIO $ do
    query' <- unsafeManagedPtrGetPtr query
    result <- webkit_permission_state_query_ref query'
    checkUnexpectedReturnNULL "permissionStateQueryRef" result
    result' <- (wrapBoxed PermissionStateQuery) result
    touchManagedPtr query
    return result'

#if defined(ENABLE_OVERLOADING)
data PermissionStateQueryRefMethodInfo
instance (signature ~ (m PermissionStateQuery), MonadIO m) => O.OverloadedMethod PermissionStateQueryRefMethodInfo PermissionStateQuery signature where
    overloadedMethod = permissionStateQueryRef

instance O.OverloadedMethodInfo PermissionStateQueryRefMethodInfo PermissionStateQuery where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-PermissionStateQuery.html#v:permissionStateQueryRef"
        })


#endif

-- method PermissionStateQuery::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "query"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PermissionStateQuery" }
--           , argCType = Just "WebKitPermissionStateQuery*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPermissionStateQuery"
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

foreign import ccall "webkit_permission_state_query_unref" webkit_permission_state_query_unref :: 
    Ptr PermissionStateQuery ->             -- query : TInterface (Name {namespace = "WebKit2", name = "PermissionStateQuery"})
    IO ()

-- | Atomically decrements the reference count of /@query@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery' is
-- released. This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.40/
permissionStateQueryUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    PermissionStateQuery
    -- ^ /@query@/: a t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> m ()
permissionStateQueryUnref query = liftIO $ do
    query' <- unsafeManagedPtrGetPtr query
    webkit_permission_state_query_unref query'
    touchManagedPtr query
    return ()

#if defined(ENABLE_OVERLOADING)
data PermissionStateQueryUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod PermissionStateQueryUnrefMethodInfo PermissionStateQuery signature where
    overloadedMethod = permissionStateQueryUnref

instance O.OverloadedMethodInfo PermissionStateQueryUnrefMethodInfo PermissionStateQuery where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-PermissionStateQuery.html#v:permissionStateQueryUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolvePermissionStateQueryMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePermissionStateQueryMethod "finish" o = PermissionStateQueryFinishMethodInfo
    ResolvePermissionStateQueryMethod "ref" o = PermissionStateQueryRefMethodInfo
    ResolvePermissionStateQueryMethod "unref" o = PermissionStateQueryUnrefMethodInfo
    ResolvePermissionStateQueryMethod "getName" o = PermissionStateQueryGetNameMethodInfo
    ResolvePermissionStateQueryMethod "getSecurityOrigin" o = PermissionStateQueryGetSecurityOriginMethodInfo
    ResolvePermissionStateQueryMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePermissionStateQueryMethod t PermissionStateQuery, O.OverloadedMethod info PermissionStateQuery p) => OL.IsLabel t (PermissionStateQuery -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePermissionStateQueryMethod t PermissionStateQuery, O.OverloadedMethod info PermissionStateQuery p, R.HasField t PermissionStateQuery p) => R.HasField t PermissionStateQuery p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePermissionStateQueryMethod t PermissionStateQuery, O.OverloadedMethodInfo info PermissionStateQuery) => OL.IsLabel t (O.MethodProxy info PermissionStateQuery) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


