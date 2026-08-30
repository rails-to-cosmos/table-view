{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Configures network proxies.
-- 
-- WebKitNetworkProxySettings can be used to provide a custom proxy configuration
-- to a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'. You need to call 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetNetworkProxySettings'
-- with 'GI.WebKit2.Enums.NetworkProxyModeCustom' and a WebKitNetworkProxySettings.
-- 
-- /Since: 2.16/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.NetworkProxySettings
    ( 

-- * Exported types
    NetworkProxySettings(..)                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [addProxyForScheme]("GI.WebKit2.Structs.NetworkProxySettings#g:method:addProxyForScheme"), [copy]("GI.WebKit2.Structs.NetworkProxySettings#g:method:copy"), [free]("GI.WebKit2.Structs.NetworkProxySettings#g:method:free").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveNetworkProxySettingsMethod       ,
#endif

-- ** addProxyForScheme #method:addProxyForScheme#

#if defined(ENABLE_OVERLOADING)
    NetworkProxySettingsAddProxyForSchemeMethodInfo,
#endif
    networkProxySettingsAddProxyForScheme   ,


-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    NetworkProxySettingsCopyMethodInfo      ,
#endif
    networkProxySettingsCopy                ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    NetworkProxySettingsFreeMethodInfo      ,
#endif
    networkProxySettingsFree                ,


-- ** new #method:new#

    networkProxySettingsNew                 ,




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
newtype NetworkProxySettings = NetworkProxySettings (SP.ManagedPtr NetworkProxySettings)
    deriving (Eq)

instance SP.ManagedPtrNewtype NetworkProxySettings where
    toManagedPtr (NetworkProxySettings p) = p

foreign import ccall "webkit_network_proxy_settings_get_type" c_webkit_network_proxy_settings_get_type :: 
    IO GType

type instance O.ParentTypes NetworkProxySettings = '[]
instance O.HasParentTypes NetworkProxySettings

instance B.Types.TypedObject NetworkProxySettings where
    glibType = c_webkit_network_proxy_settings_get_type

instance B.Types.GBoxed NetworkProxySettings

-- | Convert t'NetworkProxySettings' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe NetworkProxySettings) where
    gvalueGType_ = c_webkit_network_proxy_settings_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr NetworkProxySettings)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr NetworkProxySettings)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed NetworkProxySettings ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NetworkProxySettings
