{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Manages data stored locally by web sites.
-- 
-- You can use WebKitWebsiteDataManager to configure the local directories
-- where website data will be stored. Use [WebsiteDataManager:baseDataDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseDataDirectory")
-- and [WebsiteDataManager:baseCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseCacheDirectory") set a common base directory for all
-- website data and caches.
-- 
-- A WebKitWebsiteDataManager can be ephemeral, in which case all the directory configuration
-- is not needed because website data will never persist. You can create an ephemeral WebKitWebsiteDataManager
-- with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerNewEphemeral'.
-- 
-- WebKitWebsiteDataManager can also be used to fetch website data, remove data
-- stored by particular websites, or clear data for all websites modified since a given
-- period of time.
-- 
-- /Since: 2.10/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebsiteDataManager
    ( 

-- * Exported types
    WebsiteDataManager(..)                  ,
    IsWebsiteDataManager                    ,
    toWebsiteDataManager                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [clear]("GI.WebKit2.Objects.WebsiteDataManager#g:method:clear"), [clearFinish]("GI.WebKit2.Objects.WebsiteDataManager#g:method:clearFinish"), [fetch]("GI.WebKit2.Objects.WebsiteDataManager#g:method:fetch"), [fetchFinish]("GI.WebKit2.Objects.WebsiteDataManager#g:method:fetchFinish"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isEphemeral]("GI.WebKit2.Objects.WebsiteDataManager#g:method:isEphemeral"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [remove]("GI.WebKit2.Objects.WebsiteDataManager#g:method:remove"), [removeFinish]("GI.WebKit2.Objects.WebsiteDataManager#g:method:removeFinish"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getBaseCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getBaseCacheDirectory"), [getBaseDataDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getBaseDataDirectory"), [getCookieManager]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getCookieManager"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDiskCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getDiskCacheDirectory"), [getDomCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getDomCacheDirectory"), [getHstsCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getHstsCacheDirectory"), [getIndexeddbDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getIndexeddbDirectory"), [getItpDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getItpDirectory"), [getItpEnabled]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getItpEnabled"), [getItpSummary]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getItpSummary"), [getItpSummaryFinish]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getItpSummaryFinish"), [getLocalStorageDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getLocalStorageDirectory"), [getOfflineApplicationCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getOfflineApplicationCacheDirectory"), [getPersistentCredentialStorageEnabled]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getPersistentCredentialStorageEnabled"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getServiceWorkerRegistrationsDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getServiceWorkerRegistrationsDirectory"), [getTlsErrorsPolicy]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getTlsErrorsPolicy"), [getWebsqlDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:method:getWebsqlDirectory").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setItpEnabled]("GI.WebKit2.Objects.WebsiteDataManager#g:method:setItpEnabled"), [setNetworkProxySettings]("GI.WebKit2.Objects.WebsiteDataManager#g:method:setNetworkProxySettings"), [setPersistentCredentialStorageEnabled]("GI.WebKit2.Objects.WebsiteDataManager#g:method:setPersistentCredentialStorageEnabled"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setTlsErrorsPolicy]("GI.WebKit2.Objects.WebsiteDataManager#g:method:setTlsErrorsPolicy").

#if defined(ENABLE_OVERLOADING)
    ResolveWebsiteDataManagerMethod         ,
#endif

-- ** clear #method:clear#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerClearMethodInfo       ,
#endif
    websiteDataManagerClear                 ,


-- ** clearFinish #method:clearFinish#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerClearFinishMethodInfo ,
#endif
    websiteDataManagerClearFinish           ,


-- ** fetch #method:fetch#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerFetchMethodInfo       ,
#endif
    websiteDataManagerFetch                 ,


-- ** fetchFinish #method:fetchFinish#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerFetchFinishMethodInfo ,
#endif
    websiteDataManagerFetchFinish           ,


-- ** getBaseCacheDirectory #method:getBaseCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetBaseCacheDirectoryMethodInfo,
#endif
    websiteDataManagerGetBaseCacheDirectory ,


-- ** getBaseDataDirectory #method:getBaseDataDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetBaseDataDirectoryMethodInfo,
#endif
    websiteDataManagerGetBaseDataDirectory  ,


-- ** getCookieManager #method:getCookieManager#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetCookieManagerMethodInfo,
#endif
    websiteDataManagerGetCookieManager      ,


-- ** getDiskCacheDirectory #method:getDiskCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetDiskCacheDirectoryMethodInfo,
#endif
    websiteDataManagerGetDiskCacheDirectory ,


-- ** getDomCacheDirectory #method:getDomCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetDomCacheDirectoryMethodInfo,
#endif
    websiteDataManagerGetDomCacheDirectory  ,


-- ** getHstsCacheDirectory #method:getHstsCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetHstsCacheDirectoryMethodInfo,
#endif
    websiteDataManagerGetHstsCacheDirectory ,


-- ** getIndexeddbDirectory #method:getIndexeddbDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetIndexeddbDirectoryMethodInfo,
#endif
    websiteDataManagerGetIndexeddbDirectory ,


-- ** getItpDirectory #method:getItpDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetItpDirectoryMethodInfo,
#endif
    websiteDataManagerGetItpDirectory       ,


-- ** getItpEnabled #method:getItpEnabled#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetItpEnabledMethodInfo,
#endif
    websiteDataManagerGetItpEnabled         ,


-- ** getItpSummary #method:getItpSummary#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetItpSummaryMethodInfo,
#endif
    websiteDataManagerGetItpSummary         ,


-- ** getItpSummaryFinish #method:getItpSummaryFinish#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetItpSummaryFinishMethodInfo,
#endif
    websiteDataManagerGetItpSummaryFinish   ,


-- ** getLocalStorageDirectory #method:getLocalStorageDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetLocalStorageDirectoryMethodInfo,
#endif
    websiteDataManagerGetLocalStorageDirectory,


-- ** getOfflineApplicationCacheDirectory #method:getOfflineApplicationCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo,
#endif
    websiteDataManagerGetOfflineApplicationCacheDirectory,


-- ** getPersistentCredentialStorageEnabled #method:getPersistentCredentialStorageEnabled#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo,
#endif
    websiteDataManagerGetPersistentCredentialStorageEnabled,


-- ** getServiceWorkerRegistrationsDirectory #method:getServiceWorkerRegistrationsDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo,
#endif
    websiteDataManagerGetServiceWorkerRegistrationsDirectory,


-- ** getTlsErrorsPolicy #method:getTlsErrorsPolicy#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetTlsErrorsPolicyMethodInfo,
#endif
    websiteDataManagerGetTlsErrorsPolicy    ,


-- ** getWebsqlDirectory #method:getWebsqlDirectory#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerGetWebsqlDirectoryMethodInfo,
#endif
    websiteDataManagerGetWebsqlDirectory    ,


-- ** isEphemeral #method:isEphemeral#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerIsEphemeralMethodInfo ,
#endif
    websiteDataManagerIsEphemeral           ,


-- ** newEphemeral #method:newEphemeral#

    websiteDataManagerNewEphemeral          ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerRemoveMethodInfo      ,
#endif
    websiteDataManagerRemove                ,


-- ** removeFinish #method:removeFinish#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerRemoveFinishMethodInfo,
#endif
    websiteDataManagerRemoveFinish          ,


-- ** setItpEnabled #method:setItpEnabled#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerSetItpEnabledMethodInfo,
#endif
    websiteDataManagerSetItpEnabled         ,


-- ** setMemoryPressureSettings #method:setMemoryPressureSettings#

    websiteDataManagerSetMemoryPressureSettings,


-- ** setNetworkProxySettings #method:setNetworkProxySettings#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerSetNetworkProxySettingsMethodInfo,
#endif
    websiteDataManagerSetNetworkProxySettings,


-- ** setPersistentCredentialStorageEnabled #method:setPersistentCredentialStorageEnabled#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo,
#endif
    websiteDataManagerSetPersistentCredentialStorageEnabled,


-- ** setTlsErrorsPolicy #method:setTlsErrorsPolicy#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerSetTlsErrorsPolicyMethodInfo,
#endif
    websiteDataManagerSetTlsErrorsPolicy    ,




 -- * Properties


-- ** baseCacheDirectory #attr:baseCacheDirectory#
-- | The base directory for caches. If 'P.Nothing', a default location will be used.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerBaseCacheDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerBaseCacheDirectory,
    getWebsiteDataManagerBaseCacheDirectory ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerBaseCacheDirectory    ,
#endif


-- ** baseDataDirectory #attr:baseDataDirectory#
-- | The base directory for website data. If 'P.Nothing', a default location will be used.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerBaseDataDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerBaseDataDirectory,
    getWebsiteDataManagerBaseDataDirectory  ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerBaseDataDirectory     ,
#endif


-- ** diskCacheDirectory #attr:diskCacheDirectory#
-- | The directory where HTTP disk cache will be stored.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerDiskCacheDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerDiskCacheDirectory,
    getWebsiteDataManagerDiskCacheDirectory ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerDiskCacheDirectory    ,
#endif


-- ** domCacheDirectory #attr:domCacheDirectory#
-- | The directory where DOM cache will be stored.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerDomCacheDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerDomCacheDirectory,
    getWebsiteDataManagerDomCacheDirectory  ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerDomCacheDirectory     ,
#endif


-- ** hstsCacheDirectory #attr:hstsCacheDirectory#
-- | The directory where the HTTP Strict-Transport-Security (HSTS) cache will be stored.
-- 
-- /Since: 2.26/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerHstsCacheDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerHstsCacheDirectory,
    getWebsiteDataManagerHstsCacheDirectory ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerHstsCacheDirectory    ,
#endif


-- ** indexeddbDirectory #attr:indexeddbDirectory#
-- | The directory where IndexedDB databases will be stored.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerIndexeddbDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerIndexeddbDirectory,
    getWebsiteDataManagerIndexeddbDirectory ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerIndexeddbDirectory    ,
#endif


-- ** isEphemeral #attr:isEphemeral#
-- | Whether the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' is ephemeral. An ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
-- handles all websites data as non-persistent, and nothing will be written to the client
-- storage. Note that if you create an ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' all other construction
-- parameters to configure data directories will be ignored.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerIsEphemeralPropertyInfo,
#endif
    constructWebsiteDataManagerIsEphemeral  ,
    getWebsiteDataManagerIsEphemeral        ,


-- ** itpDirectory #attr:itpDirectory#
-- | The directory where Intelligent Tracking Prevention (ITP) data will be stored.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerItpDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerItpDirectory ,
    getWebsiteDataManagerItpDirectory       ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerItpDirectory          ,
#endif


-- ** localStorageDirectory #attr:localStorageDirectory#
-- | The directory where local storage data will be stored.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerLocalStorageDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerLocalStorageDirectory,
    getWebsiteDataManagerLocalStorageDirectory,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerLocalStorageDirectory ,
#endif


-- ** offlineApplicationCacheDirectory #attr:offlineApplicationCacheDirectory#
-- | The directory where offline web application cache will be stored.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerOfflineApplicationCacheDirectory,
    getWebsiteDataManagerOfflineApplicationCacheDirectory,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerOfflineApplicationCacheDirectory,
#endif


-- ** originStorageRatio #attr:originStorageRatio#
-- | The percentage of volume space that can be used for data storage for every domain.
-- If the maximum storage is reached the storage request will fail with a QuotaExceededError exception.
-- A value of 0.0 means that data storage is not allowed. A value of -1.0, which is the default,
-- means WebKit will use the default quota (1 GiB).
-- 
-- /Since: 2.42/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerOriginStorageRatioPropertyInfo,
#endif
    constructWebsiteDataManagerOriginStorageRatio,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerOriginStorageRatio    ,
#endif


-- ** serviceWorkerRegistrationsDirectory #attr:serviceWorkerRegistrationsDirectory#
-- | The directory where service workers registrations will be stored.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerServiceWorkerRegistrationsDirectory,
    getWebsiteDataManagerServiceWorkerRegistrationsDirectory,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerServiceWorkerRegistrationsDirectory,
#endif


-- ** totalStorageRatio #attr:totalStorageRatio#
-- | The percentage of volume space that can be used for data storage for all domains.
-- If the maximum storage is reached the eviction will happen.
-- A value of 0.0 means that data storage is not allowed. A value of -1.0, which is the default,
-- means there\'s no limit for the total storage.
-- 
-- /Since: 2.42/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerTotalStorageRatioPropertyInfo,
#endif
    constructWebsiteDataManagerTotalStorageRatio,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerTotalStorageRatio     ,
#endif


-- ** websqlDirectory #attr:websqlDirectory#
-- | The directory where WebSQL databases will be stored.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebsiteDataManagerWebsqlDirectoryPropertyInfo,
#endif
    constructWebsiteDataManagerWebsqlDirectory,
    getWebsiteDataManagerWebsqlDirectory    ,
#if defined(ENABLE_OVERLOADING)
    websiteDataManagerWebsqlDirectory       ,
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
import qualified GI.GLib.Structs.DateTime as GLib.DateTime
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Soup.Structs.Cookie as Soup.Cookie
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Objects.CookieManager as WebKit2.CookieManager
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPFirstParty as WebKit2.ITPFirstParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPThirdParty as WebKit2.ITPThirdParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MemoryPressureSettings as WebKit2.MemoryPressureSettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NetworkProxySettings as WebKit2.NetworkProxySettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebsiteData as WebKit2.WebsiteData

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Objects.CookieManager as WebKit2.CookieManager
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPThirdParty as WebKit2.ITPThirdParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MemoryPressureSettings as WebKit2.MemoryPressureSettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NetworkProxySettings as WebKit2.NetworkProxySettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebsiteData as WebKit2.WebsiteData

#endif

-- | Memory-managed wrapper type.
newtype WebsiteDataManager = WebsiteDataManager (SP.ManagedPtr WebsiteDataManager)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebsiteDataManager where
    toManagedPtr (WebsiteDataManager p) = p

foreign import ccall "webkit_website_data_manager_get_type"
    c_webkit_website_data_manager_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebsiteDataManager where
    glibType = c_webkit_website_data_manager_get_type

instance B.Types.GObject WebsiteDataManager

-- | Type class for types which can be safely cast to t'WebsiteDataManager', for instance with `toWebsiteDataManager`.
class (SP.GObject o, O.IsDescendantOf WebsiteDataManager o) => IsWebsiteDataManager o
instance (SP.GObject o, O.IsDescendantOf WebsiteDataManager o) => IsWebsiteDataManager o

instance O.HasParentTypes WebsiteDataManager
type instance O.ParentTypes WebsiteDataManager = '[GObject.Object.Object]

-- | Cast to t'WebsiteDataManager', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebsiteDataManager :: (MIO.MonadIO m, IsWebsiteDataManager o) => o -> m WebsiteDataManager
toWebsiteDataManager = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebsiteDataManager

-- | Convert t'WebsiteDataManager' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebsiteDataManager) where
    gvalueGType_ = c_webkit_website_data_manager_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebsiteDataManager)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebsiteDataManager)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebsiteDataManager ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebsiteDataManagerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebsiteDataManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebsiteDataManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebsiteDataManagerMethod "clear" o = WebsiteDataManagerClearMethodInfo
    ResolveWebsiteDataManagerMethod "clearFinish" o = WebsiteDataManagerClearFinishMethodInfo
    ResolveWebsiteDataManagerMethod "fetch" o = WebsiteDataManagerFetchMethodInfo
    ResolveWebsiteDataManagerMethod "fetchFinish" o = WebsiteDataManagerFetchFinishMethodInfo
    ResolveWebsiteDataManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebsiteDataManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebsiteDataManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebsiteDataManagerMethod "isEphemeral" o = WebsiteDataManagerIsEphemeralMethodInfo
    ResolveWebsiteDataManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebsiteDataManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebsiteDataManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebsiteDataManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebsiteDataManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebsiteDataManagerMethod "remove" o = WebsiteDataManagerRemoveMethodInfo
    ResolveWebsiteDataManagerMethod "removeFinish" o = WebsiteDataManagerRemoveFinishMethodInfo
    ResolveWebsiteDataManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebsiteDataManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebsiteDataManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebsiteDataManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebsiteDataManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebsiteDataManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebsiteDataManagerMethod "getBaseCacheDirectory" o = WebsiteDataManagerGetBaseCacheDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getBaseDataDirectory" o = WebsiteDataManagerGetBaseDataDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getCookieManager" o = WebsiteDataManagerGetCookieManagerMethodInfo
    ResolveWebsiteDataManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebsiteDataManagerMethod "getDiskCacheDirectory" o = WebsiteDataManagerGetDiskCacheDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getDomCacheDirectory" o = WebsiteDataManagerGetDomCacheDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getHstsCacheDirectory" o = WebsiteDataManagerGetHstsCacheDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getIndexeddbDirectory" o = WebsiteDataManagerGetIndexeddbDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getItpDirectory" o = WebsiteDataManagerGetItpDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getItpEnabled" o = WebsiteDataManagerGetItpEnabledMethodInfo
    ResolveWebsiteDataManagerMethod "getItpSummary" o = WebsiteDataManagerGetItpSummaryMethodInfo
    ResolveWebsiteDataManagerMethod "getItpSummaryFinish" o = WebsiteDataManagerGetItpSummaryFinishMethodInfo
    ResolveWebsiteDataManagerMethod "getLocalStorageDirectory" o = WebsiteDataManagerGetLocalStorageDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getOfflineApplicationCacheDirectory" o = WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getPersistentCredentialStorageEnabled" o = WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo
    ResolveWebsiteDataManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebsiteDataManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebsiteDataManagerMethod "getServiceWorkerRegistrationsDirectory" o = WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "getTlsErrorsPolicy" o = WebsiteDataManagerGetTlsErrorsPolicyMethodInfo
    ResolveWebsiteDataManagerMethod "getWebsqlDirectory" o = WebsiteDataManagerGetWebsqlDirectoryMethodInfo
    ResolveWebsiteDataManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebsiteDataManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebsiteDataManagerMethod "setItpEnabled" o = WebsiteDataManagerSetItpEnabledMethodInfo
    ResolveWebsiteDataManagerMethod "setNetworkProxySettings" o = WebsiteDataManagerSetNetworkProxySettingsMethodInfo
    ResolveWebsiteDataManagerMethod "setPersistentCredentialStorageEnabled" o = WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo
    ResolveWebsiteDataManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebsiteDataManagerMethod "setTlsErrorsPolicy" o = WebsiteDataManagerSetTlsErrorsPolicyMethodInfo
    ResolveWebsiteDataManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebsiteDataManagerMethod t WebsiteDataManager, O.OverloadedMethod info WebsiteDataManager p) => OL.IsLabel t (WebsiteDataManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebsiteDataManagerMethod t WebsiteDataManager, O.OverloadedMethod info WebsiteDataManager p, R.HasField t WebsiteDataManager p) => R.HasField t WebsiteDataManager p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebsiteDataManagerMethod t WebsiteDataManager, O.OverloadedMethodInfo info WebsiteDataManager) => OL.IsLabel t (O.MethodProxy info WebsiteDataManager) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "base-cache-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@base-cache-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #baseCacheDirectory
