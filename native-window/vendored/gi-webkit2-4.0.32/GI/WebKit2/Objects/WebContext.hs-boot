#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.WebContext where

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

newtype WebContext = WebContext (SP.ManagedPtr WebContext)
instance SP.ManagedPtrNewtype WebContext where
instance B.Types.TypedObject WebContext where
instance B.Types.GObject WebContext
class (SP.GObject o, O.IsDescendantOf WebContext o) => IsWebContext o
instance (SP.GObject o, O.IsDescendantOf WebContext o) => IsWebContext o
instance O.HasParentTypes WebContext
toWebContext :: (MIO.MonadIO m, IsWebContext o) => o -> m WebContext
instance B.GValue.IsGValue (Maybe WebContext) where
#if defined(ENABLE_OVERLOADING)
data WebContextAutomationStartedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextDownloadStartedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextInitializeNotificationPermissionsSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextInitializeWebExtensionsSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextUserMessageReceivedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextLocalStorageDirectoryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextMemoryPressureSettingsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextTimeZoneOverridePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextUseSystemAppearanceForScrollbarsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextWebsiteDataManagerPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextAddPathToSandboxMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextAllowTlsCertificateForHostMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextClearCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextDownloadUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetCacheModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetCookieManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetFaviconDatabaseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetFaviconDatabaseDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetGeolocationManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetPluginsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetPluginsFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetProcessModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetSandboxEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetSecurityManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetSpellCheckingEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetSpellCheckingLanguagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetTimeZoneOverrideMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetTlsErrorsPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetUseSystemAppearanceForScrollbarsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetWebProcessCountLimitMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextGetWebsiteDataManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextInitializeNotificationPermissionsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextIsAutomationAllowedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextIsEphemeralMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextPrefetchDnsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextRegisterUriSchemeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSendMessageToAllExtensionsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetAdditionalPluginsDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetAutomationAllowedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetCacheModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetDiskCacheDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetFaviconDatabaseDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetNetworkProxySettingsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetPreferredLanguagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetProcessModelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetSandboxEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetSpellCheckingEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetSpellCheckingLanguagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetTlsErrorsPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetUseSystemAppearanceForScrollbarsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetWebExtensionsDirectoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetWebExtensionsInitializationUserDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebContextSetWebProcessCountLimitMethodInfo
#endif