type instance O.AttributeList NetworkProxySettings = NetworkProxySettingsAttributeList
type NetworkProxySettingsAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method NetworkProxySettings::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "default_proxy_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the default proxy URI to use, or %NULL."
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
--           { argCName = "ignore_hosts"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "gchar**"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an optional list of hosts/IP addresses to not use a proxy for."
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
--                  Name { namespace = "WebKit2" , name = "NetworkProxySettings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_network_proxy_settings_new" webkit_network_proxy_settings_new :: 
    CString ->                              -- default_proxy_uri : TBasicType TUTF8
    Ptr CString ->                          -- ignore_hosts : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr NetworkProxySettings)

-- | Create a new t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings' with the given /@defaultProxyUri@/ and /@ignoreHosts@/.
-- 
-- The default proxy URI will be used for any URI that doesn\'t match /@ignoreHosts@/, and doesn\'t match any
-- of the schemes added with 'GI.WebKit2.Structs.NetworkProxySettings.networkProxySettingsAddProxyForScheme'.
-- If /@defaultProxyUri@/ starts with \"socks:\/\/\", it will be treated as referring to all three of the
-- socks5, socks4a, and socks4 proxy types.
-- 
-- /@ignoreHosts@/ is a list of hostnames and IP addresses that the resolver should allow direct connections to.
-- Entries can be in one of 4 formats:
-- \<itemizedlist>
-- \<listitem>\<para>
-- A hostname, such as \"example.com\", \".example.com\", or \"*.example.com\", any of which match \"example.com\" or
-- any subdomain of it.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
-- An IPv4 or IPv6 address, such as \"192.168.1.1\", which matches only that address.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
-- A hostname or IP address followed by a port, such as \"example.com:80\", which matches whatever the hostname or IP
-- address would match, but only for URLs with the (explicitly) indicated port. In the case of an IPv6 address, the address
-- part must appear in brackets: \"[[1](#g:signal:1)]:443\"
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
-- An IP address range, given by a base address and prefix length, such as \"fe80::\/10\", which matches any address in that range.
-- \<\/para>\<\/listitem>
-- \<\/itemizedlist>
-- 
-- Note that when dealing with Unicode hostnames, the matching is done against the ASCII form of the name.
-- Also note that hostname exclusions apply only to connections made to hosts identified by name, and IP address exclusions apply only
-- to connections made to hosts identified by address. That is, if example.com has an address of 192.168.1.1, and /@ignoreHosts@/
-- contains only \"192.168.1.1\", then a connection to \"example.com\" will use the proxy, and a connection to 192.168.1.1\" will not.
-- 
-- /Since: 2.16/
networkProxySettingsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe (T.Text)
    -- ^ /@defaultProxyUri@/: the default proxy URI to use, or 'P.Nothing'.
    -> Maybe ([T.Text])
    -- ^ /@ignoreHosts@/: an optional list of hosts\/IP addresses to not use a proxy for.
    -> m NetworkProxySettings
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'.
networkProxySettingsNew defaultProxyUri ignoreHosts = liftIO $ do
    maybeDefaultProxyUri <- case defaultProxyUri of
        Nothing -> return FP.nullPtr
        Just jDefaultProxyUri -> do
            jDefaultProxyUri' <- textToCString jDefaultProxyUri
            return jDefaultProxyUri'
    maybeIgnoreHosts <- case ignoreHosts of
        Nothing -> return FP.nullPtr
        Just jIgnoreHosts -> do
            jIgnoreHosts' <- packZeroTerminatedUTF8CArray jIgnoreHosts
            return jIgnoreHosts'
    result <- webkit_network_proxy_settings_new maybeDefaultProxyUri maybeIgnoreHosts
    checkUnexpectedReturnNULL "networkProxySettingsNew" result
    result' <- (wrapBoxed NetworkProxySettings) result
    freeMem maybeDefaultProxyUri
    mapZeroTerminatedCArray freeMem maybeIgnoreHosts
    freeMem maybeIgnoreHosts
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method NetworkProxySettings::add_proxy_for_scheme
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "proxy_settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NetworkProxySettings" }
--           , argCType = Just "WebKitNetworkProxySettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNetworkProxySettings"
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
--                 { rawDocText = Just "the URI scheme to add a proxy for"
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
--           { argCName = "proxy_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the proxy URI to use for @uri_scheme"
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

foreign import ccall "webkit_network_proxy_settings_add_proxy_for_scheme" webkit_network_proxy_settings_add_proxy_for_scheme :: 
    Ptr NetworkProxySettings ->             -- proxy_settings : TInterface (Name {namespace = "WebKit2", name = "NetworkProxySettings"})
    CString ->                              -- scheme : TBasicType TUTF8
    CString ->                              -- proxy_uri : TBasicType TUTF8
    IO ()

-- | Adds a URI-scheme-specific proxy.
-- 
-- URIs whose scheme matches /@uriScheme@/ will be proxied via /@proxyUri@/.
-- As with the default proxy URI, if /@proxyUri@/ starts with \"socks:\/\/\", it will be treated as referring to
-- all three of the socks5, socks4a, and socks4 proxy types.
-- 
-- /Since: 2.16/
networkProxySettingsAddProxyForScheme ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NetworkProxySettings
    -- ^ /@proxySettings@/: a t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'
    -> T.Text
    -- ^ /@scheme@/: the URI scheme to add a proxy for
    -> T.Text
    -- ^ /@proxyUri@/: the proxy URI to use for /@uriScheme@/
    -> m ()
networkProxySettingsAddProxyForScheme proxySettings scheme proxyUri = liftIO $ do
    proxySettings' <- unsafeManagedPtrGetPtr proxySettings
    scheme' <- textToCString scheme
    proxyUri' <- textToCString proxyUri
    webkit_network_proxy_settings_add_proxy_for_scheme proxySettings' scheme' proxyUri'
    touchManagedPtr proxySettings
    freeMem scheme'
    freeMem proxyUri'
    return ()

#if defined(ENABLE_OVERLOADING)
data NetworkProxySettingsAddProxyForSchemeMethodInfo
instance (signature ~ (T.Text -> T.Text -> m ()), MonadIO m) => O.OverloadedMethod NetworkProxySettingsAddProxyForSchemeMethodInfo NetworkProxySettings signature where
    overloadedMethod = networkProxySettingsAddProxyForScheme

instance O.OverloadedMethodInfo NetworkProxySettingsAddProxyForSchemeMethodInfo NetworkProxySettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NetworkProxySettings.networkProxySettingsAddProxyForScheme",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NetworkProxySettings.html#v:networkProxySettingsAddProxyForScheme"
        })


