

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Enums
    ( 

 -- * Enumerations


-- ** AuthenticationScheme #enum:AuthenticationScheme#

    AuthenticationScheme(..)                ,


-- ** AutomationBrowsingContextPresentation #enum:AutomationBrowsingContextPresentation#

    AutomationBrowsingContextPresentation(..),


-- ** AutoplayPolicy #enum:AutoplayPolicy#

    AutoplayPolicy(..)                      ,


-- ** CacheModel #enum:CacheModel#

    CacheModel(..)                          ,


-- ** ContextMenuAction #enum:ContextMenuAction#

    ContextMenuAction(..)                   ,


-- ** CookieAcceptPolicy #enum:CookieAcceptPolicy#

    CookieAcceptPolicy(..)                  ,


-- ** CookiePersistentStorage #enum:CookiePersistentStorage#

    CookiePersistentStorage(..)             ,


-- ** CredentialPersistence #enum:CredentialPersistence#

    CredentialPersistence(..)               ,


-- ** DownloadError #enum:DownloadError#

    DownloadError(..)                       ,
    catchDownloadError                      ,
    handleDownloadError                     ,


-- ** FaviconDatabaseError #enum:FaviconDatabaseError#

    FaviconDatabaseError(..)                ,
    catchFaviconDatabaseError               ,
    handleFaviconDatabaseError              ,


-- ** FeatureStatus #enum:FeatureStatus#

    FeatureStatus(..)                       ,


-- ** HardwareAccelerationPolicy #enum:HardwareAccelerationPolicy#

    HardwareAccelerationPolicy(..)          ,


-- ** InputPurpose #enum:InputPurpose#

    InputPurpose(..)                        ,


-- ** InsecureContentEvent #enum:InsecureContentEvent#

    InsecureContentEvent(..)                ,


-- ** JavascriptError #enum:JavascriptError#

    JavascriptError(..)                     ,
    catchJavascriptError                    ,
    handleJavascriptError                   ,


-- ** LoadEvent #enum:LoadEvent#

    LoadEvent(..)                           ,


-- ** MediaCaptureState #enum:MediaCaptureState#

    MediaCaptureState(..)                   ,


-- ** NavigationType #enum:NavigationType#

    NavigationType(..)                      ,


-- ** NetworkError #enum:NetworkError#

    NetworkError(..)                        ,
    catchNetworkError                       ,
    handleNetworkError                      ,


-- ** NetworkProxyMode #enum:NetworkProxyMode#

    NetworkProxyMode(..)                    ,


-- ** PermissionState #enum:PermissionState#

    PermissionState(..)                     ,


-- ** PluginError #enum:PluginError#

    PluginError(..)                         ,
    catchPluginError                        ,
    handlePluginError                       ,


-- ** PolicyDecisionType #enum:PolicyDecisionType#

    PolicyDecisionType(..)                  ,


-- ** PolicyError #enum:PolicyError#

    PolicyError(..)                         ,
    catchPolicyError                        ,
    handlePolicyError                       ,


-- ** PrintError #enum:PrintError#

    PrintError(..)                          ,
    catchPrintError                         ,
    handlePrintError                        ,


-- ** PrintOperationResponse #enum:PrintOperationResponse#

    PrintOperationResponse(..)              ,


-- ** ProcessModel #enum:ProcessModel#

    ProcessModel(..)                        ,


-- ** SaveMode #enum:SaveMode#

    SaveMode(..)                            ,


-- ** ScriptDialogType #enum:ScriptDialogType#

    ScriptDialogType(..)                    ,


-- ** SnapshotError #enum:SnapshotError#

    SnapshotError(..)                       ,
    catchSnapshotError                      ,
    handleSnapshotError                     ,


-- ** SnapshotRegion #enum:SnapshotRegion#

    SnapshotRegion(..)                      ,


-- ** TLSErrorsPolicy #enum:TLSErrorsPolicy#

    TLSErrorsPolicy(..)                     ,


-- ** UserContentFilterError #enum:UserContentFilterError#

    UserContentFilterError(..)              ,
    catchUserContentFilterError             ,
    handleUserContentFilterError            ,


-- ** UserContentInjectedFrames #enum:UserContentInjectedFrames#

    UserContentInjectedFrames(..)           ,


-- ** UserMessageError #enum:UserMessageError#

    UserMessageError(..)                    ,
    catchUserMessageError                   ,
    handleUserMessageError                  ,


-- ** UserScriptInjectionTime #enum:UserScriptInjectionTime#

    UserScriptInjectionTime(..)             ,


-- ** UserStyleLevel #enum:UserStyleLevel#

    UserStyleLevel(..)                      ,


-- ** WebExtensionMatchPatternError #enum:WebExtensionMatchPatternError#

    WebExtensionMatchPatternError(..)       ,
    catchWebExtensionMatchPatternError      ,
    handleWebExtensionMatchPatternError     ,


-- ** WebExtensionMode #enum:WebExtensionMode#

    WebExtensionMode(..)                    ,


-- ** WebProcessTerminationReason #enum:WebProcessTerminationReason#

    WebProcessTerminationReason(..)         ,


-- ** XRSessionMode #enum:XRSessionMode#

    XRSessionMode(..)                       ,




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

-- Enum XRSessionMode
-- | Enum values representing the XR session mode.
-- 
-- See \<https:\/\/immersive-web.github.io\/webxr\/@/xrsessionmode/@-enum>
-- 
-- /Since: 2.52/
data XRSessionMode = 
      XRSessionModeInline
    -- ^ inline session mode.
    | XRSessionModeImmersiveVr
    -- ^ immersive-vr session mode.
    | XRSessionModeImmersiveAr
    -- ^ immersive-ar session mode.
    | AnotherXRSessionMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum XRSessionMode where
    fromEnum XRSessionModeInline = 0
    fromEnum XRSessionModeImmersiveVr = 1
    fromEnum XRSessionModeImmersiveAr = 2
    fromEnum (AnotherXRSessionMode k) = k

    toEnum 0 = XRSessionModeInline
    toEnum 1 = XRSessionModeImmersiveVr
    toEnum 2 = XRSessionModeImmersiveAr
    toEnum k = AnotherXRSessionMode k

instance P.Ord XRSessionMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes XRSessionMode = '[]
instance O.HasParentTypes XRSessionMode

foreign import ccall "webkit_xr_session_mode_get_type" c_webkit_xr_session_mode_get_type :: 
    IO GType

instance B.Types.TypedObject XRSessionMode where
    glibType = c_webkit_xr_session_mode_get_type

instance B.Types.BoxedEnum XRSessionMode

-- Enum WebProcessTerminationReason
-- | Enum values used to specify the reason why the web process terminated abnormally.
-- 
-- /Since: 2.20/
data WebProcessTerminationReason = 
      WebProcessTerminationReasonCrashed
    -- ^ the web process crashed.
    | WebProcessTerminationReasonExceededMemoryLimit
    -- ^ the web process exceeded the memory limit.
    | WebProcessTerminationReasonTerminatedByApi
    -- ^ the web process termination was requested by an API call. Since: 2.34
    | AnotherWebProcessTerminationReason Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum WebProcessTerminationReason where
    fromEnum WebProcessTerminationReasonCrashed = 0
    fromEnum WebProcessTerminationReasonExceededMemoryLimit = 1
    fromEnum WebProcessTerminationReasonTerminatedByApi = 2
    fromEnum (AnotherWebProcessTerminationReason k) = k

    toEnum 0 = WebProcessTerminationReasonCrashed
    toEnum 1 = WebProcessTerminationReasonExceededMemoryLimit
    toEnum 2 = WebProcessTerminationReasonTerminatedByApi
    toEnum k = AnotherWebProcessTerminationReason k

instance P.Ord WebProcessTerminationReason where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes WebProcessTerminationReason = '[]
instance O.HasParentTypes WebProcessTerminationReason

foreign import ccall "webkit_web_process_termination_reason_get_type" c_webkit_web_process_termination_reason_get_type :: 
    IO GType

instance B.Types.TypedObject WebProcessTerminationReason where
    glibType = c_webkit_web_process_termination_reason_get_type

instance B.Types.BoxedEnum WebProcessTerminationReason

-- Enum WebExtensionMode
-- | Enum values used for setting if a t'GI.WebKit2.Objects.WebView.WebView' is intended for
-- WebExtensions.
-- 
-- /Since: 2.38/
data WebExtensionMode = 
      WebExtensionModeNone
    -- ^ Not for an extension.
    | WebExtensionModeManifestv2
    -- ^ For a ManifestV2 extension.
    | WebExtensionModeManifestv3
    -- ^ For a ManifestV3 extension.
    | AnotherWebExtensionMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum WebExtensionMode where
    fromEnum WebExtensionModeNone = 0
    fromEnum WebExtensionModeManifestv2 = 1
    fromEnum WebExtensionModeManifestv3 = 2
    fromEnum (AnotherWebExtensionMode k) = k

    toEnum 0 = WebExtensionModeNone
    toEnum 1 = WebExtensionModeManifestv2
    toEnum 2 = WebExtensionModeManifestv3
    toEnum k = AnotherWebExtensionMode k

instance P.Ord WebExtensionMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes WebExtensionMode = '[]
instance O.HasParentTypes WebExtensionMode

foreign import ccall "webkit_web_extension_mode_get_type" c_webkit_web_extension_mode_get_type :: 
    IO GType

instance B.Types.TypedObject WebExtensionMode where
    glibType = c_webkit_web_extension_mode_get_type

instance B.Types.BoxedEnum WebExtensionMode

-- Enum WebExtensionMatchPatternError
-- | Enum values used to denote errors happening when creating a @/WebKitWebExtensionMatchPattern/@
-- 
-- /Since: 2.52/
data WebExtensionMatchPatternError = 
      WebExtensionMatchPatternErrorUnknown
    -- ^ An unknown error occured.
    | WebExtensionMatchPatternErrorInvalidScheme
    -- ^ The scheme component was invalid.
    | WebExtensionMatchPatternErrorInvalidHost
    -- ^ The host component was invalid.
    | WebExtensionMatchPatternErrorInvalidPath
    -- ^ The path component was invalid.
    | AnotherWebExtensionMatchPatternError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum WebExtensionMatchPatternError where
    fromEnum WebExtensionMatchPatternErrorUnknown = 899
    fromEnum WebExtensionMatchPatternErrorInvalidScheme = 808
    fromEnum WebExtensionMatchPatternErrorInvalidHost = 809
    fromEnum WebExtensionMatchPatternErrorInvalidPath = 810
    fromEnum (AnotherWebExtensionMatchPatternError k) = k

    toEnum 899 = WebExtensionMatchPatternErrorUnknown
    toEnum 808 = WebExtensionMatchPatternErrorInvalidScheme
    toEnum 809 = WebExtensionMatchPatternErrorInvalidHost
    toEnum 810 = WebExtensionMatchPatternErrorInvalidPath
    toEnum k = AnotherWebExtensionMatchPatternError k

instance P.Ord WebExtensionMatchPatternError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass WebExtensionMatchPatternError where
    gerrorClassDomain _ = "WebKitWebExtensionMatchPatternError"

-- | Catch exceptions of type `WebExtensionMatchPatternError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchWebExtensionMatchPatternError ::
    IO a ->
    (WebExtensionMatchPatternError -> GErrorMessage -> IO a) ->
    IO a
catchWebExtensionMatchPatternError = catchGErrorJustDomain

-- | Handle exceptions of type `WebExtensionMatchPatternError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleWebExtensionMatchPatternError ::
    (WebExtensionMatchPatternError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleWebExtensionMatchPatternError = handleGErrorJustDomain

type instance O.ParentTypes WebExtensionMatchPatternError = '[]
instance O.HasParentTypes WebExtensionMatchPatternError

foreign import ccall "webkit_web_extension_match_pattern_error_get_type" c_webkit_web_extension_match_pattern_error_get_type :: 
    IO GType

instance B.Types.TypedObject WebExtensionMatchPatternError where
    glibType = c_webkit_web_extension_match_pattern_error_get_type

instance B.Types.BoxedEnum WebExtensionMatchPatternError

-- Enum UserStyleLevel
-- | Specifies how to treat an user style sheet.
-- 
-- /Since: 2.6/
data UserStyleLevel = 
      UserStyleLevelUser
    -- ^ The style sheet is an user style sheet,
    --   its contents always override other style sheets. This is the default.
    | UserStyleLevelAuthor
    -- ^ The style sheet will be treated as if
    --   it was provided by the loaded documents. That means other user style
    --   sheets may still override it.
    | AnotherUserStyleLevel Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum UserStyleLevel where
    fromEnum UserStyleLevelUser = 0
    fromEnum UserStyleLevelAuthor = 1
    fromEnum (AnotherUserStyleLevel k) = k

    toEnum 0 = UserStyleLevelUser
    toEnum 1 = UserStyleLevelAuthor
    toEnum k = AnotherUserStyleLevel k

instance P.Ord UserStyleLevel where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes UserStyleLevel = '[]
instance O.HasParentTypes UserStyleLevel

foreign import ccall "webkit_user_style_level_get_type" c_webkit_user_style_level_get_type :: 
    IO GType

instance B.Types.TypedObject UserStyleLevel where
    glibType = c_webkit_user_style_level_get_type

instance B.Types.BoxedEnum UserStyleLevel

-- Enum UserScriptInjectionTime
-- | Specifies at which place of documents an user script will be inserted.
-- 
-- /Since: 2.6/
data UserScriptInjectionTime = 
      UserScriptInjectionTimeStart
    -- ^ Insert the code of the user
    --   script at the beginning of loaded documents. This is the default.
    | UserScriptInjectionTimeEnd
    -- ^ Insert the code of the user
    --   script at the end of the loaded documents.
    | AnotherUserScriptInjectionTime Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum UserScriptInjectionTime where
    fromEnum UserScriptInjectionTimeStart = 0
    fromEnum UserScriptInjectionTimeEnd = 1
    fromEnum (AnotherUserScriptInjectionTime k) = k

    toEnum 0 = UserScriptInjectionTimeStart
    toEnum 1 = UserScriptInjectionTimeEnd
    toEnum k = AnotherUserScriptInjectionTime k

instance P.Ord UserScriptInjectionTime where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes UserScriptInjectionTime = '[]
instance O.HasParentTypes UserScriptInjectionTime

foreign import ccall "webkit_user_script_injection_time_get_type" c_webkit_user_script_injection_time_get_type :: 
    IO GType

instance B.Types.TypedObject UserScriptInjectionTime where
    glibType = c_webkit_user_script_injection_time_get_type

instance B.Types.BoxedEnum UserScriptInjectionTime

-- Enum UserMessageError
-- | Enum values used to denote errors happening when sending user messages.
-- 
-- /Since: 2.28/
data UserMessageError = 
      UserMessageErrorMessage
    -- ^ The message was not handled by the receiver.
    | AnotherUserMessageError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum UserMessageError where
    fromEnum UserMessageErrorMessage = 0
    fromEnum (AnotherUserMessageError k) = k

    toEnum 0 = UserMessageErrorMessage
    toEnum k = AnotherUserMessageError k

instance P.Ord UserMessageError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass UserMessageError where
    gerrorClassDomain _ = "WebKitUserMessageError"

-- | Catch exceptions of type `UserMessageError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchUserMessageError ::
    IO a ->
    (UserMessageError -> GErrorMessage -> IO a) ->
    IO a
catchUserMessageError = catchGErrorJustDomain

-- | Handle exceptions of type `UserMessageError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleUserMessageError ::
    (UserMessageError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleUserMessageError = handleGErrorJustDomain

type instance O.ParentTypes UserMessageError = '[]
instance O.HasParentTypes UserMessageError

foreign import ccall "webkit_user_message_error_get_type" c_webkit_user_message_error_get_type :: 
    IO GType

instance B.Types.TypedObject UserMessageError where
    glibType = c_webkit_user_message_error_get_type

instance B.Types.BoxedEnum UserMessageError

-- Enum UserContentInjectedFrames
-- | Specifies in which frames user style sheets are to be inserted in.
-- 
-- /Since: 2.6/
data UserContentInjectedFrames = 
      UserContentInjectedFramesAllFrames
    -- ^ Insert the user style
    --   sheet in all the frames loaded by the web view, including
    --   nested frames. This is the default.
    | UserContentInjectedFramesTopFrame
    -- ^ Insert the user style
    --   sheet *only* in the top-level frame loaded by the web view,
    --   and *not* in the nested frames.
    | AnotherUserContentInjectedFrames Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum UserContentInjectedFrames where
    fromEnum UserContentInjectedFramesAllFrames = 0
    fromEnum UserContentInjectedFramesTopFrame = 1
    fromEnum (AnotherUserContentInjectedFrames k) = k

    toEnum 0 = UserContentInjectedFramesAllFrames
    toEnum 1 = UserContentInjectedFramesTopFrame
    toEnum k = AnotherUserContentInjectedFrames k

instance P.Ord UserContentInjectedFrames where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes UserContentInjectedFrames = '[]
instance O.HasParentTypes UserContentInjectedFrames

foreign import ccall "webkit_user_content_injected_frames_get_type" c_webkit_user_content_injected_frames_get_type :: 
    IO GType

instance B.Types.TypedObject UserContentInjectedFrames where
    glibType = c_webkit_user_content_injected_frames_get_type

instance B.Types.BoxedEnum UserContentInjectedFrames

-- Enum UserContentFilterError
-- | Errors that can occur while compiling content filters.
-- 
-- /Since: 2.24/
data UserContentFilterError = 
      UserContentFilterErrorInvalidSource
    -- ^ The JSON source for a content filter is invalid.
    | UserContentFilterErrorNotFound
    -- ^ The requested content filter could not be found.
    | AnotherUserContentFilterError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum UserContentFilterError where
    fromEnum UserContentFilterErrorInvalidSource = 0
    fromEnum UserContentFilterErrorNotFound = 1
    fromEnum (AnotherUserContentFilterError k) = k

    toEnum 0 = UserContentFilterErrorInvalidSource
    toEnum 1 = UserContentFilterErrorNotFound
    toEnum k = AnotherUserContentFilterError k

instance P.Ord UserContentFilterError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass UserContentFilterError where
    gerrorClassDomain _ = "WebKitUserContentFilterError"

-- | Catch exceptions of type `UserContentFilterError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchUserContentFilterError ::
    IO a ->
    (UserContentFilterError -> GErrorMessage -> IO a) ->
    IO a
catchUserContentFilterError = catchGErrorJustDomain

-- | Handle exceptions of type `UserContentFilterError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleUserContentFilterError ::
    (UserContentFilterError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleUserContentFilterError = handleGErrorJustDomain

type instance O.ParentTypes UserContentFilterError = '[]
instance O.HasParentTypes UserContentFilterError

foreign import ccall "webkit_user_content_filter_error_get_type" c_webkit_user_content_filter_error_get_type :: 
    IO GType

instance B.Types.TypedObject UserContentFilterError where
    glibType = c_webkit_user_content_filter_error_get_type

instance B.Types.BoxedEnum UserContentFilterError

-- Enum TLSErrorsPolicy
-- | Enum values used to denote the TLS errors policy.
data TLSErrorsPolicy = 
      TLSErrorsPolicyIgnore
    -- ^ Ignore TLS errors.
    | TLSErrorsPolicyFail
    -- ^ TLS errors will emit
    --   [WebView::loadFailedWithTlsErrors]("GI.WebKit2.Objects.WebView#g:signal:loadFailedWithTlsErrors") and, if the signal is handled,
    --   finish the load. In case the signal is not handled,
    --   [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") is emitted before the load finishes.
    | AnotherTLSErrorsPolicy Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum TLSErrorsPolicy where
    fromEnum TLSErrorsPolicyIgnore = 0
    fromEnum TLSErrorsPolicyFail = 1
    fromEnum (AnotherTLSErrorsPolicy k) = k

    toEnum 0 = TLSErrorsPolicyIgnore
    toEnum 1 = TLSErrorsPolicyFail
    toEnum k = AnotherTLSErrorsPolicy k

instance P.Ord TLSErrorsPolicy where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes TLSErrorsPolicy = '[]
instance O.HasParentTypes TLSErrorsPolicy

foreign import ccall "webkit_tls_errors_policy_get_type" c_webkit_tls_errors_policy_get_type :: 
    IO GType

instance B.Types.TypedObject TLSErrorsPolicy where
    glibType = c_webkit_tls_errors_policy_get_type

instance B.Types.BoxedEnum TLSErrorsPolicy

-- Enum SnapshotRegion
-- | Enum values used to specify the region from which to get a t'GI.WebKit2.Objects.WebView.WebView'
-- snapshot
data SnapshotRegion = 
      SnapshotRegionVisible
    -- ^ Specifies a snapshot only for the area that is
    -- visible in the webview
    | SnapshotRegionFullDocument
    -- ^ A snapshot of the entire document.
    | AnotherSnapshotRegion Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum SnapshotRegion where
    fromEnum SnapshotRegionVisible = 0
    fromEnum SnapshotRegionFullDocument = 1
    fromEnum (AnotherSnapshotRegion k) = k

    toEnum 0 = SnapshotRegionVisible
    toEnum 1 = SnapshotRegionFullDocument
    toEnum k = AnotherSnapshotRegion k

instance P.Ord SnapshotRegion where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes SnapshotRegion = '[]
instance O.HasParentTypes SnapshotRegion

foreign import ccall "webkit_snapshot_region_get_type" c_webkit_snapshot_region_get_type :: 
    IO GType

instance B.Types.TypedObject SnapshotRegion where
    glibType = c_webkit_snapshot_region_get_type

instance B.Types.BoxedEnum SnapshotRegion

-- Enum SnapshotError
-- | Enum values used to denote errors happening when creating snapshots of t'GI.WebKit2.Objects.WebView.WebView'
data SnapshotError = 
      SnapshotErrorCreate
    -- ^ An error occurred when creating a webpage snapshot.
    | AnotherSnapshotError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum SnapshotError where
    fromEnum SnapshotErrorCreate = 799
    fromEnum (AnotherSnapshotError k) = k

    toEnum 799 = SnapshotErrorCreate
    toEnum k = AnotherSnapshotError k

instance P.Ord SnapshotError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass SnapshotError where
    gerrorClassDomain _ = "WebKitSnapshotError"

-- | Catch exceptions of type `SnapshotError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchSnapshotError ::
    IO a ->
    (SnapshotError -> GErrorMessage -> IO a) ->
    IO a
catchSnapshotError = catchGErrorJustDomain

-- | Handle exceptions of type `SnapshotError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleSnapshotError ::
    (SnapshotError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleSnapshotError = handleGErrorJustDomain

type instance O.ParentTypes SnapshotError = '[]
instance O.HasParentTypes SnapshotError

foreign import ccall "webkit_snapshot_error_get_type" c_webkit_snapshot_error_get_type :: 
    IO GType

instance B.Types.TypedObject SnapshotError where
    glibType = c_webkit_snapshot_error_get_type

instance B.Types.BoxedEnum SnapshotError

-- Enum ScriptDialogType
-- | Enum values used for determining the type of t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
data ScriptDialogType = 
      ScriptDialogTypeAlert
    -- ^ Alert script dialog, used to show a
    -- message to the user.
    | ScriptDialogTypeConfirm
    -- ^ Confirm script dialog, used to ask
    -- confirmation to the user.
    | ScriptDialogTypePrompt
    -- ^ Prompt script dialog, used to ask
    -- information to the user.
    | ScriptDialogTypeBeforeUnloadConfirm
    -- ^ Before unload confirm dialog,
    -- used to ask confirmation to leave the current page to the user. Since 2.12
    | AnotherScriptDialogType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum ScriptDialogType where
    fromEnum ScriptDialogTypeAlert = 0
    fromEnum ScriptDialogTypeConfirm = 1
    fromEnum ScriptDialogTypePrompt = 2
    fromEnum ScriptDialogTypeBeforeUnloadConfirm = 3
    fromEnum (AnotherScriptDialogType k) = k

    toEnum 0 = ScriptDialogTypeAlert
    toEnum 1 = ScriptDialogTypeConfirm
    toEnum 2 = ScriptDialogTypePrompt
    toEnum 3 = ScriptDialogTypeBeforeUnloadConfirm
    toEnum k = AnotherScriptDialogType k

instance P.Ord ScriptDialogType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes ScriptDialogType = '[]
instance O.HasParentTypes ScriptDialogType

foreign import ccall "webkit_script_dialog_type_get_type" c_webkit_script_dialog_type_get_type :: 
    IO GType

instance B.Types.TypedObject ScriptDialogType where
    glibType = c_webkit_script_dialog_type_get_type

instance B.Types.BoxedEnum ScriptDialogType

-- Enum SaveMode
-- | Enum values to specify the different ways in which a t'GI.WebKit2.Objects.WebView.WebView'
-- can save its current web page into a self-contained file.
data SaveMode = 
      SaveModeMhtml
    -- ^ Save the current page using the MHTML format.
    | AnotherSaveMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum SaveMode where
    fromEnum SaveModeMhtml = 0
    fromEnum (AnotherSaveMode k) = k

    toEnum 0 = SaveModeMhtml
    toEnum k = AnotherSaveMode k

instance P.Ord SaveMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes SaveMode = '[]
instance O.HasParentTypes SaveMode

foreign import ccall "webkit_save_mode_get_type" c_webkit_save_mode_get_type :: 
    IO GType

instance B.Types.TypedObject SaveMode where
    glibType = c_webkit_save_mode_get_type

instance B.Types.BoxedEnum SaveMode

-- Enum ProcessModel
{-# DEPRECATED ProcessModel ["(Since version 2.40)"] #-}
-- | Enum values used for determining the t'GI.WebKit2.Objects.WebContext.WebContext' process model.
-- 
-- /Since: 2.4/
data ProcessModel = 
      ProcessModelSharedSecondaryProcess
    -- ^ Deprecated 2.26.
    | ProcessModelMultipleSecondaryProcesses
    -- ^ Use one process
    --   for each t'GI.WebKit2.Objects.WebView.WebView', while still allowing for some of them to
    --   share a process in certain situations. The main advantage
    --   of this process model is that the rendering process for a web view
    --   can crash while the rest of the views keep working normally. This
    --   process model is indicated for applications which may use a number
    --   of web views and the content of in each must not interfere with the
    --   rest — for example a full-fledged web browser with support for
    --   multiple tabs.
    | AnotherProcessModel Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum ProcessModel where
    fromEnum ProcessModelSharedSecondaryProcess = 0
    fromEnum ProcessModelMultipleSecondaryProcesses = 1
    fromEnum (AnotherProcessModel k) = k

    toEnum 0 = ProcessModelSharedSecondaryProcess
    toEnum 1 = ProcessModelMultipleSecondaryProcesses
    toEnum k = AnotherProcessModel k

instance P.Ord ProcessModel where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes ProcessModel = '[]
instance O.HasParentTypes ProcessModel

foreign import ccall "webkit_process_model_get_type" c_webkit_process_model_get_type :: 
    IO GType

instance B.Types.TypedObject ProcessModel where
    glibType = c_webkit_process_model_get_type

instance B.Types.BoxedEnum ProcessModel

-- Enum PrintOperationResponse
-- | Enum values representing the response of the print dialog shown with
-- 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog'.
data PrintOperationResponse = 
      PrintOperationResponsePrint
    -- ^ Print button was clicked in print dialog
    | PrintOperationResponseCancel
    -- ^ Print dialog was cancelled
    | AnotherPrintOperationResponse Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PrintOperationResponse where
    fromEnum PrintOperationResponsePrint = 0
    fromEnum PrintOperationResponseCancel = 1
    fromEnum (AnotherPrintOperationResponse k) = k

    toEnum 0 = PrintOperationResponsePrint
    toEnum 1 = PrintOperationResponseCancel
    toEnum k = AnotherPrintOperationResponse k

instance P.Ord PrintOperationResponse where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes PrintOperationResponse = '[]
instance O.HasParentTypes PrintOperationResponse

foreign import ccall "webkit_print_operation_response_get_type" c_webkit_print_operation_response_get_type :: 
    IO GType

instance B.Types.TypedObject PrintOperationResponse where
    glibType = c_webkit_print_operation_response_get_type

instance B.Types.BoxedEnum PrintOperationResponse

-- Enum PrintError
-- | Enum values used to denote the various print errors.
data PrintError = 
      PrintErrorGeneral
    -- ^ Unspecified error during a print operation
    | PrintErrorPrinterNotFound
    -- ^ Selected printer cannot be found
    | PrintErrorInvalidPageRange
    -- ^ Invalid page range
    | AnotherPrintError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PrintError where
    fromEnum PrintErrorGeneral = 599
    fromEnum PrintErrorPrinterNotFound = 500
    fromEnum PrintErrorInvalidPageRange = 501
    fromEnum (AnotherPrintError k) = k

    toEnum 599 = PrintErrorGeneral
    toEnum 500 = PrintErrorPrinterNotFound
    toEnum 501 = PrintErrorInvalidPageRange
    toEnum k = AnotherPrintError k

instance P.Ord PrintError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass PrintError where
    gerrorClassDomain _ = "WebKitPrintError"

-- | Catch exceptions of type `PrintError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchPrintError ::
    IO a ->
    (PrintError -> GErrorMessage -> IO a) ->
    IO a
catchPrintError = catchGErrorJustDomain

-- | Handle exceptions of type `PrintError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handlePrintError ::
    (PrintError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handlePrintError = handleGErrorJustDomain

type instance O.ParentTypes PrintError = '[]
instance O.HasParentTypes PrintError

foreign import ccall "webkit_print_error_get_type" c_webkit_print_error_get_type :: 
    IO GType

instance B.Types.TypedObject PrintError where
    glibType = c_webkit_print_error_get_type

instance B.Types.BoxedEnum PrintError

-- Enum PolicyError
-- | Enum values used to denote the various policy errors.
data PolicyError = 
      PolicyErrorFailed
    -- ^ Generic load failure due to policy error
    | PolicyErrorCannotShowMimeType
    -- ^ Load failure due to unsupported mime type
    | PolicyErrorCannotShowUri
    -- ^ Load failure due to URI that can not be shown
    | PolicyErrorFrameLoadInterruptedByPolicyChange
    -- ^ Load failure due to frame load interruption by policy change
    | PolicyErrorCannotUseRestrictedPort
    -- ^ Load failure due to port restriction
    | AnotherPolicyError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PolicyError where
    fromEnum PolicyErrorFailed = 199
    fromEnum PolicyErrorCannotShowMimeType = 100
    fromEnum PolicyErrorCannotShowUri = 101
    fromEnum PolicyErrorFrameLoadInterruptedByPolicyChange = 102
    fromEnum PolicyErrorCannotUseRestrictedPort = 103
    fromEnum (AnotherPolicyError k) = k

    toEnum 199 = PolicyErrorFailed
    toEnum 100 = PolicyErrorCannotShowMimeType
    toEnum 101 = PolicyErrorCannotShowUri
    toEnum 102 = PolicyErrorFrameLoadInterruptedByPolicyChange
    toEnum 103 = PolicyErrorCannotUseRestrictedPort
    toEnum k = AnotherPolicyError k

instance P.Ord PolicyError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass PolicyError where
    gerrorClassDomain _ = "WebKitPolicyError"

-- | Catch exceptions of type `PolicyError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchPolicyError ::
    IO a ->
    (PolicyError -> GErrorMessage -> IO a) ->
    IO a
catchPolicyError = catchGErrorJustDomain

-- | Handle exceptions of type `PolicyError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handlePolicyError ::
    (PolicyError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handlePolicyError = handleGErrorJustDomain

type instance O.ParentTypes PolicyError = '[]
instance O.HasParentTypes PolicyError

foreign import ccall "webkit_policy_error_get_type" c_webkit_policy_error_get_type :: 
    IO GType

instance B.Types.TypedObject PolicyError where
    glibType = c_webkit_policy_error_get_type

instance B.Types.BoxedEnum PolicyError

-- Enum PolicyDecisionType
-- | Enum values used for determining the type of a policy decision during
-- [WebView::decidePolicy]("GI.WebKit2.Objects.WebView#g:signal:decidePolicy").
data PolicyDecisionType = 
      PolicyDecisionTypeNavigationAction
    -- ^ This type of policy decision
    --   is requested when WebKit is about to navigate to a new page in either the
    --   main frame or a subframe. Acceptable policy decisions are either
    --   'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse' or 'GI.WebKit2.Objects.PolicyDecision.policyDecisionIgnore'. This
    --   type of policy decision is always a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'.
    | PolicyDecisionTypeNewWindowAction
    -- ^ This type of policy decision
    --   is requested when WebKit is about to create a new window. Acceptable policy
    --   decisions are either 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse' or
    --   'GI.WebKit2.Objects.PolicyDecision.policyDecisionIgnore'. This type of policy decision is always
    --   a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'. These decisions are useful for implementing
    --   special actions for new windows, such as forcing the new window to open
    --   in a tab when a keyboard modifier is active or handling a special
    --   target attribute on \<a> elements.
    | PolicyDecisionTypeResponse
    -- ^ This type of decision is used when WebKit has
    --   received a response for a network resource and is about to start the load.
    --   Note that these resources include all subresources of a page such as images
    --   and stylesheets as well as main documents. Appropriate policy responses to
    --   this decision are 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse', 'GI.WebKit2.Objects.PolicyDecision.policyDecisionIgnore',
    --   or 'GI.WebKit2.Objects.PolicyDecision.policyDecisionDownload'. This type of policy decision is always
    --   a t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision'. This decision is useful for forcing
    --   some types of resources to be downloaded rather than rendered in the WebView
    --   or to block the transfer of resources entirely.
    | AnotherPolicyDecisionType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PolicyDecisionType where
    fromEnum PolicyDecisionTypeNavigationAction = 0
    fromEnum PolicyDecisionTypeNewWindowAction = 1
    fromEnum PolicyDecisionTypeResponse = 2
    fromEnum (AnotherPolicyDecisionType k) = k

    toEnum 0 = PolicyDecisionTypeNavigationAction
    toEnum 1 = PolicyDecisionTypeNewWindowAction
    toEnum 2 = PolicyDecisionTypeResponse
    toEnum k = AnotherPolicyDecisionType k

instance P.Ord PolicyDecisionType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes PolicyDecisionType = '[]
instance O.HasParentTypes PolicyDecisionType

foreign import ccall "webkit_policy_decision_type_get_type" c_webkit_policy_decision_type_get_type :: 
    IO GType

instance B.Types.TypedObject PolicyDecisionType where
    glibType = c_webkit_policy_decision_type_get_type

instance B.Types.BoxedEnum PolicyDecisionType

-- Enum PluginError
-- | Enum values used to denote the various plugin and media errors.
data PluginError = 
      PluginErrorFailed
    -- ^ Generic plugin load failure. Deprecated 2.32
    | PluginErrorCannotFindPlugin
    -- ^ Load failure due to missing plugin. Deprecated 2.32
    | PluginErrorCannotLoadPlugin
    -- ^ Load failure due to inability to load plugin. Deprecated 2.32
    | PluginErrorJavaUnavailable
    -- ^ Load failure due to missing Java support that is required to load plugin. Deprecated 2.32
    | PluginErrorConnectionCancelled
    -- ^ Load failure due to connection cancellation. Deprecated 2.32
    | PluginErrorWillHandleLoad
    -- ^ Preliminary load failure for media content types. A new load will be started to perform the media load.
    | AnotherPluginError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PluginError where
    fromEnum PluginErrorFailed = 299
    fromEnum PluginErrorCannotFindPlugin = 200
    fromEnum PluginErrorCannotLoadPlugin = 201
    fromEnum PluginErrorJavaUnavailable = 202
    fromEnum PluginErrorConnectionCancelled = 203
    fromEnum PluginErrorWillHandleLoad = 204
    fromEnum (AnotherPluginError k) = k

    toEnum 299 = PluginErrorFailed
    toEnum 200 = PluginErrorCannotFindPlugin
    toEnum 201 = PluginErrorCannotLoadPlugin
    toEnum 202 = PluginErrorJavaUnavailable
    toEnum 203 = PluginErrorConnectionCancelled
    toEnum 204 = PluginErrorWillHandleLoad
    toEnum k = AnotherPluginError k

instance P.Ord PluginError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass PluginError where
    gerrorClassDomain _ = "WebKitPluginError"

-- | Catch exceptions of type `PluginError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchPluginError ::
    IO a ->
    (PluginError -> GErrorMessage -> IO a) ->
    IO a
catchPluginError = catchGErrorJustDomain

-- | Handle exceptions of type `PluginError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handlePluginError ::
    (PluginError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handlePluginError = handleGErrorJustDomain

type instance O.ParentTypes PluginError = '[]
instance O.HasParentTypes PluginError

foreign import ccall "webkit_plugin_error_get_type" c_webkit_plugin_error_get_type :: 
    IO GType

instance B.Types.TypedObject PluginError where
    glibType = c_webkit_plugin_error_get_type

instance B.Types.BoxedEnum PluginError

-- Enum PermissionState
-- | Enum values representing query permission results.
-- 
-- /Since: 2.40/
data PermissionState = 
      PermissionStateGranted
    -- ^ Access to the feature is granted.
    | PermissionStateDenied
    -- ^ Access to the feature is denied.
    | PermissionStatePrompt
    -- ^ Access to the feature has to be requested via user prompt.
    | AnotherPermissionState Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum PermissionState where
    fromEnum PermissionStateGranted = 0
    fromEnum PermissionStateDenied = 1
    fromEnum PermissionStatePrompt = 2
    fromEnum (AnotherPermissionState k) = k

    toEnum 0 = PermissionStateGranted
    toEnum 1 = PermissionStateDenied
    toEnum 2 = PermissionStatePrompt
    toEnum k = AnotherPermissionState k

instance P.Ord PermissionState where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes PermissionState = '[]
instance O.HasParentTypes PermissionState

foreign import ccall "webkit_permission_state_get_type" c_webkit_permission_state_get_type :: 
    IO GType

instance B.Types.TypedObject PermissionState where
    glibType = c_webkit_permission_state_get_type

instance B.Types.BoxedEnum PermissionState

-- Enum NetworkProxyMode
-- | Enum values used to set the network proxy mode.
-- 
-- /Since: 2.16/
data NetworkProxyMode = 
      NetworkProxyModeDefault
    -- ^ Use the default proxy of the system.
    | NetworkProxyModeNoProxy
    -- ^ Do not use any proxy.
    | NetworkProxyModeCustom
    -- ^ Use custom proxy settings.
    | AnotherNetworkProxyMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum NetworkProxyMode where
    fromEnum NetworkProxyModeDefault = 0
    fromEnum NetworkProxyModeNoProxy = 1
    fromEnum NetworkProxyModeCustom = 2
    fromEnum (AnotherNetworkProxyMode k) = k

    toEnum 0 = NetworkProxyModeDefault
    toEnum 1 = NetworkProxyModeNoProxy
    toEnum 2 = NetworkProxyModeCustom
    toEnum k = AnotherNetworkProxyMode k

instance P.Ord NetworkProxyMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes NetworkProxyMode = '[]
instance O.HasParentTypes NetworkProxyMode

foreign import ccall "webkit_network_proxy_mode_get_type" c_webkit_network_proxy_mode_get_type :: 
    IO GType

instance B.Types.TypedObject NetworkProxyMode where
    glibType = c_webkit_network_proxy_mode_get_type

instance B.Types.BoxedEnum NetworkProxyMode

-- Enum NetworkError
-- | Enum values used to denote the various network errors.
data NetworkError = 
      NetworkErrorFailed
    -- ^ Generic load failure
    | NetworkErrorTransport
    -- ^ Load failure due to transport error
    | NetworkErrorUnknownProtocol
    -- ^ Load failure due to unknown protocol
    | NetworkErrorCancelled
    -- ^ Load failure due to cancellation
    | NetworkErrorFileDoesNotExist
    -- ^ Load failure due to missing file
    | AnotherNetworkError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum NetworkError where
    fromEnum NetworkErrorFailed = 399
    fromEnum NetworkErrorTransport = 300
    fromEnum NetworkErrorUnknownProtocol = 301
    fromEnum NetworkErrorCancelled = 302
    fromEnum NetworkErrorFileDoesNotExist = 303
    fromEnum (AnotherNetworkError k) = k

    toEnum 399 = NetworkErrorFailed
    toEnum 300 = NetworkErrorTransport
    toEnum 301 = NetworkErrorUnknownProtocol
    toEnum 302 = NetworkErrorCancelled
    toEnum 303 = NetworkErrorFileDoesNotExist
    toEnum k = AnotherNetworkError k

instance P.Ord NetworkError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass NetworkError where
    gerrorClassDomain _ = "WebKitNetworkError"

-- | Catch exceptions of type `NetworkError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchNetworkError ::
    IO a ->
    (NetworkError -> GErrorMessage -> IO a) ->
    IO a
catchNetworkError = catchGErrorJustDomain

-- | Handle exceptions of type `NetworkError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleNetworkError ::
    (NetworkError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleNetworkError = handleGErrorJustDomain

type instance O.ParentTypes NetworkError = '[]
instance O.HasParentTypes NetworkError

foreign import ccall "webkit_network_error_get_type" c_webkit_network_error_get_type :: 
    IO GType

instance B.Types.TypedObject NetworkError where
    glibType = c_webkit_network_error_get_type

instance B.Types.BoxedEnum NetworkError

-- Enum NavigationType
-- | Enum values used to denote the various navigation types.
data NavigationType = 
      NavigationTypeLinkClicked
    -- ^ The navigation was triggered by clicking a link.
    | NavigationTypeFormSubmitted
    -- ^ The navigation was triggered by submitting a form.
    | NavigationTypeBackForward
    -- ^ The navigation was triggered by navigating forward or backward.
    | NavigationTypeReload
    -- ^ The navigation was triggered by reloading.
    | NavigationTypeFormResubmitted
    -- ^ The navigation was triggered by resubmitting a form.
    | NavigationTypeOther
    -- ^ The navigation was triggered by some other action.
    | AnotherNavigationType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum NavigationType where
    fromEnum NavigationTypeLinkClicked = 0
    fromEnum NavigationTypeFormSubmitted = 1
    fromEnum NavigationTypeBackForward = 2
    fromEnum NavigationTypeReload = 3
    fromEnum NavigationTypeFormResubmitted = 4
    fromEnum NavigationTypeOther = 5
    fromEnum (AnotherNavigationType k) = k

    toEnum 0 = NavigationTypeLinkClicked
    toEnum 1 = NavigationTypeFormSubmitted
    toEnum 2 = NavigationTypeBackForward
    toEnum 3 = NavigationTypeReload
    toEnum 4 = NavigationTypeFormResubmitted
    toEnum 5 = NavigationTypeOther
    toEnum k = AnotherNavigationType k

instance P.Ord NavigationType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes NavigationType = '[]
instance O.HasParentTypes NavigationType

foreign import ccall "webkit_navigation_type_get_type" c_webkit_navigation_type_get_type :: 
    IO GType

instance B.Types.TypedObject NavigationType where
    glibType = c_webkit_navigation_type_get_type

instance B.Types.BoxedEnum NavigationType

-- Enum MediaCaptureState
-- | Enum values used to specify the capture state of a media device.
-- 
-- /Since: 2.34/
data MediaCaptureState = 
      MediaCaptureStateNone
    -- ^ Media capture is disabled.
    | MediaCaptureStateActive
    -- ^ Media capture is active.
    | MediaCaptureStateMuted
    -- ^ Media capture is muted.
    | AnotherMediaCaptureState Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum MediaCaptureState where
    fromEnum MediaCaptureStateNone = 0
    fromEnum MediaCaptureStateActive = 1
    fromEnum MediaCaptureStateMuted = 2
    fromEnum (AnotherMediaCaptureState k) = k

    toEnum 0 = MediaCaptureStateNone
    toEnum 1 = MediaCaptureStateActive
    toEnum 2 = MediaCaptureStateMuted
    toEnum k = AnotherMediaCaptureState k

instance P.Ord MediaCaptureState where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes MediaCaptureState = '[]
instance O.HasParentTypes MediaCaptureState

foreign import ccall "webkit_media_capture_state_get_type" c_webkit_media_capture_state_get_type :: 
    IO GType

instance B.Types.TypedObject MediaCaptureState where
    glibType = c_webkit_media_capture_state_get_type

instance B.Types.BoxedEnum MediaCaptureState

-- Enum LoadEvent
-- | Enum values used to denote the different events that happen during a
-- t'GI.WebKit2.Objects.WebView.WebView' load operation.
data LoadEvent = 
      LoadEventStarted
    -- ^ A new load request has been made.
    -- No data has been received yet, empty structures have
    -- been allocated to perform the load; the load may still
    -- fail due to transport issues such as not being able to
    -- resolve a name, or connect to a port.
    | LoadEventRedirected
    -- ^ A provisional data source received
    -- a server redirect.
    | LoadEventCommitted
    -- ^ The content started arriving for a page load.
    -- The necessary transport requirements are established, and the
    -- load is being performed.
    | LoadEventFinished
    -- ^ Load completed. All resources are done loading
    -- or there was an error during the load operation.
    | AnotherLoadEvent Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum LoadEvent where
    fromEnum LoadEventStarted = 0
    fromEnum LoadEventRedirected = 1
    fromEnum LoadEventCommitted = 2
    fromEnum LoadEventFinished = 3
    fromEnum (AnotherLoadEvent k) = k

    toEnum 0 = LoadEventStarted
    toEnum 1 = LoadEventRedirected
    toEnum 2 = LoadEventCommitted
    toEnum 3 = LoadEventFinished
    toEnum k = AnotherLoadEvent k

instance P.Ord LoadEvent where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes LoadEvent = '[]
instance O.HasParentTypes LoadEvent

foreign import ccall "webkit_load_event_get_type" c_webkit_load_event_get_type :: 
    IO GType

instance B.Types.TypedObject LoadEvent where
    glibType = c_webkit_load_event_get_type

instance B.Types.BoxedEnum LoadEvent

-- Enum JavascriptError
-- | Enum values used to denote errors happening when executing JavaScript
data JavascriptError = 
      JavascriptErrorScriptFailed
    -- ^ An exception was raised in JavaScript execution
    | JavascriptErrorInvalidParameter
    -- ^ An unsupported parameter has been used to call and async function from API. Since 2.40
    | JavascriptErrorInvalidResult
    -- ^ The result of JavaScript execution could not be returned. Since 2.40
    | AnotherJavascriptError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum JavascriptError where
    fromEnum JavascriptErrorScriptFailed = 699
    fromEnum JavascriptErrorInvalidParameter = 600
    fromEnum JavascriptErrorInvalidResult = 601
    fromEnum (AnotherJavascriptError k) = k

    toEnum 699 = JavascriptErrorScriptFailed
    toEnum 600 = JavascriptErrorInvalidParameter
    toEnum 601 = JavascriptErrorInvalidResult
    toEnum k = AnotherJavascriptError k

instance P.Ord JavascriptError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass JavascriptError where
    gerrorClassDomain _ = "WebKitJavascriptError"

-- | Catch exceptions of type `JavascriptError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchJavascriptError ::
    IO a ->
    (JavascriptError -> GErrorMessage -> IO a) ->
    IO a
catchJavascriptError = catchGErrorJustDomain

-- | Handle exceptions of type `JavascriptError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleJavascriptError ::
    (JavascriptError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleJavascriptError = handleGErrorJustDomain

type instance O.ParentTypes JavascriptError = '[]
instance O.HasParentTypes JavascriptError

foreign import ccall "webkit_javascript_error_get_type" c_webkit_javascript_error_get_type :: 
    IO GType

instance B.Types.TypedObject JavascriptError where
    glibType = c_webkit_javascript_error_get_type

instance B.Types.BoxedEnum JavascriptError

-- Enum InsecureContentEvent
{-# DEPRECATED InsecureContentEvent ["(Since version 2.46)"] #-}
-- | Enum values previously used to denote the different events which can trigger
-- the detection of insecure content. Since 2.46, WebKit generally no longer
-- loads insecure content in secure contexts.
data InsecureContentEvent = 
      InsecureContentEventRun
    -- ^ Insecure content has been detected by
    -- trying to execute any kind of logic (e.g. a script) from an
    -- untrusted source.
    | InsecureContentEventDisplayed
    -- ^ Insecure content has been
    -- detected by trying to display any kind of resource (e.g. an image)
    -- from an untrusted source.
    | AnotherInsecureContentEvent Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum InsecureContentEvent where
    fromEnum InsecureContentEventRun = 0
    fromEnum InsecureContentEventDisplayed = 1
    fromEnum (AnotherInsecureContentEvent k) = k

    toEnum 0 = InsecureContentEventRun
    toEnum 1 = InsecureContentEventDisplayed
    toEnum k = AnotherInsecureContentEvent k

instance P.Ord InsecureContentEvent where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes InsecureContentEvent = '[]
instance O.HasParentTypes InsecureContentEvent

foreign import ccall "webkit_insecure_content_event_get_type" c_webkit_insecure_content_event_get_type :: 
    IO GType

instance B.Types.TypedObject InsecureContentEvent where
    glibType = c_webkit_insecure_content_event_get_type

instance B.Types.BoxedEnum InsecureContentEvent

-- Enum InputPurpose
-- | Enum values used to describe the primary purpose of the active editable element.
-- 
-- /Since: 2.28/
data InputPurpose = 
      InputPurposeFreeForm
    -- ^ Editable element expects any characters
    | InputPurposeDigits
    -- ^ Editable element expects digits
    | InputPurposeNumber
    -- ^ Editable element expects a number
    | InputPurposePhone
    -- ^ Editable element expects a telephone
    | InputPurposeUrl
    -- ^ Editable element expects a URL
    | InputPurposeEmail
    -- ^ Editable element expects an email
    | InputPurposePassword
    -- ^ Editable element expects a password
    | AnotherInputPurpose Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum InputPurpose where
    fromEnum InputPurposeFreeForm = 0
    fromEnum InputPurposeDigits = 1
    fromEnum InputPurposeNumber = 2
    fromEnum InputPurposePhone = 3
    fromEnum InputPurposeUrl = 4
    fromEnum InputPurposeEmail = 5
    fromEnum InputPurposePassword = 6
    fromEnum (AnotherInputPurpose k) = k

    toEnum 0 = InputPurposeFreeForm
    toEnum 1 = InputPurposeDigits
    toEnum 2 = InputPurposeNumber
    toEnum 3 = InputPurposePhone
    toEnum 4 = InputPurposeUrl
    toEnum 5 = InputPurposeEmail
    toEnum 6 = InputPurposePassword
    toEnum k = AnotherInputPurpose k

instance P.Ord InputPurpose where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes InputPurpose = '[]
instance O.HasParentTypes InputPurpose

foreign import ccall "webkit_input_purpose_get_type" c_webkit_input_purpose_get_type :: 
    IO GType

instance B.Types.TypedObject InputPurpose where
    glibType = c_webkit_input_purpose_get_type

instance B.Types.BoxedEnum InputPurpose

-- Enum HardwareAccelerationPolicy
-- | Enum values used for determining the hardware acceleration policy.
-- 
-- /Since: 2.16/
data HardwareAccelerationPolicy = 
      HardwareAccelerationPolicyOnDemand
    -- ^ Hardware acceleration is enabled\/disabled as request by web contents.
    | HardwareAccelerationPolicyAlways
    -- ^ Hardware acceleration is always enabled, even for websites not requesting it.
    | HardwareAccelerationPolicyNever
    -- ^ Hardware acceleration is always disabled, even for websites requesting it.
    | AnotherHardwareAccelerationPolicy Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum HardwareAccelerationPolicy where
    fromEnum HardwareAccelerationPolicyOnDemand = 0
    fromEnum HardwareAccelerationPolicyAlways = 1
    fromEnum HardwareAccelerationPolicyNever = 2
    fromEnum (AnotherHardwareAccelerationPolicy k) = k

    toEnum 0 = HardwareAccelerationPolicyOnDemand
    toEnum 1 = HardwareAccelerationPolicyAlways
    toEnum 2 = HardwareAccelerationPolicyNever
    toEnum k = AnotherHardwareAccelerationPolicy k

instance P.Ord HardwareAccelerationPolicy where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes HardwareAccelerationPolicy = '[]
instance O.HasParentTypes HardwareAccelerationPolicy

foreign import ccall "webkit_hardware_acceleration_policy_get_type" c_webkit_hardware_acceleration_policy_get_type :: 
    IO GType

instance B.Types.TypedObject HardwareAccelerationPolicy where
    glibType = c_webkit_hardware_acceleration_policy_get_type

instance B.Types.BoxedEnum HardwareAccelerationPolicy

-- Enum FeatureStatus
-- | Describes the status of a [struct/@webKitFeature@/].
-- 
-- The status for a given feature can be obtained with
-- 'GI.WebKit2.Structs.Feature.featureGetStatus'.
-- 
-- /Since: 2.42/
data FeatureStatus = 
      FeatureStatusEmbedder
    -- ^ Feature that adjust behaviour for
    --   specific application needs. The feature is not part of a Web platform
    --   feature, not a mature feature intended to be always on.
    | FeatureStatusUnstable
    -- ^ Feature in development. The feature
    --   may be unfinished, and there are no guarantees about its safety and
    --   stability.
    | FeatureStatusInternal
    -- ^ Feature for debugging the WebKit engine.
    --   The feature is not generally useful for user or web developers, and
    --   always disabled by default.
    | FeatureStatusDeveloper
    -- ^ Feature for web developers. The feature
    --   is not generally useful for end users, and always disabled by default.
    | FeatureStatusTestable
    -- ^ Feature in active development and
    --   complete enough for testing. The feature may not be yet ready to
    --   ship and is disabled by default.
    | FeatureStatusPreview
    -- ^ Feature ready to be tested by users.
    --   The feature is disabled by default, but may be enabled by applications
    --   automatically e.g. in their “technology preview” or “beta” versions.
    | FeatureStatusStable
    -- ^ Feature ready for general use. The
    --   feature is enabled by default, but it may still be toggled to support
    --   debugging and testing.
    | FeatureStatusMature
    -- ^ Feature in general use. The feature is
    --   always enabled and in general there should be no user-facing interface
    --   to toggle it.
    | AnotherFeatureStatus Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum FeatureStatus where
    fromEnum FeatureStatusEmbedder = 0
    fromEnum FeatureStatusUnstable = 1
    fromEnum FeatureStatusInternal = 2
    fromEnum FeatureStatusDeveloper = 3
    fromEnum FeatureStatusTestable = 4
    fromEnum FeatureStatusPreview = 5
    fromEnum FeatureStatusStable = 6
    fromEnum FeatureStatusMature = 7
    fromEnum (AnotherFeatureStatus k) = k

    toEnum 0 = FeatureStatusEmbedder
    toEnum 1 = FeatureStatusUnstable
    toEnum 2 = FeatureStatusInternal
    toEnum 3 = FeatureStatusDeveloper
    toEnum 4 = FeatureStatusTestable
    toEnum 5 = FeatureStatusPreview
    toEnum 6 = FeatureStatusStable
    toEnum 7 = FeatureStatusMature
    toEnum k = AnotherFeatureStatus k

instance P.Ord FeatureStatus where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes FeatureStatus = '[]
instance O.HasParentTypes FeatureStatus

foreign import ccall "webkit_feature_status_get_type" c_webkit_feature_status_get_type :: 
    IO GType

instance B.Types.TypedObject FeatureStatus where
    glibType = c_webkit_feature_status_get_type

instance B.Types.BoxedEnum FeatureStatus

-- Enum FaviconDatabaseError
-- | Enum values used to denote the various errors related to the t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase'.
data FaviconDatabaseError = 
      FaviconDatabaseErrorNotInitialized
    -- ^ The t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase' is closed
    | FaviconDatabaseErrorFaviconNotFound
    -- ^ There is not an icon available for the requested URL
    | FaviconDatabaseErrorFaviconUnknown
    -- ^ There might be an icon for the requested URL, but its data is unknown at the moment
    | AnotherFaviconDatabaseError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum FaviconDatabaseError where
    fromEnum FaviconDatabaseErrorNotInitialized = 0
    fromEnum FaviconDatabaseErrorFaviconNotFound = 1
    fromEnum FaviconDatabaseErrorFaviconUnknown = 2
    fromEnum (AnotherFaviconDatabaseError k) = k

    toEnum 0 = FaviconDatabaseErrorNotInitialized
    toEnum 1 = FaviconDatabaseErrorFaviconNotFound
    toEnum 2 = FaviconDatabaseErrorFaviconUnknown
    toEnum k = AnotherFaviconDatabaseError k

instance P.Ord FaviconDatabaseError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass FaviconDatabaseError where
    gerrorClassDomain _ = "WebKitFaviconDatabaseError"

-- | Catch exceptions of type `FaviconDatabaseError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchFaviconDatabaseError ::
    IO a ->
    (FaviconDatabaseError -> GErrorMessage -> IO a) ->
    IO a
catchFaviconDatabaseError = catchGErrorJustDomain

-- | Handle exceptions of type `FaviconDatabaseError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleFaviconDatabaseError ::
    (FaviconDatabaseError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleFaviconDatabaseError = handleGErrorJustDomain

type instance O.ParentTypes FaviconDatabaseError = '[]
instance O.HasParentTypes FaviconDatabaseError

foreign import ccall "webkit_favicon_database_error_get_type" c_webkit_favicon_database_error_get_type :: 
    IO GType

instance B.Types.TypedObject FaviconDatabaseError where
    glibType = c_webkit_favicon_database_error_get_type

instance B.Types.BoxedEnum FaviconDatabaseError

-- Enum DownloadError
-- | Enum values used to denote the various download errors.
data DownloadError = 
      DownloadErrorNetwork
    -- ^ Download failure due to network error
    | DownloadErrorCancelledByUser
    -- ^ Download was cancelled by user
    | DownloadErrorDestination
    -- ^ Download failure due to destination error
    | AnotherDownloadError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum DownloadError where
    fromEnum DownloadErrorNetwork = 499
    fromEnum DownloadErrorCancelledByUser = 400
    fromEnum DownloadErrorDestination = 401
    fromEnum (AnotherDownloadError k) = k

    toEnum 499 = DownloadErrorNetwork
    toEnum 400 = DownloadErrorCancelledByUser
    toEnum 401 = DownloadErrorDestination
    toEnum k = AnotherDownloadError k

instance P.Ord DownloadError where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass DownloadError where
    gerrorClassDomain _ = "WebKitDownloadError"

-- | Catch exceptions of type `DownloadError`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchDownloadError ::
    IO a ->
    (DownloadError -> GErrorMessage -> IO a) ->
    IO a
catchDownloadError = catchGErrorJustDomain

-- | Handle exceptions of type `DownloadError`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleDownloadError ::
    (DownloadError -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleDownloadError = handleGErrorJustDomain

type instance O.ParentTypes DownloadError = '[]
instance O.HasParentTypes DownloadError

foreign import ccall "webkit_download_error_get_type" c_webkit_download_error_get_type :: 
    IO GType

instance B.Types.TypedObject DownloadError where
    glibType = c_webkit_download_error_get_type

instance B.Types.BoxedEnum DownloadError

-- Enum CredentialPersistence
-- | Enum values representing the duration for which a credential persists.
-- 
-- /Since: 2.2/
data CredentialPersistence = 
      CredentialPersistenceNone
    -- ^ Credential does not persist
    | CredentialPersistenceForSession
    -- ^ Credential persists for session only
    | CredentialPersistencePermanent
    -- ^ Credential persists permanently
    | AnotherCredentialPersistence Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CredentialPersistence where
    fromEnum CredentialPersistenceNone = 0
    fromEnum CredentialPersistenceForSession = 1
    fromEnum CredentialPersistencePermanent = 2
    fromEnum (AnotherCredentialPersistence k) = k

    toEnum 0 = CredentialPersistenceNone
    toEnum 1 = CredentialPersistenceForSession
    toEnum 2 = CredentialPersistencePermanent
    toEnum k = AnotherCredentialPersistence k

instance P.Ord CredentialPersistence where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes CredentialPersistence = '[]
instance O.HasParentTypes CredentialPersistence

foreign import ccall "webkit_credential_persistence_get_type" c_webkit_credential_persistence_get_type :: 
    IO GType

instance B.Types.TypedObject CredentialPersistence where
    glibType = c_webkit_credential_persistence_get_type

instance B.Types.BoxedEnum CredentialPersistence

-- Enum CookiePersistentStorage
-- | Enum values used to denote the cookie persistent storage types.
data CookiePersistentStorage = 
      CookiePersistentStorageText
    -- ^ Cookies are stored in a text
    --  file in the Mozilla \"cookies.txt\" format.
    | CookiePersistentStorageSqlite
    -- ^ Cookies are stored in a SQLite
    --  file in the current Mozilla format.
    | AnotherCookiePersistentStorage Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CookiePersistentStorage where
    fromEnum CookiePersistentStorageText = 0
    fromEnum CookiePersistentStorageSqlite = 1
    fromEnum (AnotherCookiePersistentStorage k) = k

    toEnum 0 = CookiePersistentStorageText
    toEnum 1 = CookiePersistentStorageSqlite
    toEnum k = AnotherCookiePersistentStorage k

instance P.Ord CookiePersistentStorage where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes CookiePersistentStorage = '[]
instance O.HasParentTypes CookiePersistentStorage

foreign import ccall "webkit_cookie_persistent_storage_get_type" c_webkit_cookie_persistent_storage_get_type :: 
    IO GType

instance B.Types.TypedObject CookiePersistentStorage where
    glibType = c_webkit_cookie_persistent_storage_get_type

instance B.Types.BoxedEnum CookiePersistentStorage

-- Enum CookieAcceptPolicy
-- | Enum values used to denote the cookie acceptance policies.
data CookieAcceptPolicy = 
      CookieAcceptPolicyAlways
    -- ^ Accept all cookies unconditionally.
    | CookieAcceptPolicyNever
    -- ^ Reject all cookies unconditionally.
    | CookieAcceptPolicyNoThirdParty
    -- ^ Accept only cookies set by the main document loaded.
    | AnotherCookieAcceptPolicy Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CookieAcceptPolicy where
    fromEnum CookieAcceptPolicyAlways = 0
    fromEnum CookieAcceptPolicyNever = 1
    fromEnum CookieAcceptPolicyNoThirdParty = 2
    fromEnum (AnotherCookieAcceptPolicy k) = k

    toEnum 0 = CookieAcceptPolicyAlways
    toEnum 1 = CookieAcceptPolicyNever
    toEnum 2 = CookieAcceptPolicyNoThirdParty
    toEnum k = AnotherCookieAcceptPolicy k

instance P.Ord CookieAcceptPolicy where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes CookieAcceptPolicy = '[]
instance O.HasParentTypes CookieAcceptPolicy

foreign import ccall "webkit_cookie_accept_policy_get_type" c_webkit_cookie_accept_policy_get_type :: 
    IO GType

instance B.Types.TypedObject CookieAcceptPolicy where
    glibType = c_webkit_cookie_accept_policy_get_type

instance B.Types.BoxedEnum CookieAcceptPolicy

-- Enum ContextMenuAction
-- | Enum values used to denote the stock actions for
-- t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's
data ContextMenuAction = 
      ContextMenuActionNoAction
    -- ^ No action, used by separator menu items.
    | ContextMenuActionOpenLink
    -- ^ Open current link.
    | ContextMenuActionOpenLinkInNewWindow
    -- ^ Open current link in a new window.
    | ContextMenuActionDownloadLinkToDisk
    -- ^ Download link destination.
    | ContextMenuActionCopyLinkToClipboard
    -- ^ Copy link location to the clipboard.
    | ContextMenuActionOpenImageInNewWindow
    -- ^ Open current image in a new window.
    | ContextMenuActionDownloadImageToDisk
    -- ^ Download current image.
    | ContextMenuActionCopyImageToClipboard
    -- ^ Copy current image to the clipboard.
    | ContextMenuActionCopyImageUrlToClipboard
    -- ^ Copy current image location to the clipboard.
    | ContextMenuActionOpenFrameInNewWindow
    -- ^ Open current frame in a new window.
    | ContextMenuActionGoBack
    -- ^ Load the previous history item.
    | ContextMenuActionGoForward
    -- ^ Load the next history item.
    | ContextMenuActionStop
    -- ^ Stop any ongoing loading operation.
    | ContextMenuActionReload
    -- ^ Reload the contents of current view.
    | ContextMenuActionCopy
    -- ^ Copy current selection the clipboard.
    | ContextMenuActionCut
    -- ^ Cut current selection to the clipboard.
    | ContextMenuActionPaste
    -- ^ Paste clipboard contents.
    | ContextMenuActionDelete
    -- ^ Delete current selection.
    | ContextMenuActionSelectAll
    -- ^ Select all text.
    | ContextMenuActionInputMethods
    -- ^ Input methods menu.
    | ContextMenuActionUnicode
    -- ^ Unicode menu.
    | ContextMenuActionSpellingGuess
    -- ^ A proposed replacement for a misspelled word.
    | ContextMenuActionNoGuessesFound
    -- ^ An indicator that spellchecking found no proposed replacements.
    | ContextMenuActionIgnoreSpelling
    -- ^ Causes the spellchecker to ignore the word for this session.
    | ContextMenuActionLearnSpelling
    -- ^ Causes the spellchecker to add the word to the dictionary.
    | ContextMenuActionIgnoreGrammar
    -- ^ Ignore grammar.
    | ContextMenuActionFontMenu
    -- ^ Font options menu.
    | ContextMenuActionBold
    -- ^ Bold.
    | ContextMenuActionItalic
    -- ^ Italic.
    | ContextMenuActionUnderline
    -- ^ Underline.
    | ContextMenuActionOutline
    -- ^ Outline.
    | ContextMenuActionInspectElement
    -- ^ Open current element in the inspector.
    | ContextMenuActionOpenVideoInNewWindow
    -- ^ Open current video element in a new window.
    | ContextMenuActionOpenAudioInNewWindow
    -- ^ Open current audio element in a new window.
    | ContextMenuActionCopyVideoLinkToClipboard
    -- ^ Copy video link location in to the clipboard.
    | ContextMenuActionCopyAudioLinkToClipboard
    -- ^ Copy audio link location in to the clipboard.
    | ContextMenuActionToggleMediaControls
    -- ^ Enable or disable media controls.
    | ContextMenuActionToggleMediaLoop
    -- ^ Enable or disable media loop.
    | ContextMenuActionEnterVideoFullscreen
    -- ^ Show current video element in fullscreen mode.
    | ContextMenuActionMediaPlay
    -- ^ Play current media element.
    | ContextMenuActionMediaPause
    -- ^ Pause current media element.
    | ContextMenuActionMediaMute
    -- ^ Mute current media element.
    | ContextMenuActionDownloadVideoToDisk
    -- ^ Download video to disk. Since 2.2
    | ContextMenuActionDownloadAudioToDisk
    -- ^ Download audio to disk. Since 2.2
    | ContextMenuActionInsertEmoji
    -- ^ Insert an emoji. Since 2.26
    | ContextMenuActionPasteAsPlainText
    -- ^ Paste clipboard contents as plain text. Since 2.30
    | ContextMenuActionCustom
    -- ^ Custom action defined by applications.
    | AnotherContextMenuAction Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum ContextMenuAction where
    fromEnum ContextMenuActionNoAction = 0
    fromEnum ContextMenuActionOpenLink = 1
    fromEnum ContextMenuActionOpenLinkInNewWindow = 2
    fromEnum ContextMenuActionDownloadLinkToDisk = 3
    fromEnum ContextMenuActionCopyLinkToClipboard = 4
    fromEnum ContextMenuActionOpenImageInNewWindow = 5
    fromEnum ContextMenuActionDownloadImageToDisk = 6
    fromEnum ContextMenuActionCopyImageToClipboard = 7
    fromEnum ContextMenuActionCopyImageUrlToClipboard = 8
    fromEnum ContextMenuActionOpenFrameInNewWindow = 9
    fromEnum ContextMenuActionGoBack = 10
    fromEnum ContextMenuActionGoForward = 11
    fromEnum ContextMenuActionStop = 12
    fromEnum ContextMenuActionReload = 13
    fromEnum ContextMenuActionCopy = 14
    fromEnum ContextMenuActionCut = 15
    fromEnum ContextMenuActionPaste = 16
    fromEnum ContextMenuActionDelete = 17
    fromEnum ContextMenuActionSelectAll = 18
    fromEnum ContextMenuActionInputMethods = 19
    fromEnum ContextMenuActionUnicode = 20
    fromEnum ContextMenuActionSpellingGuess = 21
    fromEnum ContextMenuActionNoGuessesFound = 22
    fromEnum ContextMenuActionIgnoreSpelling = 23
    fromEnum ContextMenuActionLearnSpelling = 24
    fromEnum ContextMenuActionIgnoreGrammar = 25
    fromEnum ContextMenuActionFontMenu = 26
    fromEnum ContextMenuActionBold = 27
    fromEnum ContextMenuActionItalic = 28
    fromEnum ContextMenuActionUnderline = 29
    fromEnum ContextMenuActionOutline = 30
    fromEnum ContextMenuActionInspectElement = 31
    fromEnum ContextMenuActionOpenVideoInNewWindow = 32
    fromEnum ContextMenuActionOpenAudioInNewWindow = 33
    fromEnum ContextMenuActionCopyVideoLinkToClipboard = 34
    fromEnum ContextMenuActionCopyAudioLinkToClipboard = 35
    fromEnum ContextMenuActionToggleMediaControls = 36
    fromEnum ContextMenuActionToggleMediaLoop = 37
    fromEnum ContextMenuActionEnterVideoFullscreen = 38
    fromEnum ContextMenuActionMediaPlay = 39
    fromEnum ContextMenuActionMediaPause = 40
    fromEnum ContextMenuActionMediaMute = 41
    fromEnum ContextMenuActionDownloadVideoToDisk = 42
    fromEnum ContextMenuActionDownloadAudioToDisk = 43
    fromEnum ContextMenuActionInsertEmoji = 44
    fromEnum ContextMenuActionPasteAsPlainText = 45
    fromEnum ContextMenuActionCustom = 10000
    fromEnum (AnotherContextMenuAction k) = k

    toEnum 0 = ContextMenuActionNoAction
    toEnum 1 = ContextMenuActionOpenLink
    toEnum 2 = ContextMenuActionOpenLinkInNewWindow
    toEnum 3 = ContextMenuActionDownloadLinkToDisk
    toEnum 4 = ContextMenuActionCopyLinkToClipboard
    toEnum 5 = ContextMenuActionOpenImageInNewWindow
    toEnum 6 = ContextMenuActionDownloadImageToDisk
    toEnum 7 = ContextMenuActionCopyImageToClipboard
    toEnum 8 = ContextMenuActionCopyImageUrlToClipboard
    toEnum 9 = ContextMenuActionOpenFrameInNewWindow
    toEnum 10 = ContextMenuActionGoBack
    toEnum 11 = ContextMenuActionGoForward
    toEnum 12 = ContextMenuActionStop
    toEnum 13 = ContextMenuActionReload
    toEnum 14 = ContextMenuActionCopy
    toEnum 15 = ContextMenuActionCut
    toEnum 16 = ContextMenuActionPaste
    toEnum 17 = ContextMenuActionDelete
    toEnum 18 = ContextMenuActionSelectAll
    toEnum 19 = ContextMenuActionInputMethods
    toEnum 20 = ContextMenuActionUnicode
    toEnum 21 = ContextMenuActionSpellingGuess
    toEnum 22 = ContextMenuActionNoGuessesFound
    toEnum 23 = ContextMenuActionIgnoreSpelling
    toEnum 24 = ContextMenuActionLearnSpelling
    toEnum 25 = ContextMenuActionIgnoreGrammar
    toEnum 26 = ContextMenuActionFontMenu
    toEnum 27 = ContextMenuActionBold
    toEnum 28 = ContextMenuActionItalic
    toEnum 29 = ContextMenuActionUnderline
    toEnum 30 = ContextMenuActionOutline
    toEnum 31 = ContextMenuActionInspectElement
    toEnum 32 = ContextMenuActionOpenVideoInNewWindow
    toEnum 33 = ContextMenuActionOpenAudioInNewWindow
    toEnum 34 = ContextMenuActionCopyVideoLinkToClipboard
    toEnum 35 = ContextMenuActionCopyAudioLinkToClipboard
    toEnum 36 = ContextMenuActionToggleMediaControls
    toEnum 37 = ContextMenuActionToggleMediaLoop
    toEnum 38 = ContextMenuActionEnterVideoFullscreen
    toEnum 39 = ContextMenuActionMediaPlay
    toEnum 40 = ContextMenuActionMediaPause
    toEnum 41 = ContextMenuActionMediaMute
    toEnum 42 = ContextMenuActionDownloadVideoToDisk
    toEnum 43 = ContextMenuActionDownloadAudioToDisk
    toEnum 44 = ContextMenuActionInsertEmoji
    toEnum 45 = ContextMenuActionPasteAsPlainText
    toEnum 10000 = ContextMenuActionCustom
    toEnum k = AnotherContextMenuAction k

instance P.Ord ContextMenuAction where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes ContextMenuAction = '[]
instance O.HasParentTypes ContextMenuAction

foreign import ccall "webkit_context_menu_action_get_type" c_webkit_context_menu_action_get_type :: 
    IO GType

instance B.Types.TypedObject ContextMenuAction where
    glibType = c_webkit_context_menu_action_get_type

instance B.Types.BoxedEnum ContextMenuAction

-- Enum CacheModel
-- | Enum values used for determining the t'GI.WebKit2.Objects.WebContext.WebContext' cache model.
data CacheModel = 
      CacheModelDocumentViewer
    -- ^ Disable the cache completely, which
    --   substantially reduces memory usage. Useful for applications that only
    --   access a single local file, with no navigation to other pages. No remote
    --   resources will be cached.
    | CacheModelWebBrowser
    -- ^ Improve document load speed substantially
    --   by caching a very large number of resources and previously viewed content.
    | CacheModelDocumentBrowser
    -- ^ A cache model optimized for viewing
    --   a series of local files -- for example, a documentation viewer or a website
    --   designer. WebKit will cache a moderate number of resources.
    | AnotherCacheModel Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CacheModel where
    fromEnum CacheModelDocumentViewer = 0
    fromEnum CacheModelWebBrowser = 1
    fromEnum CacheModelDocumentBrowser = 2
    fromEnum (AnotherCacheModel k) = k

    toEnum 0 = CacheModelDocumentViewer
    toEnum 1 = CacheModelWebBrowser
    toEnum 2 = CacheModelDocumentBrowser
    toEnum k = AnotherCacheModel k

instance P.Ord CacheModel where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes CacheModel = '[]
instance O.HasParentTypes CacheModel

foreign import ccall "webkit_cache_model_get_type" c_webkit_cache_model_get_type :: 
    IO GType

instance B.Types.TypedObject CacheModel where
    glibType = c_webkit_cache_model_get_type

instance B.Types.BoxedEnum CacheModel

-- Enum AutoplayPolicy
-- | Enum values used to specify autoplay policies.
-- 
-- /Since: 2.30/
data AutoplayPolicy = 
      AutoplayPolicyAllow
    -- ^ Do not restrict autoplay.
    | AutoplayPolicyAllowWithoutSound
    -- ^ Allow videos to autoplay if
    --     they have no audio track, or if their audio track is muted.
    | AutoplayPolicyDeny
    -- ^ Never allow autoplay.
    | AnotherAutoplayPolicy Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum AutoplayPolicy where
    fromEnum AutoplayPolicyAllow = 0
    fromEnum AutoplayPolicyAllowWithoutSound = 1
    fromEnum AutoplayPolicyDeny = 2
    fromEnum (AnotherAutoplayPolicy k) = k

    toEnum 0 = AutoplayPolicyAllow
    toEnum 1 = AutoplayPolicyAllowWithoutSound
    toEnum 2 = AutoplayPolicyDeny
    toEnum k = AnotherAutoplayPolicy k

instance P.Ord AutoplayPolicy where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes AutoplayPolicy = '[]
instance O.HasParentTypes AutoplayPolicy

foreign import ccall "webkit_autoplay_policy_get_type" c_webkit_autoplay_policy_get_type :: 
    IO GType

instance B.Types.TypedObject AutoplayPolicy where
    glibType = c_webkit_autoplay_policy_get_type

instance B.Types.BoxedEnum AutoplayPolicy

-- Enum AutomationBrowsingContextPresentation
-- | Enum values used for determining the automation browsing context presentation.
-- 
-- /Since: 2.28/
data AutomationBrowsingContextPresentation = 
      AutomationBrowsingContextPresentationWindow
    -- ^ a window
    | AutomationBrowsingContextPresentationTab
    -- ^ a tab
    | AnotherAutomationBrowsingContextPresentation Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum AutomationBrowsingContextPresentation where
    fromEnum AutomationBrowsingContextPresentationWindow = 0
    fromEnum AutomationBrowsingContextPresentationTab = 1
    fromEnum (AnotherAutomationBrowsingContextPresentation k) = k

    toEnum 0 = AutomationBrowsingContextPresentationWindow
    toEnum 1 = AutomationBrowsingContextPresentationTab
    toEnum k = AnotherAutomationBrowsingContextPresentation k

instance P.Ord AutomationBrowsingContextPresentation where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes AutomationBrowsingContextPresentation = '[]
instance O.HasParentTypes AutomationBrowsingContextPresentation

foreign import ccall "webkit_automation_browsing_context_presentation_get_type" c_webkit_automation_browsing_context_presentation_get_type :: 
    IO GType

instance B.Types.TypedObject AutomationBrowsingContextPresentation where
    glibType = c_webkit_automation_browsing_context_presentation_get_type

instance B.Types.BoxedEnum AutomationBrowsingContextPresentation

-- Enum AuthenticationScheme
-- | Enum values representing the authentication scheme.
-- 
-- /Since: 2.2/
data AuthenticationScheme = 
      AuthenticationSchemeDefault
    -- ^ The default authentication scheme of WebKit.
    | AuthenticationSchemeHttpBasic
    -- ^ Basic authentication scheme as defined in RFC 2617.
    | AuthenticationSchemeHttpDigest
    -- ^ Digest authentication scheme as defined in RFC 2617.
    | AuthenticationSchemeHtmlForm
    -- ^ HTML Form authentication.
    | AuthenticationSchemeNtlm
    -- ^ NTLM Microsoft proprietary authentication scheme.
    | AuthenticationSchemeNegotiate
    -- ^ Negotiate (or SPNEGO) authentication scheme as defined in RFC 4559.
    | AuthenticationSchemeClientCertificateRequested
    -- ^ Client Certificate Authentication (see RFC 2246).
    | AuthenticationSchemeServerTrustEvaluationRequested
    -- ^ Server Trust Authentication.
    | AuthenticationSchemeClientCertificatePinRequested
    -- ^ Client certificate PIN required for use. Since: 2.34
    | AuthenticationSchemeUnknown
    -- ^ Authentication scheme unknown.
    | AnotherAuthenticationScheme Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum AuthenticationScheme where
    fromEnum AuthenticationSchemeDefault = 1
    fromEnum AuthenticationSchemeHttpBasic = 2
    fromEnum AuthenticationSchemeHttpDigest = 3
    fromEnum AuthenticationSchemeHtmlForm = 4
    fromEnum AuthenticationSchemeNtlm = 5
    fromEnum AuthenticationSchemeNegotiate = 6
    fromEnum AuthenticationSchemeClientCertificateRequested = 7
    fromEnum AuthenticationSchemeServerTrustEvaluationRequested = 8
    fromEnum AuthenticationSchemeClientCertificatePinRequested = 9
    fromEnum AuthenticationSchemeUnknown = 100
    fromEnum (AnotherAuthenticationScheme k) = k

    toEnum 1 = AuthenticationSchemeDefault
    toEnum 2 = AuthenticationSchemeHttpBasic
    toEnum 3 = AuthenticationSchemeHttpDigest
    toEnum 4 = AuthenticationSchemeHtmlForm
    toEnum 5 = AuthenticationSchemeNtlm
    toEnum 6 = AuthenticationSchemeNegotiate
    toEnum 7 = AuthenticationSchemeClientCertificateRequested
    toEnum 8 = AuthenticationSchemeServerTrustEvaluationRequested
    toEnum 9 = AuthenticationSchemeClientCertificatePinRequested
    toEnum 100 = AuthenticationSchemeUnknown
    toEnum k = AnotherAuthenticationScheme k

instance P.Ord AuthenticationScheme where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes AuthenticationScheme = '[]
instance O.HasParentTypes AuthenticationScheme

foreign import ccall "webkit_authentication_scheme_get_type" c_webkit_authentication_scheme_get_type :: 
    IO GType

instance B.Types.TypedObject AuthenticationScheme where
    glibType = c_webkit_authentication_scheme_get_type

instance B.Types.BoxedEnum AuthenticationScheme


