#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.Settings where

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

newtype Settings = Settings (SP.ManagedPtr Settings)
instance SP.ManagedPtrNewtype Settings where
instance B.Types.TypedObject Settings where
instance B.Types.GObject Settings
class (SP.GObject o, O.IsDescendantOf Settings o) => IsSettings o
instance (SP.GObject o, O.IsDescendantOf Settings o) => IsSettings o
instance O.HasParentTypes Settings
toSettings :: (MIO.MonadIO m, IsSettings o) => o -> m Settings
instance B.GValue.IsGValue (Maybe Settings) where
#if defined(ENABLE_OVERLOADING)
data SettingsAllowFileAccessFromFileUrlsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsAllowModalDialogsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsAllowTopNavigationToDataUrlsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsAllowUniversalAccessFromFileUrlsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsAutoLoadImagesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsCursiveFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDefaultCharsetPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDefaultFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDefaultFontSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDefaultMonospaceFontSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDisableWebSecurityPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsDrawCompositingIndicatorsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnable2dCanvasAccelerationPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableAccelerated2dCanvasPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableBackForwardNavigationGesturesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableCaretBrowsingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableDeveloperExtrasPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableDnsPrefetchingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableEncryptedMediaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableFrameFlatteningPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableFullscreenPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableHtml5DatabasePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableHtml5LocalStoragePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableHyperlinkAuditingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavascriptPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavascriptMarkupPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaCapabilitiesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaStreamPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediasourcePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableMockCaptureDevicesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableOfflineWebApplicationCachePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnablePageCachePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnablePluginsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnablePrivateBrowsingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableResizableTextAreasPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableSiteSpecificQuirksPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableSmoothScrollingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableSpatialNavigationPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableTabsToLinksPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebaudioPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebglPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebrtcPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsEnableXssAuditorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsFantasyFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsHardwareAccelerationPolicyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsJavascriptCanAccessClipboardPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMathFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMediaPlaybackAllowsInlinePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMediaPlaybackRequiresUserGesturePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMinimumFontSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsMonospaceFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsPictographFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsPrintBackgroundsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSansSerifFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSerifFontFamilyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsUserAgentPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsWebrtcUdpPortsRangePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsZoomTextOnlyPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsApplyFromKeyFileMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowFileAccessFromFileUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowModalDialogsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowTopNavigationToDataUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetAutoLoadImagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetCursiveFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultCharsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultMonospaceFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDisableWebSecurityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetDrawCompositingIndicatorsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnable2dCanvasAccelerationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableAccelerated2dCanvasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableBackForwardNavigationGesturesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableCaretBrowsingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableDeveloperExtrasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableDnsPrefetchingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableEncryptedMediaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableFrameFlatteningMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableFullscreenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHtml5DatabaseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHtml5LocalStorageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHyperlinkAuditingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavascriptMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavascriptMarkupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaCapabilitiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaStreamMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediasourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMockCaptureDevicesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableOfflineWebApplicationCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePageCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePluginsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePrivateBrowsingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableResizableTextAreasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSiteSpecificQuirksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSmoothScrollingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSpatialNavigationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableTabsToLinksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebaudioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebglMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebrtcMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableXssAuditorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetFantasyFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetFeatureEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetHardwareAccelerationPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetJavascriptCanAccessClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMathFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaPlaybackAllowsInlineMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaPlaybackRequiresUserGestureMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMinimumFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetMonospaceFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetPictographFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetPrintBackgroundsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetSansSerifFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetSerifFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetUserAgentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetWebrtcUdpPortsRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsGetZoomTextOnlyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowFileAccessFromFileUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowModalDialogsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowTopNavigationToDataUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetAutoLoadImagesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetCursiveFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultCharsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultMonospaceFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDisableWebSecurityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetDrawCompositingIndicatorsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnable2dCanvasAccelerationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableAccelerated2dCanvasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableBackForwardNavigationGesturesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableCaretBrowsingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableDeveloperExtrasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableDnsPrefetchingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableEncryptedMediaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableFrameFlatteningMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableFullscreenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHtml5DatabaseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHtml5LocalStorageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHyperlinkAuditingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavascriptMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavascriptMarkupMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaCapabilitiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaStreamMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediasourceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMockCaptureDevicesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableOfflineWebApplicationCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePageCacheMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePluginsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePrivateBrowsingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableResizableTextAreasMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSiteSpecificQuirksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSmoothScrollingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSpatialNavigationMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableTabsToLinksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebaudioMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebglMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebrtcMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableXssAuditorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetFantasyFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetFeatureEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetHardwareAccelerationPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetJavascriptCanAccessClipboardMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMathFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaPlaybackAllowsInlineMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaPlaybackRequiresUserGestureMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMinimumFontSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetMonospaceFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetPictographFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetPrintBackgroundsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetSansSerifFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetSerifFontFamilyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetUserAgentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetUserAgentWithApplicationDetailsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetWebrtcUdpPortsRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SettingsSetZoomTextOnlyMethodInfo
#endif