-- @
getWebsiteDataManagerBaseCacheDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerBaseCacheDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "base-cache-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@base-cache-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerBaseCacheDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerBaseCacheDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "base-cache-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerBaseCacheDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerBaseCacheDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerBaseCacheDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerBaseCacheDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerBaseCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerBaseCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerBaseCacheDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerBaseCacheDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerBaseCacheDirectoryPropertyInfo = "base-cache-directory"
    type AttrOrigin WebsiteDataManagerBaseCacheDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerBaseCacheDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerBaseCacheDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.baseCacheDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:baseCacheDirectory"
        })
#endif

-- VVV Prop "base-data-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@base-data-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #baseDataDirectory
-- @
getWebsiteDataManagerBaseDataDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerBaseDataDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "base-data-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@base-data-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerBaseDataDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerBaseDataDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "base-data-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerBaseDataDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerBaseDataDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerBaseDataDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerBaseDataDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerBaseDataDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerBaseDataDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerBaseDataDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerBaseDataDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerBaseDataDirectoryPropertyInfo = "base-data-directory"
    type AttrOrigin WebsiteDataManagerBaseDataDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerBaseDataDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerBaseDataDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.baseDataDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:baseDataDirectory"
        })
#endif

-- VVV Prop "disk-cache-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@disk-cache-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #diskCacheDirectory
-- @
getWebsiteDataManagerDiskCacheDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerDiskCacheDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "disk-cache-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@disk-cache-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerDiskCacheDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerDiskCacheDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "disk-cache-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerDiskCacheDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerDiskCacheDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerDiskCacheDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerDiskCacheDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerDiskCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerDiskCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerDiskCacheDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerDiskCacheDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerDiskCacheDirectoryPropertyInfo = "disk-cache-directory"
    type AttrOrigin WebsiteDataManagerDiskCacheDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerDiskCacheDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerDiskCacheDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.diskCacheDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:diskCacheDirectory"
        })
