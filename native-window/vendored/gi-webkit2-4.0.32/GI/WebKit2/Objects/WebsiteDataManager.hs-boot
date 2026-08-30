#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.WebsiteDataManager where

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

newtype WebsiteDataManager = WebsiteDataManager (SP.ManagedPtr WebsiteDataManager)
instance SP.ManagedPtrNewtype WebsiteDataManager where
instance B.Types.TypedObject WebsiteDataManager where
instance B.Types.GObject WebsiteDataManager
class (SP.GObject o, O.IsDescendantOf WebsiteDataManager o) => IsWebsiteDataManager o
instance (SP.GObject o, O.IsDescendantOf WebsiteDataManager o) => IsWebsiteDataManager o
instance O.HasParentTypes WebsiteDataManager
toWebsiteDataManager :: (MIO.MonadIO m, IsWebsiteDataManager o) => o -> m WebsiteDataManager
instance B.GValue.IsGValue (Maybe WebsiteDataManager) where
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerBaseCacheDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerBaseDataDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerDiskCacheDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerDomCacheDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerHstsCacheDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIndexeddbDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIsEphemeralPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerItpDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerLocalStorageDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerOfflineApplicationCacheDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerOriginStorageRatioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerServiceWorkerRegistrationsDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerTotalStorageRatioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerWebsqlDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerClearMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerClearFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerFetchMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerFetchFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetBaseCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetBaseDataDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetCookieManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetDiskCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetDomCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetHstsCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetIndexeddbDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpSummaryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetItpSummaryFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetLocalStorageDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetOfflineApplicationCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetPersistentCredentialStorageEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetServiceWorkerRegistrationsDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetTlsErrorsPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerGetWebsqlDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerIsEphemeralMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerRemoveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerRemoveFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetItpEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetNetworkProxySettingsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetPersistentCredentialStorageEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebsiteDataManagerSetTlsErrorsPolicyMethodInfo
#endif
