{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A security boundary for websites.
-- 
-- t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' is a representation of a security domain
-- defined by websites. A security origin consists of a protocol, a
-- hostname, and an optional port number.
-- 
-- Resources with the same security origin can generally access each
-- other for client-side scripting or database access. When comparing
-- origins, beware that if both protocol and host are 'P.Nothing', the origins
-- should not be treated as equal.
-- 
-- /Since: 2.16/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.SecurityOrigin
    ( 

-- * Exported types
    SecurityOrigin(..)                      ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [isOpaque]("GI.WebKit2.Structs.SecurityOrigin#g:method:isOpaque"), [ref]("GI.WebKit2.Structs.SecurityOrigin#g:method:ref"), [toString]("GI.WebKit2.Structs.SecurityOrigin#g:method:toString"), [unref]("GI.WebKit2.Structs.SecurityOrigin#g:method:unref").
-- 
-- ==== Getters
-- [getHost]("GI.WebKit2.Structs.SecurityOrigin#g:method:getHost"), [getPort]("GI.WebKit2.Structs.SecurityOrigin#g:method:getPort"), [getProtocol]("GI.WebKit2.Structs.SecurityOrigin#g:method:getProtocol").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveSecurityOriginMethod             ,
#endif

-- ** getHost #method:getHost#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginGetHostMethodInfo         ,
#endif
    securityOriginGetHost                   ,


-- ** getPort #method:getPort#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginGetPortMethodInfo         ,
#endif
    securityOriginGetPort                   ,


-- ** getProtocol #method:getProtocol#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginGetProtocolMethodInfo     ,
#endif
    securityOriginGetProtocol               ,


-- ** isOpaque #method:isOpaque#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginIsOpaqueMethodInfo        ,
#endif
    securityOriginIsOpaque                  ,


-- ** new #method:new#

    securityOriginNew                       ,


-- ** newForUri #method:newForUri#

    securityOriginNewForUri                 ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginRefMethodInfo             ,
#endif
    securityOriginRef                       ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginToStringMethodInfo        ,
#endif
    securityOriginToString                  ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    SecurityOriginUnrefMethodInfo           ,
#endif
    securityOriginUnref                     ,




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

#else

#endif

-- | Memory-managed wrapper type.
newtype SecurityOrigin = SecurityOrigin (SP.ManagedPtr SecurityOrigin)
    deriving (Eq)

instance SP.ManagedPtrNewtype SecurityOrigin where
    toManagedPtr (SecurityOrigin p) = p

foreign import ccall "webkit_security_origin_get_type" c_webkit_security_origin_get_type :: 
    IO GType

type instance O.ParentTypes SecurityOrigin = '[]
instance O.HasParentTypes SecurityOrigin

instance B.Types.TypedObject SecurityOrigin where
    glibType = c_webkit_security_origin_get_type

instance B.Types.GBoxed SecurityOrigin

-- | Convert t'SecurityOrigin' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe SecurityOrigin) where
    gvalueGType_ = c_webkit_security_origin_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr SecurityOrigin)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr SecurityOrigin)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed SecurityOrigin ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SecurityOrigin