#endif

-- VVV Prop "dom-cache-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@dom-cache-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #domCacheDirectory
-- @
getWebsiteDataManagerDomCacheDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerDomCacheDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "dom-cache-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@dom-cache-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerDomCacheDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerDomCacheDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "dom-cache-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerDomCacheDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerDomCacheDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerDomCacheDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerDomCacheDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerDomCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerDomCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerDomCacheDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerDomCacheDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerDomCacheDirectoryPropertyInfo = "dom-cache-directory"
    type AttrOrigin WebsiteDataManagerDomCacheDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerDomCacheDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerDomCacheDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.domCacheDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:domCacheDirectory"
        })
#endif

-- VVV Prop "hsts-cache-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@hsts-cache-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #hstsCacheDirectory
-- @
getWebsiteDataManagerHstsCacheDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerHstsCacheDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "hsts-cache-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@hsts-cache-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerHstsCacheDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerHstsCacheDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "hsts-cache-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerHstsCacheDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerHstsCacheDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerHstsCacheDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerHstsCacheDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerHstsCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerHstsCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerHstsCacheDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerHstsCacheDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerHstsCacheDirectoryPropertyInfo = "hsts-cache-directory"
    type AttrOrigin WebsiteDataManagerHstsCacheDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerHstsCacheDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerHstsCacheDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.hstsCacheDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:hstsCacheDirectory"
        })
#endif

-- VVV Prop "indexeddb-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@indexeddb-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #indexeddbDirectory
-- @
getWebsiteDataManagerIndexeddbDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerIndexeddbDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "indexeddb-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@indexeddb-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerIndexeddbDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerIndexeddbDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "indexeddb-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIndexeddbDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerIndexeddbDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerIndexeddbDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerIndexeddbDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerIndexeddbDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerIndexeddbDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerIndexeddbDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerIndexeddbDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerIndexeddbDirectoryPropertyInfo = "indexeddb-directory"
    type AttrOrigin WebsiteDataManagerIndexeddbDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerIndexeddbDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerIndexeddbDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.indexeddbDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:indexeddbDirectory"
        })
#endif

-- VVV Prop "is-ephemeral"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-ephemeral@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #isEphemeral
-- @
getWebsiteDataManagerIsEphemeral :: (MonadIO m, IsWebsiteDataManager o) => o -> m Bool
getWebsiteDataManagerIsEphemeral obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-ephemeral"

