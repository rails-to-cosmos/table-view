#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Enums where

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

data XRSessionMode
instance P.Enum XRSessionMode where
instance O.HasParentTypes XRSessionMode
instance B.Types.TypedObject XRSessionMode where
instance B.Types.BoxedEnum XRSessionMode
data WebProcessTerminationReason
instance P.Enum WebProcessTerminationReason where
instance O.HasParentTypes WebProcessTerminationReason
instance B.Types.TypedObject WebProcessTerminationReason where
instance B.Types.BoxedEnum WebProcessTerminationReason
data WebExtensionMode
instance P.Enum WebExtensionMode where
instance O.HasParentTypes WebExtensionMode
instance B.Types.TypedObject WebExtensionMode where
instance B.Types.BoxedEnum WebExtensionMode
data WebExtensionMatchPatternError
instance P.Enum WebExtensionMatchPatternError where
instance O.HasParentTypes WebExtensionMatchPatternError
instance B.Types.TypedObject WebExtensionMatchPatternError where
instance B.Types.BoxedEnum WebExtensionMatchPatternError
data UserStyleLevel
instance P.Enum UserStyleLevel where
instance O.HasParentTypes UserStyleLevel
instance B.Types.TypedObject UserStyleLevel where
instance B.Types.BoxedEnum UserStyleLevel
data UserScriptInjectionTime
instance P.Enum UserScriptInjectionTime where
instance O.HasParentTypes UserScriptInjectionTime
instance B.Types.TypedObject UserScriptInjectionTime where
instance B.Types.BoxedEnum UserScriptInjectionTime
data UserMessageError
instance P.Enum UserMessageError where
instance O.HasParentTypes UserMessageError
instance B.Types.TypedObject UserMessageError where
instance B.Types.BoxedEnum UserMessageError
data UserContentInjectedFrames
instance P.Enum UserContentInjectedFrames where
instance O.HasParentTypes UserContentInjectedFrames
instance B.Types.TypedObject UserContentInjectedFrames where
instance B.Types.BoxedEnum UserContentInjectedFrames
data UserContentFilterError
instance P.Enum UserContentFilterError where
instance O.HasParentTypes UserContentFilterError
instance B.Types.TypedObject UserContentFilterError where
instance B.Types.BoxedEnum UserContentFilterError
data TLSErrorsPolicy
instance P.Enum TLSErrorsPolicy where
instance O.HasParentTypes TLSErrorsPolicy
instance B.Types.TypedObject TLSErrorsPolicy where
instance B.Types.BoxedEnum TLSErrorsPolicy
data SnapshotRegion
instance P.Enum SnapshotRegion where
instance O.HasParentTypes SnapshotRegion
instance B.Types.TypedObject SnapshotRegion where
instance B.Types.BoxedEnum SnapshotRegion
data SnapshotError
instance P.Enum SnapshotError where
instance O.HasParentTypes SnapshotError
instance B.Types.TypedObject SnapshotError where
instance B.Types.BoxedEnum SnapshotError
data ScriptDialogType
instance P.Enum ScriptDialogType where
instance O.HasParentTypes ScriptDialogType
instance B.Types.TypedObject ScriptDialogType where
instance B.Types.BoxedEnum ScriptDialogType
data SaveMode
instance P.Enum SaveMode where
instance O.HasParentTypes SaveMode
instance B.Types.TypedObject SaveMode where
instance B.Types.BoxedEnum SaveMode
data ProcessModel
instance P.Enum ProcessModel where
instance O.HasParentTypes ProcessModel
instance B.Types.TypedObject ProcessModel where
instance B.Types.BoxedEnum ProcessModel
data PrintOperationResponse
instance P.Enum PrintOperationResponse where
instance O.HasParentTypes PrintOperationResponse
instance B.Types.TypedObject PrintOperationResponse where
instance B.Types.BoxedEnum PrintOperationResponse
data PrintError
instance P.Enum PrintError where
instance O.HasParentTypes PrintError
instance B.Types.TypedObject PrintError where
instance B.Types.BoxedEnum PrintError
data PolicyError
instance P.Enum PolicyError where
instance O.HasParentTypes PolicyError
instance B.Types.TypedObject PolicyError where
instance B.Types.BoxedEnum PolicyError
data PolicyDecisionType
instance P.Enum PolicyDecisionType where
instance O.HasParentTypes PolicyDecisionType
instance B.Types.TypedObject PolicyDecisionType where
instance B.Types.BoxedEnum PolicyDecisionType
data PluginError
instance P.Enum PluginError where
instance O.HasParentTypes PluginError
instance B.Types.TypedObject PluginError where
instance B.Types.BoxedEnum PluginError
data PermissionState
instance P.Enum PermissionState where
instance O.HasParentTypes PermissionState
instance B.Types.TypedObject PermissionState where
instance B.Types.BoxedEnum PermissionState
data NetworkProxyMode
instance P.Enum NetworkProxyMode where
instance O.HasParentTypes NetworkProxyMode
instance B.Types.TypedObject NetworkProxyMode where
instance B.Types.BoxedEnum NetworkProxyMode
data NetworkError
instance P.Enum NetworkError where
instance O.HasParentTypes NetworkError
instance B.Types.TypedObject NetworkError where
instance B.Types.BoxedEnum NetworkError
data NavigationType
instance P.Enum NavigationType where
instance O.HasParentTypes NavigationType
instance B.Types.TypedObject NavigationType where
instance B.Types.BoxedEnum NavigationType
data MediaCaptureState
instance P.Enum MediaCaptureState where
instance O.HasParentTypes MediaCaptureState
instance B.Types.TypedObject MediaCaptureState where
instance B.Types.BoxedEnum MediaCaptureState
data LoadEvent
instance P.Enum LoadEvent where
instance O.HasParentTypes LoadEvent
instance B.Types.TypedObject LoadEvent where
instance B.Types.BoxedEnum LoadEvent
data JavascriptError
instance P.Enum JavascriptError where
instance O.HasParentTypes JavascriptError
instance B.Types.TypedObject JavascriptError where
instance B.Types.BoxedEnum JavascriptError
data InsecureContentEvent
instance P.Enum InsecureContentEvent where
instance O.HasParentTypes InsecureContentEvent
instance B.Types.TypedObject InsecureContentEvent where
instance B.Types.BoxedEnum InsecureContentEvent
data InputPurpose
instance P.Enum InputPurpose where
instance O.HasParentTypes InputPurpose
instance B.Types.TypedObject InputPurpose where
instance B.Types.BoxedEnum InputPurpose
data HardwareAccelerationPolicy
instance P.Enum HardwareAccelerationPolicy where
instance O.HasParentTypes HardwareAccelerationPolicy
instance B.Types.TypedObject HardwareAccelerationPolicy where
instance B.Types.BoxedEnum HardwareAccelerationPolicy
data FeatureStatus
instance P.Enum FeatureStatus where
instance O.HasParentTypes FeatureStatus
instance B.Types.TypedObject FeatureStatus where
instance B.Types.BoxedEnum FeatureStatus
data FaviconDatabaseError
instance P.Enum FaviconDatabaseError where
instance O.HasParentTypes FaviconDatabaseError
instance B.Types.TypedObject FaviconDatabaseError where
instance B.Types.BoxedEnum FaviconDatabaseError
data DownloadError
instance P.Enum DownloadError where
instance O.HasParentTypes DownloadError
instance B.Types.TypedObject DownloadError where
instance B.Types.BoxedEnum DownloadError
data CredentialPersistence
instance P.Enum CredentialPersistence where
instance O.HasParentTypes CredentialPersistence
instance B.Types.TypedObject CredentialPersistence where
instance B.Types.BoxedEnum CredentialPersistence
data CookiePersistentStorage
instance P.Enum CookiePersistentStorage where
instance O.HasParentTypes CookiePersistentStorage
instance B.Types.TypedObject CookiePersistentStorage where
instance B.Types.BoxedEnum CookiePersistentStorage
data CookieAcceptPolicy
instance P.Enum CookieAcceptPolicy where
instance O.HasParentTypes CookieAcceptPolicy
instance B.Types.TypedObject CookieAcceptPolicy where
instance B.Types.BoxedEnum CookieAcceptPolicy
data ContextMenuAction
instance P.Enum ContextMenuAction where
instance O.HasParentTypes ContextMenuAction
instance B.Types.TypedObject ContextMenuAction where
instance B.Types.BoxedEnum ContextMenuAction
data CacheModel
instance P.Enum CacheModel where
instance O.HasParentTypes CacheModel
instance B.Types.TypedObject CacheModel where
instance B.Types.BoxedEnum CacheModel
data AutoplayPolicy
instance P.Enum AutoplayPolicy where
instance O.HasParentTypes AutoplayPolicy
instance B.Types.TypedObject AutoplayPolicy where
instance B.Types.BoxedEnum AutoplayPolicy
data AutomationBrowsingContextPresentation
instance P.Enum AutomationBrowsingContextPresentation where
instance O.HasParentTypes AutomationBrowsingContextPresentation
instance B.Types.TypedObject AutomationBrowsingContextPresentation where
instance B.Types.BoxedEnum AutomationBrowsingContextPresentation
data AuthenticationScheme
instance P.Enum AuthenticationScheme where
instance O.HasParentTypes AuthenticationScheme
instance B.Types.TypedObject AuthenticationScheme where
instance B.Types.BoxedEnum AuthenticationScheme
