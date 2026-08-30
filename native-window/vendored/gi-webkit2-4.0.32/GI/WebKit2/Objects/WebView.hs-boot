#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.WebView where

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

newtype WebView = WebView (SP.ManagedPtr WebView)
instance SP.ManagedPtrNewtype WebView where
instance B.Types.TypedObject WebView where
instance B.Types.GObject WebView
class (SP.GObject o, O.IsDescendantOf WebView o) => IsWebView o
instance (SP.GObject o, O.IsDescendantOf WebView o) => IsWebView o
instance O.HasParentTypes WebView
toWebView :: (MIO.MonadIO m, IsWebView o) => o -> m WebView
instance B.GValue.IsGValue (Maybe WebView) where
#if defined(ENABLE_OVERLOADING)
data WebViewAuthenticateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCloseSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewContextMenuSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewContextMenuDismissedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCreateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewDecidePolicySignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewEnterFullscreenSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewInsecureContentDetectedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLeaveFullscreenSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadFailedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadFailedWithTlsErrorsSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewMouseTargetChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewPermissionRequestSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewPrintSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewQueryPermissionStateSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewReadyToShowSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewResourceLoadStartedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunAsModalSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunColorChooserSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunFileChooserSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewScriptDialogSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewShowNotificationSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewShowOptionMenuSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSubmitFormSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewUserMessageReceivedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewWebProcessCrashedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewWebProcessTerminatedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewAutomationPresentationTypePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCameraCaptureStatePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewDefaultContentSecurityPolicyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewDisplayCaptureStatePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewEditablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewEstimatedLoadProgressPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewFaviconPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsControlledByAutomationPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsEphemeralPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsImmersiveModeEnabledPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsLoadingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsMutedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsPlayingAudioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsWebProcessResponsivePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewMicrophoneCaptureStatePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewPageIdPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRelatedViewPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSettingsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewThemeColorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewTitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewUriPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewUserContentManagerPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewWebContextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewWebExtensionModePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewWebsitePoliciesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewZoomLevelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCallAsyncJavascriptFunctionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCallAsyncJavascriptFunctionFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCanExecuteEditingCommandMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCanExecuteEditingCommandFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCanGoBackMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCanGoForwardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewCanShowMimeTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewDownloadUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewEvaluateJavascriptMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewEvaluateJavascriptFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewExecuteEditingCommandMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewExecuteEditingCommandWithArgumentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetAutomationPresentationTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetBackForwardListMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetBackgroundColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetCameraCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetCustomCharsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetDefaultContentSecurityPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetDisplayCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetEditorStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetEstimatedLoadProgressMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetFaviconMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetFindControllerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetInputMethodContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetInspectorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetIsMutedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetIsWebProcessResponsiveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetMainResourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetMicrophoneCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetPageIdMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetSessionStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetSettingsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetSnapshotMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetSnapshotFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetThemeColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetTlsInfoMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetUserContentManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetWebExtensionModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetWebsiteDataManagerMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetWebsitePoliciesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetWindowPropertiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGetZoomLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGoBackMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGoForwardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewGoToBackForwardListItemMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsControlledByAutomationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsEditableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsEphemeralMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsImmersiveModeEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsLoadingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewIsPlayingAudioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLeaveImmersiveModeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadAlternateHtmlMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadBytesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadHtmlMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadPlainTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadRequestMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewLoadUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewReloadMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewReloadBypassCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRestoreSessionStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunAsyncJavascriptFunctionInWorldMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFromGresourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFromGresourceFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptInWorldMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptInWorldFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSaveMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSaveFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSaveToFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSaveToFileFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSendMessageToPageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSendMessageToPageFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetBackgroundColorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetCameraCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetCorsAllowlistMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetCustomCharsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetDisplayCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetEditableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetInputMethodContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetIsMutedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetMicrophoneCaptureStateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetSettingsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewSetZoomLevelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewStopLoadingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewTerminateWebProcessMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebViewTryCloseMethodInfo
#endif
