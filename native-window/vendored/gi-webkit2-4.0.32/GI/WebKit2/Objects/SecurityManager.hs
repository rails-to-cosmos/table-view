{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Controls security settings in a t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- The t'GI.WebKit2.Objects.SecurityManager.SecurityManager' defines security settings for URI
-- schemes in a t'GI.WebKit2.Objects.WebContext.WebContext'. Get it from the context with
-- 'GI.WebKit2.Objects.WebContext.webContextGetSecurityManager', and use it to register a
-- URI scheme with a certain security level, or to check if it already
-- has it.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.SecurityManager
    ( 

-- * Exported types
    SecurityManager(..)                     ,
    IsSecurityManager                       ,
    toSecurityManager                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [registerUriSchemeAsCorsEnabled]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsCorsEnabled"), [registerUriSchemeAsDisplayIsolated]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsDisplayIsolated"), [registerUriSchemeAsEmptyDocument]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsEmptyDocument"), [registerUriSchemeAsLocal]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsLocal"), [registerUriSchemeAsNoAccess]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsNoAccess"), [registerUriSchemeAsSecure]("GI.WebKit2.Objects.SecurityManager#g:method:registerUriSchemeAsSecure"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [uriSchemeIsCorsEnabled]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsCorsEnabled"), [uriSchemeIsDisplayIsolated]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsDisplayIsolated"), [uriSchemeIsEmptyDocument]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsEmptyDocument"), [uriSchemeIsLocal]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsLocal"), [uriSchemeIsNoAccess]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsNoAccess"), [uriSchemeIsSecure]("GI.WebKit2.Objects.SecurityManager#g:method:uriSchemeIsSecure"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveSecurityManagerMethod            ,
#endif

-- ** registerUriSchemeAsCorsEnabled #method:registerUriSchemeAsCorsEnabled#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsCorsEnabled,


-- ** registerUriSchemeAsDisplayIsolated #method:registerUriSchemeAsDisplayIsolated#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsDisplayIsolated,


-- ** registerUriSchemeAsEmptyDocument #method:registerUriSchemeAsEmptyDocument#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsEmptyDocument,


-- ** registerUriSchemeAsLocal #method:registerUriSchemeAsLocal#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsLocalMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsLocal ,


-- ** registerUriSchemeAsNoAccess #method:registerUriSchemeAsNoAccess#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsNoAccess,


-- ** registerUriSchemeAsSecure #method:registerUriSchemeAsSecure#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerRegisterUriSchemeAsSecureMethodInfo,
#endif
    securityManagerRegisterUriSchemeAsSecure,


-- ** uriSchemeIsCorsEnabled #method:uriSchemeIsCorsEnabled#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsCorsEnabledMethodInfo,
#endif
    securityManagerUriSchemeIsCorsEnabled   ,


-- ** uriSchemeIsDisplayIsolated #method:uriSchemeIsDisplayIsolated#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo,
#endif
    securityManagerUriSchemeIsDisplayIsolated,


-- ** uriSchemeIsEmptyDocument #method:uriSchemeIsEmptyDocument#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsEmptyDocumentMethodInfo,
#endif
    securityManagerUriSchemeIsEmptyDocument ,


-- ** uriSchemeIsLocal #method:uriSchemeIsLocal#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsLocalMethodInfo,
#endif
    securityManagerUriSchemeIsLocal         ,


-- ** uriSchemeIsNoAccess #method:uriSchemeIsNoAccess#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsNoAccessMethodInfo,
#endif
    securityManagerUriSchemeIsNoAccess      ,


-- ** uriSchemeIsSecure #method:uriSchemeIsSecure#

#if defined(ENABLE_OVERLOADING)
    SecurityManagerUriSchemeIsSecureMethodInfo,
#endif
    securityManagerUriSchemeIsSecure        ,




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

-- | Memory-managed wrapper type.
newtype SecurityManager = SecurityManager (SP.ManagedPtr SecurityManager)
    deriving (Eq)

instance SP.ManagedPtrNewtype SecurityManager where
    toManagedPtr (SecurityManager p) = p

foreign import ccall "webkit_security_manager_get_type"
    c_webkit_security_manager_get_type :: IO B.Types.GType

instance B.Types.TypedObject SecurityManager where
    glibType = c_webkit_security_manager_get_type

instance B.Types.GObject SecurityManager

-- | Type class for types which can be safely cast to t'SecurityManager', for instance with `toSecurityManager`.
class (SP.GObject o, O.IsDescendantOf SecurityManager o) => IsSecurityManager o
instance (SP.GObject o, O.IsDescendantOf SecurityManager o) => IsSecurityManager o

instance O.HasParentTypes SecurityManager
type instance O.ParentTypes SecurityManager = '[GObject.Object.Object]

-- | Cast to t'SecurityManager', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toSecurityManager :: (MIO.MonadIO m, IsSecurityManager o) => o -> m SecurityManager
toSecurityManager = MIO.liftIO . B.ManagedPtr.unsafeCastTo SecurityManager