-- | Construct a t'GValueConstruct' with valid value for the “@is-ephemeral@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerIsEphemeral :: (IsWebsiteDataManager o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebsiteDataManagerIsEphemeral val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-ephemeral" val

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIsEphemeralPropertyInfo
instance AttrInfo WebsiteDataManagerIsEphemeralPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerIsEphemeralPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebsiteDataManagerIsEphemeralPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerIsEphemeralPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebsiteDataManagerIsEphemeralPropertyInfo = (~) Bool
    type AttrTransferType WebsiteDataManagerIsEphemeralPropertyInfo = Bool
    type AttrGetType WebsiteDataManagerIsEphemeralPropertyInfo = Bool
    type AttrLabel WebsiteDataManagerIsEphemeralPropertyInfo = "is-ephemeral"
    type AttrOrigin WebsiteDataManagerIsEphemeralPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerIsEphemeral
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerIsEphemeral
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.isEphemeral"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:isEphemeral"
        })
#endif

-- VVV Prop "itp-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@itp-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #itpDirectory
-- @
getWebsiteDataManagerItpDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerItpDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "itp-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@itp-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerItpDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerItpDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "itp-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerItpDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerItpDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerItpDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerItpDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerItpDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerItpDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerItpDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerItpDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerItpDirectoryPropertyInfo = "itp-directory"
    type AttrOrigin WebsiteDataManagerItpDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerItpDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerItpDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.itpDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:itpDirectory"
        })
#endif

-- VVV Prop "local-storage-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@local-storage-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #localStorageDirectory
-- @
getWebsiteDataManagerLocalStorageDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerLocalStorageDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "local-storage-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@local-storage-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerLocalStorageDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerLocalStorageDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "local-storage-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerLocalStorageDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerLocalStorageDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerLocalStorageDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerLocalStorageDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerLocalStorageDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerLocalStorageDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerLocalStorageDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerLocalStorageDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerLocalStorageDirectoryPropertyInfo = "local-storage-directory"
    type AttrOrigin WebsiteDataManagerLocalStorageDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerLocalStorageDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerLocalStorageDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.localStorageDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:localStorageDirectory"
        })
#endif

-- VVV Prop "offline-application-cache-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@offline-application-cache-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #offlineApplicationCacheDirectory
-- @
getWebsiteDataManagerOfflineApplicationCacheDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerOfflineApplicationCacheDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "offline-application-cache-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@offline-application-cache-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerOfflineApplicationCacheDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerOfflineApplicationCacheDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "offline-application-cache-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = "offline-application-cache-directory"
    type AttrOrigin WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerOfflineApplicationCacheDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerOfflineApplicationCacheDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.offlineApplicationCacheDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:offlineApplicationCacheDirectory"
        })
#endif

-- VVV Prop "origin-storage-ratio"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@origin-storage-ratio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerOriginStorageRatio :: (IsWebsiteDataManager o, MIO.MonadIO m) => Double -> m (GValueConstruct o)
constructWebsiteDataManagerOriginStorageRatio val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyDouble "origin-storage-ratio" val

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerOriginStorageRatioPropertyInfo
instance AttrInfo WebsiteDataManagerOriginStorageRatioPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerOriginStorageRatioPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint WebsiteDataManagerOriginStorageRatioPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerOriginStorageRatioPropertyInfo = (~) Double
    type AttrTransferTypeConstraint WebsiteDataManagerOriginStorageRatioPropertyInfo = (~) Double
    type AttrTransferType WebsiteDataManagerOriginStorageRatioPropertyInfo = Double
    type AttrGetType WebsiteDataManagerOriginStorageRatioPropertyInfo = ()
    type AttrLabel WebsiteDataManagerOriginStorageRatioPropertyInfo = "origin-storage-ratio"
    type AttrOrigin WebsiteDataManagerOriginStorageRatioPropertyInfo = WebsiteDataManager
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerOriginStorageRatio
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.originStorageRatio"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:originStorageRatio"
        })
#endif

-- VVV Prop "service-worker-registrations-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@service-worker-registrations-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #serviceWorkerRegistrationsDirectory
-- @
getWebsiteDataManagerServiceWorkerRegistrationsDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerServiceWorkerRegistrationsDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "service-worker-registrations-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@service-worker-registrations-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerServiceWorkerRegistrationsDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerServiceWorkerRegistrationsDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "service-worker-registrations-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = "service-worker-registrations-directory"
    type AttrOrigin WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerServiceWorkerRegistrationsDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerServiceWorkerRegistrationsDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.serviceWorkerRegistrationsDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:serviceWorkerRegistrationsDirectory"
        })
#endif

-- VVV Prop "total-storage-ratio"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@total-storage-ratio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerTotalStorageRatio :: (IsWebsiteDataManager o, MIO.MonadIO m) => Double -> m (GValueConstruct o)
constructWebsiteDataManagerTotalStorageRatio val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyDouble "total-storage-ratio" val

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerTotalStorageRatioPropertyInfo
instance AttrInfo WebsiteDataManagerTotalStorageRatioPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerTotalStorageRatioPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint WebsiteDataManagerTotalStorageRatioPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerTotalStorageRatioPropertyInfo = (~) Double
    type AttrTransferTypeConstraint WebsiteDataManagerTotalStorageRatioPropertyInfo = (~) Double
    type AttrTransferType WebsiteDataManagerTotalStorageRatioPropertyInfo = Double
    type AttrGetType WebsiteDataManagerTotalStorageRatioPropertyInfo = ()
    type AttrLabel WebsiteDataManagerTotalStorageRatioPropertyInfo = "total-storage-ratio"
    type AttrOrigin WebsiteDataManagerTotalStorageRatioPropertyInfo = WebsiteDataManager
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerTotalStorageRatio
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.totalStorageRatio"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:totalStorageRatio"
        })
#endif

-- VVV Prop "websql-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@websql-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websiteDataManager #websqlDirectory
-- @
getWebsiteDataManagerWebsqlDirectory :: (MonadIO m, IsWebsiteDataManager o) => o -> m (Maybe T.Text)
getWebsiteDataManagerWebsqlDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "websql-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@websql-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsiteDataManagerWebsqlDirectory :: (IsWebsiteDataManager o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebsiteDataManagerWebsqlDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "websql-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerWebsqlDirectoryPropertyInfo
instance AttrInfo WebsiteDataManagerWebsqlDirectoryPropertyInfo where
    type AttrAllowedOps WebsiteDataManagerWebsqlDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebsiteDataManagerWebsqlDirectoryPropertyInfo = IsWebsiteDataManager
    type AttrSetTypeConstraint WebsiteDataManagerWebsqlDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebsiteDataManagerWebsqlDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebsiteDataManagerWebsqlDirectoryPropertyInfo = T.Text
    type AttrGetType WebsiteDataManagerWebsqlDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebsiteDataManagerWebsqlDirectoryPropertyInfo = "websql-directory"
    type AttrOrigin WebsiteDataManagerWebsqlDirectoryPropertyInfo = WebsiteDataManager
    attrGet = getWebsiteDataManagerWebsqlDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsiteDataManagerWebsqlDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websqlDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#g:attr:websqlDirectory"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebsiteDataManager
type instance O.AttributeList WebsiteDataManager = WebsiteDataManagerAttributeList
type WebsiteDataManagerAttributeList = ('[ '("baseCacheDirectory", WebsiteDataManagerBaseCacheDirectoryPropertyInfo), '("baseDataDirectory", WebsiteDataManagerBaseDataDirectoryPropertyInfo), '("diskCacheDirectory", WebsiteDataManagerDiskCacheDirectoryPropertyInfo), '("domCacheDirectory", WebsiteDataManagerDomCacheDirectoryPropertyInfo), '("hstsCacheDirectory", WebsiteDataManagerHstsCacheDirectoryPropertyInfo), '("indexeddbDirectory", WebsiteDataManagerIndexeddbDirectoryPropertyInfo), '("isEphemeral", WebsiteDataManagerIsEphemeralPropertyInfo), '("itpDirectory", WebsiteDataManagerItpDirectoryPropertyInfo), '("localStorageDirectory", WebsiteDataManagerLocalStorageDirectoryPropertyInfo), '("offlineApplicationCacheDirectory", WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo), '("originStorageRatio", WebsiteDataManagerOriginStorageRatioPropertyInfo), '("serviceWorkerRegistrationsDirectory", WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo), '("totalStorageRatio", WebsiteDataManagerTotalStorageRatioPropertyInfo), '("websqlDirectory", WebsiteDataManagerWebsqlDirectoryPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
websiteDataManagerBaseCacheDirectory :: AttrLabelProxy "baseCacheDirectory"
websiteDataManagerBaseCacheDirectory = AttrLabelProxy

websiteDataManagerBaseDataDirectory :: AttrLabelProxy "baseDataDirectory"
websiteDataManagerBaseDataDirectory = AttrLabelProxy

websiteDataManagerDiskCacheDirectory :: AttrLabelProxy "diskCacheDirectory"
websiteDataManagerDiskCacheDirectory = AttrLabelProxy

websiteDataManagerDomCacheDirectory :: AttrLabelProxy "domCacheDirectory"
websiteDataManagerDomCacheDirectory = AttrLabelProxy

websiteDataManagerHstsCacheDirectory :: AttrLabelProxy "hstsCacheDirectory"
websiteDataManagerHstsCacheDirectory = AttrLabelProxy

websiteDataManagerIndexeddbDirectory :: AttrLabelProxy "indexeddbDirectory"
websiteDataManagerIndexeddbDirectory = AttrLabelProxy

websiteDataManagerItpDirectory :: AttrLabelProxy "itpDirectory"
websiteDataManagerItpDirectory = AttrLabelProxy

websiteDataManagerLocalStorageDirectory :: AttrLabelProxy "localStorageDirectory"
websiteDataManagerLocalStorageDirectory = AttrLabelProxy

websiteDataManagerOfflineApplicationCacheDirectory :: AttrLabelProxy "offlineApplicationCacheDirectory"
websiteDataManagerOfflineApplicationCacheDirectory = AttrLabelProxy

websiteDataManagerOriginStorageRatio :: AttrLabelProxy "originStorageRatio"
websiteDataManagerOriginStorageRatio = AttrLabelProxy

websiteDataManagerServiceWorkerRegistrationsDirectory :: AttrLabelProxy "serviceWorkerRegistrationsDirectory"
websiteDataManagerServiceWorkerRegistrationsDirectory = AttrLabelProxy

websiteDataManagerTotalStorageRatio :: AttrLabelProxy "totalStorageRatio"
websiteDataManagerTotalStorageRatio = AttrLabelProxy

websiteDataManagerWebsqlDirectory :: AttrLabelProxy "websqlDirectory"
websiteDataManagerWebsqlDirectory = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebsiteDataManager = WebsiteDataManagerSignalList
type WebsiteDataManagerSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebsiteDataManager::new_ephemeral
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebsiteDataManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_manager_new_ephemeral" webkit_website_data_manager_new_ephemeral :: 
    IO (Ptr WebsiteDataManager)

-- | Creates an ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
-- 
-- See [WebsiteDataManager:isEphemeral]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:isEphemeral") for more details.
-- 
-- /Since: 2.16/
websiteDataManagerNewEphemeral ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebsiteDataManager
    -- ^ __Returns:__ a new ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
websiteDataManagerNewEphemeral  = liftIO $ do
    result <- webkit_website_data_manager_new_ephemeral
    checkUnexpectedReturnNULL "websiteDataManagerNewEphemeral" result
    result' <- (wrapObject WebsiteDataManager) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebsiteDataManager::clear
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "types"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataTypes" }
--           , argCType = Just "WebKitWebsiteDataTypes"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#WebKitWebsiteDataTypes"
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
--           { argCName = "timespan"
--           , argType = TBasicType TInt64
--           , argCType = Just "GTimeSpan"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GTimeSpan" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_website_data_manager_clear" webkit_website_data_manager_clear :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CUInt ->                                -- types : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataTypes"})
    Int64 ->                                -- timespan : TBasicType TInt64
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously clear the website data of the given /@types@/ modified in the past /@timespan@/.
-- 
-- If /@timespan@/ is 0, all website data will be removed.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClearFinish' to get the result of the operation.
-- 
-- Due to implementation limitations, this function does not currently delete
-- any stored cookies if /@timespan@/ is nonzero. This behavior may change in the
-- future.
-- 
-- /Since: 2.16/
websiteDataManagerClear ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> [WebKit2.Flags.WebsiteDataTypes]
    -- ^ /@types@/: t'GI.WebKit2.Flags.WebsiteDataTypes'
    -> Int64
    -- ^ /@timespan@/: a @/GTimeSpan/@
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
websiteDataManagerClear manager types timespan cancellable callback = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let types' = gflagsToWord types
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_website_data_manager_clear manager' types' timespan maybeCancellable maybeCallback userData
    touchManagedPtr manager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerClearMethodInfo
instance (signature ~ ([WebKit2.Flags.WebsiteDataTypes] -> Int64 -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebsiteDataManagerClearMethodInfo a signature where
    overloadedMethod = websiteDataManagerClear

instance O.OverloadedMethodInfo WebsiteDataManagerClearMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClear",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerClear"
        })


#endif

-- method WebsiteDataManager::clear_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
-- throws : True
-- Skip return : False

foreign import ccall "webkit_website_data_manager_clear_finish" webkit_website_data_manager_clear_finish :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClear'
-- 
-- /Since: 2.16/
websiteDataManagerClearFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
websiteDataManagerClearFinish manager result_ = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_website_data_manager_clear_finish manager' result_'
        touchManagedPtr manager
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerClearFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebsiteDataManagerClearFinishMethodInfo a signature where
    overloadedMethod = websiteDataManagerClearFinish

instance O.OverloadedMethodInfo WebsiteDataManagerClearFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClearFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerClearFinish"
        })


#endif

-- method WebsiteDataManager::fetch
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "types"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataTypes" }
--           , argCType = Just "WebKitWebsiteDataTypes"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#WebKitWebsiteDataTypes"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_website_data_manager_fetch" webkit_website_data_manager_fetch :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CUInt ->                                -- types : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataTypes"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get the list of t'GI.WebKit2.Structs.WebsiteData.WebsiteData' for the given /@types@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetchFinish' to get the result of the operation.
-- 
-- /Since: 2.16/
websiteDataManagerFetch ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> [WebKit2.Flags.WebsiteDataTypes]
    -- ^ /@types@/: t'GI.WebKit2.Flags.WebsiteDataTypes'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
websiteDataManagerFetch manager types cancellable callback = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let types' = gflagsToWord types
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_website_data_manager_fetch manager' types' maybeCancellable maybeCallback userData
    touchManagedPtr manager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerFetchMethodInfo
instance (signature ~ ([WebKit2.Flags.WebsiteDataTypes] -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebsiteDataManagerFetchMethodInfo a signature where
    overloadedMethod = websiteDataManagerFetch

instance O.OverloadedMethodInfo WebsiteDataManagerFetchMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetch",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerFetch"
        })


#endif