type instance O.AttributeList SecurityOrigin = SecurityOriginAttributeList
type SecurityOriginAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method SecurityOrigin::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "protocol"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The protocol for the new origin"
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
--           { argCName = "host"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The host for the new origin"
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
--           { argCName = "port"
--           , argType = TBasicType TUInt16
--           , argCType = Just "guint16"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The port number for the new origin, or 0 to indicate the\n       default port for @protocol"
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

foreign import ccall "webkit_security_origin_new" webkit_security_origin_new :: 
    CString ->                              -- protocol : TBasicType TUTF8
    CString ->                              -- host : TBasicType TUTF8
    Word16 ->                               -- port : TBasicType TUInt16
    IO (Ptr SecurityOrigin)

-- | Create a new security origin from the provided protocol, host and
-- port.
-- 
-- /Since: 2.16/
securityOriginNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@protocol@/: The protocol for the new origin
    -> T.Text
    -- ^ /@host@/: The host for the new origin
    -> Word16
    -- ^ /@port@/: The port number for the new origin, or 0 to indicate the
    --        default port for /@protocol@/
    -> m SecurityOrigin
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'.
securityOriginNew protocol host port = liftIO $ do
    protocol' <- textToCString protocol
    host' <- textToCString host
    result <- webkit_security_origin_new protocol' host' port
    checkUnexpectedReturnNULL "securityOriginNew" result
    result' <- (wrapBoxed SecurityOrigin) result
    freeMem protocol'
    freeMem host'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SecurityOrigin::new_for_uri
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The URI for the new origin"
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

foreign import ccall "webkit_security_origin_new_for_uri" webkit_security_origin_new_for_uri :: 
    CString ->                              -- uri : TBasicType TUTF8
    IO (Ptr SecurityOrigin)

-- | Create a new security origin from the provided.
-- 
-- Create a new security origin from the provided URI. Components of
-- /@uri@/ other than protocol, host, and port do not affect the created
-- t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'.
-- 
-- /Since: 2.16/
securityOriginNewForUri ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@uri@/: The URI for the new origin
    -> m SecurityOrigin
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'.
securityOriginNewForUri uri = liftIO $ do
    uri' <- textToCString uri
    result <- webkit_security_origin_new_for_uri uri'
    checkUnexpectedReturnNULL "securityOriginNewForUri" result
    result' <- (wrapBoxed SecurityOrigin) result
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SecurityOrigin::get_host
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_get_host" webkit_security_origin_get_host :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO CString

-- | Gets the hostname of /@origin@/.
-- 
-- It is reasonable for this to be 'P.Nothing'
-- if its protocol does not require a host component.
-- 
-- /Since: 2.16/
securityOriginGetHost ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The host of the t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
securityOriginGetHost origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_get_host origin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr origin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data SecurityOriginGetHostMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod SecurityOriginGetHostMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginGetHost

instance O.OverloadedMethodInfo SecurityOriginGetHostMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginGetHost",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginGetHost"
        })


#endif

-- method SecurityOrigin::get_port
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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
-- returnType: Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_security_origin_get_port" webkit_security_origin_get_port :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO Word16

-- | Gets the port of /@origin@/.
-- 
-- This function will always return 0 if the
-- port is the default port for the given protocol. For example,
-- http:\/\/example.com has the same security origin as
-- http:\/\/example.com:80, and this function will return 0 for a
-- t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' constructed from either URI.
-- 
-- /Since: 2.16/
securityOriginGetPort ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m Word16
    -- ^ __Returns:__ The port of the t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'.
securityOriginGetPort origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_get_port origin'
    touchManagedPtr origin
    return result

#if defined(ENABLE_OVERLOADING)
data SecurityOriginGetPortMethodInfo
instance (signature ~ (m Word16), MonadIO m) => O.OverloadedMethod SecurityOriginGetPortMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginGetPort

instance O.OverloadedMethodInfo SecurityOriginGetPortMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginGetPort",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginGetPort"
        })


#endif

-- method SecurityOrigin::get_protocol
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_get_protocol" webkit_security_origin_get_protocol :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO CString

-- | Gets the protocol of /@origin@/.
-- 
-- /Since: 2.16/
securityOriginGetProtocol ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The protocol of the t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
securityOriginGetProtocol origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_get_protocol origin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr origin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data SecurityOriginGetProtocolMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod SecurityOriginGetProtocolMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginGetProtocol

instance O.OverloadedMethodInfo SecurityOriginGetProtocolMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginGetProtocol",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginGetProtocol"
        })


#endif

-- method SecurityOrigin::is_opaque
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_is_opaque" webkit_security_origin_is_opaque :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO CInt

{-# DEPRECATED securityOriginIsOpaque ["(Since version 2.32)"] #-}
-- | This function returns 'P.False'.
-- 
-- This function returns 'P.False'. t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' is now a simple
-- wrapper around a \<protocol, host, port> triplet, and no longer
-- represents an origin as defined by web standards that may be opaque.
-- 
-- /Since: 2.16/
securityOriginIsOpaque ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m Bool
    -- ^ __Returns:__ 'P.False'
securityOriginIsOpaque origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_is_opaque origin'
    let result' = (/= 0) result
    touchManagedPtr origin
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityOriginIsOpaqueMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod SecurityOriginIsOpaqueMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginIsOpaque

instance O.OverloadedMethodInfo SecurityOriginIsOpaqueMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginIsOpaque",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginIsOpaque"
        })