-- | Convert t'SecurityManager' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe SecurityManager) where
    gvalueGType_ = c_webkit_security_manager_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr SecurityManager)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr SecurityManager)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject SecurityManager ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveSecurityManagerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveSecurityManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSecurityManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSecurityManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSecurityManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSecurityManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSecurityManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSecurityManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSecurityManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSecurityManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSecurityManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsCorsEnabled" o = SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsDisplayIsolated" o = SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsEmptyDocument" o = SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsLocal" o = SecurityManagerRegisterUriSchemeAsLocalMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsNoAccess" o = SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo
    ResolveSecurityManagerMethod "registerUriSchemeAsSecure" o = SecurityManagerRegisterUriSchemeAsSecureMethodInfo
    ResolveSecurityManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSecurityManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSecurityManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSecurityManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSecurityManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsCorsEnabled" o = SecurityManagerUriSchemeIsCorsEnabledMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsDisplayIsolated" o = SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsEmptyDocument" o = SecurityManagerUriSchemeIsEmptyDocumentMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsLocal" o = SecurityManagerUriSchemeIsLocalMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsNoAccess" o = SecurityManagerUriSchemeIsNoAccessMethodInfo
    ResolveSecurityManagerMethod "uriSchemeIsSecure" o = SecurityManagerUriSchemeIsSecureMethodInfo
    ResolveSecurityManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSecurityManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSecurityManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSecurityManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSecurityManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSecurityManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSecurityManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSecurityManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSecurityManagerMethod t SecurityManager, O.OverloadedMethod info SecurityManager p) => OL.IsLabel t (SecurityManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveSecurityManagerMethod t SecurityManager, O.OverloadedMethod info SecurityManager p, R.HasField t SecurityManager p) => R.HasField t SecurityManager p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveSecurityManagerMethod t SecurityManager, O.OverloadedMethodInfo info SecurityManager) => OL.IsLabel t (O.MethodProxy info SecurityManager) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SecurityManager
type instance O.AttributeList SecurityManager = SecurityManagerAttributeList
type SecurityManagerAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SecurityManager = SecurityManagerSignalList
type SecurityManagerSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method SecurityManager::register_uri_scheme_as_cors_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_cors_enabled" webkit_security_manager_register_uri_scheme_as_cors_enabled :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as a CORS (Cross-origin resource sharing) enabled scheme.
-- 
-- This means that CORS requests are allowed. See W3C CORS specification
-- http:\/\/www.w3.org\/TR\/cors\/.
securityManagerRegisterUriSchemeAsCorsEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsCorsEnabled securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_cors_enabled securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsCorsEnabled

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsCorsEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsCorsEnabled"
        })


#endif

-- method SecurityManager::register_uri_scheme_as_display_isolated
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_display_isolated" webkit_security_manager_register_uri_scheme_as_display_isolated :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as a display isolated scheme.
-- 
-- This means that pages cannot
-- display these URIs unless they are from the same scheme.
securityManagerRegisterUriSchemeAsDisplayIsolated ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsDisplayIsolated securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_display_isolated securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsDisplayIsolated

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsDisplayIsolated",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsDisplayIsolated"
        })


#endif

-- method SecurityManager::register_uri_scheme_as_empty_document
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_empty_document" webkit_security_manager_register_uri_scheme_as_empty_document :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as an empty document scheme.
-- 
-- This means that
-- they are allowed to commit synchronously.
securityManagerRegisterUriSchemeAsEmptyDocument ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsEmptyDocument securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_empty_document securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsEmptyDocument

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsEmptyDocument",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsEmptyDocument"
        })


#endif

-- method SecurityManager::register_uri_scheme_as_local
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_local" webkit_security_manager_register_uri_scheme_as_local :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as a local scheme.
-- 
-- This means that other non-local pages
-- cannot link to or access URIs of this scheme.
securityManagerRegisterUriSchemeAsLocal ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsLocal securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_local securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsLocalMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsLocalMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsLocal

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsLocalMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsLocal",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsLocal"
        })


#endif

-- method SecurityManager::register_uri_scheme_as_no_access
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_no_access" webkit_security_manager_register_uri_scheme_as_no_access :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as a no-access scheme.
-- 
-- This means that pages loaded
-- with this URI scheme cannot access pages loaded with any other URI scheme.
securityManagerRegisterUriSchemeAsNoAccess ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsNoAccess securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_no_access securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsNoAccess

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsNoAccess",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsNoAccess"
        })


#endif

-- method SecurityManager::register_uri_scheme_as_secure
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_register_uri_scheme_as_secure" webkit_security_manager_register_uri_scheme_as_secure :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO ()