-- method WebsiteDataManager::fetch_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
--               (TGList
--                  (TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_website_data_manager_fetch_finish" webkit_website_data_manager_fetch_finish :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr WebKit2.WebsiteData.WebsiteData)))

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetch'.
-- 
-- /Since: 2.16/
websiteDataManagerFetchFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [WebKit2.WebsiteData.WebsiteData]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Structs.WebsiteData.WebsiteData'. You must free the t'GI.GLib.Structs.List.List' with
    --    @/g_list_free()/@ and unref the t'GI.WebKit2.Structs.WebsiteData.WebsiteData's with 'GI.WebKit2.Structs.WebsiteData.websiteDataUnref' when you\'re done with them. /(Can throw 'Data.GI.Base.GError.GError')/
websiteDataManagerFetchFinish manager result_ = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_website_data_manager_fetch_finish manager' result_'
        result' <- unpackGList result
        result'' <- mapM (wrapBoxed WebKit2.WebsiteData.WebsiteData) result'
        g_list_free result
        touchManagedPtr manager
        touchManagedPtr result_
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerFetchFinishMethodInfo
instance (signature ~ (b -> m [WebKit2.WebsiteData.WebsiteData]), MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebsiteDataManagerFetchFinishMethodInfo a signature where
    overloadedMethod = websiteDataManagerFetchFinish

instance O.OverloadedMethodInfo WebsiteDataManagerFetchFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetchFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerFetchFinish"
        })


#endif

-- method WebsiteDataManager::get_base_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_base_cache_directory" webkit_website_data_manager_get_base_cache_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

-- | Get the [WebsiteDataManager:baseCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseCacheDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetBaseCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the base directory for caches, or 'P.Nothing' if
    --    [WebsiteDataManager:baseCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseCacheDirectory") was not provided or /@manager@/ is ephemeral.
websiteDataManagerGetBaseCacheDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_base_cache_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetBaseCacheDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetBaseCacheDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetBaseCacheDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetBaseCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetBaseCacheDirectory"
        })


#endif

-- method WebsiteDataManager::get_base_data_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_base_data_directory" webkit_website_data_manager_get_base_data_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

-- | Get the [WebsiteDataManager:baseDataDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseDataDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetBaseDataDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the base directory for website data, or 'P.Nothing' if
    --    [WebsiteDataManager:baseDataDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:baseDataDirectory") was not provided or /@manager@/ is ephemeral.
websiteDataManagerGetBaseDataDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_base_data_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetBaseDataDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetBaseDataDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetBaseDataDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetBaseDataDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseDataDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetBaseDataDirectory"
        })


#endif

-- method WebsiteDataManager::get_cookie_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--                  Name { namespace = "WebKit2" , name = "CookieManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_manager_get_cookie_manager" webkit_website_data_manager_get_cookie_manager :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO (Ptr WebKit2.CookieManager.CookieManager)

-- | Get the t'GI.WebKit2.Objects.CookieManager.CookieManager' of /@manager@/.
-- 
-- /Since: 2.16/
websiteDataManagerGetCookieManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m WebKit2.CookieManager.CookieManager
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.CookieManager.CookieManager'
websiteDataManagerGetCookieManager manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_cookie_manager manager'
    checkUnexpectedReturnNULL "websiteDataManagerGetCookieManager" result
    result' <- (newObject WebKit2.CookieManager.CookieManager) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetCookieManagerMethodInfo
instance (signature ~ (m WebKit2.CookieManager.CookieManager), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetCookieManagerMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetCookieManager

instance O.OverloadedMethodInfo WebsiteDataManagerGetCookieManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetCookieManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetCookieManager"
        })


#endif

-- method WebsiteDataManager::get_disk_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_disk_cache_directory" webkit_website_data_manager_get_disk_cache_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetDiskCacheDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseCacheDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:diskCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:diskCacheDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetDiskCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where HTTP disk cache is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetDiskCacheDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_disk_cache_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetDiskCacheDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetDiskCacheDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetDiskCacheDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetDiskCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetDiskCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetDiskCacheDirectory"
        })


#endif

-- method WebsiteDataManager::get_dom_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_dom_cache_directory" webkit_website_data_manager_get_dom_cache_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetDomCacheDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseCacheDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:domCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:domCacheDirectory") property.
-- 
-- /Since: 2.30/
websiteDataManagerGetDomCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where DOM cache is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetDomCacheDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_dom_cache_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetDomCacheDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetDomCacheDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetDomCacheDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetDomCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetDomCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetDomCacheDirectory"
        })


#endif

-- method WebsiteDataManager::get_hsts_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_hsts_cache_directory" webkit_website_data_manager_get_hsts_cache_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetHstsCacheDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseCacheDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:hstsCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:hstsCacheDirectory") property.
-- 
-- /Since: 2.26/
websiteDataManagerGetHstsCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where the HSTS cache is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetHstsCacheDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_hsts_cache_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetHstsCacheDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetHstsCacheDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetHstsCacheDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetHstsCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetHstsCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetHstsCacheDirectory"
        })


#endif

-- method WebsiteDataManager::get_indexeddb_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_indexeddb_directory" webkit_website_data_manager_get_indexeddb_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetIndexeddbDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseDataDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:indexeddbDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:indexeddbDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetIndexeddbDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where IndexedDB databases are stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetIndexeddbDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_indexeddb_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetIndexeddbDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetIndexeddbDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetIndexeddbDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetIndexeddbDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetIndexeddbDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetIndexeddbDirectory"
        })


#endif

-- method WebsiteDataManager::get_itp_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_itp_directory" webkit_website_data_manager_get_itp_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetItpDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseDataDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:itpDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:itpDirectory") property.
-- 
-- /Since: 2.30/
websiteDataManagerGetItpDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where Intelligent Tracking Prevention data is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetItpDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_itp_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetItpDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetItpDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetItpDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetItpDirectory"
        })


#endif

-- method WebsiteDataManager::get_itp_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_itp_enabled" webkit_website_data_manager_get_itp_enabled :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CInt

-- | Get whether Intelligent Tracking Prevention (ITP) is enabled or not.
-- 
-- /Since: 2.30/
websiteDataManagerGetItpEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if ITP is enabled, or 'P.False' otherwise.
websiteDataManagerGetItpEnabled manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_itp_enabled manager'
    let result' = (/= 0) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetItpEnabledMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetItpEnabled

instance O.OverloadedMethodInfo WebsiteDataManagerGetItpEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetItpEnabled"
        })


#endif

-- method WebsiteDataManager::get_itp_summary
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 3
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_website_data_manager_get_itp_summary" webkit_website_data_manager_get_itp_summary :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get the list of t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty' seen for /@manager@/.
-- 
-- Every t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
-- contains the list of t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty' under which it has been seen.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpSummaryFinish' to get the result of the operation.
-- 
-- /Since: 2.30/
websiteDataManagerGetItpSummary ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
websiteDataManagerGetItpSummary manager cancellable callback = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_website_data_manager_get_itp_summary manager' maybeCancellable maybeCallback userData
    touchManagedPtr manager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpSummaryMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebsiteDataManagerGetItpSummaryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetItpSummary

instance O.OverloadedMethodInfo WebsiteDataManagerGetItpSummaryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpSummary",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetItpSummary"
        })


#endif

-- method WebsiteDataManager::get_itp_summary_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
--               (TGList
--                  (TInterface
--                     Name { namespace = "WebKit2" , name = "ITPThirdParty" }))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_website_data_manager_get_itp_summary_finish" webkit_website_data_manager_get_itp_summary_finish :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr WebKit2.ITPThirdParty.ITPThirdParty)))

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpSummary'.
-- 
-- /Since: 2.30/
websiteDataManagerGetItpSummaryFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [WebKit2.ITPThirdParty.ITPThirdParty]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'.
    --    You must free the t'GI.GLib.Structs.List.List' with @/g_list_free()/@ and unref the t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty's with
    --    'GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyUnref' when you\'re done with them. /(Can throw 'Data.GI.Base.GError.GError')/
websiteDataManagerGetItpSummaryFinish manager result_ = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_website_data_manager_get_itp_summary_finish manager' result_'
        result' <- unpackGList result
        result'' <- mapM (wrapBoxed WebKit2.ITPThirdParty.ITPThirdParty) result'
        g_list_free result
        touchManagedPtr manager
        touchManagedPtr result_
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpSummaryFinishMethodInfo
instance (signature ~ (b -> m [WebKit2.ITPThirdParty.ITPThirdParty]), MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebsiteDataManagerGetItpSummaryFinishMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetItpSummaryFinish

instance O.OverloadedMethodInfo WebsiteDataManagerGetItpSummaryFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetItpSummaryFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetItpSummaryFinish"
        })


#endif

-- method WebsiteDataManager::get_local_storage_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_local_storage_directory" webkit_website_data_manager_get_local_storage_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetLocalStorageDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseDataDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:localStorageDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:localStorageDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetLocalStorageDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where local storage data is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetLocalStorageDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_local_storage_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetLocalStorageDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetLocalStorageDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetLocalStorageDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetLocalStorageDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetLocalStorageDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetLocalStorageDirectory"
        })