#endif

-- method SecurityOrigin::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_ref" webkit_security_origin_ref :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO (Ptr SecurityOrigin)

-- | Atomically increments the reference count of /@origin@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.16/
securityOriginRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m SecurityOrigin
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
securityOriginRef origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_ref origin'
    checkUnexpectedReturnNULL "securityOriginRef" result
    result' <- (wrapBoxed SecurityOrigin) result
    touchManagedPtr origin
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityOriginRefMethodInfo
instance (signature ~ (m SecurityOrigin), MonadIO m) => O.OverloadedMethod SecurityOriginRefMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginRef

instance O.OverloadedMethodInfo SecurityOriginRefMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginRef"
        })


#endif

-- method SecurityOrigin::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_to_string" webkit_security_origin_to_string :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO CString

-- | Gets a string representation of /@origin@/.
-- 
-- The string representation
-- is a valid URI with only protocol, host, and port components, or
-- 'P.Nothing'.
-- 
-- /Since: 2.16/
securityOriginToString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: a t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ a URI representing /@origin@/.
securityOriginToString origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    result <- webkit_security_origin_to_string origin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr origin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data SecurityOriginToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod SecurityOriginToStringMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginToString

instance O.OverloadedMethodInfo SecurityOriginToStringMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginToString",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginToString"
        })


#endif

-- method SecurityOrigin::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "origin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SecurityOrigin" }
--           , argCType = Just "WebKitSecurityOrigin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitSecurityOrigin"
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

foreign import ccall "webkit_security_origin_unref" webkit_security_origin_unref :: 
    Ptr SecurityOrigin ->                   -- origin : TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"})
    IO ()

-- | Atomically decrements the reference count of /@origin@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' is released. This function is MT-safe and may be
-- called from any thread.
-- 
-- /Since: 2.16/
securityOriginUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    SecurityOrigin
    -- ^ /@origin@/: A t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin'
    -> m ()
securityOriginUnref origin = liftIO $ do
    origin' <- unsafeManagedPtrGetPtr origin
    webkit_security_origin_unref origin'
    touchManagedPtr origin
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityOriginUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod SecurityOriginUnrefMethodInfo SecurityOrigin signature where
    overloadedMethod = securityOriginUnref

instance O.OverloadedMethodInfo SecurityOriginUnrefMethodInfo SecurityOrigin where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.SecurityOrigin.securityOriginUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-SecurityOrigin.html#v:securityOriginUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveSecurityOriginMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveSecurityOriginMethod "isOpaque" o = SecurityOriginIsOpaqueMethodInfo
    ResolveSecurityOriginMethod "ref" o = SecurityOriginRefMethodInfo
    ResolveSecurityOriginMethod "toString" o = SecurityOriginToStringMethodInfo
    ResolveSecurityOriginMethod "unref" o = SecurityOriginUnrefMethodInfo
    ResolveSecurityOriginMethod "getHost" o = SecurityOriginGetHostMethodInfo
    ResolveSecurityOriginMethod "getPort" o = SecurityOriginGetPortMethodInfo
    ResolveSecurityOriginMethod "getProtocol" o = SecurityOriginGetProtocolMethodInfo
    ResolveSecurityOriginMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSecurityOriginMethod t SecurityOrigin, O.OverloadedMethod info SecurityOrigin p) => OL.IsLabel t (SecurityOrigin -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveSecurityOriginMethod t SecurityOrigin, O.OverloadedMethod info SecurityOrigin p, R.HasField t SecurityOrigin p) => R.HasField t SecurityOrigin p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveSecurityOriginMethod t SecurityOrigin, O.OverloadedMethodInfo info SecurityOrigin) => OL.IsLabel t (O.MethodProxy info SecurityOrigin) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