-- | Register /@scheme@/ as a secure scheme.
-- 
-- This means that mixed
-- content warnings won\'t be generated for this scheme when
-- included by an HTTPS page.
securityManagerRegisterUriSchemeAsSecure ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m ()
securityManagerRegisterUriSchemeAsSecure securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    webkit_security_manager_register_uri_scheme_as_secure securityManager' scheme'
    touchManagedPtr securityManager
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsSecureMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerRegisterUriSchemeAsSecureMethodInfo a signature where
    overloadedMethod = securityManagerRegisterUriSchemeAsSecure

instance O.OverloadedMethodInfo SecurityManagerRegisterUriSchemeAsSecureMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsSecure",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerRegisterUriSchemeAsSecure"
        })


#endif

-- method SecurityManager::uri_scheme_is_cors_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_cors_enabled" webkit_security_manager_uri_scheme_is_cors_enabled :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as a CORS enabled scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsCorsEnabled'.
securityManagerUriSchemeIsCorsEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is a CORS enabled scheme or 'P.False' otherwise.
securityManagerUriSchemeIsCorsEnabled securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_cors_enabled securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsCorsEnabledMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsCorsEnabledMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsCorsEnabled

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsCorsEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsCorsEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsCorsEnabled"
        })


#endif

-- method SecurityManager::uri_scheme_is_display_isolated
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_display_isolated" webkit_security_manager_uri_scheme_is_display_isolated :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as a display isolated scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsDisplayIsolated'.
securityManagerUriSchemeIsDisplayIsolated ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is a display isolated scheme or 'P.False' otherwise.
securityManagerUriSchemeIsDisplayIsolated securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_display_isolated securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsDisplayIsolated

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsDisplayIsolated",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsDisplayIsolated"
        })


#endif

-- method SecurityManager::uri_scheme_is_empty_document
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_empty_document" webkit_security_manager_uri_scheme_is_empty_document :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as an empty document scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsEmptyDocument'.
securityManagerUriSchemeIsEmptyDocument ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is an empty document scheme or 'P.False' otherwise.
securityManagerUriSchemeIsEmptyDocument securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_empty_document securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsEmptyDocumentMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsEmptyDocumentMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsEmptyDocument

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsEmptyDocumentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsEmptyDocument",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsEmptyDocument"
        })


#endif

-- method SecurityManager::uri_scheme_is_local
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_local" webkit_security_manager_uri_scheme_is_local :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as a local scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsLocal'.
securityManagerUriSchemeIsLocal ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is a local scheme or 'P.False' otherwise.
securityManagerUriSchemeIsLocal securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_local securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsLocalMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsLocalMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsLocal

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsLocalMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsLocal",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsLocal"
        })


#endif

-- method SecurityManager::uri_scheme_is_no_access
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_no_access" webkit_security_manager_uri_scheme_is_no_access :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as a no-access scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsNoAccess'.
securityManagerUriSchemeIsNoAccess ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is a no-access scheme or 'P.False' otherwise.
securityManagerUriSchemeIsNoAccess securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_no_access securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsNoAccessMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsNoAccessMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsNoAccess

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsNoAccessMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsNoAccess",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsNoAccess"
        })


#endif

-- method SecurityManager::uri_scheme_is_secure
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "security_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SecurityManager" }
--           , argCType = Just "WebKitSecurityManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSecurityManager"
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
--           { argCName = "scheme"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI scheme" , sinceVersion = Nothing }
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

foreign import ccall "webkit_security_manager_uri_scheme_is_secure" webkit_security_manager_uri_scheme_is_secure :: 
    Ptr SecurityManager ->                  -- security_manager : TInterface (Name {namespace = "WebKit2", name = "SecurityManager"})
    CString ->                              -- scheme : TBasicType TUTF8
    IO CInt

-- | Whether /@scheme@/ is considered as a secure scheme.
-- 
-- See also 'GI.WebKit2.Objects.SecurityManager.securityManagerRegisterUriSchemeAsSecure'.
securityManagerUriSchemeIsSecure ::
    (B.CallStack.HasCallStack, MonadIO m, IsSecurityManager a) =>
    a
    -- ^ /@securityManager@/: a t'GI.WebKit2.Objects.SecurityManager.SecurityManager'
    -> T.Text
    -- ^ /@scheme@/: a URI scheme
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@scheme@/ is a secure scheme or 'P.False' otherwise.
securityManagerUriSchemeIsSecure securityManager scheme = liftIO $ do
    securityManager' <- unsafeManagedPtrCastPtr securityManager
    scheme' <- textToCString scheme
    result <- webkit_security_manager_uri_scheme_is_secure securityManager' scheme'
    let result' = (/= 0) result
    touchManagedPtr securityManager
    freeMem scheme'
    return result'

#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsSecureMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsSecurityManager a) => O.OverloadedMethod SecurityManagerUriSchemeIsSecureMethodInfo a signature where
    overloadedMethod = securityManagerUriSchemeIsSecure

instance O.OverloadedMethodInfo SecurityManagerUriSchemeIsSecureMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.SecurityManager.securityManagerUriSchemeIsSecure",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-SecurityManager.html#v:securityManagerUriSchemeIsSecure"
        })


#endif