#endif

-- method WebsiteDataManager::get_offline_application_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_offline_application_cache_directory" webkit_website_data_manager_get_offline_application_cache_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetOfflineApplicationCacheDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseCacheDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:offlineApplicationCacheDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:offlineApplicationCacheDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetOfflineApplicationCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where offline web application cache is stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetOfflineApplicationCacheDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_offline_application_cache_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetOfflineApplicationCacheDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetOfflineApplicationCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetOfflineApplicationCacheDirectory"
        })


#endif

-- method WebsiteDataManager::get_persistent_credential_storage_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_persistent_credential_storage_enabled" webkit_website_data_manager_get_persistent_credential_storage_enabled :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CInt

-- | Get whether persistent credential storage is enabled or not.
-- 
-- See also 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetPersistentCredentialStorageEnabled'.
-- 
-- /Since: 2.30/
websiteDataManagerGetPersistentCredentialStorageEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if persistent credential storage is enabled, or 'P.False' otherwise.
websiteDataManagerGetPersistentCredentialStorageEnabled manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_persistent_credential_storage_enabled manager'
    let result' = (/= 0) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetPersistentCredentialStorageEnabled

instance O.OverloadedMethodInfo WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetPersistentCredentialStorageEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetPersistentCredentialStorageEnabled"
        })


#endif

-- method WebsiteDataManager::get_service_worker_registrations_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_service_worker_registrations_directory" webkit_website_data_manager_get_service_worker_registrations_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetServiceWorkerRegistrationsDirectory ["(Since version 2.40)",", use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetBaseDataDirectory' instead."] #-}
-- | Get the [WebsiteDataManager:serviceWorkerRegistrationsDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:serviceWorkerRegistrationsDirectory") property.
-- 
-- /Since: 2.30/
websiteDataManagerGetServiceWorkerRegistrationsDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where service worker registrations are stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetServiceWorkerRegistrationsDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_service_worker_registrations_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetServiceWorkerRegistrationsDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetServiceWorkerRegistrationsDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetServiceWorkerRegistrationsDirectory"
        })


#endif

-- method WebsiteDataManager::get_tls_errors_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--                  Name { namespace = "WebKit2" , name = "TLSErrorsPolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_manager_get_tls_errors_policy" webkit_website_data_manager_get_tls_errors_policy :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CUInt

-- | Get the TLS errors policy of /@manager@/.
-- 
-- /Since: 2.32/
websiteDataManagerGetTlsErrorsPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m WebKit2.Enums.TLSErrorsPolicy
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.TLSErrorsPolicy'
websiteDataManagerGetTlsErrorsPolicy manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_tls_errors_policy manager'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetTlsErrorsPolicyMethodInfo
instance (signature ~ (m WebKit2.Enums.TLSErrorsPolicy), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetTlsErrorsPolicyMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetTlsErrorsPolicy

instance O.OverloadedMethodInfo WebsiteDataManagerGetTlsErrorsPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetTlsErrorsPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetTlsErrorsPolicy"
        })


#endif

-- method WebsiteDataManager::get_websql_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_get_websql_directory" webkit_website_data_manager_get_websql_directory :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CString

{-# DEPRECATED websiteDataManagerGetWebsqlDirectory ["(Since version 2.24.)","WebSQL is no longer supported. Use IndexedDB instead."] #-}
-- | Get the [WebsiteDataManager:websqlDirectory]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:websqlDirectory") property.
-- 
-- /Since: 2.10/
websiteDataManagerGetWebsqlDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the directory where WebSQL databases are stored or 'P.Nothing' if /@manager@/ is ephemeral.
websiteDataManagerGetWebsqlDirectory manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_get_websql_directory manager'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr manager
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetWebsqlDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerGetWebsqlDirectoryMethodInfo a signature where
    overloadedMethod = websiteDataManagerGetWebsqlDirectory

instance O.OverloadedMethodInfo WebsiteDataManagerGetWebsqlDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetWebsqlDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerGetWebsqlDirectory"
        })


#endif

-- method WebsiteDataManager::is_ephemeral
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_is_ephemeral" webkit_website_data_manager_is_ephemeral :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO CInt

-- | Get whether a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' is ephemeral.
-- 
-- See [WebsiteDataManager:isEphemeral]("GI.WebKit2.Objects.WebsiteDataManager#g:attr:isEphemeral") for more details.
-- 
-- /Since: 2.16/
websiteDataManagerIsEphemeral ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@manager@/ is ephemeral or 'P.False' otherwise.
websiteDataManagerIsEphemeral manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_website_data_manager_is_ephemeral manager'
    let result' = (/= 0) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIsEphemeralMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerIsEphemeralMethodInfo a signature where
    overloadedMethod = websiteDataManagerIsEphemeral

instance O.OverloadedMethodInfo WebsiteDataManagerIsEphemeralMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerIsEphemeral",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerIsEphemeral"
        })


#endif

-- method WebsiteDataManager::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "types"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataTypes" }
--           , argCType = Just "WebKitWebsiteDataTypes"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#WebKitWebsiteDataTypes"
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
--           { argCName = "website_data"
--           , argType =
--               TGList
--                 (TInterface Name { namespace = "WebKit2" , name = "WebsiteData" })
--           , argCType = Just "GList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GList of #WebKitWebsiteData"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_website_data_manager_remove" webkit_website_data_manager_remove :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CUInt ->                                -- types : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataTypes"})
    Ptr (GList (Ptr WebKit2.WebsiteData.WebsiteData)) -> -- website_data : TGList (TInterface (Name {namespace = "WebKit2", name = "WebsiteData"}))
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously removes the website data in the given /@websiteData@/ list.
-- 
-- Asynchronously removes the website data of the given /@types@/ for websites in the given /@websiteData@/ list.
-- Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClear' if you want to remove the website data for all sites.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerRemoveFinish' to get the result of the operation.
-- 
-- /Since: 2.16/
websiteDataManagerRemove ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> [WebKit2.Flags.WebsiteDataTypes]
    -- ^ /@types@/: t'GI.WebKit2.Flags.WebsiteDataTypes'
    -> [WebKit2.WebsiteData.WebsiteData]
    -- ^ /@websiteData@/: a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
websiteDataManagerRemove manager types websiteData cancellable callback = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let types' = gflagsToWord types
    websiteData' <- mapM unsafeManagedPtrGetPtr websiteData
    websiteData'' <- packGList websiteData'
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_website_data_manager_remove manager' types' websiteData'' maybeCancellable maybeCallback userData
    touchManagedPtr manager
    mapM_ touchManagedPtr websiteData
    whenJust cancellable touchManagedPtr
    g_list_free websiteData''
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerRemoveMethodInfo
instance (signature ~ ([WebKit2.Flags.WebsiteDataTypes] -> [WebKit2.WebsiteData.WebsiteData] -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebsiteDataManagerRemoveMethodInfo a signature where
    overloadedMethod = websiteDataManagerRemove

instance O.OverloadedMethodInfo WebsiteDataManagerRemoveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerRemove",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerRemove"
        })


#endif

-- method WebsiteDataManager::remove_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
-- throws : True
-- Skip return : False

foreign import ccall "webkit_website_data_manager_remove_finish" webkit_website_data_manager_remove_finish :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerRemove'.
-- 
-- /Since: 2.16/
websiteDataManagerRemoveFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
websiteDataManagerRemoveFinish manager result_ = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_website_data_manager_remove_finish manager' result_'
        touchManagedPtr manager
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerRemoveFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebsiteDataManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebsiteDataManagerRemoveFinishMethodInfo a signature where
    overloadedMethod = websiteDataManagerRemoveFinish

instance O.OverloadedMethodInfo WebsiteDataManagerRemoveFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerRemoveFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerRemoveFinish"
        })


#endif