#endif

-- method NetworkProxySettings::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "proxy_settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NetworkProxySettings" }
--           , argCType = Just "WebKitNetworkProxySettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNetworkProxySettings"
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
--                  Name { namespace = "WebKit2" , name = "NetworkProxySettings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_network_proxy_settings_copy" webkit_network_proxy_settings_copy :: 
    Ptr NetworkProxySettings ->             -- proxy_settings : TInterface (Name {namespace = "WebKit2", name = "NetworkProxySettings"})
    IO (Ptr NetworkProxySettings)

-- | Make a copy of the t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'.
-- 
-- /Since: 2.16/
networkProxySettingsCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NetworkProxySettings
    -- ^ /@proxySettings@/: a t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'
    -> m NetworkProxySettings
    -- ^ __Returns:__ A copy of passed in t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'
networkProxySettingsCopy proxySettings = liftIO $ do
    proxySettings' <- unsafeManagedPtrGetPtr proxySettings
    result <- webkit_network_proxy_settings_copy proxySettings'
    checkUnexpectedReturnNULL "networkProxySettingsCopy" result
    result' <- (wrapBoxed NetworkProxySettings) result
    touchManagedPtr proxySettings
    return result'

#if defined(ENABLE_OVERLOADING)
data NetworkProxySettingsCopyMethodInfo
instance (signature ~ (m NetworkProxySettings), MonadIO m) => O.OverloadedMethod NetworkProxySettingsCopyMethodInfo NetworkProxySettings signature where
    overloadedMethod = networkProxySettingsCopy

instance O.OverloadedMethodInfo NetworkProxySettingsCopyMethodInfo NetworkProxySettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NetworkProxySettings.networkProxySettingsCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NetworkProxySettings.html#v:networkProxySettingsCopy"
        })


#endif

-- method NetworkProxySettings::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "proxy_settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NetworkProxySettings" }
--           , argCType = Just "WebKitNetworkProxySettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitNetworkProxySettings"
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

foreign import ccall "webkit_network_proxy_settings_free" webkit_network_proxy_settings_free :: 
    Ptr NetworkProxySettings ->             -- proxy_settings : TInterface (Name {namespace = "WebKit2", name = "NetworkProxySettings"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'.
-- 
-- /Since: 2.16/
networkProxySettingsFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NetworkProxySettings
    -- ^ /@proxySettings@/: A t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'
    -> m ()
networkProxySettingsFree proxySettings = liftIO $ do
    proxySettings' <- unsafeManagedPtrGetPtr proxySettings
    webkit_network_proxy_settings_free proxySettings'
    touchManagedPtr proxySettings
    return ()

#if defined(ENABLE_OVERLOADING)
data NetworkProxySettingsFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod NetworkProxySettingsFreeMethodInfo NetworkProxySettings signature where
    overloadedMethod = networkProxySettingsFree

instance O.OverloadedMethodInfo NetworkProxySettingsFreeMethodInfo NetworkProxySettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NetworkProxySettings.networkProxySettingsFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NetworkProxySettings.html#v:networkProxySettingsFree"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveNetworkProxySettingsMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveNetworkProxySettingsMethod "addProxyForScheme" o = NetworkProxySettingsAddProxyForSchemeMethodInfo
    ResolveNetworkProxySettingsMethod "copy" o = NetworkProxySettingsCopyMethodInfo
    ResolveNetworkProxySettingsMethod "free" o = NetworkProxySettingsFreeMethodInfo
    ResolveNetworkProxySettingsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNetworkProxySettingsMethod t NetworkProxySettings, O.OverloadedMethod info NetworkProxySettings p) => OL.IsLabel t (NetworkProxySettings -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveNetworkProxySettingsMethod t NetworkProxySettings, O.OverloadedMethod info NetworkProxySettings p, R.HasField t NetworkProxySettings p) => R.HasField t NetworkProxySettings p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveNetworkProxySettingsMethod t NetworkProxySettings, O.OverloadedMethodInfo info NetworkProxySettings) => OL.IsLabel t (O.MethodProxy info NetworkProxySettings) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