-- method WebsiteDataManager::set_itp_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_set_itp_enabled" webkit_website_data_manager_set_itp_enabled :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Enable or disable Intelligent Tracking Prevention (ITP).
-- 
-- When ITP is enabled resource load statistics
-- are collected and used to decide whether to allow or block third-party cookies and prevent user tracking.
-- Note that while ITP is enabled the accept policy 'GI.WebKit2.Enums.CookieAcceptPolicyNoThirdParty' is ignored and
-- 'GI.WebKit2.Enums.CookieAcceptPolicyAlways' is used instead. See also 'GI.WebKit2.Objects.CookieManager.cookieManagerSetAcceptPolicy'.
-- 
-- /Since: 2.30/
websiteDataManagerSetItpEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> Bool
    -- ^ /@enabled@/: value to set
    -> m ()
websiteDataManagerSetItpEnabled manager enabled = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_website_data_manager_set_itp_enabled manager' enabled'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetItpEnabledMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerSetItpEnabledMethodInfo a signature where
    overloadedMethod = websiteDataManagerSetItpEnabled

instance O.OverloadedMethodInfo WebsiteDataManagerSetItpEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetItpEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerSetItpEnabled"
        })


#endif

-- method WebsiteDataManager::set_network_proxy_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "proxy_mode"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NetworkProxyMode" }
--           , argCType = Just "WebKitNetworkProxyMode"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNetworkProxyMode"
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
--           { argCName = "proxy_settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NetworkProxySettings" }
--           , argCType = Just "WebKitNetworkProxySettings*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNetworkProxySettings, or %NULL"
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

foreign import ccall "webkit_website_data_manager_set_network_proxy_settings" webkit_website_data_manager_set_network_proxy_settings :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CUInt ->                                -- proxy_mode : TInterface (Name {namespace = "WebKit2", name = "NetworkProxyMode"})
    Ptr WebKit2.NetworkProxySettings.NetworkProxySettings -> -- proxy_settings : TInterface (Name {namespace = "WebKit2", name = "NetworkProxySettings"})
    IO ()

-- | Set the network proxy settings to be used by connections started in /@manager@/ session.
-- 
-- By default 'GI.WebKit2.Enums.NetworkProxyModeDefault' is used, which means that the
-- system settings will be used ('GI.Gio.Functions.proxyResolverGetDefault').
-- If you want to override the system default settings, you can either use
-- 'GI.WebKit2.Enums.NetworkProxyModeNoProxy' to make sure no proxies are used at all,
-- or 'GI.WebKit2.Enums.NetworkProxyModeCustom' to provide your own proxy settings.
-- When /@proxyMode@/ is 'GI.WebKit2.Enums.NetworkProxyModeCustom' /@proxySettings@/ must be
-- a valid t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'; otherwise, /@proxySettings@/ must be 'P.Nothing'.
-- 
-- /Since: 2.32/
websiteDataManagerSetNetworkProxySettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> WebKit2.Enums.NetworkProxyMode
    -- ^ /@proxyMode@/: a t'GI.WebKit2.Enums.NetworkProxyMode'
    -> Maybe (WebKit2.NetworkProxySettings.NetworkProxySettings)
    -- ^ /@proxySettings@/: a t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings', or 'P.Nothing'
    -> m ()
websiteDataManagerSetNetworkProxySettings manager proxyMode proxySettings = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let proxyMode' = (fromIntegral . fromEnum) proxyMode
    maybeProxySettings <- case proxySettings of
        Nothing -> return FP.nullPtr
        Just jProxySettings -> do
            jProxySettings' <- unsafeManagedPtrGetPtr jProxySettings
            return jProxySettings'
    webkit_website_data_manager_set_network_proxy_settings manager' proxyMode' maybeProxySettings
    touchManagedPtr manager
    whenJust proxySettings touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetNetworkProxySettingsMethodInfo
instance (signature ~ (WebKit2.Enums.NetworkProxyMode -> Maybe (WebKit2.NetworkProxySettings.NetworkProxySettings) -> m ()), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerSetNetworkProxySettingsMethodInfo a signature where
    overloadedMethod = websiteDataManagerSetNetworkProxySettings

instance O.OverloadedMethodInfo WebsiteDataManagerSetNetworkProxySettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetNetworkProxySettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerSetNetworkProxySettings"
        })


#endif

-- method WebsiteDataManager::set_persistent_credential_storage_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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

foreign import ccall "webkit_website_data_manager_set_persistent_credential_storage_enabled" webkit_website_data_manager_set_persistent_credential_storage_enabled :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Enable or disable persistent credential storage.
-- 
-- When enabled, which is the default for
-- non-ephemeral sessions, the network process will try to read and write HTTP authentiacation
-- credentials from persistent storage.
-- 
-- /Since: 2.30/
websiteDataManagerSetPersistentCredentialStorageEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> Bool
    -- ^ /@enabled@/: value to set
    -> m ()
websiteDataManagerSetPersistentCredentialStorageEnabled manager enabled = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_website_data_manager_set_persistent_credential_storage_enabled manager' enabled'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo a signature where
    overloadedMethod = websiteDataManagerSetPersistentCredentialStorageEnabled

instance O.OverloadedMethodInfo WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetPersistentCredentialStorageEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerSetPersistentCredentialStorageEnabled"
        })


#endif

-- method WebsiteDataManager::set_tls_errors_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataManager" }
--           , argCType = Just "WebKitWebsiteDataManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteDataManager"
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
--           { argCName = "policy"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "TLSErrorsPolicy" }
--           , argCType = Just "WebKitTLSErrorsPolicy"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitTLSErrorsPolicy"
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

foreign import ccall "webkit_website_data_manager_set_tls_errors_policy" webkit_website_data_manager_set_tls_errors_policy :: 
    Ptr WebsiteDataManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "WebKit2", name = "TLSErrorsPolicy"})
    IO ()

-- | Set the TLS errors policy of /@manager@/ as /@policy@/.
-- 
-- /Since: 2.32/
websiteDataManagerSetTlsErrorsPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> WebKit2.Enums.TLSErrorsPolicy
    -- ^ /@policy@/: a t'GI.WebKit2.Enums.TLSErrorsPolicy'
    -> m ()
websiteDataManagerSetTlsErrorsPolicy manager policy = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    let policy' = (fromIntegral . fromEnum) policy
    webkit_website_data_manager_set_tls_errors_policy manager' policy'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetTlsErrorsPolicyMethodInfo
instance (signature ~ (WebKit2.Enums.TLSErrorsPolicy -> m ()), MonadIO m, IsWebsiteDataManager a) => O.OverloadedMethod WebsiteDataManagerSetTlsErrorsPolicyMethodInfo a signature where
    overloadedMethod = websiteDataManagerSetTlsErrorsPolicy

instance O.OverloadedMethodInfo WebsiteDataManagerSetTlsErrorsPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetTlsErrorsPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsiteDataManager.html#v:websiteDataManagerSetTlsErrorsPolicy"
        })


#endif

-- method WebsiteDataManager::set_memory_pressure_settings
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a WebKitMemoryPressureSettings."
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

foreign import ccall "webkit_website_data_manager_set_memory_pressure_settings" webkit_website_data_manager_set_memory_pressure_settings :: 
    Ptr WebKit2.MemoryPressureSettings.MemoryPressureSettings -> -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO ()

-- | Sets /@settings@/ as the t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'.
-- 
-- Sets /@settings@/ as the t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' to be used by all the network
-- processes created by any instance of t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' after this function
-- is called.
-- 
-- Be sure to call this function before creating any t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager', as network
-- processes of existing instances are not guaranteed to receive the passed settings.
-- 
-- The periodic check for used memory is disabled by default on network processes. This will
-- be enabled only if custom settings have been set using this function. After that, in order
-- to remove the custom settings and disable the periodic check, this function must be called
-- passing 'P.Nothing' as the value of /@settings@/.
-- 
-- /Since: 2.34/
websiteDataManagerSetMemoryPressureSettings ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebKit2.MemoryPressureSettings.MemoryPressureSettings
    -- ^ /@settings@/: a WebKitMemoryPressureSettings.
    -> m ()
websiteDataManagerSetMemoryPressureSettings settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    webkit_website_data_manager_set_memory_pressure_settings settings'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
#endif


