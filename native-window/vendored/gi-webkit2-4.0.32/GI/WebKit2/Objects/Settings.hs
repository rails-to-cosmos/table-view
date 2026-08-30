{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Control the behaviour of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- t'GI.WebKit2.Objects.Settings.Settings' can be applied to a t'GI.WebKit2.Objects.WebView.WebView' to control text charset,
-- color, font sizes, printing mode, script support, loading of images and various
-- other things on a t'GI.WebKit2.Objects.WebView.WebView'. After creation, a t'GI.WebKit2.Objects.Settings.Settings' object
-- contains default settings.
-- 
-- 
-- === /c code/
-- >// Disable JavaScript
-- >WebKitSettings *settings = webkit_web_view_group_get_settings (my_view_group);
-- >webkit_settings_set_enable_javascript (settings, FALSE);
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.Settings
    ( 

-- * Exported types
    Settings(..)                            ,
    IsSettings                              ,
    toSettings                              ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [applyFromKeyFile]("GI.WebKit2.Objects.Settings#g:method:applyFromKeyFile"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAllowFileAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:method:getAllowFileAccessFromFileUrls"), [getAllowModalDialogs]("GI.WebKit2.Objects.Settings#g:method:getAllowModalDialogs"), [getAllowTopNavigationToDataUrls]("GI.WebKit2.Objects.Settings#g:method:getAllowTopNavigationToDataUrls"), [getAllowUniversalAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:method:getAllowUniversalAccessFromFileUrls"), [getAutoLoadImages]("GI.WebKit2.Objects.Settings#g:method:getAutoLoadImages"), [getCursiveFontFamily]("GI.WebKit2.Objects.Settings#g:method:getCursiveFontFamily"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDefaultCharset]("GI.WebKit2.Objects.Settings#g:method:getDefaultCharset"), [getDefaultFontFamily]("GI.WebKit2.Objects.Settings#g:method:getDefaultFontFamily"), [getDefaultFontSize]("GI.WebKit2.Objects.Settings#g:method:getDefaultFontSize"), [getDefaultMonospaceFontSize]("GI.WebKit2.Objects.Settings#g:method:getDefaultMonospaceFontSize"), [getDisableWebSecurity]("GI.WebKit2.Objects.Settings#g:method:getDisableWebSecurity"), [getDrawCompositingIndicators]("GI.WebKit2.Objects.Settings#g:method:getDrawCompositingIndicators"), [getEnable2dCanvasAcceleration]("GI.WebKit2.Objects.Settings#g:method:getEnable2dCanvasAcceleration"), [getEnableAccelerated2dCanvas]("GI.WebKit2.Objects.Settings#g:method:getEnableAccelerated2dCanvas"), [getEnableBackForwardNavigationGestures]("GI.WebKit2.Objects.Settings#g:method:getEnableBackForwardNavigationGestures"), [getEnableCaretBrowsing]("GI.WebKit2.Objects.Settings#g:method:getEnableCaretBrowsing"), [getEnableDeveloperExtras]("GI.WebKit2.Objects.Settings#g:method:getEnableDeveloperExtras"), [getEnableDnsPrefetching]("GI.WebKit2.Objects.Settings#g:method:getEnableDnsPrefetching"), [getEnableEncryptedMedia]("GI.WebKit2.Objects.Settings#g:method:getEnableEncryptedMedia"), [getEnableFrameFlattening]("GI.WebKit2.Objects.Settings#g:method:getEnableFrameFlattening"), [getEnableFullscreen]("GI.WebKit2.Objects.Settings#g:method:getEnableFullscreen"), [getEnableHtml5Database]("GI.WebKit2.Objects.Settings#g:method:getEnableHtml5Database"), [getEnableHtml5LocalStorage]("GI.WebKit2.Objects.Settings#g:method:getEnableHtml5LocalStorage"), [getEnableHyperlinkAuditing]("GI.WebKit2.Objects.Settings#g:method:getEnableHyperlinkAuditing"), [getEnableJava]("GI.WebKit2.Objects.Settings#g:method:getEnableJava"), [getEnableJavascript]("GI.WebKit2.Objects.Settings#g:method:getEnableJavascript"), [getEnableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:method:getEnableJavascriptMarkup"), [getEnableMedia]("GI.WebKit2.Objects.Settings#g:method:getEnableMedia"), [getEnableMediaCapabilities]("GI.WebKit2.Objects.Settings#g:method:getEnableMediaCapabilities"), [getEnableMediaStream]("GI.WebKit2.Objects.Settings#g:method:getEnableMediaStream"), [getEnableMediasource]("GI.WebKit2.Objects.Settings#g:method:getEnableMediasource"), [getEnableMockCaptureDevices]("GI.WebKit2.Objects.Settings#g:method:getEnableMockCaptureDevices"), [getEnableOfflineWebApplicationCache]("GI.WebKit2.Objects.Settings#g:method:getEnableOfflineWebApplicationCache"), [getEnablePageCache]("GI.WebKit2.Objects.Settings#g:method:getEnablePageCache"), [getEnablePlugins]("GI.WebKit2.Objects.Settings#g:method:getEnablePlugins"), [getEnablePrivateBrowsing]("GI.WebKit2.Objects.Settings#g:method:getEnablePrivateBrowsing"), [getEnableResizableTextAreas]("GI.WebKit2.Objects.Settings#g:method:getEnableResizableTextAreas"), [getEnableSiteSpecificQuirks]("GI.WebKit2.Objects.Settings#g:method:getEnableSiteSpecificQuirks"), [getEnableSmoothScrolling]("GI.WebKit2.Objects.Settings#g:method:getEnableSmoothScrolling"), [getEnableSpatialNavigation]("GI.WebKit2.Objects.Settings#g:method:getEnableSpatialNavigation"), [getEnableTabsToLinks]("GI.WebKit2.Objects.Settings#g:method:getEnableTabsToLinks"), [getEnableWebaudio]("GI.WebKit2.Objects.Settings#g:method:getEnableWebaudio"), [getEnableWebgl]("GI.WebKit2.Objects.Settings#g:method:getEnableWebgl"), [getEnableWebrtc]("GI.WebKit2.Objects.Settings#g:method:getEnableWebrtc"), [getEnableWriteConsoleMessagesToStdout]("GI.WebKit2.Objects.Settings#g:method:getEnableWriteConsoleMessagesToStdout"), [getEnableXssAuditor]("GI.WebKit2.Objects.Settings#g:method:getEnableXssAuditor"), [getFantasyFontFamily]("GI.WebKit2.Objects.Settings#g:method:getFantasyFontFamily"), [getFeatureEnabled]("GI.WebKit2.Objects.Settings#g:method:getFeatureEnabled"), [getHardwareAccelerationPolicy]("GI.WebKit2.Objects.Settings#g:method:getHardwareAccelerationPolicy"), [getJavascriptCanAccessClipboard]("GI.WebKit2.Objects.Settings#g:method:getJavascriptCanAccessClipboard"), [getJavascriptCanOpenWindowsAutomatically]("GI.WebKit2.Objects.Settings#g:method:getJavascriptCanOpenWindowsAutomatically"), [getLoadIconsIgnoringImageLoadSetting]("GI.WebKit2.Objects.Settings#g:method:getLoadIconsIgnoringImageLoadSetting"), [getMathFontFamily]("GI.WebKit2.Objects.Settings#g:method:getMathFontFamily"), [getMediaContentTypesRequiringHardwareSupport]("GI.WebKit2.Objects.Settings#g:method:getMediaContentTypesRequiringHardwareSupport"), [getMediaPlaybackAllowsInline]("GI.WebKit2.Objects.Settings#g:method:getMediaPlaybackAllowsInline"), [getMediaPlaybackRequiresUserGesture]("GI.WebKit2.Objects.Settings#g:method:getMediaPlaybackRequiresUserGesture"), [getMinimumFontSize]("GI.WebKit2.Objects.Settings#g:method:getMinimumFontSize"), [getMonospaceFontFamily]("GI.WebKit2.Objects.Settings#g:method:getMonospaceFontFamily"), [getPictographFontFamily]("GI.WebKit2.Objects.Settings#g:method:getPictographFontFamily"), [getPrintBackgrounds]("GI.WebKit2.Objects.Settings#g:method:getPrintBackgrounds"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getSansSerifFontFamily]("GI.WebKit2.Objects.Settings#g:method:getSansSerifFontFamily"), [getSerifFontFamily]("GI.WebKit2.Objects.Settings#g:method:getSerifFontFamily"), [getUserAgent]("GI.WebKit2.Objects.Settings#g:method:getUserAgent"), [getWebrtcUdpPortsRange]("GI.WebKit2.Objects.Settings#g:method:getWebrtcUdpPortsRange"), [getZoomTextOnly]("GI.WebKit2.Objects.Settings#g:method:getZoomTextOnly").
-- 
-- ==== Setters
-- [setAllowFileAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:method:setAllowFileAccessFromFileUrls"), [setAllowModalDialogs]("GI.WebKit2.Objects.Settings#g:method:setAllowModalDialogs"), [setAllowTopNavigationToDataUrls]("GI.WebKit2.Objects.Settings#g:method:setAllowTopNavigationToDataUrls"), [setAllowUniversalAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:method:setAllowUniversalAccessFromFileUrls"), [setAutoLoadImages]("GI.WebKit2.Objects.Settings#g:method:setAutoLoadImages"), [setCursiveFontFamily]("GI.WebKit2.Objects.Settings#g:method:setCursiveFontFamily"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setDefaultCharset]("GI.WebKit2.Objects.Settings#g:method:setDefaultCharset"), [setDefaultFontFamily]("GI.WebKit2.Objects.Settings#g:method:setDefaultFontFamily"), [setDefaultFontSize]("GI.WebKit2.Objects.Settings#g:method:setDefaultFontSize"), [setDefaultMonospaceFontSize]("GI.WebKit2.Objects.Settings#g:method:setDefaultMonospaceFontSize"), [setDisableWebSecurity]("GI.WebKit2.Objects.Settings#g:method:setDisableWebSecurity"), [setDrawCompositingIndicators]("GI.WebKit2.Objects.Settings#g:method:setDrawCompositingIndicators"), [setEnable2dCanvasAcceleration]("GI.WebKit2.Objects.Settings#g:method:setEnable2dCanvasAcceleration"), [setEnableAccelerated2dCanvas]("GI.WebKit2.Objects.Settings#g:method:setEnableAccelerated2dCanvas"), [setEnableBackForwardNavigationGestures]("GI.WebKit2.Objects.Settings#g:method:setEnableBackForwardNavigationGestures"), [setEnableCaretBrowsing]("GI.WebKit2.Objects.Settings#g:method:setEnableCaretBrowsing"), [setEnableDeveloperExtras]("GI.WebKit2.Objects.Settings#g:method:setEnableDeveloperExtras"), [setEnableDnsPrefetching]("GI.WebKit2.Objects.Settings#g:method:setEnableDnsPrefetching"), [setEnableEncryptedMedia]("GI.WebKit2.Objects.Settings#g:method:setEnableEncryptedMedia"), [setEnableFrameFlattening]("GI.WebKit2.Objects.Settings#g:method:setEnableFrameFlattening"), [setEnableFullscreen]("GI.WebKit2.Objects.Settings#g:method:setEnableFullscreen"), [setEnableHtml5Database]("GI.WebKit2.Objects.Settings#g:method:setEnableHtml5Database"), [setEnableHtml5LocalStorage]("GI.WebKit2.Objects.Settings#g:method:setEnableHtml5LocalStorage"), [setEnableHyperlinkAuditing]("GI.WebKit2.Objects.Settings#g:method:setEnableHyperlinkAuditing"), [setEnableJava]("GI.WebKit2.Objects.Settings#g:method:setEnableJava"), [setEnableJavascript]("GI.WebKit2.Objects.Settings#g:method:setEnableJavascript"), [setEnableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:method:setEnableJavascriptMarkup"), [setEnableMedia]("GI.WebKit2.Objects.Settings#g:method:setEnableMedia"), [setEnableMediaCapabilities]("GI.WebKit2.Objects.Settings#g:method:setEnableMediaCapabilities"), [setEnableMediaStream]("GI.WebKit2.Objects.Settings#g:method:setEnableMediaStream"), [setEnableMediasource]("GI.WebKit2.Objects.Settings#g:method:setEnableMediasource"), [setEnableMockCaptureDevices]("GI.WebKit2.Objects.Settings#g:method:setEnableMockCaptureDevices"), [setEnableOfflineWebApplicationCache]("GI.WebKit2.Objects.Settings#g:method:setEnableOfflineWebApplicationCache"), [setEnablePageCache]("GI.WebKit2.Objects.Settings#g:method:setEnablePageCache"), [setEnablePlugins]("GI.WebKit2.Objects.Settings#g:method:setEnablePlugins"), [setEnablePrivateBrowsing]("GI.WebKit2.Objects.Settings#g:method:setEnablePrivateBrowsing"), [setEnableResizableTextAreas]("GI.WebKit2.Objects.Settings#g:method:setEnableResizableTextAreas"), [setEnableSiteSpecificQuirks]("GI.WebKit2.Objects.Settings#g:method:setEnableSiteSpecificQuirks"), [setEnableSmoothScrolling]("GI.WebKit2.Objects.Settings#g:method:setEnableSmoothScrolling"), [setEnableSpatialNavigation]("GI.WebKit2.Objects.Settings#g:method:setEnableSpatialNavigation"), [setEnableTabsToLinks]("GI.WebKit2.Objects.Settings#g:method:setEnableTabsToLinks"), [setEnableWebaudio]("GI.WebKit2.Objects.Settings#g:method:setEnableWebaudio"), [setEnableWebgl]("GI.WebKit2.Objects.Settings#g:method:setEnableWebgl"), [setEnableWebrtc]("GI.WebKit2.Objects.Settings#g:method:setEnableWebrtc"), [setEnableWriteConsoleMessagesToStdout]("GI.WebKit2.Objects.Settings#g:method:setEnableWriteConsoleMessagesToStdout"), [setEnableXssAuditor]("GI.WebKit2.Objects.Settings#g:method:setEnableXssAuditor"), [setFantasyFontFamily]("GI.WebKit2.Objects.Settings#g:method:setFantasyFontFamily"), [setFeatureEnabled]("GI.WebKit2.Objects.Settings#g:method:setFeatureEnabled"), [setHardwareAccelerationPolicy]("GI.WebKit2.Objects.Settings#g:method:setHardwareAccelerationPolicy"), [setJavascriptCanAccessClipboard]("GI.WebKit2.Objects.Settings#g:method:setJavascriptCanAccessClipboard"), [setJavascriptCanOpenWindowsAutomatically]("GI.WebKit2.Objects.Settings#g:method:setJavascriptCanOpenWindowsAutomatically"), [setLoadIconsIgnoringImageLoadSetting]("GI.WebKit2.Objects.Settings#g:method:setLoadIconsIgnoringImageLoadSetting"), [setMathFontFamily]("GI.WebKit2.Objects.Settings#g:method:setMathFontFamily"), [setMediaContentTypesRequiringHardwareSupport]("GI.WebKit2.Objects.Settings#g:method:setMediaContentTypesRequiringHardwareSupport"), [setMediaPlaybackAllowsInline]("GI.WebKit2.Objects.Settings#g:method:setMediaPlaybackAllowsInline"), [setMediaPlaybackRequiresUserGesture]("GI.WebKit2.Objects.Settings#g:method:setMediaPlaybackRequiresUserGesture"), [setMinimumFontSize]("GI.WebKit2.Objects.Settings#g:method:setMinimumFontSize"), [setMonospaceFontFamily]("GI.WebKit2.Objects.Settings#g:method:setMonospaceFontFamily"), [setPictographFontFamily]("GI.WebKit2.Objects.Settings#g:method:setPictographFontFamily"), [setPrintBackgrounds]("GI.WebKit2.Objects.Settings#g:method:setPrintBackgrounds"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setSansSerifFontFamily]("GI.WebKit2.Objects.Settings#g:method:setSansSerifFontFamily"), [setSerifFontFamily]("GI.WebKit2.Objects.Settings#g:method:setSerifFontFamily"), [setUserAgent]("GI.WebKit2.Objects.Settings#g:method:setUserAgent"), [setUserAgentWithApplicationDetails]("GI.WebKit2.Objects.Settings#g:method:setUserAgentWithApplicationDetails"), [setWebrtcUdpPortsRange]("GI.WebKit2.Objects.Settings#g:method:setWebrtcUdpPortsRange"), [setZoomTextOnly]("GI.WebKit2.Objects.Settings#g:method:setZoomTextOnly").

#if defined(ENABLE_OVERLOADING)
    ResolveSettingsMethod                   ,
#endif

-- ** applyFromKeyFile #method:applyFromKeyFile#

#if defined(ENABLE_OVERLOADING)
    SettingsApplyFromKeyFileMethodInfo      ,
#endif
    settingsApplyFromKeyFile                ,


-- ** fontSizeToPixels #method:fontSizeToPixels#

    settingsFontSizeToPixels                ,


-- ** fontSizeToPoints #method:fontSizeToPoints#

    settingsFontSizeToPoints                ,


-- ** getAllFeatures #method:getAllFeatures#

    settingsGetAllFeatures                  ,


-- ** getAllowFileAccessFromFileUrls #method:getAllowFileAccessFromFileUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsGetAllowFileAccessFromFileUrlsMethodInfo,
#endif
    settingsGetAllowFileAccessFromFileUrls  ,


-- ** getAllowModalDialogs #method:getAllowModalDialogs#

#if defined(ENABLE_OVERLOADING)
    SettingsGetAllowModalDialogsMethodInfo  ,
#endif
    settingsGetAllowModalDialogs            ,


-- ** getAllowTopNavigationToDataUrls #method:getAllowTopNavigationToDataUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsGetAllowTopNavigationToDataUrlsMethodInfo,
#endif
    settingsGetAllowTopNavigationToDataUrls ,


-- ** getAllowUniversalAccessFromFileUrls #method:getAllowUniversalAccessFromFileUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo,
#endif
    settingsGetAllowUniversalAccessFromFileUrls,


-- ** getAutoLoadImages #method:getAutoLoadImages#

#if defined(ENABLE_OVERLOADING)
    SettingsGetAutoLoadImagesMethodInfo     ,
#endif
    settingsGetAutoLoadImages               ,


-- ** getCursiveFontFamily #method:getCursiveFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetCursiveFontFamilyMethodInfo  ,
#endif
    settingsGetCursiveFontFamily            ,


-- ** getDefaultCharset #method:getDefaultCharset#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDefaultCharsetMethodInfo     ,
#endif
    settingsGetDefaultCharset               ,


-- ** getDefaultFontFamily #method:getDefaultFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDefaultFontFamilyMethodInfo  ,
#endif
    settingsGetDefaultFontFamily            ,


-- ** getDefaultFontSize #method:getDefaultFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDefaultFontSizeMethodInfo    ,
#endif
    settingsGetDefaultFontSize              ,


-- ** getDefaultMonospaceFontSize #method:getDefaultMonospaceFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDefaultMonospaceFontSizeMethodInfo,
#endif
    settingsGetDefaultMonospaceFontSize     ,


-- ** getDevelopmentFeatures #method:getDevelopmentFeatures#

    settingsGetDevelopmentFeatures          ,


-- ** getDisableWebSecurity #method:getDisableWebSecurity#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDisableWebSecurityMethodInfo ,
#endif
    settingsGetDisableWebSecurity           ,


-- ** getDrawCompositingIndicators #method:getDrawCompositingIndicators#

#if defined(ENABLE_OVERLOADING)
    SettingsGetDrawCompositingIndicatorsMethodInfo,
#endif
    settingsGetDrawCompositingIndicators    ,


-- ** getEnable2dCanvasAcceleration #method:getEnable2dCanvasAcceleration#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnable2dCanvasAccelerationMethodInfo,
#endif
    settingsGetEnable2dCanvasAcceleration   ,


-- ** getEnableAccelerated2dCanvas #method:getEnableAccelerated2dCanvas#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableAccelerated2dCanvasMethodInfo,
#endif
    settingsGetEnableAccelerated2dCanvas    ,


-- ** getEnableBackForwardNavigationGestures #method:getEnableBackForwardNavigationGestures#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableBackForwardNavigationGesturesMethodInfo,
#endif
    settingsGetEnableBackForwardNavigationGestures,


-- ** getEnableCaretBrowsing #method:getEnableCaretBrowsing#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableCaretBrowsingMethodInfo,
#endif
    settingsGetEnableCaretBrowsing          ,


-- ** getEnableDeveloperExtras #method:getEnableDeveloperExtras#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableDeveloperExtrasMethodInfo,
#endif
    settingsGetEnableDeveloperExtras        ,


-- ** getEnableDnsPrefetching #method:getEnableDnsPrefetching#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableDnsPrefetchingMethodInfo,
#endif
    settingsGetEnableDnsPrefetching         ,


-- ** getEnableEncryptedMedia #method:getEnableEncryptedMedia#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableEncryptedMediaMethodInfo,
#endif
    settingsGetEnableEncryptedMedia         ,


-- ** getEnableFrameFlattening #method:getEnableFrameFlattening#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableFrameFlatteningMethodInfo,
#endif
    settingsGetEnableFrameFlattening        ,


-- ** getEnableFullscreen #method:getEnableFullscreen#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableFullscreenMethodInfo   ,
#endif
    settingsGetEnableFullscreen             ,


-- ** getEnableHtml5Database #method:getEnableHtml5Database#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableHtml5DatabaseMethodInfo,
#endif
    settingsGetEnableHtml5Database          ,


-- ** getEnableHtml5LocalStorage #method:getEnableHtml5LocalStorage#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableHtml5LocalStorageMethodInfo,
#endif
    settingsGetEnableHtml5LocalStorage      ,


-- ** getEnableHyperlinkAuditing #method:getEnableHyperlinkAuditing#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableHyperlinkAuditingMethodInfo,
#endif
    settingsGetEnableHyperlinkAuditing      ,


-- ** getEnableJava #method:getEnableJava#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableJavaMethodInfo         ,
#endif
    settingsGetEnableJava                   ,


-- ** getEnableJavascript #method:getEnableJavascript#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableJavascriptMethodInfo   ,
#endif
    settingsGetEnableJavascript             ,


-- ** getEnableJavascriptMarkup #method:getEnableJavascriptMarkup#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableJavascriptMarkupMethodInfo,
#endif
    settingsGetEnableJavascriptMarkup       ,


-- ** getEnableMedia #method:getEnableMedia#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableMediaMethodInfo        ,
#endif
    settingsGetEnableMedia                  ,


-- ** getEnableMediaCapabilities #method:getEnableMediaCapabilities#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableMediaCapabilitiesMethodInfo,
#endif
    settingsGetEnableMediaCapabilities      ,


-- ** getEnableMediaStream #method:getEnableMediaStream#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableMediaStreamMethodInfo  ,
#endif
    settingsGetEnableMediaStream            ,


-- ** getEnableMediasource #method:getEnableMediasource#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableMediasourceMethodInfo  ,
#endif
    settingsGetEnableMediasource            ,


-- ** getEnableMockCaptureDevices #method:getEnableMockCaptureDevices#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableMockCaptureDevicesMethodInfo,
#endif
    settingsGetEnableMockCaptureDevices     ,


-- ** getEnableOfflineWebApplicationCache #method:getEnableOfflineWebApplicationCache#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableOfflineWebApplicationCacheMethodInfo,
#endif
    settingsGetEnableOfflineWebApplicationCache,


-- ** getEnablePageCache #method:getEnablePageCache#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnablePageCacheMethodInfo    ,
#endif
    settingsGetEnablePageCache              ,


-- ** getEnablePlugins #method:getEnablePlugins#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnablePluginsMethodInfo      ,
#endif
    settingsGetEnablePlugins                ,


-- ** getEnablePrivateBrowsing #method:getEnablePrivateBrowsing#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnablePrivateBrowsingMethodInfo,
#endif
    settingsGetEnablePrivateBrowsing        ,


-- ** getEnableResizableTextAreas #method:getEnableResizableTextAreas#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableResizableTextAreasMethodInfo,
#endif
    settingsGetEnableResizableTextAreas     ,


-- ** getEnableSiteSpecificQuirks #method:getEnableSiteSpecificQuirks#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableSiteSpecificQuirksMethodInfo,
#endif
    settingsGetEnableSiteSpecificQuirks     ,


-- ** getEnableSmoothScrolling #method:getEnableSmoothScrolling#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableSmoothScrollingMethodInfo,
#endif
    settingsGetEnableSmoothScrolling        ,


-- ** getEnableSpatialNavigation #method:getEnableSpatialNavigation#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableSpatialNavigationMethodInfo,
#endif
    settingsGetEnableSpatialNavigation      ,


-- ** getEnableTabsToLinks #method:getEnableTabsToLinks#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableTabsToLinksMethodInfo  ,
#endif
    settingsGetEnableTabsToLinks            ,


-- ** getEnableWebaudio #method:getEnableWebaudio#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableWebaudioMethodInfo     ,
#endif
    settingsGetEnableWebaudio               ,


-- ** getEnableWebgl #method:getEnableWebgl#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableWebglMethodInfo        ,
#endif
    settingsGetEnableWebgl                  ,


-- ** getEnableWebrtc #method:getEnableWebrtc#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableWebrtcMethodInfo       ,
#endif
    settingsGetEnableWebrtc                 ,


-- ** getEnableWriteConsoleMessagesToStdout #method:getEnableWriteConsoleMessagesToStdout#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo,
#endif
    settingsGetEnableWriteConsoleMessagesToStdout,


-- ** getEnableXssAuditor #method:getEnableXssAuditor#

#if defined(ENABLE_OVERLOADING)
    SettingsGetEnableXssAuditorMethodInfo   ,
#endif
    settingsGetEnableXssAuditor             ,


-- ** getExperimentalFeatures #method:getExperimentalFeatures#

    settingsGetExperimentalFeatures         ,


-- ** getFantasyFontFamily #method:getFantasyFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetFantasyFontFamilyMethodInfo  ,
#endif
    settingsGetFantasyFontFamily            ,


-- ** getFeatureEnabled #method:getFeatureEnabled#

#if defined(ENABLE_OVERLOADING)
    SettingsGetFeatureEnabledMethodInfo     ,
#endif
    settingsGetFeatureEnabled               ,


-- ** getHardwareAccelerationPolicy #method:getHardwareAccelerationPolicy#

#if defined(ENABLE_OVERLOADING)
    SettingsGetHardwareAccelerationPolicyMethodInfo,
#endif
    settingsGetHardwareAccelerationPolicy   ,


-- ** getJavascriptCanAccessClipboard #method:getJavascriptCanAccessClipboard#

#if defined(ENABLE_OVERLOADING)
    SettingsGetJavascriptCanAccessClipboardMethodInfo,
#endif
    settingsGetJavascriptCanAccessClipboard ,


-- ** getJavascriptCanOpenWindowsAutomatically #method:getJavascriptCanOpenWindowsAutomatically#

#if defined(ENABLE_OVERLOADING)
    SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo,
#endif
    settingsGetJavascriptCanOpenWindowsAutomatically,


-- ** getLoadIconsIgnoringImageLoadSetting #method:getLoadIconsIgnoringImageLoadSetting#

#if defined(ENABLE_OVERLOADING)
    SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo,
#endif
    settingsGetLoadIconsIgnoringImageLoadSetting,


-- ** getMathFontFamily #method:getMathFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMathFontFamilyMethodInfo     ,
#endif
    settingsGetMathFontFamily               ,


-- ** getMediaContentTypesRequiringHardwareSupport #method:getMediaContentTypesRequiringHardwareSupport#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo,
#endif
    settingsGetMediaContentTypesRequiringHardwareSupport,


-- ** getMediaPlaybackAllowsInline #method:getMediaPlaybackAllowsInline#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMediaPlaybackAllowsInlineMethodInfo,
#endif
    settingsGetMediaPlaybackAllowsInline    ,


-- ** getMediaPlaybackRequiresUserGesture #method:getMediaPlaybackRequiresUserGesture#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMediaPlaybackRequiresUserGestureMethodInfo,
#endif
    settingsGetMediaPlaybackRequiresUserGesture,


-- ** getMinimumFontSize #method:getMinimumFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMinimumFontSizeMethodInfo    ,
#endif
    settingsGetMinimumFontSize              ,


-- ** getMonospaceFontFamily #method:getMonospaceFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetMonospaceFontFamilyMethodInfo,
#endif
    settingsGetMonospaceFontFamily          ,


-- ** getPictographFontFamily #method:getPictographFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetPictographFontFamilyMethodInfo,
#endif
    settingsGetPictographFontFamily         ,


-- ** getPrintBackgrounds #method:getPrintBackgrounds#

#if defined(ENABLE_OVERLOADING)
    SettingsGetPrintBackgroundsMethodInfo   ,
#endif
    settingsGetPrintBackgrounds             ,


-- ** getSansSerifFontFamily #method:getSansSerifFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetSansSerifFontFamilyMethodInfo,
#endif
    settingsGetSansSerifFontFamily          ,


-- ** getSerifFontFamily #method:getSerifFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsGetSerifFontFamilyMethodInfo    ,
#endif
    settingsGetSerifFontFamily              ,


-- ** getUserAgent #method:getUserAgent#

#if defined(ENABLE_OVERLOADING)
    SettingsGetUserAgentMethodInfo          ,
#endif
    settingsGetUserAgent                    ,


-- ** getWebrtcUdpPortsRange #method:getWebrtcUdpPortsRange#

#if defined(ENABLE_OVERLOADING)
    SettingsGetWebrtcUdpPortsRangeMethodInfo,
#endif
    settingsGetWebrtcUdpPortsRange          ,


-- ** getZoomTextOnly #method:getZoomTextOnly#

#if defined(ENABLE_OVERLOADING)
    SettingsGetZoomTextOnlyMethodInfo       ,
#endif
    settingsGetZoomTextOnly                 ,


-- ** new #method:new#

    settingsNew                             ,


-- ** setAllowFileAccessFromFileUrls #method:setAllowFileAccessFromFileUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsSetAllowFileAccessFromFileUrlsMethodInfo,
#endif
    settingsSetAllowFileAccessFromFileUrls  ,


-- ** setAllowModalDialogs #method:setAllowModalDialogs#

#if defined(ENABLE_OVERLOADING)
    SettingsSetAllowModalDialogsMethodInfo  ,
#endif
    settingsSetAllowModalDialogs            ,


-- ** setAllowTopNavigationToDataUrls #method:setAllowTopNavigationToDataUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsSetAllowTopNavigationToDataUrlsMethodInfo,
#endif
    settingsSetAllowTopNavigationToDataUrls ,


-- ** setAllowUniversalAccessFromFileUrls #method:setAllowUniversalAccessFromFileUrls#

#if defined(ENABLE_OVERLOADING)
    SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo,
#endif
    settingsSetAllowUniversalAccessFromFileUrls,


-- ** setAutoLoadImages #method:setAutoLoadImages#

#if defined(ENABLE_OVERLOADING)
    SettingsSetAutoLoadImagesMethodInfo     ,
#endif
    settingsSetAutoLoadImages               ,


-- ** setCursiveFontFamily #method:setCursiveFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetCursiveFontFamilyMethodInfo  ,
#endif
    settingsSetCursiveFontFamily            ,


-- ** setDefaultCharset #method:setDefaultCharset#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDefaultCharsetMethodInfo     ,
#endif
    settingsSetDefaultCharset               ,


-- ** setDefaultFontFamily #method:setDefaultFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDefaultFontFamilyMethodInfo  ,
#endif
    settingsSetDefaultFontFamily            ,


-- ** setDefaultFontSize #method:setDefaultFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDefaultFontSizeMethodInfo    ,
#endif
    settingsSetDefaultFontSize              ,


-- ** setDefaultMonospaceFontSize #method:setDefaultMonospaceFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDefaultMonospaceFontSizeMethodInfo,
#endif
    settingsSetDefaultMonospaceFontSize     ,


-- ** setDisableWebSecurity #method:setDisableWebSecurity#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDisableWebSecurityMethodInfo ,
#endif
    settingsSetDisableWebSecurity           ,


-- ** setDrawCompositingIndicators #method:setDrawCompositingIndicators#

#if defined(ENABLE_OVERLOADING)
    SettingsSetDrawCompositingIndicatorsMethodInfo,
#endif
    settingsSetDrawCompositingIndicators    ,


-- ** setEnable2dCanvasAcceleration #method:setEnable2dCanvasAcceleration#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnable2dCanvasAccelerationMethodInfo,
#endif
    settingsSetEnable2dCanvasAcceleration   ,


-- ** setEnableAccelerated2dCanvas #method:setEnableAccelerated2dCanvas#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableAccelerated2dCanvasMethodInfo,
#endif
    settingsSetEnableAccelerated2dCanvas    ,


-- ** setEnableBackForwardNavigationGestures #method:setEnableBackForwardNavigationGestures#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableBackForwardNavigationGesturesMethodInfo,
#endif
    settingsSetEnableBackForwardNavigationGestures,


-- ** setEnableCaretBrowsing #method:setEnableCaretBrowsing#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableCaretBrowsingMethodInfo,
#endif
    settingsSetEnableCaretBrowsing          ,


-- ** setEnableDeveloperExtras #method:setEnableDeveloperExtras#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableDeveloperExtrasMethodInfo,
#endif
    settingsSetEnableDeveloperExtras        ,


-- ** setEnableDnsPrefetching #method:setEnableDnsPrefetching#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableDnsPrefetchingMethodInfo,
#endif
    settingsSetEnableDnsPrefetching         ,


-- ** setEnableEncryptedMedia #method:setEnableEncryptedMedia#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableEncryptedMediaMethodInfo,
#endif
    settingsSetEnableEncryptedMedia         ,


-- ** setEnableFrameFlattening #method:setEnableFrameFlattening#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableFrameFlatteningMethodInfo,
#endif
    settingsSetEnableFrameFlattening        ,


-- ** setEnableFullscreen #method:setEnableFullscreen#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableFullscreenMethodInfo   ,
#endif
    settingsSetEnableFullscreen             ,


-- ** setEnableHtml5Database #method:setEnableHtml5Database#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableHtml5DatabaseMethodInfo,
#endif
    settingsSetEnableHtml5Database          ,


-- ** setEnableHtml5LocalStorage #method:setEnableHtml5LocalStorage#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableHtml5LocalStorageMethodInfo,
#endif
    settingsSetEnableHtml5LocalStorage      ,


-- ** setEnableHyperlinkAuditing #method:setEnableHyperlinkAuditing#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableHyperlinkAuditingMethodInfo,
#endif
    settingsSetEnableHyperlinkAuditing      ,


-- ** setEnableJava #method:setEnableJava#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableJavaMethodInfo         ,
#endif
    settingsSetEnableJava                   ,


-- ** setEnableJavascript #method:setEnableJavascript#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableJavascriptMethodInfo   ,
#endif
    settingsSetEnableJavascript             ,


-- ** setEnableJavascriptMarkup #method:setEnableJavascriptMarkup#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableJavascriptMarkupMethodInfo,
#endif
    settingsSetEnableJavascriptMarkup       ,


-- ** setEnableMedia #method:setEnableMedia#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableMediaMethodInfo        ,
#endif
    settingsSetEnableMedia                  ,


-- ** setEnableMediaCapabilities #method:setEnableMediaCapabilities#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableMediaCapabilitiesMethodInfo,
#endif
    settingsSetEnableMediaCapabilities      ,


-- ** setEnableMediaStream #method:setEnableMediaStream#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableMediaStreamMethodInfo  ,
#endif
    settingsSetEnableMediaStream            ,


-- ** setEnableMediasource #method:setEnableMediasource#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableMediasourceMethodInfo  ,
#endif
    settingsSetEnableMediasource            ,


-- ** setEnableMockCaptureDevices #method:setEnableMockCaptureDevices#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableMockCaptureDevicesMethodInfo,
#endif
    settingsSetEnableMockCaptureDevices     ,


-- ** setEnableOfflineWebApplicationCache #method:setEnableOfflineWebApplicationCache#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableOfflineWebApplicationCacheMethodInfo,
#endif
    settingsSetEnableOfflineWebApplicationCache,


-- ** setEnablePageCache #method:setEnablePageCache#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnablePageCacheMethodInfo    ,
#endif
    settingsSetEnablePageCache              ,


-- ** setEnablePlugins #method:setEnablePlugins#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnablePluginsMethodInfo      ,
#endif
    settingsSetEnablePlugins                ,


-- ** setEnablePrivateBrowsing #method:setEnablePrivateBrowsing#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnablePrivateBrowsingMethodInfo,
#endif
    settingsSetEnablePrivateBrowsing        ,


-- ** setEnableResizableTextAreas #method:setEnableResizableTextAreas#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableResizableTextAreasMethodInfo,
#endif
    settingsSetEnableResizableTextAreas     ,


-- ** setEnableSiteSpecificQuirks #method:setEnableSiteSpecificQuirks#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableSiteSpecificQuirksMethodInfo,
#endif
    settingsSetEnableSiteSpecificQuirks     ,


-- ** setEnableSmoothScrolling #method:setEnableSmoothScrolling#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableSmoothScrollingMethodInfo,
#endif
    settingsSetEnableSmoothScrolling        ,


-- ** setEnableSpatialNavigation #method:setEnableSpatialNavigation#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableSpatialNavigationMethodInfo,
#endif
    settingsSetEnableSpatialNavigation      ,


-- ** setEnableTabsToLinks #method:setEnableTabsToLinks#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableTabsToLinksMethodInfo  ,
#endif
    settingsSetEnableTabsToLinks            ,


-- ** setEnableWebaudio #method:setEnableWebaudio#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableWebaudioMethodInfo     ,
#endif
    settingsSetEnableWebaudio               ,


-- ** setEnableWebgl #method:setEnableWebgl#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableWebglMethodInfo        ,
#endif
    settingsSetEnableWebgl                  ,


-- ** setEnableWebrtc #method:setEnableWebrtc#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableWebrtcMethodInfo       ,
#endif
    settingsSetEnableWebrtc                 ,


-- ** setEnableWriteConsoleMessagesToStdout #method:setEnableWriteConsoleMessagesToStdout#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo,
#endif
    settingsSetEnableWriteConsoleMessagesToStdout,


-- ** setEnableXssAuditor #method:setEnableXssAuditor#

#if defined(ENABLE_OVERLOADING)
    SettingsSetEnableXssAuditorMethodInfo   ,
#endif
    settingsSetEnableXssAuditor             ,


-- ** setFantasyFontFamily #method:setFantasyFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetFantasyFontFamilyMethodInfo  ,
#endif
    settingsSetFantasyFontFamily            ,


-- ** setFeatureEnabled #method:setFeatureEnabled#

#if defined(ENABLE_OVERLOADING)
    SettingsSetFeatureEnabledMethodInfo     ,
#endif
    settingsSetFeatureEnabled               ,


-- ** setHardwareAccelerationPolicy #method:setHardwareAccelerationPolicy#

#if defined(ENABLE_OVERLOADING)
    SettingsSetHardwareAccelerationPolicyMethodInfo,
#endif
    settingsSetHardwareAccelerationPolicy   ,


-- ** setJavascriptCanAccessClipboard #method:setJavascriptCanAccessClipboard#

#if defined(ENABLE_OVERLOADING)
    SettingsSetJavascriptCanAccessClipboardMethodInfo,
#endif
    settingsSetJavascriptCanAccessClipboard ,


-- ** setJavascriptCanOpenWindowsAutomatically #method:setJavascriptCanOpenWindowsAutomatically#

#if defined(ENABLE_OVERLOADING)
    SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo,
#endif
    settingsSetJavascriptCanOpenWindowsAutomatically,


-- ** setLoadIconsIgnoringImageLoadSetting #method:setLoadIconsIgnoringImageLoadSetting#

#if defined(ENABLE_OVERLOADING)
    SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo,
#endif
    settingsSetLoadIconsIgnoringImageLoadSetting,


-- ** setMathFontFamily #method:setMathFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMathFontFamilyMethodInfo     ,
#endif
    settingsSetMathFontFamily               ,


-- ** setMediaContentTypesRequiringHardwareSupport #method:setMediaContentTypesRequiringHardwareSupport#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo,
#endif
    settingsSetMediaContentTypesRequiringHardwareSupport,


-- ** setMediaPlaybackAllowsInline #method:setMediaPlaybackAllowsInline#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMediaPlaybackAllowsInlineMethodInfo,
#endif
    settingsSetMediaPlaybackAllowsInline    ,


-- ** setMediaPlaybackRequiresUserGesture #method:setMediaPlaybackRequiresUserGesture#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMediaPlaybackRequiresUserGestureMethodInfo,
#endif
    settingsSetMediaPlaybackRequiresUserGesture,


-- ** setMinimumFontSize #method:setMinimumFontSize#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMinimumFontSizeMethodInfo    ,
#endif
    settingsSetMinimumFontSize              ,


-- ** setMonospaceFontFamily #method:setMonospaceFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetMonospaceFontFamilyMethodInfo,
#endif
    settingsSetMonospaceFontFamily          ,


-- ** setPictographFontFamily #method:setPictographFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetPictographFontFamilyMethodInfo,
#endif
    settingsSetPictographFontFamily         ,


-- ** setPrintBackgrounds #method:setPrintBackgrounds#

#if defined(ENABLE_OVERLOADING)
    SettingsSetPrintBackgroundsMethodInfo   ,
#endif
    settingsSetPrintBackgrounds             ,


-- ** setSansSerifFontFamily #method:setSansSerifFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetSansSerifFontFamilyMethodInfo,
#endif
    settingsSetSansSerifFontFamily          ,


-- ** setSerifFontFamily #method:setSerifFontFamily#

#if defined(ENABLE_OVERLOADING)
    SettingsSetSerifFontFamilyMethodInfo    ,
#endif
    settingsSetSerifFontFamily              ,


-- ** setUserAgent #method:setUserAgent#

#if defined(ENABLE_OVERLOADING)
    SettingsSetUserAgentMethodInfo          ,
#endif
    settingsSetUserAgent                    ,


-- ** setUserAgentWithApplicationDetails #method:setUserAgentWithApplicationDetails#

#if defined(ENABLE_OVERLOADING)
    SettingsSetUserAgentWithApplicationDetailsMethodInfo,
#endif
    settingsSetUserAgentWithApplicationDetails,


-- ** setWebrtcUdpPortsRange #method:setWebrtcUdpPortsRange#

#if defined(ENABLE_OVERLOADING)
    SettingsSetWebrtcUdpPortsRangeMethodInfo,
#endif
    settingsSetWebrtcUdpPortsRange          ,


-- ** setZoomTextOnly #method:setZoomTextOnly#

#if defined(ENABLE_OVERLOADING)
    SettingsSetZoomTextOnlyMethodInfo       ,
#endif
    settingsSetZoomTextOnly                 ,




 -- * Properties


-- ** allowFileAccessFromFileUrls #attr:allowFileAccessFromFileUrls#
-- | Whether file access is allowed from file URLs. By default, when
-- something is loaded in a t'GI.WebKit2.Objects.WebView.WebView' using a file URI, cross
-- origin requests to other file resources are not allowed. This
-- setting allows you to change that behaviour, so that it would be
-- possible to do a XMLHttpRequest of a local file, for example.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    SettingsAllowFileAccessFromFileUrlsPropertyInfo,
#endif
    constructSettingsAllowFileAccessFromFileUrls,
    getSettingsAllowFileAccessFromFileUrls  ,
    setSettingsAllowFileAccessFromFileUrls  ,
#if defined(ENABLE_OVERLOADING)
    settingsAllowFileAccessFromFileUrls     ,
#endif


-- ** allowModalDialogs #attr:allowModalDialogs#
-- | Determine whether it\'s allowed to create and run modal dialogs
-- from a t'GI.WebKit2.Objects.WebView.WebView' through JavaScript with
-- \<function>window.showModalDialog\<\/function>. If it\'s set to
-- 'P.False', the associated t'GI.WebKit2.Objects.WebView.WebView' won\'t be able to create
-- new modal dialogs, so not even the [WebView::create]("GI.WebKit2.Objects.WebView#g:signal:create")
-- signal will be emitted.

#if defined(ENABLE_OVERLOADING)
    SettingsAllowModalDialogsPropertyInfo   ,
#endif
    constructSettingsAllowModalDialogs      ,
    getSettingsAllowModalDialogs            ,
    setSettingsAllowModalDialogs            ,
#if defined(ENABLE_OVERLOADING)
    settingsAllowModalDialogs               ,
#endif


-- ** allowTopNavigationToDataUrls #attr:allowTopNavigationToDataUrls#
-- | Whether or not the top frame is allowed to navigate to data URLs. It is disabled by default
-- due to the risk it poses when loading untrusted URLs, with data URLs being used in scamming
-- and phishing attacks. In contrast, a scenario where it could be enabled could be an app that
-- embeds a WebView and you have control of the pages being show instead of a generic browser.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    SettingsAllowTopNavigationToDataUrlsPropertyInfo,
#endif
    constructSettingsAllowTopNavigationToDataUrls,
    getSettingsAllowTopNavigationToDataUrls ,
    setSettingsAllowTopNavigationToDataUrls ,
#if defined(ENABLE_OVERLOADING)
    settingsAllowTopNavigationToDataUrls    ,
#endif


-- ** allowUniversalAccessFromFileUrls #attr:allowUniversalAccessFromFileUrls#
-- | Whether or not JavaScript running in the context of a file scheme URL
-- should be allowed to access content from any origin.  By default, when
-- something is loaded in a t'GI.WebKit2.Objects.WebView.WebView' using a file scheme URL,
-- access to the local file system and arbitrary local storage is not
-- allowed. This setting allows you to change that behaviour, so that
-- it would be possible to use local storage, for example.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    SettingsAllowUniversalAccessFromFileUrlsPropertyInfo,
#endif
    constructSettingsAllowUniversalAccessFromFileUrls,
    getSettingsAllowUniversalAccessFromFileUrls,
    setSettingsAllowUniversalAccessFromFileUrls,
#if defined(ENABLE_OVERLOADING)
    settingsAllowUniversalAccessFromFileUrls,
#endif


-- ** autoLoadImages #attr:autoLoadImages#
-- | Determines whether images should be automatically loaded or not.
-- On devices where network bandwidth is of concern, it might be
-- useful to turn this property off.

#if defined(ENABLE_OVERLOADING)
    SettingsAutoLoadImagesPropertyInfo      ,
#endif
    constructSettingsAutoLoadImages         ,
    getSettingsAutoLoadImages               ,
    setSettingsAutoLoadImages               ,
#if defined(ENABLE_OVERLOADING)
    settingsAutoLoadImages                  ,
#endif


-- ** cursiveFontFamily #attr:cursiveFontFamily#
-- | The font family used as the default for content using a cursive font.

#if defined(ENABLE_OVERLOADING)
    SettingsCursiveFontFamilyPropertyInfo   ,
#endif
    constructSettingsCursiveFontFamily      ,
    getSettingsCursiveFontFamily            ,
    setSettingsCursiveFontFamily            ,
#if defined(ENABLE_OVERLOADING)
    settingsCursiveFontFamily               ,
#endif


-- ** defaultCharset #attr:defaultCharset#
-- | The default text charset used when interpreting content with an unspecified charset.

#if defined(ENABLE_OVERLOADING)
    SettingsDefaultCharsetPropertyInfo      ,
#endif
    constructSettingsDefaultCharset         ,
    getSettingsDefaultCharset               ,
    setSettingsDefaultCharset               ,
#if defined(ENABLE_OVERLOADING)
    settingsDefaultCharset                  ,
#endif


-- ** defaultFontFamily #attr:defaultFontFamily#
-- | The font family to use as the default for content that does not specify a font.

#if defined(ENABLE_OVERLOADING)
    SettingsDefaultFontFamilyPropertyInfo   ,
#endif
    constructSettingsDefaultFontFamily      ,
    getSettingsDefaultFontFamily            ,
    setSettingsDefaultFontFamily            ,
#if defined(ENABLE_OVERLOADING)
    settingsDefaultFontFamily               ,
#endif


-- ** defaultFontSize #attr:defaultFontSize#
-- | The default font size in pixels to use for content displayed if
-- no font size is specified.

#if defined(ENABLE_OVERLOADING)
    SettingsDefaultFontSizePropertyInfo     ,
#endif
    constructSettingsDefaultFontSize        ,
    getSettingsDefaultFontSize              ,
    setSettingsDefaultFontSize              ,
#if defined(ENABLE_OVERLOADING)
    settingsDefaultFontSize                 ,
#endif


-- ** defaultMonospaceFontSize #attr:defaultMonospaceFontSize#
-- | The default font size in pixels to use for content displayed in
-- monospace font if no font size is specified.

#if defined(ENABLE_OVERLOADING)
    SettingsDefaultMonospaceFontSizePropertyInfo,
#endif
    constructSettingsDefaultMonospaceFontSize,
    getSettingsDefaultMonospaceFontSize     ,
    setSettingsDefaultMonospaceFontSize     ,
#if defined(ENABLE_OVERLOADING)
    settingsDefaultMonospaceFontSize        ,
#endif


-- ** disableWebSecurity #attr:disableWebSecurity#
-- | Enable or disable support for Web Security on pages.
-- 
-- This setting disables the same-origin policy, allowing every website full control over
-- all other websites. This is for use in special environments where you wish to disable
-- all security and allow websites to hack each other. It is impossible to use this setting
-- securely.
-- 
-- /Since: 2.40/

#if defined(ENABLE_OVERLOADING)
    SettingsDisableWebSecurityPropertyInfo  ,
#endif
    constructSettingsDisableWebSecurity     ,
    getSettingsDisableWebSecurity           ,
    setSettingsDisableWebSecurity           ,
#if defined(ENABLE_OVERLOADING)
    settingsDisableWebSecurity              ,
#endif


-- ** drawCompositingIndicators #attr:drawCompositingIndicators#
-- | Whether to draw compositing borders and repaint counters on layers drawn
-- with accelerated compositing. This is useful for debugging issues related
-- to web content that is composited with the GPU.

#if defined(ENABLE_OVERLOADING)
    SettingsDrawCompositingIndicatorsPropertyInfo,
#endif
    constructSettingsDrawCompositingIndicators,
    getSettingsDrawCompositingIndicators    ,
    setSettingsDrawCompositingIndicators    ,
#if defined(ENABLE_OVERLOADING)
    settingsDrawCompositingIndicators       ,
#endif


-- ** enable2dCanvasAcceleration #attr:enable2dCanvasAcceleration#
-- | Enable or disable 2D canvas acceleration.
-- If this setting is enabled, the 2D canvas will be accelerated even if Skia CPU
-- is used for rendering. However, the canvas can be unaccelerated even when this setting
-- is enabled, for other reasons like its size or when willReadFrequently property is used.
-- 
-- /Since: 2.46/

#if defined(ENABLE_OVERLOADING)
    SettingsEnable2dCanvasAccelerationPropertyInfo,
#endif
    constructSettingsEnable2dCanvasAcceleration,
    getSettingsEnable2dCanvasAcceleration   ,
    setSettingsEnable2dCanvasAcceleration   ,
#if defined(ENABLE_OVERLOADING)
    settingsEnable2dCanvasAcceleration      ,
#endif


-- ** enableAccelerated2dCanvas #attr:enableAccelerated2dCanvas#
-- | Enable or disable accelerated 2D canvas. Accelerated 2D canvas is only available
-- if WebKit was compiled with a version of Cairo including the unstable CairoGL API.
-- When accelerated 2D canvas is enabled, WebKit may render some 2D canvas content
-- using hardware accelerated drawing operations.
-- 
-- /Since: 2.2/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableAccelerated2dCanvasPropertyInfo,
#endif
    constructSettingsEnableAccelerated2dCanvas,
    getSettingsEnableAccelerated2dCanvas    ,
    setSettingsEnableAccelerated2dCanvas    ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableAccelerated2dCanvas       ,
#endif


-- ** enableBackForwardNavigationGestures #attr:enableBackForwardNavigationGestures#
-- | Enable or disable horizontal swipe gesture for back-forward navigation.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableBackForwardNavigationGesturesPropertyInfo,
#endif
    constructSettingsEnableBackForwardNavigationGestures,
    getSettingsEnableBackForwardNavigationGestures,
    setSettingsEnableBackForwardNavigationGestures,
#if defined(ENABLE_OVERLOADING)
    settingsEnableBackForwardNavigationGestures,
#endif


-- ** enableCaretBrowsing #attr:enableCaretBrowsing#
-- | Whether to enable accessibility enhanced keyboard navigation.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableCaretBrowsingPropertyInfo ,
#endif
    constructSettingsEnableCaretBrowsing    ,
    getSettingsEnableCaretBrowsing          ,
    setSettingsEnableCaretBrowsing          ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableCaretBrowsing             ,
#endif


-- ** enableDeveloperExtras #attr:enableDeveloperExtras#
-- | Determines whether or not developer tools, such as the Web Inspector, are enabled.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableDeveloperExtrasPropertyInfo,
#endif
    constructSettingsEnableDeveloperExtras  ,
    getSettingsEnableDeveloperExtras        ,
    setSettingsEnableDeveloperExtras        ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableDeveloperExtras           ,
#endif


-- ** enableDnsPrefetching #attr:enableDnsPrefetching#
-- | Determines whether or not to prefetch domain names. DNS prefetching attempts
-- to resolve domain names before a user tries to follow a link.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableDnsPrefetchingPropertyInfo,
#endif
    constructSettingsEnableDnsPrefetching   ,
    getSettingsEnableDnsPrefetching         ,
    setSettingsEnableDnsPrefetching         ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableDnsPrefetching            ,
#endif


-- ** enableEncryptedMedia #attr:enableEncryptedMedia#
-- | Enable or disable support for Encrypted Media API on pages.
-- EncryptedMedia is an experimental JavaScript API for playing encrypted media in HTML.
-- This property will only work as intended if the EncryptedMedia feature is enabled at build time
-- with the ENABLE_ENCRYPTED_MEDIA flag.
-- 
-- See https:\/\/www.w3.org\/TR\/encrypted-media\/
-- 
-- /Since: 2.20/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableEncryptedMediaPropertyInfo,
#endif
    constructSettingsEnableEncryptedMedia   ,
    getSettingsEnableEncryptedMedia         ,
    setSettingsEnableEncryptedMedia         ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableEncryptedMedia            ,
#endif


-- ** enableFrameFlattening #attr:enableFrameFlattening#
-- | Frame flattening is no longer supported. This property does nothing.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableFrameFlatteningPropertyInfo,
#endif
    constructSettingsEnableFrameFlattening  ,
    getSettingsEnableFrameFlattening        ,
    setSettingsEnableFrameFlattening        ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableFrameFlattening           ,
#endif


-- ** enableFullscreen #attr:enableFullscreen#
-- | Whether to enable the Javascript Fullscreen API. The API
-- allows any HTML element to request fullscreen display. See also
-- the current draft of the spec:
-- http:\/\/www.w3.org\/TR\/fullscreen\/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableFullscreenPropertyInfo    ,
#endif
    constructSettingsEnableFullscreen       ,
    getSettingsEnableFullscreen             ,
    setSettingsEnableFullscreen             ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableFullscreen                ,
#endif


-- ** enableHtml5Database #attr:enableHtml5Database#
-- | Whether to enable HTML5 client-side SQL database support (IndexedDB).

#if defined(ENABLE_OVERLOADING)
    SettingsEnableHtml5DatabasePropertyInfo ,
#endif
    constructSettingsEnableHtml5Database    ,
    getSettingsEnableHtml5Database          ,
    setSettingsEnableHtml5Database          ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableHtml5Database             ,
#endif


-- ** enableHtml5LocalStorage #attr:enableHtml5LocalStorage#
-- | Whether to enable HTML5 local storage support. Local storage provides
-- simple synchronous storage access.
-- 
-- HTML5 local storage specification is available at
-- http:\/\/dev.w3.org\/html5\/webstorage\/.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableHtml5LocalStoragePropertyInfo,
#endif
    constructSettingsEnableHtml5LocalStorage,
    getSettingsEnableHtml5LocalStorage      ,
    setSettingsEnableHtml5LocalStorage      ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableHtml5LocalStorage         ,
#endif


-- ** enableHyperlinkAuditing #attr:enableHyperlinkAuditing#
-- | Determines whether or not hyperlink auditing is enabled.
-- 
-- The hyperlink auditing specification is available at
-- http:\/\/www.whatwg.org\/specs\/web-apps\/current-work\/multipage\/links.html@/hyperlink/@-auditing.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableHyperlinkAuditingPropertyInfo,
#endif
    constructSettingsEnableHyperlinkAuditing,
    getSettingsEnableHyperlinkAuditing      ,
    setSettingsEnableHyperlinkAuditing      ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableHyperlinkAuditing         ,
#endif


-- ** enableJava #attr:enableJava#
-- | Determines whether or not Java is enabled on the page.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableJavaPropertyInfo          ,
#endif
    constructSettingsEnableJava             ,
    getSettingsEnableJava                   ,
    setSettingsEnableJava                   ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableJava                      ,
#endif


-- ** enableJavascript #attr:enableJavascript#
-- | Determines whether or not JavaScript executes within a page.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableJavascriptPropertyInfo    ,
#endif
    constructSettingsEnableJavascript       ,
    getSettingsEnableJavascript             ,
    setSettingsEnableJavascript             ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableJavascript                ,
#endif


-- ** enableJavascriptMarkup #attr:enableJavascriptMarkup#
-- | Determines whether or not JavaScript markup is allowed in document. When this setting is disabled,
-- all JavaScript-related elements and attributes are removed from the document during parsing. Note that
-- executing JavaScript is still allowed if [Settings:enableJavascript]("GI.WebKit2.Objects.Settings#g:attr:enableJavascript") is 'P.True'.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableJavascriptMarkupPropertyInfo,
#endif
    constructSettingsEnableJavascriptMarkup ,
    getSettingsEnableJavascriptMarkup       ,
    setSettingsEnableJavascriptMarkup       ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableJavascriptMarkup          ,
#endif


-- ** enableMedia #attr:enableMedia#
-- | Enable or disable support for media playback on pages. This setting is enabled by
-- default. Disabling it means @\<audio>@, @\<track>@ and @\<video>@ elements will have
-- playback support disabled.
-- 
-- /Since: 2.26/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableMediaPropertyInfo         ,
#endif
    constructSettingsEnableMedia            ,
    getSettingsEnableMedia                  ,
    setSettingsEnableMedia                  ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableMedia                     ,
#endif


-- ** enableMediaCapabilities #attr:enableMediaCapabilities#
-- | Enable or disable support for MediaCapabilities on pages. This
-- specification intends to provide APIs to allow websites to make an optimal
-- decision when picking media content for the user. The APIs will expose
-- information about the decoding and encoding capabilities for a given format
-- but also output capabilities to find the best match based on the device’s
-- display.
-- 
-- See also https:\/\/wicg.github.io\/media-capabilities\/
-- 
-- /Since: 2.22/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableMediaCapabilitiesPropertyInfo,
#endif
    constructSettingsEnableMediaCapabilities,
    getSettingsEnableMediaCapabilities      ,
    setSettingsEnableMediaCapabilities      ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableMediaCapabilities         ,
#endif


-- ** enableMediaStream #attr:enableMediaStream#
-- | Enable or disable support for MediaStream on pages. MediaStream
-- is an experimental proposal for allowing web pages to access
-- audio and video devices for capture.
-- 
-- See also http:\/\/dev.w3.org\/2011\/webrtc\/editor\/getusermedia.html
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableMediaStreamPropertyInfo   ,
#endif
    constructSettingsEnableMediaStream      ,
    getSettingsEnableMediaStream            ,
    setSettingsEnableMediaStream            ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableMediaStream               ,
#endif


-- ** enableMediasource #attr:enableMediasource#
-- | Enable or disable support for MediaSource on pages. MediaSource
-- extends HTMLMediaElement to allow JavaScript to generate media
-- streams for playback.
-- 
-- See also http:\/\/www.w3.org\/TR\/media-source\/
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableMediasourcePropertyInfo   ,
#endif
    constructSettingsEnableMediasource      ,
    getSettingsEnableMediasource            ,
    setSettingsEnableMediasource            ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableMediasource               ,
#endif


-- ** enableMockCaptureDevices #attr:enableMockCaptureDevices#
-- | Enable or disable the Mock Capture Devices. Those are fake
-- Microphone and Camera devices to be used as MediaStream
-- sources.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableMockCaptureDevicesPropertyInfo,
#endif
    constructSettingsEnableMockCaptureDevices,
    getSettingsEnableMockCaptureDevices     ,
    setSettingsEnableMockCaptureDevices     ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableMockCaptureDevices        ,
#endif


-- ** enableOfflineWebApplicationCache #attr:enableOfflineWebApplicationCache#
-- | Unsupported setting. This property does nothing.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableOfflineWebApplicationCachePropertyInfo,
#endif
    constructSettingsEnableOfflineWebApplicationCache,
    getSettingsEnableOfflineWebApplicationCache,
    setSettingsEnableOfflineWebApplicationCache,
#if defined(ENABLE_OVERLOADING)
    settingsEnableOfflineWebApplicationCache,
#endif


-- ** enablePageCache #attr:enablePageCache#
-- | Enable or disable the page cache. Disabling the page cache is
-- generally only useful for special circumstances like low-memory
-- scenarios or special purpose applications like static HTML
-- viewers. This setting only controls the Page Cache, this cache
-- is different than the disk-based or memory-based traditional
-- resource caches, its point is to make going back and forth
-- between pages much faster. For details about the different types
-- of caches and their purposes see:
-- http:\/\/webkit.org\/blog\/427\/webkit-page-cache-i-the-basics\/

#if defined(ENABLE_OVERLOADING)
    SettingsEnablePageCachePropertyInfo     ,
#endif
    constructSettingsEnablePageCache        ,
    getSettingsEnablePageCache              ,
    setSettingsEnablePageCache              ,
#if defined(ENABLE_OVERLOADING)
    settingsEnablePageCache                 ,
#endif


-- ** enablePlugins #attr:enablePlugins#
-- | Determines whether or not plugins on the page are enabled.

#if defined(ENABLE_OVERLOADING)
    SettingsEnablePluginsPropertyInfo       ,
#endif
    constructSettingsEnablePlugins          ,
    getSettingsEnablePlugins                ,
    setSettingsEnablePlugins                ,
#if defined(ENABLE_OVERLOADING)
    settingsEnablePlugins                   ,
#endif


-- ** enablePrivateBrowsing #attr:enablePrivateBrowsing#
-- | Determines whether or not private browsing is enabled. Private browsing
-- will disable history, cache and form auto-fill for any pages visited.

#if defined(ENABLE_OVERLOADING)
    SettingsEnablePrivateBrowsingPropertyInfo,
#endif
    constructSettingsEnablePrivateBrowsing  ,
    getSettingsEnablePrivateBrowsing        ,
    setSettingsEnablePrivateBrowsing        ,
#if defined(ENABLE_OVERLOADING)
    settingsEnablePrivateBrowsing           ,
#endif


-- ** enableResizableTextAreas #attr:enableResizableTextAreas#
-- | Determines whether or not text areas can be resized.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableResizableTextAreasPropertyInfo,
#endif
    constructSettingsEnableResizableTextAreas,
    getSettingsEnableResizableTextAreas     ,
    setSettingsEnableResizableTextAreas     ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableResizableTextAreas        ,
#endif


-- ** enableSiteSpecificQuirks #attr:enableSiteSpecificQuirks#
-- | Whether to turn on site-specific quirks. Turning this on will
-- tell WebKit to use some site-specific workarounds for
-- better web compatibility. For example, older versions of
-- MediaWiki will incorrectly send to WebKit a CSS file with KHTML
-- workarounds. By turning on site-specific quirks, WebKit will
-- special-case this and other cases to make some specific sites work.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableSiteSpecificQuirksPropertyInfo,
#endif
    constructSettingsEnableSiteSpecificQuirks,
    getSettingsEnableSiteSpecificQuirks     ,
    setSettingsEnableSiteSpecificQuirks     ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableSiteSpecificQuirks        ,
#endif


-- ** enableSmoothScrolling #attr:enableSmoothScrolling#
-- | Enable or disable smooth scrolling.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableSmoothScrollingPropertyInfo,
#endif
    constructSettingsEnableSmoothScrolling  ,
    getSettingsEnableSmoothScrolling        ,
    setSettingsEnableSmoothScrolling        ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableSmoothScrolling           ,
#endif


-- ** enableSpatialNavigation #attr:enableSpatialNavigation#
-- | Whether to enable Spatial Navigation. This feature consists in the ability
-- to navigate between focusable elements in a Web page, such as hyperlinks
-- and form controls, by using Left, Right, Up and Down arrow keys.
-- For example, if an user presses the Right key, heuristics determine whether
-- there is an element they might be trying to reach towards the right, and if
-- there are multiple elements, which element they probably wants.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableSpatialNavigationPropertyInfo,
#endif
    constructSettingsEnableSpatialNavigation,
    getSettingsEnableSpatialNavigation      ,
    setSettingsEnableSpatialNavigation      ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableSpatialNavigation         ,
#endif


-- ** enableTabsToLinks #attr:enableTabsToLinks#
-- | Determines whether the tab key cycles through the elements on the page.
-- When this setting is enabled, users will be able to focus the next element
-- in the page by pressing the tab key. If the selected element is editable,
-- then pressing tab key will insert the tab character.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableTabsToLinksPropertyInfo   ,
#endif
    constructSettingsEnableTabsToLinks      ,
    getSettingsEnableTabsToLinks            ,
    setSettingsEnableTabsToLinks            ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableTabsToLinks               ,
#endif


-- ** enableWebaudio #attr:enableWebaudio#
-- | Enable or disable support for WebAudio on pages. WebAudio is an
-- API for processing and synthesizing audio in web applications
-- 
-- See also https:\/\/webaudio.github.io\/web-audio-api

#if defined(ENABLE_OVERLOADING)
    SettingsEnableWebaudioPropertyInfo      ,
#endif
    constructSettingsEnableWebaudio         ,
    getSettingsEnableWebaudio               ,
    setSettingsEnableWebaudio               ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableWebaudio                  ,
#endif


-- ** enableWebgl #attr:enableWebgl#
-- | Enable or disable support for WebGL on pages. WebGL enables web
-- content to use an API based on OpenGL ES 2.0.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableWebglPropertyInfo         ,
#endif
    constructSettingsEnableWebgl            ,
    getSettingsEnableWebgl                  ,
    setSettingsEnableWebgl                  ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableWebgl                     ,
#endif


-- ** enableWebrtc #attr:enableWebrtc#
-- | Enable WebRTC support for loaded pages.
-- 
-- Enabling this setting implies that [property/@settings@/:enable-media-stream]
-- will be enabled as well.
-- 
-- See also https:\/\/www.w3.org\/TR\/webrtc\/
-- 
-- /Since: 2.38/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableWebrtcPropertyInfo        ,
#endif
    constructSettingsEnableWebrtc           ,
    getSettingsEnableWebrtc                 ,
    setSettingsEnableWebrtc                 ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableWebrtc                    ,
#endif


-- ** enableWriteConsoleMessagesToStdout #attr:enableWriteConsoleMessagesToStdout#
-- | Enable or disable writing console messages to stdout. These are messages
-- sent to the console with console.log and related methods.
-- 
-- /Since: 2.2/

#if defined(ENABLE_OVERLOADING)
    SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo,
#endif
    constructSettingsEnableWriteConsoleMessagesToStdout,
    getSettingsEnableWriteConsoleMessagesToStdout,
    setSettingsEnableWriteConsoleMessagesToStdout,
#if defined(ENABLE_OVERLOADING)
    settingsEnableWriteConsoleMessagesToStdout,
#endif


-- ** enableXssAuditor #attr:enableXssAuditor#
-- | Whether to enable the XSS auditor. This feature filters some kinds of
-- reflective XSS attacks on vulnerable web sites.

#if defined(ENABLE_OVERLOADING)
    SettingsEnableXssAuditorPropertyInfo    ,
#endif
    constructSettingsEnableXssAuditor       ,
    getSettingsEnableXssAuditor             ,
    setSettingsEnableXssAuditor             ,
#if defined(ENABLE_OVERLOADING)
    settingsEnableXssAuditor                ,
#endif


-- ** fantasyFontFamily #attr:fantasyFontFamily#
-- | The font family used as the default for content using a fantasy font.

#if defined(ENABLE_OVERLOADING)
    SettingsFantasyFontFamilyPropertyInfo   ,
#endif
    constructSettingsFantasyFontFamily      ,
    getSettingsFantasyFontFamily            ,
    setSettingsFantasyFontFamily            ,
#if defined(ENABLE_OVERLOADING)
    settingsFantasyFontFamily               ,
#endif


-- ** hardwareAccelerationPolicy #attr:hardwareAccelerationPolicy#
-- | The t'GI.WebKit2.Enums.HardwareAccelerationPolicy' to decide how to enable and disable
-- hardware acceleration. Disabling hardware acceleration might
-- cause some websites to not render correctly or consume more CPU.
-- 
-- Note that changing this setting might not be possible if hardware acceleration is not
-- supported by the hardware or the system. In that case, you can get the value to know the
-- actual policy being used, but changing the setting will not have any effect.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    SettingsHardwareAccelerationPolicyPropertyInfo,
#endif
    constructSettingsHardwareAccelerationPolicy,
    getSettingsHardwareAccelerationPolicy   ,
    setSettingsHardwareAccelerationPolicy   ,
#if defined(ENABLE_OVERLOADING)
    settingsHardwareAccelerationPolicy      ,
#endif


-- ** javascriptCanAccessClipboard #attr:javascriptCanAccessClipboard#
-- | Whether JavaScript can access the clipboard. The default value is 'P.False'. If
-- set to 'P.True', document.@/execCommand()/@ allows cut, copy and paste commands.

#if defined(ENABLE_OVERLOADING)
    SettingsJavascriptCanAccessClipboardPropertyInfo,
#endif
    constructSettingsJavascriptCanAccessClipboard,
    getSettingsJavascriptCanAccessClipboard ,
    setSettingsJavascriptCanAccessClipboard ,
#if defined(ENABLE_OVERLOADING)
    settingsJavascriptCanAccessClipboard    ,
#endif


-- ** javascriptCanOpenWindowsAutomatically #attr:javascriptCanOpenWindowsAutomatically#
-- | Whether JavaScript can open popup windows automatically without user
-- intervention.

#if defined(ENABLE_OVERLOADING)
    SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo,
#endif
    constructSettingsJavascriptCanOpenWindowsAutomatically,
    getSettingsJavascriptCanOpenWindowsAutomatically,
    setSettingsJavascriptCanOpenWindowsAutomatically,
#if defined(ENABLE_OVERLOADING)
    settingsJavascriptCanOpenWindowsAutomatically,
#endif


-- ** loadIconsIgnoringImageLoadSetting #attr:loadIconsIgnoringImageLoadSetting#
-- | Unsupported setting. This property does nothing.

#if defined(ENABLE_OVERLOADING)
    SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo,
#endif
    constructSettingsLoadIconsIgnoringImageLoadSetting,
    getSettingsLoadIconsIgnoringImageLoadSetting,
    setSettingsLoadIconsIgnoringImageLoadSetting,
#if defined(ENABLE_OVERLOADING)
    settingsLoadIconsIgnoringImageLoadSetting,
#endif


-- ** mathFontFamily #attr:mathFontFamily#
-- | The font family used as the default for content using a math font.
-- 
-- /Since: 2.52/

#if defined(ENABLE_OVERLOADING)
    SettingsMathFontFamilyPropertyInfo      ,
#endif
    clearSettingsMathFontFamily             ,
    constructSettingsMathFontFamily         ,
    getSettingsMathFontFamily               ,
    setSettingsMathFontFamily               ,
#if defined(ENABLE_OVERLOADING)
    settingsMathFontFamily                  ,
#endif


-- ** mediaContentTypesRequiringHardwareSupport #attr:mediaContentTypesRequiringHardwareSupport#
-- | List of media content types requiring hardware support, split by semicolons (:).
-- For example: \'video\/webm; codecs=\"vp*\":video\/mp4; codecs=\"avc*\":video\/&ast; codecs=\"av1*\"\'.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo,
#endif
    clearSettingsMediaContentTypesRequiringHardwareSupport,
    constructSettingsMediaContentTypesRequiringHardwareSupport,
    getSettingsMediaContentTypesRequiringHardwareSupport,
    setSettingsMediaContentTypesRequiringHardwareSupport,
#if defined(ENABLE_OVERLOADING)
    settingsMediaContentTypesRequiringHardwareSupport,
#endif


-- ** mediaPlaybackAllowsInline #attr:mediaPlaybackAllowsInline#
-- | Whether media playback is full-screen only or inline playback is allowed.
-- This is 'P.True' by default, so media playback can be inline. Setting it to
-- 'P.False' allows specifying that media playback should be always fullscreen.

#if defined(ENABLE_OVERLOADING)
    SettingsMediaPlaybackAllowsInlinePropertyInfo,
#endif
    constructSettingsMediaPlaybackAllowsInline,
    getSettingsMediaPlaybackAllowsInline    ,
    setSettingsMediaPlaybackAllowsInline    ,
#if defined(ENABLE_OVERLOADING)
    settingsMediaPlaybackAllowsInline       ,
#endif


-- ** mediaPlaybackRequiresUserGesture #attr:mediaPlaybackRequiresUserGesture#
-- | Whether a user gesture (such as clicking the play button)
-- would be required to start media playback or load media. This is off
-- by default, so media playback could start automatically.
-- Setting it on requires a gesture by the user to start playback, or to
-- load the media.

#if defined(ENABLE_OVERLOADING)
    SettingsMediaPlaybackRequiresUserGesturePropertyInfo,
#endif
    constructSettingsMediaPlaybackRequiresUserGesture,
    getSettingsMediaPlaybackRequiresUserGesture,
    setSettingsMediaPlaybackRequiresUserGesture,
#if defined(ENABLE_OVERLOADING)
    settingsMediaPlaybackRequiresUserGesture,
#endif


-- ** minimumFontSize #attr:minimumFontSize#
-- | The minimum font size in pixels used to display text. This setting
-- controls the absolute smallest size. Values other than 0 can
-- potentially break page layouts.

#if defined(ENABLE_OVERLOADING)
    SettingsMinimumFontSizePropertyInfo     ,
#endif
    constructSettingsMinimumFontSize        ,
    getSettingsMinimumFontSize              ,
    setSettingsMinimumFontSize              ,
#if defined(ENABLE_OVERLOADING)
    settingsMinimumFontSize                 ,
#endif


-- ** monospaceFontFamily #attr:monospaceFontFamily#
-- | The font family used as the default for content using a monospace font.

#if defined(ENABLE_OVERLOADING)
    SettingsMonospaceFontFamilyPropertyInfo ,
#endif
    constructSettingsMonospaceFontFamily    ,
    getSettingsMonospaceFontFamily          ,
    setSettingsMonospaceFontFamily          ,
#if defined(ENABLE_OVERLOADING)
    settingsMonospaceFontFamily             ,
#endif


-- ** pictographFontFamily #attr:pictographFontFamily#
-- | The font family used as the default for content using a pictograph font.

#if defined(ENABLE_OVERLOADING)
    SettingsPictographFontFamilyPropertyInfo,
#endif
    constructSettingsPictographFontFamily   ,
    getSettingsPictographFontFamily         ,
    setSettingsPictographFontFamily         ,
#if defined(ENABLE_OVERLOADING)
    settingsPictographFontFamily            ,
#endif


-- ** printBackgrounds #attr:printBackgrounds#
-- | Whether background images should be drawn during printing.

#if defined(ENABLE_OVERLOADING)
    SettingsPrintBackgroundsPropertyInfo    ,
#endif
    constructSettingsPrintBackgrounds       ,
    getSettingsPrintBackgrounds             ,
    setSettingsPrintBackgrounds             ,
#if defined(ENABLE_OVERLOADING)
    settingsPrintBackgrounds                ,
#endif


-- ** sansSerifFontFamily #attr:sansSerifFontFamily#
-- | The font family used as the default for content using a sans-serif font.

#if defined(ENABLE_OVERLOADING)
    SettingsSansSerifFontFamilyPropertyInfo ,
#endif
    constructSettingsSansSerifFontFamily    ,
    getSettingsSansSerifFontFamily          ,
    setSettingsSansSerifFontFamily          ,
#if defined(ENABLE_OVERLOADING)
    settingsSansSerifFontFamily             ,
#endif


-- ** serifFontFamily #attr:serifFontFamily#
-- | The font family used as the default for content using a serif font.

#if defined(ENABLE_OVERLOADING)
    SettingsSerifFontFamilyPropertyInfo     ,
#endif
    constructSettingsSerifFontFamily        ,
    getSettingsSerifFontFamily              ,
    setSettingsSerifFontFamily              ,
#if defined(ENABLE_OVERLOADING)
    settingsSerifFontFamily                 ,
#endif


-- ** userAgent #attr:userAgent#
-- | The user-agent string used by WebKit. Unusual user-agent strings may cause web
-- content to render incorrectly or fail to run, as many web pages are written to
-- parse the user-agent strings of only the most popular browsers. Therefore, it\'s
-- typically better to not completely override the standard user-agent, but to use
-- 'GI.WebKit2.Objects.Settings.settingsSetUserAgentWithApplicationDetails' instead.
-- 
-- If this property is set to the empty string or 'P.Nothing', it will revert to the standard
-- user-agent.

#if defined(ENABLE_OVERLOADING)
    SettingsUserAgentPropertyInfo           ,
#endif
    clearSettingsUserAgent                  ,
    constructSettingsUserAgent              ,
    getSettingsUserAgent                    ,
    setSettingsUserAgent                    ,
#if defined(ENABLE_OVERLOADING)
    settingsUserAgent                       ,
#endif


-- ** webrtcUdpPortsRange #attr:webrtcUdpPortsRange#
-- | Allow customization of the WebRTC UDP ports range.
-- 
-- In some constrained environments where a firewall blocks UDP network traffic excepted on a
-- specific port range, this settings can be used to give hints to the WebRTC backend regarding
-- which ports to allocate. The format is min-port:max-port, so for instance 20000:30000. The
-- default empty string value means the OS will use no hints from the WebRTC backend. Using 0
-- for one of the values is allowed and means the value is unspecified.
-- 
-- /Since: 2.48/

#if defined(ENABLE_OVERLOADING)
    SettingsWebrtcUdpPortsRangePropertyInfo ,
#endif
    constructSettingsWebrtcUdpPortsRange    ,
    getSettingsWebrtcUdpPortsRange          ,
    setSettingsWebrtcUdpPortsRange          ,
#if defined(ENABLE_OVERLOADING)
    settingsWebrtcUdpPortsRange             ,
#endif


-- ** zoomTextOnly #attr:zoomTextOnly#
-- | Whether [WebView:zoomLevel]("GI.WebKit2.Objects.WebView#g:attr:zoomLevel") affects only the
-- text of the page or all the contents. Other contents containing text
-- like form controls will be also affected by zoom factor when
-- this property is enabled.

#if defined(ENABLE_OVERLOADING)
    SettingsZoomTextOnlyPropertyInfo        ,
#endif
    constructSettingsZoomTextOnly           ,
    getSettingsZoomTextOnly                 ,
    setSettingsZoomTextOnly                 ,
#if defined(ENABLE_OVERLOADING)
    settingsZoomTextOnly                    ,
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
import qualified GI.GLib.Structs.KeyFile as GLib.KeyFile
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature
import {-# SOURCE #-} qualified GI.WebKit2.Structs.FeatureList as WebKit2.FeatureList

#else
import qualified GI.GLib.Structs.KeyFile as GLib.KeyFile
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature
import {-# SOURCE #-} qualified GI.WebKit2.Structs.FeatureList as WebKit2.FeatureList

#endif

-- | Memory-managed wrapper type.
newtype Settings = Settings (SP.ManagedPtr Settings)
    deriving (Eq)

instance SP.ManagedPtrNewtype Settings where
    toManagedPtr (Settings p) = p

foreign import ccall "webkit_settings_get_type"
    c_webkit_settings_get_type :: IO B.Types.GType

instance B.Types.TypedObject Settings where
    glibType = c_webkit_settings_get_type

instance B.Types.GObject Settings

-- | Type class for types which can be safely cast to t'Settings', for instance with `toSettings`.
class (SP.GObject o, O.IsDescendantOf Settings o) => IsSettings o
instance (SP.GObject o, O.IsDescendantOf Settings o) => IsSettings o

instance O.HasParentTypes Settings
type instance O.ParentTypes Settings = '[GObject.Object.Object]

-- | Cast to t'Settings', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toSettings :: (MIO.MonadIO m, IsSettings o) => o -> m Settings
toSettings = MIO.liftIO . B.ManagedPtr.unsafeCastTo Settings

-- | Convert t'Settings' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Settings) where
    gvalueGType_ = c_webkit_settings_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Settings)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Settings)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Settings ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveSettingsMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveSettingsMethod "applyFromKeyFile" o = SettingsApplyFromKeyFileMethodInfo
    ResolveSettingsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSettingsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSettingsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSettingsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSettingsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSettingsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSettingsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSettingsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSettingsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSettingsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSettingsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSettingsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSettingsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSettingsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSettingsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSettingsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSettingsMethod "getAllowFileAccessFromFileUrls" o = SettingsGetAllowFileAccessFromFileUrlsMethodInfo
    ResolveSettingsMethod "getAllowModalDialogs" o = SettingsGetAllowModalDialogsMethodInfo
    ResolveSettingsMethod "getAllowTopNavigationToDataUrls" o = SettingsGetAllowTopNavigationToDataUrlsMethodInfo
    ResolveSettingsMethod "getAllowUniversalAccessFromFileUrls" o = SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo
    ResolveSettingsMethod "getAutoLoadImages" o = SettingsGetAutoLoadImagesMethodInfo
    ResolveSettingsMethod "getCursiveFontFamily" o = SettingsGetCursiveFontFamilyMethodInfo
    ResolveSettingsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSettingsMethod "getDefaultCharset" o = SettingsGetDefaultCharsetMethodInfo
    ResolveSettingsMethod "getDefaultFontFamily" o = SettingsGetDefaultFontFamilyMethodInfo
    ResolveSettingsMethod "getDefaultFontSize" o = SettingsGetDefaultFontSizeMethodInfo
    ResolveSettingsMethod "getDefaultMonospaceFontSize" o = SettingsGetDefaultMonospaceFontSizeMethodInfo
    ResolveSettingsMethod "getDisableWebSecurity" o = SettingsGetDisableWebSecurityMethodInfo
    ResolveSettingsMethod "getDrawCompositingIndicators" o = SettingsGetDrawCompositingIndicatorsMethodInfo
    ResolveSettingsMethod "getEnable2dCanvasAcceleration" o = SettingsGetEnable2dCanvasAccelerationMethodInfo
    ResolveSettingsMethod "getEnableAccelerated2dCanvas" o = SettingsGetEnableAccelerated2dCanvasMethodInfo
    ResolveSettingsMethod "getEnableBackForwardNavigationGestures" o = SettingsGetEnableBackForwardNavigationGesturesMethodInfo
    ResolveSettingsMethod "getEnableCaretBrowsing" o = SettingsGetEnableCaretBrowsingMethodInfo
    ResolveSettingsMethod "getEnableDeveloperExtras" o = SettingsGetEnableDeveloperExtrasMethodInfo
    ResolveSettingsMethod "getEnableDnsPrefetching" o = SettingsGetEnableDnsPrefetchingMethodInfo
    ResolveSettingsMethod "getEnableEncryptedMedia" o = SettingsGetEnableEncryptedMediaMethodInfo
    ResolveSettingsMethod "getEnableFrameFlattening" o = SettingsGetEnableFrameFlatteningMethodInfo
    ResolveSettingsMethod "getEnableFullscreen" o = SettingsGetEnableFullscreenMethodInfo
    ResolveSettingsMethod "getEnableHtml5Database" o = SettingsGetEnableHtml5DatabaseMethodInfo
    ResolveSettingsMethod "getEnableHtml5LocalStorage" o = SettingsGetEnableHtml5LocalStorageMethodInfo
    ResolveSettingsMethod "getEnableHyperlinkAuditing" o = SettingsGetEnableHyperlinkAuditingMethodInfo
    ResolveSettingsMethod "getEnableJava" o = SettingsGetEnableJavaMethodInfo
    ResolveSettingsMethod "getEnableJavascript" o = SettingsGetEnableJavascriptMethodInfo
    ResolveSettingsMethod "getEnableJavascriptMarkup" o = SettingsGetEnableJavascriptMarkupMethodInfo
    ResolveSettingsMethod "getEnableMedia" o = SettingsGetEnableMediaMethodInfo
    ResolveSettingsMethod "getEnableMediaCapabilities" o = SettingsGetEnableMediaCapabilitiesMethodInfo
    ResolveSettingsMethod "getEnableMediaStream" o = SettingsGetEnableMediaStreamMethodInfo
    ResolveSettingsMethod "getEnableMediasource" o = SettingsGetEnableMediasourceMethodInfo
    ResolveSettingsMethod "getEnableMockCaptureDevices" o = SettingsGetEnableMockCaptureDevicesMethodInfo
    ResolveSettingsMethod "getEnableOfflineWebApplicationCache" o = SettingsGetEnableOfflineWebApplicationCacheMethodInfo
    ResolveSettingsMethod "getEnablePageCache" o = SettingsGetEnablePageCacheMethodInfo
    ResolveSettingsMethod "getEnablePlugins" o = SettingsGetEnablePluginsMethodInfo
    ResolveSettingsMethod "getEnablePrivateBrowsing" o = SettingsGetEnablePrivateBrowsingMethodInfo
    ResolveSettingsMethod "getEnableResizableTextAreas" o = SettingsGetEnableResizableTextAreasMethodInfo
    ResolveSettingsMethod "getEnableSiteSpecificQuirks" o = SettingsGetEnableSiteSpecificQuirksMethodInfo
    ResolveSettingsMethod "getEnableSmoothScrolling" o = SettingsGetEnableSmoothScrollingMethodInfo
    ResolveSettingsMethod "getEnableSpatialNavigation" o = SettingsGetEnableSpatialNavigationMethodInfo
    ResolveSettingsMethod "getEnableTabsToLinks" o = SettingsGetEnableTabsToLinksMethodInfo
    ResolveSettingsMethod "getEnableWebaudio" o = SettingsGetEnableWebaudioMethodInfo
    ResolveSettingsMethod "getEnableWebgl" o = SettingsGetEnableWebglMethodInfo
    ResolveSettingsMethod "getEnableWebrtc" o = SettingsGetEnableWebrtcMethodInfo
    ResolveSettingsMethod "getEnableWriteConsoleMessagesToStdout" o = SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo
    ResolveSettingsMethod "getEnableXssAuditor" o = SettingsGetEnableXssAuditorMethodInfo
    ResolveSettingsMethod "getFantasyFontFamily" o = SettingsGetFantasyFontFamilyMethodInfo
    ResolveSettingsMethod "getFeatureEnabled" o = SettingsGetFeatureEnabledMethodInfo
    ResolveSettingsMethod "getHardwareAccelerationPolicy" o = SettingsGetHardwareAccelerationPolicyMethodInfo
    ResolveSettingsMethod "getJavascriptCanAccessClipboard" o = SettingsGetJavascriptCanAccessClipboardMethodInfo
    ResolveSettingsMethod "getJavascriptCanOpenWindowsAutomatically" o = SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo
    ResolveSettingsMethod "getLoadIconsIgnoringImageLoadSetting" o = SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo
    ResolveSettingsMethod "getMathFontFamily" o = SettingsGetMathFontFamilyMethodInfo
    ResolveSettingsMethod "getMediaContentTypesRequiringHardwareSupport" o = SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo
    ResolveSettingsMethod "getMediaPlaybackAllowsInline" o = SettingsGetMediaPlaybackAllowsInlineMethodInfo
    ResolveSettingsMethod "getMediaPlaybackRequiresUserGesture" o = SettingsGetMediaPlaybackRequiresUserGestureMethodInfo
    ResolveSettingsMethod "getMinimumFontSize" o = SettingsGetMinimumFontSizeMethodInfo
    ResolveSettingsMethod "getMonospaceFontFamily" o = SettingsGetMonospaceFontFamilyMethodInfo
    ResolveSettingsMethod "getPictographFontFamily" o = SettingsGetPictographFontFamilyMethodInfo
    ResolveSettingsMethod "getPrintBackgrounds" o = SettingsGetPrintBackgroundsMethodInfo
    ResolveSettingsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSettingsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSettingsMethod "getSansSerifFontFamily" o = SettingsGetSansSerifFontFamilyMethodInfo
    ResolveSettingsMethod "getSerifFontFamily" o = SettingsGetSerifFontFamilyMethodInfo
    ResolveSettingsMethod "getUserAgent" o = SettingsGetUserAgentMethodInfo
    ResolveSettingsMethod "getWebrtcUdpPortsRange" o = SettingsGetWebrtcUdpPortsRangeMethodInfo
    ResolveSettingsMethod "getZoomTextOnly" o = SettingsGetZoomTextOnlyMethodInfo
    ResolveSettingsMethod "setAllowFileAccessFromFileUrls" o = SettingsSetAllowFileAccessFromFileUrlsMethodInfo
    ResolveSettingsMethod "setAllowModalDialogs" o = SettingsSetAllowModalDialogsMethodInfo
    ResolveSettingsMethod "setAllowTopNavigationToDataUrls" o = SettingsSetAllowTopNavigationToDataUrlsMethodInfo
    ResolveSettingsMethod "setAllowUniversalAccessFromFileUrls" o = SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo
    ResolveSettingsMethod "setAutoLoadImages" o = SettingsSetAutoLoadImagesMethodInfo
    ResolveSettingsMethod "setCursiveFontFamily" o = SettingsSetCursiveFontFamilyMethodInfo
    ResolveSettingsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSettingsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSettingsMethod "setDefaultCharset" o = SettingsSetDefaultCharsetMethodInfo
    ResolveSettingsMethod "setDefaultFontFamily" o = SettingsSetDefaultFontFamilyMethodInfo
    ResolveSettingsMethod "setDefaultFontSize" o = SettingsSetDefaultFontSizeMethodInfo
    ResolveSettingsMethod "setDefaultMonospaceFontSize" o = SettingsSetDefaultMonospaceFontSizeMethodInfo
    ResolveSettingsMethod "setDisableWebSecurity" o = SettingsSetDisableWebSecurityMethodInfo
    ResolveSettingsMethod "setDrawCompositingIndicators" o = SettingsSetDrawCompositingIndicatorsMethodInfo
    ResolveSettingsMethod "setEnable2dCanvasAcceleration" o = SettingsSetEnable2dCanvasAccelerationMethodInfo
    ResolveSettingsMethod "setEnableAccelerated2dCanvas" o = SettingsSetEnableAccelerated2dCanvasMethodInfo
    ResolveSettingsMethod "setEnableBackForwardNavigationGestures" o = SettingsSetEnableBackForwardNavigationGesturesMethodInfo
    ResolveSettingsMethod "setEnableCaretBrowsing" o = SettingsSetEnableCaretBrowsingMethodInfo
    ResolveSettingsMethod "setEnableDeveloperExtras" o = SettingsSetEnableDeveloperExtrasMethodInfo
    ResolveSettingsMethod "setEnableDnsPrefetching" o = SettingsSetEnableDnsPrefetchingMethodInfo
    ResolveSettingsMethod "setEnableEncryptedMedia" o = SettingsSetEnableEncryptedMediaMethodInfo
    ResolveSettingsMethod "setEnableFrameFlattening" o = SettingsSetEnableFrameFlatteningMethodInfo
    ResolveSettingsMethod "setEnableFullscreen" o = SettingsSetEnableFullscreenMethodInfo
    ResolveSettingsMethod "setEnableHtml5Database" o = SettingsSetEnableHtml5DatabaseMethodInfo
    ResolveSettingsMethod "setEnableHtml5LocalStorage" o = SettingsSetEnableHtml5LocalStorageMethodInfo
    ResolveSettingsMethod "setEnableHyperlinkAuditing" o = SettingsSetEnableHyperlinkAuditingMethodInfo
    ResolveSettingsMethod "setEnableJava" o = SettingsSetEnableJavaMethodInfo
    ResolveSettingsMethod "setEnableJavascript" o = SettingsSetEnableJavascriptMethodInfo
    ResolveSettingsMethod "setEnableJavascriptMarkup" o = SettingsSetEnableJavascriptMarkupMethodInfo
    ResolveSettingsMethod "setEnableMedia" o = SettingsSetEnableMediaMethodInfo
    ResolveSettingsMethod "setEnableMediaCapabilities" o = SettingsSetEnableMediaCapabilitiesMethodInfo
    ResolveSettingsMethod "setEnableMediaStream" o = SettingsSetEnableMediaStreamMethodInfo
    ResolveSettingsMethod "setEnableMediasource" o = SettingsSetEnableMediasourceMethodInfo
    ResolveSettingsMethod "setEnableMockCaptureDevices" o = SettingsSetEnableMockCaptureDevicesMethodInfo
    ResolveSettingsMethod "setEnableOfflineWebApplicationCache" o = SettingsSetEnableOfflineWebApplicationCacheMethodInfo
    ResolveSettingsMethod "setEnablePageCache" o = SettingsSetEnablePageCacheMethodInfo
    ResolveSettingsMethod "setEnablePlugins" o = SettingsSetEnablePluginsMethodInfo
    ResolveSettingsMethod "setEnablePrivateBrowsing" o = SettingsSetEnablePrivateBrowsingMethodInfo
    ResolveSettingsMethod "setEnableResizableTextAreas" o = SettingsSetEnableResizableTextAreasMethodInfo
    ResolveSettingsMethod "setEnableSiteSpecificQuirks" o = SettingsSetEnableSiteSpecificQuirksMethodInfo
    ResolveSettingsMethod "setEnableSmoothScrolling" o = SettingsSetEnableSmoothScrollingMethodInfo
    ResolveSettingsMethod "setEnableSpatialNavigation" o = SettingsSetEnableSpatialNavigationMethodInfo
    ResolveSettingsMethod "setEnableTabsToLinks" o = SettingsSetEnableTabsToLinksMethodInfo
    ResolveSettingsMethod "setEnableWebaudio" o = SettingsSetEnableWebaudioMethodInfo
    ResolveSettingsMethod "setEnableWebgl" o = SettingsSetEnableWebglMethodInfo
    ResolveSettingsMethod "setEnableWebrtc" o = SettingsSetEnableWebrtcMethodInfo
    ResolveSettingsMethod "setEnableWriteConsoleMessagesToStdout" o = SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo
    ResolveSettingsMethod "setEnableXssAuditor" o = SettingsSetEnableXssAuditorMethodInfo
    ResolveSettingsMethod "setFantasyFontFamily" o = SettingsSetFantasyFontFamilyMethodInfo
    ResolveSettingsMethod "setFeatureEnabled" o = SettingsSetFeatureEnabledMethodInfo
    ResolveSettingsMethod "setHardwareAccelerationPolicy" o = SettingsSetHardwareAccelerationPolicyMethodInfo
    ResolveSettingsMethod "setJavascriptCanAccessClipboard" o = SettingsSetJavascriptCanAccessClipboardMethodInfo
    ResolveSettingsMethod "setJavascriptCanOpenWindowsAutomatically" o = SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo
    ResolveSettingsMethod "setLoadIconsIgnoringImageLoadSetting" o = SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo
    ResolveSettingsMethod "setMathFontFamily" o = SettingsSetMathFontFamilyMethodInfo
    ResolveSettingsMethod "setMediaContentTypesRequiringHardwareSupport" o = SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo
    ResolveSettingsMethod "setMediaPlaybackAllowsInline" o = SettingsSetMediaPlaybackAllowsInlineMethodInfo
    ResolveSettingsMethod "setMediaPlaybackRequiresUserGesture" o = SettingsSetMediaPlaybackRequiresUserGestureMethodInfo
    ResolveSettingsMethod "setMinimumFontSize" o = SettingsSetMinimumFontSizeMethodInfo
    ResolveSettingsMethod "setMonospaceFontFamily" o = SettingsSetMonospaceFontFamilyMethodInfo
    ResolveSettingsMethod "setPictographFontFamily" o = SettingsSetPictographFontFamilyMethodInfo
    ResolveSettingsMethod "setPrintBackgrounds" o = SettingsSetPrintBackgroundsMethodInfo
    ResolveSettingsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSettingsMethod "setSansSerifFontFamily" o = SettingsSetSansSerifFontFamilyMethodInfo
    ResolveSettingsMethod "setSerifFontFamily" o = SettingsSetSerifFontFamilyMethodInfo
    ResolveSettingsMethod "setUserAgent" o = SettingsSetUserAgentMethodInfo
    ResolveSettingsMethod "setUserAgentWithApplicationDetails" o = SettingsSetUserAgentWithApplicationDetailsMethodInfo
    ResolveSettingsMethod "setWebrtcUdpPortsRange" o = SettingsSetWebrtcUdpPortsRangeMethodInfo
    ResolveSettingsMethod "setZoomTextOnly" o = SettingsSetZoomTextOnlyMethodInfo
    ResolveSettingsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSettingsMethod t Settings, O.OverloadedMethod info Settings p) => OL.IsLabel t (Settings -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveSettingsMethod t Settings, O.OverloadedMethod info Settings p, R.HasField t Settings p) => R.HasField t Settings p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveSettingsMethod t Settings, O.OverloadedMethodInfo info Settings) => OL.IsLabel t (O.MethodProxy info Settings) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "allow-file-access-from-file-urls"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@allow-file-access-from-file-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #allowFileAccessFromFileUrls
-- @
getSettingsAllowFileAccessFromFileUrls :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsAllowFileAccessFromFileUrls obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "allow-file-access-from-file-urls"

-- | Set the value of the “@allow-file-access-from-file-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #allowFileAccessFromFileUrls 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsAllowFileAccessFromFileUrls :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsAllowFileAccessFromFileUrls obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "allow-file-access-from-file-urls" val

-- | Construct a t'GValueConstruct' with valid value for the “@allow-file-access-from-file-urls@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsAllowFileAccessFromFileUrls :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsAllowFileAccessFromFileUrls val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-file-access-from-file-urls" val

#if defined(ENABLE_OVERLOADING)
data SettingsAllowFileAccessFromFileUrlsPropertyInfo
instance AttrInfo SettingsAllowFileAccessFromFileUrlsPropertyInfo where
    type AttrAllowedOps SettingsAllowFileAccessFromFileUrlsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsAllowFileAccessFromFileUrlsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsAllowFileAccessFromFileUrlsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsAllowFileAccessFromFileUrlsPropertyInfo = (~) Bool
    type AttrTransferType SettingsAllowFileAccessFromFileUrlsPropertyInfo = Bool
    type AttrGetType SettingsAllowFileAccessFromFileUrlsPropertyInfo = Bool
    type AttrLabel SettingsAllowFileAccessFromFileUrlsPropertyInfo = "allow-file-access-from-file-urls"
    type AttrOrigin SettingsAllowFileAccessFromFileUrlsPropertyInfo = Settings
    attrGet = getSettingsAllowFileAccessFromFileUrls
    attrSet = setSettingsAllowFileAccessFromFileUrls
    attrPut = setSettingsAllowFileAccessFromFileUrls
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsAllowFileAccessFromFileUrls
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.allowFileAccessFromFileUrls"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:allowFileAccessFromFileUrls"
        })
#endif

-- VVV Prop "allow-modal-dialogs"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@allow-modal-dialogs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #allowModalDialogs
-- @
getSettingsAllowModalDialogs :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsAllowModalDialogs obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "allow-modal-dialogs"

-- | Set the value of the “@allow-modal-dialogs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #allowModalDialogs 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsAllowModalDialogs :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsAllowModalDialogs obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "allow-modal-dialogs" val

-- | Construct a t'GValueConstruct' with valid value for the “@allow-modal-dialogs@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsAllowModalDialogs :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsAllowModalDialogs val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-modal-dialogs" val

#if defined(ENABLE_OVERLOADING)
data SettingsAllowModalDialogsPropertyInfo
instance AttrInfo SettingsAllowModalDialogsPropertyInfo where
    type AttrAllowedOps SettingsAllowModalDialogsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsAllowModalDialogsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsAllowModalDialogsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsAllowModalDialogsPropertyInfo = (~) Bool
    type AttrTransferType SettingsAllowModalDialogsPropertyInfo = Bool
    type AttrGetType SettingsAllowModalDialogsPropertyInfo = Bool
    type AttrLabel SettingsAllowModalDialogsPropertyInfo = "allow-modal-dialogs"
    type AttrOrigin SettingsAllowModalDialogsPropertyInfo = Settings
    attrGet = getSettingsAllowModalDialogs
    attrSet = setSettingsAllowModalDialogs
    attrPut = setSettingsAllowModalDialogs
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsAllowModalDialogs
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.allowModalDialogs"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:allowModalDialogs"
        })
#endif

-- VVV Prop "allow-top-navigation-to-data-urls"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@allow-top-navigation-to-data-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #allowTopNavigationToDataUrls
-- @
getSettingsAllowTopNavigationToDataUrls :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsAllowTopNavigationToDataUrls obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "allow-top-navigation-to-data-urls"

-- | Set the value of the “@allow-top-navigation-to-data-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #allowTopNavigationToDataUrls 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsAllowTopNavigationToDataUrls :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsAllowTopNavigationToDataUrls obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "allow-top-navigation-to-data-urls" val

-- | Construct a t'GValueConstruct' with valid value for the “@allow-top-navigation-to-data-urls@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsAllowTopNavigationToDataUrls :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsAllowTopNavigationToDataUrls val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-top-navigation-to-data-urls" val

#if defined(ENABLE_OVERLOADING)
data SettingsAllowTopNavigationToDataUrlsPropertyInfo
instance AttrInfo SettingsAllowTopNavigationToDataUrlsPropertyInfo where
    type AttrAllowedOps SettingsAllowTopNavigationToDataUrlsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsAllowTopNavigationToDataUrlsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsAllowTopNavigationToDataUrlsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsAllowTopNavigationToDataUrlsPropertyInfo = (~) Bool
    type AttrTransferType SettingsAllowTopNavigationToDataUrlsPropertyInfo = Bool
    type AttrGetType SettingsAllowTopNavigationToDataUrlsPropertyInfo = Bool
    type AttrLabel SettingsAllowTopNavigationToDataUrlsPropertyInfo = "allow-top-navigation-to-data-urls"
    type AttrOrigin SettingsAllowTopNavigationToDataUrlsPropertyInfo = Settings
    attrGet = getSettingsAllowTopNavigationToDataUrls
    attrSet = setSettingsAllowTopNavigationToDataUrls
    attrPut = setSettingsAllowTopNavigationToDataUrls
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsAllowTopNavigationToDataUrls
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.allowTopNavigationToDataUrls"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:allowTopNavigationToDataUrls"
        })
#endif

-- VVV Prop "allow-universal-access-from-file-urls"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@allow-universal-access-from-file-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #allowUniversalAccessFromFileUrls
-- @
getSettingsAllowUniversalAccessFromFileUrls :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsAllowUniversalAccessFromFileUrls obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "allow-universal-access-from-file-urls"

-- | Set the value of the “@allow-universal-access-from-file-urls@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #allowUniversalAccessFromFileUrls 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsAllowUniversalAccessFromFileUrls :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsAllowUniversalAccessFromFileUrls obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "allow-universal-access-from-file-urls" val

-- | Construct a t'GValueConstruct' with valid value for the “@allow-universal-access-from-file-urls@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsAllowUniversalAccessFromFileUrls :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsAllowUniversalAccessFromFileUrls val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-universal-access-from-file-urls" val

#if defined(ENABLE_OVERLOADING)
data SettingsAllowUniversalAccessFromFileUrlsPropertyInfo
instance AttrInfo SettingsAllowUniversalAccessFromFileUrlsPropertyInfo where
    type AttrAllowedOps SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = (~) Bool
    type AttrTransferType SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = Bool
    type AttrGetType SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = Bool
    type AttrLabel SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = "allow-universal-access-from-file-urls"
    type AttrOrigin SettingsAllowUniversalAccessFromFileUrlsPropertyInfo = Settings
    attrGet = getSettingsAllowUniversalAccessFromFileUrls
    attrSet = setSettingsAllowUniversalAccessFromFileUrls
    attrPut = setSettingsAllowUniversalAccessFromFileUrls
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsAllowUniversalAccessFromFileUrls
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.allowUniversalAccessFromFileUrls"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:allowUniversalAccessFromFileUrls"
        })
#endif

-- VVV Prop "auto-load-images"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@auto-load-images@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #autoLoadImages
-- @
getSettingsAutoLoadImages :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsAutoLoadImages obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "auto-load-images"

-- | Set the value of the “@auto-load-images@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #autoLoadImages 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsAutoLoadImages :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsAutoLoadImages obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "auto-load-images" val

-- | Construct a t'GValueConstruct' with valid value for the “@auto-load-images@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsAutoLoadImages :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsAutoLoadImages val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "auto-load-images" val

#if defined(ENABLE_OVERLOADING)
data SettingsAutoLoadImagesPropertyInfo
instance AttrInfo SettingsAutoLoadImagesPropertyInfo where
    type AttrAllowedOps SettingsAutoLoadImagesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsAutoLoadImagesPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsAutoLoadImagesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsAutoLoadImagesPropertyInfo = (~) Bool
    type AttrTransferType SettingsAutoLoadImagesPropertyInfo = Bool
    type AttrGetType SettingsAutoLoadImagesPropertyInfo = Bool
    type AttrLabel SettingsAutoLoadImagesPropertyInfo = "auto-load-images"
    type AttrOrigin SettingsAutoLoadImagesPropertyInfo = Settings
    attrGet = getSettingsAutoLoadImages
    attrSet = setSettingsAutoLoadImages
    attrPut = setSettingsAutoLoadImages
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsAutoLoadImages
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.autoLoadImages"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:autoLoadImages"
        })
#endif

-- VVV Prop "cursive-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@cursive-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #cursiveFontFamily
-- @
getSettingsCursiveFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsCursiveFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsCursiveFontFamily" $ B.Properties.getObjectPropertyString obj "cursive-font-family"

-- | Set the value of the “@cursive-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #cursiveFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsCursiveFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsCursiveFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "cursive-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@cursive-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsCursiveFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsCursiveFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "cursive-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsCursiveFontFamilyPropertyInfo
instance AttrInfo SettingsCursiveFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsCursiveFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsCursiveFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsCursiveFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsCursiveFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsCursiveFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsCursiveFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsCursiveFontFamilyPropertyInfo = "cursive-font-family"
    type AttrOrigin SettingsCursiveFontFamilyPropertyInfo = Settings
    attrGet = getSettingsCursiveFontFamily
    attrSet = setSettingsCursiveFontFamily
    attrPut = setSettingsCursiveFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsCursiveFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.cursiveFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:cursiveFontFamily"
        })
#endif

-- VVV Prop "default-charset"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@default-charset@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #defaultCharset
-- @
getSettingsDefaultCharset :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsDefaultCharset obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsDefaultCharset" $ B.Properties.getObjectPropertyString obj "default-charset"

-- | Set the value of the “@default-charset@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #defaultCharset 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDefaultCharset :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsDefaultCharset obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "default-charset" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@default-charset@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDefaultCharset :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsDefaultCharset val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "default-charset" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsDefaultCharsetPropertyInfo
instance AttrInfo SettingsDefaultCharsetPropertyInfo where
    type AttrAllowedOps SettingsDefaultCharsetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDefaultCharsetPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDefaultCharsetPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsDefaultCharsetPropertyInfo = (~) T.Text
    type AttrTransferType SettingsDefaultCharsetPropertyInfo = T.Text
    type AttrGetType SettingsDefaultCharsetPropertyInfo = T.Text
    type AttrLabel SettingsDefaultCharsetPropertyInfo = "default-charset"
    type AttrOrigin SettingsDefaultCharsetPropertyInfo = Settings
    attrGet = getSettingsDefaultCharset
    attrSet = setSettingsDefaultCharset
    attrPut = setSettingsDefaultCharset
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDefaultCharset
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.defaultCharset"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:defaultCharset"
        })
#endif

-- VVV Prop "default-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@default-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #defaultFontFamily
-- @
getSettingsDefaultFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsDefaultFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsDefaultFontFamily" $ B.Properties.getObjectPropertyString obj "default-font-family"

-- | Set the value of the “@default-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #defaultFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDefaultFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsDefaultFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "default-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@default-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDefaultFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsDefaultFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "default-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsDefaultFontFamilyPropertyInfo
instance AttrInfo SettingsDefaultFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsDefaultFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDefaultFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDefaultFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsDefaultFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsDefaultFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsDefaultFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsDefaultFontFamilyPropertyInfo = "default-font-family"
    type AttrOrigin SettingsDefaultFontFamilyPropertyInfo = Settings
    attrGet = getSettingsDefaultFontFamily
    attrSet = setSettingsDefaultFontFamily
    attrPut = setSettingsDefaultFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDefaultFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.defaultFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:defaultFontFamily"
        })
#endif

-- VVV Prop "default-font-size"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@default-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #defaultFontSize
-- @
getSettingsDefaultFontSize :: (MonadIO m, IsSettings o) => o -> m Word32
getSettingsDefaultFontSize obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "default-font-size"

-- | Set the value of the “@default-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #defaultFontSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDefaultFontSize :: (MonadIO m, IsSettings o) => o -> Word32 -> m ()
setSettingsDefaultFontSize obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyUInt32 obj "default-font-size" val

-- | Construct a t'GValueConstruct' with valid value for the “@default-font-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDefaultFontSize :: (IsSettings o, MIO.MonadIO m) => Word32 -> m (GValueConstruct o)
constructSettingsDefaultFontSize val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyUInt32 "default-font-size" val

#if defined(ENABLE_OVERLOADING)
data SettingsDefaultFontSizePropertyInfo
instance AttrInfo SettingsDefaultFontSizePropertyInfo where
    type AttrAllowedOps SettingsDefaultFontSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDefaultFontSizePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDefaultFontSizePropertyInfo = (~) Word32
    type AttrTransferTypeConstraint SettingsDefaultFontSizePropertyInfo = (~) Word32
    type AttrTransferType SettingsDefaultFontSizePropertyInfo = Word32
    type AttrGetType SettingsDefaultFontSizePropertyInfo = Word32
    type AttrLabel SettingsDefaultFontSizePropertyInfo = "default-font-size"
    type AttrOrigin SettingsDefaultFontSizePropertyInfo = Settings
    attrGet = getSettingsDefaultFontSize
    attrSet = setSettingsDefaultFontSize
    attrPut = setSettingsDefaultFontSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDefaultFontSize
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.defaultFontSize"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:defaultFontSize"
        })
#endif

-- VVV Prop "default-monospace-font-size"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@default-monospace-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #defaultMonospaceFontSize
-- @
getSettingsDefaultMonospaceFontSize :: (MonadIO m, IsSettings o) => o -> m Word32
getSettingsDefaultMonospaceFontSize obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "default-monospace-font-size"

-- | Set the value of the “@default-monospace-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #defaultMonospaceFontSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDefaultMonospaceFontSize :: (MonadIO m, IsSettings o) => o -> Word32 -> m ()
setSettingsDefaultMonospaceFontSize obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyUInt32 obj "default-monospace-font-size" val

-- | Construct a t'GValueConstruct' with valid value for the “@default-monospace-font-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDefaultMonospaceFontSize :: (IsSettings o, MIO.MonadIO m) => Word32 -> m (GValueConstruct o)
constructSettingsDefaultMonospaceFontSize val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyUInt32 "default-monospace-font-size" val

#if defined(ENABLE_OVERLOADING)
data SettingsDefaultMonospaceFontSizePropertyInfo
instance AttrInfo SettingsDefaultMonospaceFontSizePropertyInfo where
    type AttrAllowedOps SettingsDefaultMonospaceFontSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDefaultMonospaceFontSizePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDefaultMonospaceFontSizePropertyInfo = (~) Word32
    type AttrTransferTypeConstraint SettingsDefaultMonospaceFontSizePropertyInfo = (~) Word32
    type AttrTransferType SettingsDefaultMonospaceFontSizePropertyInfo = Word32
    type AttrGetType SettingsDefaultMonospaceFontSizePropertyInfo = Word32
    type AttrLabel SettingsDefaultMonospaceFontSizePropertyInfo = "default-monospace-font-size"
    type AttrOrigin SettingsDefaultMonospaceFontSizePropertyInfo = Settings
    attrGet = getSettingsDefaultMonospaceFontSize
    attrSet = setSettingsDefaultMonospaceFontSize
    attrPut = setSettingsDefaultMonospaceFontSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDefaultMonospaceFontSize
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.defaultMonospaceFontSize"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:defaultMonospaceFontSize"
        })
#endif

-- VVV Prop "disable-web-security"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@disable-web-security@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #disableWebSecurity
-- @
getSettingsDisableWebSecurity :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsDisableWebSecurity obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "disable-web-security"

-- | Set the value of the “@disable-web-security@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #disableWebSecurity 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDisableWebSecurity :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsDisableWebSecurity obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "disable-web-security" val

-- | Construct a t'GValueConstruct' with valid value for the “@disable-web-security@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDisableWebSecurity :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsDisableWebSecurity val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "disable-web-security" val

#if defined(ENABLE_OVERLOADING)
data SettingsDisableWebSecurityPropertyInfo
instance AttrInfo SettingsDisableWebSecurityPropertyInfo where
    type AttrAllowedOps SettingsDisableWebSecurityPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDisableWebSecurityPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDisableWebSecurityPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsDisableWebSecurityPropertyInfo = (~) Bool
    type AttrTransferType SettingsDisableWebSecurityPropertyInfo = Bool
    type AttrGetType SettingsDisableWebSecurityPropertyInfo = Bool
    type AttrLabel SettingsDisableWebSecurityPropertyInfo = "disable-web-security"
    type AttrOrigin SettingsDisableWebSecurityPropertyInfo = Settings
    attrGet = getSettingsDisableWebSecurity
    attrSet = setSettingsDisableWebSecurity
    attrPut = setSettingsDisableWebSecurity
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDisableWebSecurity
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.disableWebSecurity"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:disableWebSecurity"
        })
#endif

-- VVV Prop "draw-compositing-indicators"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@draw-compositing-indicators@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #drawCompositingIndicators
-- @
getSettingsDrawCompositingIndicators :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsDrawCompositingIndicators obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "draw-compositing-indicators"

-- | Set the value of the “@draw-compositing-indicators@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #drawCompositingIndicators 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsDrawCompositingIndicators :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsDrawCompositingIndicators obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "draw-compositing-indicators" val

-- | Construct a t'GValueConstruct' with valid value for the “@draw-compositing-indicators@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsDrawCompositingIndicators :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsDrawCompositingIndicators val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "draw-compositing-indicators" val

#if defined(ENABLE_OVERLOADING)
data SettingsDrawCompositingIndicatorsPropertyInfo
instance AttrInfo SettingsDrawCompositingIndicatorsPropertyInfo where
    type AttrAllowedOps SettingsDrawCompositingIndicatorsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsDrawCompositingIndicatorsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsDrawCompositingIndicatorsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsDrawCompositingIndicatorsPropertyInfo = (~) Bool
    type AttrTransferType SettingsDrawCompositingIndicatorsPropertyInfo = Bool
    type AttrGetType SettingsDrawCompositingIndicatorsPropertyInfo = Bool
    type AttrLabel SettingsDrawCompositingIndicatorsPropertyInfo = "draw-compositing-indicators"
    type AttrOrigin SettingsDrawCompositingIndicatorsPropertyInfo = Settings
    attrGet = getSettingsDrawCompositingIndicators
    attrSet = setSettingsDrawCompositingIndicators
    attrPut = setSettingsDrawCompositingIndicators
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsDrawCompositingIndicators
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.drawCompositingIndicators"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:drawCompositingIndicators"
        })
#endif

-- VVV Prop "enable-2d-canvas-acceleration"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-2d-canvas-acceleration@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enable2dCanvasAcceleration
-- @
getSettingsEnable2dCanvasAcceleration :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnable2dCanvasAcceleration obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-2d-canvas-acceleration"

-- | Set the value of the “@enable-2d-canvas-acceleration@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enable2dCanvasAcceleration 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnable2dCanvasAcceleration :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnable2dCanvasAcceleration obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-2d-canvas-acceleration" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-2d-canvas-acceleration@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnable2dCanvasAcceleration :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnable2dCanvasAcceleration val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-2d-canvas-acceleration" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnable2dCanvasAccelerationPropertyInfo
instance AttrInfo SettingsEnable2dCanvasAccelerationPropertyInfo where
    type AttrAllowedOps SettingsEnable2dCanvasAccelerationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnable2dCanvasAccelerationPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnable2dCanvasAccelerationPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnable2dCanvasAccelerationPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnable2dCanvasAccelerationPropertyInfo = Bool
    type AttrGetType SettingsEnable2dCanvasAccelerationPropertyInfo = Bool
    type AttrLabel SettingsEnable2dCanvasAccelerationPropertyInfo = "enable-2d-canvas-acceleration"
    type AttrOrigin SettingsEnable2dCanvasAccelerationPropertyInfo = Settings
    attrGet = getSettingsEnable2dCanvasAcceleration
    attrSet = setSettingsEnable2dCanvasAcceleration
    attrPut = setSettingsEnable2dCanvasAcceleration
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnable2dCanvasAcceleration
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enable2dCanvasAcceleration"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enable2dCanvasAcceleration"
        })
#endif

-- VVV Prop "enable-accelerated-2d-canvas"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-accelerated-2d-canvas@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableAccelerated2dCanvas
-- @
getSettingsEnableAccelerated2dCanvas :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableAccelerated2dCanvas obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-accelerated-2d-canvas"

-- | Set the value of the “@enable-accelerated-2d-canvas@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableAccelerated2dCanvas 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableAccelerated2dCanvas :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableAccelerated2dCanvas obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-accelerated-2d-canvas" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-accelerated-2d-canvas@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableAccelerated2dCanvas :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableAccelerated2dCanvas val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-accelerated-2d-canvas" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableAccelerated2dCanvasPropertyInfo
instance AttrInfo SettingsEnableAccelerated2dCanvasPropertyInfo where
    type AttrAllowedOps SettingsEnableAccelerated2dCanvasPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableAccelerated2dCanvasPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableAccelerated2dCanvasPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableAccelerated2dCanvasPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableAccelerated2dCanvasPropertyInfo = Bool
    type AttrGetType SettingsEnableAccelerated2dCanvasPropertyInfo = Bool
    type AttrLabel SettingsEnableAccelerated2dCanvasPropertyInfo = "enable-accelerated-2d-canvas"
    type AttrOrigin SettingsEnableAccelerated2dCanvasPropertyInfo = Settings
    attrGet = getSettingsEnableAccelerated2dCanvas
    attrSet = setSettingsEnableAccelerated2dCanvas
    attrPut = setSettingsEnableAccelerated2dCanvas
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableAccelerated2dCanvas
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableAccelerated2dCanvas"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableAccelerated2dCanvas"
        })
#endif

-- VVV Prop "enable-back-forward-navigation-gestures"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-back-forward-navigation-gestures@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableBackForwardNavigationGestures
-- @
getSettingsEnableBackForwardNavigationGestures :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableBackForwardNavigationGestures obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-back-forward-navigation-gestures"

-- | Set the value of the “@enable-back-forward-navigation-gestures@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableBackForwardNavigationGestures 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableBackForwardNavigationGestures :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableBackForwardNavigationGestures obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-back-forward-navigation-gestures" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-back-forward-navigation-gestures@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableBackForwardNavigationGestures :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableBackForwardNavigationGestures val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-back-forward-navigation-gestures" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableBackForwardNavigationGesturesPropertyInfo
instance AttrInfo SettingsEnableBackForwardNavigationGesturesPropertyInfo where
    type AttrAllowedOps SettingsEnableBackForwardNavigationGesturesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableBackForwardNavigationGesturesPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableBackForwardNavigationGesturesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableBackForwardNavigationGesturesPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableBackForwardNavigationGesturesPropertyInfo = Bool
    type AttrGetType SettingsEnableBackForwardNavigationGesturesPropertyInfo = Bool
    type AttrLabel SettingsEnableBackForwardNavigationGesturesPropertyInfo = "enable-back-forward-navigation-gestures"
    type AttrOrigin SettingsEnableBackForwardNavigationGesturesPropertyInfo = Settings
    attrGet = getSettingsEnableBackForwardNavigationGestures
    attrSet = setSettingsEnableBackForwardNavigationGestures
    attrPut = setSettingsEnableBackForwardNavigationGestures
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableBackForwardNavigationGestures
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableBackForwardNavigationGestures"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableBackForwardNavigationGestures"
        })
#endif

-- VVV Prop "enable-caret-browsing"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-caret-browsing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableCaretBrowsing
-- @
getSettingsEnableCaretBrowsing :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableCaretBrowsing obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-caret-browsing"

-- | Set the value of the “@enable-caret-browsing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableCaretBrowsing 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableCaretBrowsing :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableCaretBrowsing obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-caret-browsing" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-caret-browsing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableCaretBrowsing :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableCaretBrowsing val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-caret-browsing" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableCaretBrowsingPropertyInfo
instance AttrInfo SettingsEnableCaretBrowsingPropertyInfo where
    type AttrAllowedOps SettingsEnableCaretBrowsingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableCaretBrowsingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableCaretBrowsingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableCaretBrowsingPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableCaretBrowsingPropertyInfo = Bool
    type AttrGetType SettingsEnableCaretBrowsingPropertyInfo = Bool
    type AttrLabel SettingsEnableCaretBrowsingPropertyInfo = "enable-caret-browsing"
    type AttrOrigin SettingsEnableCaretBrowsingPropertyInfo = Settings
    attrGet = getSettingsEnableCaretBrowsing
    attrSet = setSettingsEnableCaretBrowsing
    attrPut = setSettingsEnableCaretBrowsing
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableCaretBrowsing
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableCaretBrowsing"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableCaretBrowsing"
        })
#endif

-- VVV Prop "enable-developer-extras"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-developer-extras@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableDeveloperExtras
-- @
getSettingsEnableDeveloperExtras :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableDeveloperExtras obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-developer-extras"

-- | Set the value of the “@enable-developer-extras@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableDeveloperExtras 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableDeveloperExtras :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableDeveloperExtras obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-developer-extras" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-developer-extras@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableDeveloperExtras :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableDeveloperExtras val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-developer-extras" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableDeveloperExtrasPropertyInfo
instance AttrInfo SettingsEnableDeveloperExtrasPropertyInfo where
    type AttrAllowedOps SettingsEnableDeveloperExtrasPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableDeveloperExtrasPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableDeveloperExtrasPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableDeveloperExtrasPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableDeveloperExtrasPropertyInfo = Bool
    type AttrGetType SettingsEnableDeveloperExtrasPropertyInfo = Bool
    type AttrLabel SettingsEnableDeveloperExtrasPropertyInfo = "enable-developer-extras"
    type AttrOrigin SettingsEnableDeveloperExtrasPropertyInfo = Settings
    attrGet = getSettingsEnableDeveloperExtras
    attrSet = setSettingsEnableDeveloperExtras
    attrPut = setSettingsEnableDeveloperExtras
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableDeveloperExtras
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableDeveloperExtras"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableDeveloperExtras"
        })
#endif

-- VVV Prop "enable-dns-prefetching"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-dns-prefetching@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableDnsPrefetching
-- @
getSettingsEnableDnsPrefetching :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableDnsPrefetching obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-dns-prefetching"

-- | Set the value of the “@enable-dns-prefetching@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableDnsPrefetching 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableDnsPrefetching :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableDnsPrefetching obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-dns-prefetching" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-dns-prefetching@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableDnsPrefetching :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableDnsPrefetching val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-dns-prefetching" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableDnsPrefetchingPropertyInfo
instance AttrInfo SettingsEnableDnsPrefetchingPropertyInfo where
    type AttrAllowedOps SettingsEnableDnsPrefetchingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableDnsPrefetchingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableDnsPrefetchingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableDnsPrefetchingPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableDnsPrefetchingPropertyInfo = Bool
    type AttrGetType SettingsEnableDnsPrefetchingPropertyInfo = Bool
    type AttrLabel SettingsEnableDnsPrefetchingPropertyInfo = "enable-dns-prefetching"
    type AttrOrigin SettingsEnableDnsPrefetchingPropertyInfo = Settings
    attrGet = getSettingsEnableDnsPrefetching
    attrSet = setSettingsEnableDnsPrefetching
    attrPut = setSettingsEnableDnsPrefetching
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableDnsPrefetching
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableDnsPrefetching"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableDnsPrefetching"
        })
#endif

-- VVV Prop "enable-encrypted-media"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-encrypted-media@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableEncryptedMedia
-- @
getSettingsEnableEncryptedMedia :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableEncryptedMedia obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-encrypted-media"

-- | Set the value of the “@enable-encrypted-media@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableEncryptedMedia 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableEncryptedMedia :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableEncryptedMedia obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-encrypted-media" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-encrypted-media@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableEncryptedMedia :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableEncryptedMedia val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-encrypted-media" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableEncryptedMediaPropertyInfo
instance AttrInfo SettingsEnableEncryptedMediaPropertyInfo where
    type AttrAllowedOps SettingsEnableEncryptedMediaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableEncryptedMediaPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableEncryptedMediaPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableEncryptedMediaPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableEncryptedMediaPropertyInfo = Bool
    type AttrGetType SettingsEnableEncryptedMediaPropertyInfo = Bool
    type AttrLabel SettingsEnableEncryptedMediaPropertyInfo = "enable-encrypted-media"
    type AttrOrigin SettingsEnableEncryptedMediaPropertyInfo = Settings
    attrGet = getSettingsEnableEncryptedMedia
    attrSet = setSettingsEnableEncryptedMedia
    attrPut = setSettingsEnableEncryptedMedia
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableEncryptedMedia
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableEncryptedMedia"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableEncryptedMedia"
        })
#endif

-- VVV Prop "enable-frame-flattening"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-frame-flattening@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableFrameFlattening
-- @
getSettingsEnableFrameFlattening :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableFrameFlattening obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-frame-flattening"

-- | Set the value of the “@enable-frame-flattening@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableFrameFlattening 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableFrameFlattening :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableFrameFlattening obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-frame-flattening" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-frame-flattening@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableFrameFlattening :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableFrameFlattening val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-frame-flattening" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableFrameFlatteningPropertyInfo
instance AttrInfo SettingsEnableFrameFlatteningPropertyInfo where
    type AttrAllowedOps SettingsEnableFrameFlatteningPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableFrameFlatteningPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableFrameFlatteningPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableFrameFlatteningPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableFrameFlatteningPropertyInfo = Bool
    type AttrGetType SettingsEnableFrameFlatteningPropertyInfo = Bool
    type AttrLabel SettingsEnableFrameFlatteningPropertyInfo = "enable-frame-flattening"
    type AttrOrigin SettingsEnableFrameFlatteningPropertyInfo = Settings
    attrGet = getSettingsEnableFrameFlattening
    attrSet = setSettingsEnableFrameFlattening
    attrPut = setSettingsEnableFrameFlattening
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableFrameFlattening
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableFrameFlattening"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableFrameFlattening"
        })
#endif

-- VVV Prop "enable-fullscreen"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-fullscreen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableFullscreen
-- @
getSettingsEnableFullscreen :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableFullscreen obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-fullscreen"

-- | Set the value of the “@enable-fullscreen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableFullscreen 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableFullscreen :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableFullscreen obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-fullscreen" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-fullscreen@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableFullscreen :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableFullscreen val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-fullscreen" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableFullscreenPropertyInfo
instance AttrInfo SettingsEnableFullscreenPropertyInfo where
    type AttrAllowedOps SettingsEnableFullscreenPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableFullscreenPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableFullscreenPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableFullscreenPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableFullscreenPropertyInfo = Bool
    type AttrGetType SettingsEnableFullscreenPropertyInfo = Bool
    type AttrLabel SettingsEnableFullscreenPropertyInfo = "enable-fullscreen"
    type AttrOrigin SettingsEnableFullscreenPropertyInfo = Settings
    attrGet = getSettingsEnableFullscreen
    attrSet = setSettingsEnableFullscreen
    attrPut = setSettingsEnableFullscreen
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableFullscreen
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableFullscreen"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableFullscreen"
        })
#endif

-- VVV Prop "enable-html5-database"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-html5-database@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableHtml5Database
-- @
getSettingsEnableHtml5Database :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableHtml5Database obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-html5-database"

-- | Set the value of the “@enable-html5-database@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableHtml5Database 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableHtml5Database :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableHtml5Database obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-html5-database" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-html5-database@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableHtml5Database :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableHtml5Database val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-html5-database" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableHtml5DatabasePropertyInfo
instance AttrInfo SettingsEnableHtml5DatabasePropertyInfo where
    type AttrAllowedOps SettingsEnableHtml5DatabasePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableHtml5DatabasePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableHtml5DatabasePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableHtml5DatabasePropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableHtml5DatabasePropertyInfo = Bool
    type AttrGetType SettingsEnableHtml5DatabasePropertyInfo = Bool
    type AttrLabel SettingsEnableHtml5DatabasePropertyInfo = "enable-html5-database"
    type AttrOrigin SettingsEnableHtml5DatabasePropertyInfo = Settings
    attrGet = getSettingsEnableHtml5Database
    attrSet = setSettingsEnableHtml5Database
    attrPut = setSettingsEnableHtml5Database
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableHtml5Database
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableHtml5Database"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableHtml5Database"
        })
#endif

-- VVV Prop "enable-html5-local-storage"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-html5-local-storage@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableHtml5LocalStorage
-- @
getSettingsEnableHtml5LocalStorage :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableHtml5LocalStorage obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-html5-local-storage"

-- | Set the value of the “@enable-html5-local-storage@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableHtml5LocalStorage 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableHtml5LocalStorage :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableHtml5LocalStorage obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-html5-local-storage" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-html5-local-storage@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableHtml5LocalStorage :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableHtml5LocalStorage val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-html5-local-storage" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableHtml5LocalStoragePropertyInfo
instance AttrInfo SettingsEnableHtml5LocalStoragePropertyInfo where
    type AttrAllowedOps SettingsEnableHtml5LocalStoragePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableHtml5LocalStoragePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableHtml5LocalStoragePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableHtml5LocalStoragePropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableHtml5LocalStoragePropertyInfo = Bool
    type AttrGetType SettingsEnableHtml5LocalStoragePropertyInfo = Bool
    type AttrLabel SettingsEnableHtml5LocalStoragePropertyInfo = "enable-html5-local-storage"
    type AttrOrigin SettingsEnableHtml5LocalStoragePropertyInfo = Settings
    attrGet = getSettingsEnableHtml5LocalStorage
    attrSet = setSettingsEnableHtml5LocalStorage
    attrPut = setSettingsEnableHtml5LocalStorage
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableHtml5LocalStorage
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableHtml5LocalStorage"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableHtml5LocalStorage"
        })
#endif

-- VVV Prop "enable-hyperlink-auditing"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-hyperlink-auditing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableHyperlinkAuditing
-- @
getSettingsEnableHyperlinkAuditing :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableHyperlinkAuditing obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-hyperlink-auditing"

-- | Set the value of the “@enable-hyperlink-auditing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableHyperlinkAuditing 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableHyperlinkAuditing :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableHyperlinkAuditing obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-hyperlink-auditing" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-hyperlink-auditing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableHyperlinkAuditing :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableHyperlinkAuditing val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-hyperlink-auditing" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableHyperlinkAuditingPropertyInfo
instance AttrInfo SettingsEnableHyperlinkAuditingPropertyInfo where
    type AttrAllowedOps SettingsEnableHyperlinkAuditingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableHyperlinkAuditingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableHyperlinkAuditingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableHyperlinkAuditingPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableHyperlinkAuditingPropertyInfo = Bool
    type AttrGetType SettingsEnableHyperlinkAuditingPropertyInfo = Bool
    type AttrLabel SettingsEnableHyperlinkAuditingPropertyInfo = "enable-hyperlink-auditing"
    type AttrOrigin SettingsEnableHyperlinkAuditingPropertyInfo = Settings
    attrGet = getSettingsEnableHyperlinkAuditing
    attrSet = setSettingsEnableHyperlinkAuditing
    attrPut = setSettingsEnableHyperlinkAuditing
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableHyperlinkAuditing
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableHyperlinkAuditing"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableHyperlinkAuditing"
        })
#endif

-- VVV Prop "enable-java"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-java@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableJava
-- @
getSettingsEnableJava :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableJava obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-java"

-- | Set the value of the “@enable-java@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableJava 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableJava :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableJava obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-java" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-java@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableJava :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableJava val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-java" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavaPropertyInfo
instance AttrInfo SettingsEnableJavaPropertyInfo where
    type AttrAllowedOps SettingsEnableJavaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableJavaPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableJavaPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableJavaPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableJavaPropertyInfo = Bool
    type AttrGetType SettingsEnableJavaPropertyInfo = Bool
    type AttrLabel SettingsEnableJavaPropertyInfo = "enable-java"
    type AttrOrigin SettingsEnableJavaPropertyInfo = Settings
    attrGet = getSettingsEnableJava
    attrSet = setSettingsEnableJava
    attrPut = setSettingsEnableJava
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableJava
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableJava"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableJava"
        })
#endif

-- VVV Prop "enable-javascript"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-javascript@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableJavascript
-- @
getSettingsEnableJavascript :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableJavascript obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-javascript"

-- | Set the value of the “@enable-javascript@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableJavascript 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableJavascript :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableJavascript obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-javascript" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-javascript@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableJavascript :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableJavascript val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-javascript" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavascriptPropertyInfo
instance AttrInfo SettingsEnableJavascriptPropertyInfo where
    type AttrAllowedOps SettingsEnableJavascriptPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableJavascriptPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableJavascriptPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableJavascriptPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableJavascriptPropertyInfo = Bool
    type AttrGetType SettingsEnableJavascriptPropertyInfo = Bool
    type AttrLabel SettingsEnableJavascriptPropertyInfo = "enable-javascript"
    type AttrOrigin SettingsEnableJavascriptPropertyInfo = Settings
    attrGet = getSettingsEnableJavascript
    attrSet = setSettingsEnableJavascript
    attrPut = setSettingsEnableJavascript
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableJavascript
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableJavascript"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableJavascript"
        })
#endif

-- VVV Prop "enable-javascript-markup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-javascript-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableJavascriptMarkup
-- @
getSettingsEnableJavascriptMarkup :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableJavascriptMarkup obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-javascript-markup"

-- | Set the value of the “@enable-javascript-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableJavascriptMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableJavascriptMarkup :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableJavascriptMarkup obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-javascript-markup" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-javascript-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableJavascriptMarkup :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableJavascriptMarkup val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-javascript-markup" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableJavascriptMarkupPropertyInfo
instance AttrInfo SettingsEnableJavascriptMarkupPropertyInfo where
    type AttrAllowedOps SettingsEnableJavascriptMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableJavascriptMarkupPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableJavascriptMarkupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableJavascriptMarkupPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableJavascriptMarkupPropertyInfo = Bool
    type AttrGetType SettingsEnableJavascriptMarkupPropertyInfo = Bool
    type AttrLabel SettingsEnableJavascriptMarkupPropertyInfo = "enable-javascript-markup"
    type AttrOrigin SettingsEnableJavascriptMarkupPropertyInfo = Settings
    attrGet = getSettingsEnableJavascriptMarkup
    attrSet = setSettingsEnableJavascriptMarkup
    attrPut = setSettingsEnableJavascriptMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableJavascriptMarkup
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableJavascriptMarkup"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableJavascriptMarkup"
        })
#endif

-- VVV Prop "enable-media"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-media@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableMedia
-- @
getSettingsEnableMedia :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableMedia obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-media"

-- | Set the value of the “@enable-media@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableMedia 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableMedia :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableMedia obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-media" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-media@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableMedia :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableMedia val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-media" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaPropertyInfo
instance AttrInfo SettingsEnableMediaPropertyInfo where
    type AttrAllowedOps SettingsEnableMediaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableMediaPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableMediaPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableMediaPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableMediaPropertyInfo = Bool
    type AttrGetType SettingsEnableMediaPropertyInfo = Bool
    type AttrLabel SettingsEnableMediaPropertyInfo = "enable-media"
    type AttrOrigin SettingsEnableMediaPropertyInfo = Settings
    attrGet = getSettingsEnableMedia
    attrSet = setSettingsEnableMedia
    attrPut = setSettingsEnableMedia
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableMedia
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableMedia"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableMedia"
        })
#endif

-- VVV Prop "enable-media-capabilities"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-media-capabilities@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableMediaCapabilities
-- @
getSettingsEnableMediaCapabilities :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableMediaCapabilities obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-media-capabilities"

-- | Set the value of the “@enable-media-capabilities@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableMediaCapabilities 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableMediaCapabilities :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableMediaCapabilities obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-media-capabilities" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-media-capabilities@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableMediaCapabilities :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableMediaCapabilities val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-media-capabilities" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaCapabilitiesPropertyInfo
instance AttrInfo SettingsEnableMediaCapabilitiesPropertyInfo where
    type AttrAllowedOps SettingsEnableMediaCapabilitiesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableMediaCapabilitiesPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableMediaCapabilitiesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableMediaCapabilitiesPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableMediaCapabilitiesPropertyInfo = Bool
    type AttrGetType SettingsEnableMediaCapabilitiesPropertyInfo = Bool
    type AttrLabel SettingsEnableMediaCapabilitiesPropertyInfo = "enable-media-capabilities"
    type AttrOrigin SettingsEnableMediaCapabilitiesPropertyInfo = Settings
    attrGet = getSettingsEnableMediaCapabilities
    attrSet = setSettingsEnableMediaCapabilities
    attrPut = setSettingsEnableMediaCapabilities
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableMediaCapabilities
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableMediaCapabilities"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableMediaCapabilities"
        })
#endif

-- VVV Prop "enable-media-stream"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-media-stream@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableMediaStream
-- @
getSettingsEnableMediaStream :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableMediaStream obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-media-stream"

-- | Set the value of the “@enable-media-stream@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableMediaStream 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableMediaStream :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableMediaStream obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-media-stream" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-media-stream@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableMediaStream :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableMediaStream val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-media-stream" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediaStreamPropertyInfo
instance AttrInfo SettingsEnableMediaStreamPropertyInfo where
    type AttrAllowedOps SettingsEnableMediaStreamPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableMediaStreamPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableMediaStreamPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableMediaStreamPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableMediaStreamPropertyInfo = Bool
    type AttrGetType SettingsEnableMediaStreamPropertyInfo = Bool
    type AttrLabel SettingsEnableMediaStreamPropertyInfo = "enable-media-stream"
    type AttrOrigin SettingsEnableMediaStreamPropertyInfo = Settings
    attrGet = getSettingsEnableMediaStream
    attrSet = setSettingsEnableMediaStream
    attrPut = setSettingsEnableMediaStream
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableMediaStream
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableMediaStream"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableMediaStream"
        })
#endif

-- VVV Prop "enable-mediasource"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-mediasource@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableMediasource
-- @
getSettingsEnableMediasource :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableMediasource obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-mediasource"

-- | Set the value of the “@enable-mediasource@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableMediasource 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableMediasource :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableMediasource obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-mediasource" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-mediasource@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableMediasource :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableMediasource val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-mediasource" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableMediasourcePropertyInfo
instance AttrInfo SettingsEnableMediasourcePropertyInfo where
    type AttrAllowedOps SettingsEnableMediasourcePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableMediasourcePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableMediasourcePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableMediasourcePropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableMediasourcePropertyInfo = Bool
    type AttrGetType SettingsEnableMediasourcePropertyInfo = Bool
    type AttrLabel SettingsEnableMediasourcePropertyInfo = "enable-mediasource"
    type AttrOrigin SettingsEnableMediasourcePropertyInfo = Settings
    attrGet = getSettingsEnableMediasource
    attrSet = setSettingsEnableMediasource
    attrPut = setSettingsEnableMediasource
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableMediasource
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableMediasource"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableMediasource"
        })
#endif

-- VVV Prop "enable-mock-capture-devices"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-mock-capture-devices@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableMockCaptureDevices
-- @
getSettingsEnableMockCaptureDevices :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableMockCaptureDevices obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-mock-capture-devices"

-- | Set the value of the “@enable-mock-capture-devices@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableMockCaptureDevices 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableMockCaptureDevices :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableMockCaptureDevices obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-mock-capture-devices" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-mock-capture-devices@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableMockCaptureDevices :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableMockCaptureDevices val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-mock-capture-devices" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableMockCaptureDevicesPropertyInfo
instance AttrInfo SettingsEnableMockCaptureDevicesPropertyInfo where
    type AttrAllowedOps SettingsEnableMockCaptureDevicesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableMockCaptureDevicesPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableMockCaptureDevicesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableMockCaptureDevicesPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableMockCaptureDevicesPropertyInfo = Bool
    type AttrGetType SettingsEnableMockCaptureDevicesPropertyInfo = Bool
    type AttrLabel SettingsEnableMockCaptureDevicesPropertyInfo = "enable-mock-capture-devices"
    type AttrOrigin SettingsEnableMockCaptureDevicesPropertyInfo = Settings
    attrGet = getSettingsEnableMockCaptureDevices
    attrSet = setSettingsEnableMockCaptureDevices
    attrPut = setSettingsEnableMockCaptureDevices
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableMockCaptureDevices
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableMockCaptureDevices"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableMockCaptureDevices"
        })
#endif

-- VVV Prop "enable-offline-web-application-cache"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-offline-web-application-cache@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableOfflineWebApplicationCache
-- @
getSettingsEnableOfflineWebApplicationCache :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableOfflineWebApplicationCache obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-offline-web-application-cache"

-- | Set the value of the “@enable-offline-web-application-cache@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableOfflineWebApplicationCache 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableOfflineWebApplicationCache :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableOfflineWebApplicationCache obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-offline-web-application-cache" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-offline-web-application-cache@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableOfflineWebApplicationCache :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableOfflineWebApplicationCache val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-offline-web-application-cache" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableOfflineWebApplicationCachePropertyInfo
instance AttrInfo SettingsEnableOfflineWebApplicationCachePropertyInfo where
    type AttrAllowedOps SettingsEnableOfflineWebApplicationCachePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableOfflineWebApplicationCachePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableOfflineWebApplicationCachePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableOfflineWebApplicationCachePropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableOfflineWebApplicationCachePropertyInfo = Bool
    type AttrGetType SettingsEnableOfflineWebApplicationCachePropertyInfo = Bool
    type AttrLabel SettingsEnableOfflineWebApplicationCachePropertyInfo = "enable-offline-web-application-cache"
    type AttrOrigin SettingsEnableOfflineWebApplicationCachePropertyInfo = Settings
    attrGet = getSettingsEnableOfflineWebApplicationCache
    attrSet = setSettingsEnableOfflineWebApplicationCache
    attrPut = setSettingsEnableOfflineWebApplicationCache
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableOfflineWebApplicationCache
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableOfflineWebApplicationCache"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableOfflineWebApplicationCache"
        })
#endif

-- VVV Prop "enable-page-cache"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-page-cache@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enablePageCache
-- @
getSettingsEnablePageCache :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnablePageCache obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-page-cache"

-- | Set the value of the “@enable-page-cache@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enablePageCache 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnablePageCache :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnablePageCache obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-page-cache" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-page-cache@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnablePageCache :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnablePageCache val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-page-cache" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnablePageCachePropertyInfo
instance AttrInfo SettingsEnablePageCachePropertyInfo where
    type AttrAllowedOps SettingsEnablePageCachePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnablePageCachePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnablePageCachePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnablePageCachePropertyInfo = (~) Bool
    type AttrTransferType SettingsEnablePageCachePropertyInfo = Bool
    type AttrGetType SettingsEnablePageCachePropertyInfo = Bool
    type AttrLabel SettingsEnablePageCachePropertyInfo = "enable-page-cache"
    type AttrOrigin SettingsEnablePageCachePropertyInfo = Settings
    attrGet = getSettingsEnablePageCache
    attrSet = setSettingsEnablePageCache
    attrPut = setSettingsEnablePageCache
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnablePageCache
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enablePageCache"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enablePageCache"
        })
#endif

-- VVV Prop "enable-plugins"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-plugins@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enablePlugins
-- @
getSettingsEnablePlugins :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnablePlugins obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-plugins"

-- | Set the value of the “@enable-plugins@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enablePlugins 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnablePlugins :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnablePlugins obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-plugins" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-plugins@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnablePlugins :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnablePlugins val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-plugins" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnablePluginsPropertyInfo
instance AttrInfo SettingsEnablePluginsPropertyInfo where
    type AttrAllowedOps SettingsEnablePluginsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnablePluginsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnablePluginsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnablePluginsPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnablePluginsPropertyInfo = Bool
    type AttrGetType SettingsEnablePluginsPropertyInfo = Bool
    type AttrLabel SettingsEnablePluginsPropertyInfo = "enable-plugins"
    type AttrOrigin SettingsEnablePluginsPropertyInfo = Settings
    attrGet = getSettingsEnablePlugins
    attrSet = setSettingsEnablePlugins
    attrPut = setSettingsEnablePlugins
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnablePlugins
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enablePlugins"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enablePlugins"
        })
#endif

-- VVV Prop "enable-private-browsing"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-private-browsing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enablePrivateBrowsing
-- @
getSettingsEnablePrivateBrowsing :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnablePrivateBrowsing obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-private-browsing"

-- | Set the value of the “@enable-private-browsing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enablePrivateBrowsing 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnablePrivateBrowsing :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnablePrivateBrowsing obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-private-browsing" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-private-browsing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnablePrivateBrowsing :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnablePrivateBrowsing val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-private-browsing" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnablePrivateBrowsingPropertyInfo
instance AttrInfo SettingsEnablePrivateBrowsingPropertyInfo where
    type AttrAllowedOps SettingsEnablePrivateBrowsingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnablePrivateBrowsingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnablePrivateBrowsingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnablePrivateBrowsingPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnablePrivateBrowsingPropertyInfo = Bool
    type AttrGetType SettingsEnablePrivateBrowsingPropertyInfo = Bool
    type AttrLabel SettingsEnablePrivateBrowsingPropertyInfo = "enable-private-browsing"
    type AttrOrigin SettingsEnablePrivateBrowsingPropertyInfo = Settings
    attrGet = getSettingsEnablePrivateBrowsing
    attrSet = setSettingsEnablePrivateBrowsing
    attrPut = setSettingsEnablePrivateBrowsing
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnablePrivateBrowsing
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enablePrivateBrowsing"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enablePrivateBrowsing"
        })
#endif

-- VVV Prop "enable-resizable-text-areas"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-resizable-text-areas@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableResizableTextAreas
-- @
getSettingsEnableResizableTextAreas :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableResizableTextAreas obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-resizable-text-areas"

-- | Set the value of the “@enable-resizable-text-areas@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableResizableTextAreas 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableResizableTextAreas :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableResizableTextAreas obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-resizable-text-areas" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-resizable-text-areas@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableResizableTextAreas :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableResizableTextAreas val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-resizable-text-areas" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableResizableTextAreasPropertyInfo
instance AttrInfo SettingsEnableResizableTextAreasPropertyInfo where
    type AttrAllowedOps SettingsEnableResizableTextAreasPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableResizableTextAreasPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableResizableTextAreasPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableResizableTextAreasPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableResizableTextAreasPropertyInfo = Bool
    type AttrGetType SettingsEnableResizableTextAreasPropertyInfo = Bool
    type AttrLabel SettingsEnableResizableTextAreasPropertyInfo = "enable-resizable-text-areas"
    type AttrOrigin SettingsEnableResizableTextAreasPropertyInfo = Settings
    attrGet = getSettingsEnableResizableTextAreas
    attrSet = setSettingsEnableResizableTextAreas
    attrPut = setSettingsEnableResizableTextAreas
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableResizableTextAreas
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableResizableTextAreas"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableResizableTextAreas"
        })
#endif

-- VVV Prop "enable-site-specific-quirks"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-site-specific-quirks@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableSiteSpecificQuirks
-- @
getSettingsEnableSiteSpecificQuirks :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableSiteSpecificQuirks obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-site-specific-quirks"

-- | Set the value of the “@enable-site-specific-quirks@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableSiteSpecificQuirks 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableSiteSpecificQuirks :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableSiteSpecificQuirks obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-site-specific-quirks" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-site-specific-quirks@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableSiteSpecificQuirks :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableSiteSpecificQuirks val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-site-specific-quirks" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableSiteSpecificQuirksPropertyInfo
instance AttrInfo SettingsEnableSiteSpecificQuirksPropertyInfo where
    type AttrAllowedOps SettingsEnableSiteSpecificQuirksPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableSiteSpecificQuirksPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableSiteSpecificQuirksPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableSiteSpecificQuirksPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableSiteSpecificQuirksPropertyInfo = Bool
    type AttrGetType SettingsEnableSiteSpecificQuirksPropertyInfo = Bool
    type AttrLabel SettingsEnableSiteSpecificQuirksPropertyInfo = "enable-site-specific-quirks"
    type AttrOrigin SettingsEnableSiteSpecificQuirksPropertyInfo = Settings
    attrGet = getSettingsEnableSiteSpecificQuirks
    attrSet = setSettingsEnableSiteSpecificQuirks
    attrPut = setSettingsEnableSiteSpecificQuirks
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableSiteSpecificQuirks
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableSiteSpecificQuirks"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableSiteSpecificQuirks"
        })
#endif

-- VVV Prop "enable-smooth-scrolling"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-smooth-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableSmoothScrolling
-- @
getSettingsEnableSmoothScrolling :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableSmoothScrolling obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-smooth-scrolling"

-- | Set the value of the “@enable-smooth-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableSmoothScrolling 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableSmoothScrolling :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableSmoothScrolling obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-smooth-scrolling" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-smooth-scrolling@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableSmoothScrolling :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableSmoothScrolling val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-smooth-scrolling" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableSmoothScrollingPropertyInfo
instance AttrInfo SettingsEnableSmoothScrollingPropertyInfo where
    type AttrAllowedOps SettingsEnableSmoothScrollingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableSmoothScrollingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableSmoothScrollingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableSmoothScrollingPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableSmoothScrollingPropertyInfo = Bool
    type AttrGetType SettingsEnableSmoothScrollingPropertyInfo = Bool
    type AttrLabel SettingsEnableSmoothScrollingPropertyInfo = "enable-smooth-scrolling"
    type AttrOrigin SettingsEnableSmoothScrollingPropertyInfo = Settings
    attrGet = getSettingsEnableSmoothScrolling
    attrSet = setSettingsEnableSmoothScrolling
    attrPut = setSettingsEnableSmoothScrolling
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableSmoothScrolling
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableSmoothScrolling"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableSmoothScrolling"
        })
#endif

-- VVV Prop "enable-spatial-navigation"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-spatial-navigation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableSpatialNavigation
-- @
getSettingsEnableSpatialNavigation :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableSpatialNavigation obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-spatial-navigation"

-- | Set the value of the “@enable-spatial-navigation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableSpatialNavigation 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableSpatialNavigation :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableSpatialNavigation obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-spatial-navigation" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-spatial-navigation@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableSpatialNavigation :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableSpatialNavigation val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-spatial-navigation" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableSpatialNavigationPropertyInfo
instance AttrInfo SettingsEnableSpatialNavigationPropertyInfo where
    type AttrAllowedOps SettingsEnableSpatialNavigationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableSpatialNavigationPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableSpatialNavigationPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableSpatialNavigationPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableSpatialNavigationPropertyInfo = Bool
    type AttrGetType SettingsEnableSpatialNavigationPropertyInfo = Bool
    type AttrLabel SettingsEnableSpatialNavigationPropertyInfo = "enable-spatial-navigation"
    type AttrOrigin SettingsEnableSpatialNavigationPropertyInfo = Settings
    attrGet = getSettingsEnableSpatialNavigation
    attrSet = setSettingsEnableSpatialNavigation
    attrPut = setSettingsEnableSpatialNavigation
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableSpatialNavigation
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableSpatialNavigation"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableSpatialNavigation"
        })
#endif

-- VVV Prop "enable-tabs-to-links"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-tabs-to-links@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableTabsToLinks
-- @
getSettingsEnableTabsToLinks :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableTabsToLinks obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-tabs-to-links"

-- | Set the value of the “@enable-tabs-to-links@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableTabsToLinks 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableTabsToLinks :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableTabsToLinks obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-tabs-to-links" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-tabs-to-links@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableTabsToLinks :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableTabsToLinks val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-tabs-to-links" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableTabsToLinksPropertyInfo
instance AttrInfo SettingsEnableTabsToLinksPropertyInfo where
    type AttrAllowedOps SettingsEnableTabsToLinksPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableTabsToLinksPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableTabsToLinksPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableTabsToLinksPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableTabsToLinksPropertyInfo = Bool
    type AttrGetType SettingsEnableTabsToLinksPropertyInfo = Bool
    type AttrLabel SettingsEnableTabsToLinksPropertyInfo = "enable-tabs-to-links"
    type AttrOrigin SettingsEnableTabsToLinksPropertyInfo = Settings
    attrGet = getSettingsEnableTabsToLinks
    attrSet = setSettingsEnableTabsToLinks
    attrPut = setSettingsEnableTabsToLinks
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableTabsToLinks
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableTabsToLinks"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableTabsToLinks"
        })
#endif

-- VVV Prop "enable-webaudio"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-webaudio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableWebaudio
-- @
getSettingsEnableWebaudio :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableWebaudio obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-webaudio"

-- | Set the value of the “@enable-webaudio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableWebaudio 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableWebaudio :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableWebaudio obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-webaudio" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-webaudio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableWebaudio :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableWebaudio val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-webaudio" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebaudioPropertyInfo
instance AttrInfo SettingsEnableWebaudioPropertyInfo where
    type AttrAllowedOps SettingsEnableWebaudioPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableWebaudioPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableWebaudioPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableWebaudioPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableWebaudioPropertyInfo = Bool
    type AttrGetType SettingsEnableWebaudioPropertyInfo = Bool
    type AttrLabel SettingsEnableWebaudioPropertyInfo = "enable-webaudio"
    type AttrOrigin SettingsEnableWebaudioPropertyInfo = Settings
    attrGet = getSettingsEnableWebaudio
    attrSet = setSettingsEnableWebaudio
    attrPut = setSettingsEnableWebaudio
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableWebaudio
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableWebaudio"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableWebaudio"
        })
#endif

-- VVV Prop "enable-webgl"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-webgl@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableWebgl
-- @
getSettingsEnableWebgl :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableWebgl obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-webgl"

-- | Set the value of the “@enable-webgl@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableWebgl 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableWebgl :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableWebgl obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-webgl" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-webgl@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableWebgl :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableWebgl val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-webgl" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebglPropertyInfo
instance AttrInfo SettingsEnableWebglPropertyInfo where
    type AttrAllowedOps SettingsEnableWebglPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableWebglPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableWebglPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableWebglPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableWebglPropertyInfo = Bool
    type AttrGetType SettingsEnableWebglPropertyInfo = Bool
    type AttrLabel SettingsEnableWebglPropertyInfo = "enable-webgl"
    type AttrOrigin SettingsEnableWebglPropertyInfo = Settings
    attrGet = getSettingsEnableWebgl
    attrSet = setSettingsEnableWebgl
    attrPut = setSettingsEnableWebgl
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableWebgl
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableWebgl"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableWebgl"
        })
#endif

-- VVV Prop "enable-webrtc"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-webrtc@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableWebrtc
-- @
getSettingsEnableWebrtc :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableWebrtc obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-webrtc"

-- | Set the value of the “@enable-webrtc@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableWebrtc 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableWebrtc :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableWebrtc obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-webrtc" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-webrtc@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableWebrtc :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableWebrtc val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-webrtc" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableWebrtcPropertyInfo
instance AttrInfo SettingsEnableWebrtcPropertyInfo where
    type AttrAllowedOps SettingsEnableWebrtcPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableWebrtcPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableWebrtcPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableWebrtcPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableWebrtcPropertyInfo = Bool
    type AttrGetType SettingsEnableWebrtcPropertyInfo = Bool
    type AttrLabel SettingsEnableWebrtcPropertyInfo = "enable-webrtc"
    type AttrOrigin SettingsEnableWebrtcPropertyInfo = Settings
    attrGet = getSettingsEnableWebrtc
    attrSet = setSettingsEnableWebrtc
    attrPut = setSettingsEnableWebrtc
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableWebrtc
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableWebrtc"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableWebrtc"
        })
#endif

-- VVV Prop "enable-write-console-messages-to-stdout"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-write-console-messages-to-stdout@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableWriteConsoleMessagesToStdout
-- @
getSettingsEnableWriteConsoleMessagesToStdout :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableWriteConsoleMessagesToStdout obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-write-console-messages-to-stdout"

-- | Set the value of the “@enable-write-console-messages-to-stdout@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableWriteConsoleMessagesToStdout 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableWriteConsoleMessagesToStdout :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableWriteConsoleMessagesToStdout obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-write-console-messages-to-stdout" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-write-console-messages-to-stdout@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableWriteConsoleMessagesToStdout :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableWriteConsoleMessagesToStdout val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-write-console-messages-to-stdout" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo
instance AttrInfo SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo where
    type AttrAllowedOps SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = Bool
    type AttrGetType SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = Bool
    type AttrLabel SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = "enable-write-console-messages-to-stdout"
    type AttrOrigin SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo = Settings
    attrGet = getSettingsEnableWriteConsoleMessagesToStdout
    attrSet = setSettingsEnableWriteConsoleMessagesToStdout
    attrPut = setSettingsEnableWriteConsoleMessagesToStdout
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableWriteConsoleMessagesToStdout
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableWriteConsoleMessagesToStdout"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableWriteConsoleMessagesToStdout"
        })
#endif

-- VVV Prop "enable-xss-auditor"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@enable-xss-auditor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #enableXssAuditor
-- @
getSettingsEnableXssAuditor :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsEnableXssAuditor obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-xss-auditor"

-- | Set the value of the “@enable-xss-auditor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #enableXssAuditor 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsEnableXssAuditor :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsEnableXssAuditor obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "enable-xss-auditor" val

-- | Construct a t'GValueConstruct' with valid value for the “@enable-xss-auditor@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsEnableXssAuditor :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsEnableXssAuditor val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "enable-xss-auditor" val

#if defined(ENABLE_OVERLOADING)
data SettingsEnableXssAuditorPropertyInfo
instance AttrInfo SettingsEnableXssAuditorPropertyInfo where
    type AttrAllowedOps SettingsEnableXssAuditorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsEnableXssAuditorPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsEnableXssAuditorPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsEnableXssAuditorPropertyInfo = (~) Bool
    type AttrTransferType SettingsEnableXssAuditorPropertyInfo = Bool
    type AttrGetType SettingsEnableXssAuditorPropertyInfo = Bool
    type AttrLabel SettingsEnableXssAuditorPropertyInfo = "enable-xss-auditor"
    type AttrOrigin SettingsEnableXssAuditorPropertyInfo = Settings
    attrGet = getSettingsEnableXssAuditor
    attrSet = setSettingsEnableXssAuditor
    attrPut = setSettingsEnableXssAuditor
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsEnableXssAuditor
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.enableXssAuditor"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:enableXssAuditor"
        })
#endif

-- VVV Prop "fantasy-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@fantasy-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #fantasyFontFamily
-- @
getSettingsFantasyFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsFantasyFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsFantasyFontFamily" $ B.Properties.getObjectPropertyString obj "fantasy-font-family"

-- | Set the value of the “@fantasy-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #fantasyFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsFantasyFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsFantasyFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "fantasy-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@fantasy-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsFantasyFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsFantasyFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "fantasy-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsFantasyFontFamilyPropertyInfo
instance AttrInfo SettingsFantasyFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsFantasyFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsFantasyFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsFantasyFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsFantasyFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsFantasyFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsFantasyFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsFantasyFontFamilyPropertyInfo = "fantasy-font-family"
    type AttrOrigin SettingsFantasyFontFamilyPropertyInfo = Settings
    attrGet = getSettingsFantasyFontFamily
    attrSet = setSettingsFantasyFontFamily
    attrPut = setSettingsFantasyFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsFantasyFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.fantasyFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:fantasyFontFamily"
        })
#endif

-- VVV Prop "hardware-acceleration-policy"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "HardwareAccelerationPolicy"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@hardware-acceleration-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #hardwareAccelerationPolicy
-- @
getSettingsHardwareAccelerationPolicy :: (MonadIO m, IsSettings o) => o -> m WebKit2.Enums.HardwareAccelerationPolicy
getSettingsHardwareAccelerationPolicy obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "hardware-acceleration-policy"

-- | Set the value of the “@hardware-acceleration-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #hardwareAccelerationPolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsHardwareAccelerationPolicy :: (MonadIO m, IsSettings o) => o -> WebKit2.Enums.HardwareAccelerationPolicy -> m ()
setSettingsHardwareAccelerationPolicy obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyEnum obj "hardware-acceleration-policy" val

-- | Construct a t'GValueConstruct' with valid value for the “@hardware-acceleration-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsHardwareAccelerationPolicy :: (IsSettings o, MIO.MonadIO m) => WebKit2.Enums.HardwareAccelerationPolicy -> m (GValueConstruct o)
constructSettingsHardwareAccelerationPolicy val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "hardware-acceleration-policy" val

#if defined(ENABLE_OVERLOADING)
data SettingsHardwareAccelerationPolicyPropertyInfo
instance AttrInfo SettingsHardwareAccelerationPolicyPropertyInfo where
    type AttrAllowedOps SettingsHardwareAccelerationPolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsHardwareAccelerationPolicyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsHardwareAccelerationPolicyPropertyInfo = (~) WebKit2.Enums.HardwareAccelerationPolicy
    type AttrTransferTypeConstraint SettingsHardwareAccelerationPolicyPropertyInfo = (~) WebKit2.Enums.HardwareAccelerationPolicy
    type AttrTransferType SettingsHardwareAccelerationPolicyPropertyInfo = WebKit2.Enums.HardwareAccelerationPolicy
    type AttrGetType SettingsHardwareAccelerationPolicyPropertyInfo = WebKit2.Enums.HardwareAccelerationPolicy
    type AttrLabel SettingsHardwareAccelerationPolicyPropertyInfo = "hardware-acceleration-policy"
    type AttrOrigin SettingsHardwareAccelerationPolicyPropertyInfo = Settings
    attrGet = getSettingsHardwareAccelerationPolicy
    attrSet = setSettingsHardwareAccelerationPolicy
    attrPut = setSettingsHardwareAccelerationPolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsHardwareAccelerationPolicy
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.hardwareAccelerationPolicy"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:hardwareAccelerationPolicy"
        })
#endif

-- VVV Prop "javascript-can-access-clipboard"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@javascript-can-access-clipboard@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #javascriptCanAccessClipboard
-- @
getSettingsJavascriptCanAccessClipboard :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsJavascriptCanAccessClipboard obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "javascript-can-access-clipboard"

-- | Set the value of the “@javascript-can-access-clipboard@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #javascriptCanAccessClipboard 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsJavascriptCanAccessClipboard :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsJavascriptCanAccessClipboard obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "javascript-can-access-clipboard" val

-- | Construct a t'GValueConstruct' with valid value for the “@javascript-can-access-clipboard@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsJavascriptCanAccessClipboard :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsJavascriptCanAccessClipboard val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "javascript-can-access-clipboard" val

#if defined(ENABLE_OVERLOADING)
data SettingsJavascriptCanAccessClipboardPropertyInfo
instance AttrInfo SettingsJavascriptCanAccessClipboardPropertyInfo where
    type AttrAllowedOps SettingsJavascriptCanAccessClipboardPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsJavascriptCanAccessClipboardPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsJavascriptCanAccessClipboardPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsJavascriptCanAccessClipboardPropertyInfo = (~) Bool
    type AttrTransferType SettingsJavascriptCanAccessClipboardPropertyInfo = Bool
    type AttrGetType SettingsJavascriptCanAccessClipboardPropertyInfo = Bool
    type AttrLabel SettingsJavascriptCanAccessClipboardPropertyInfo = "javascript-can-access-clipboard"
    type AttrOrigin SettingsJavascriptCanAccessClipboardPropertyInfo = Settings
    attrGet = getSettingsJavascriptCanAccessClipboard
    attrSet = setSettingsJavascriptCanAccessClipboard
    attrPut = setSettingsJavascriptCanAccessClipboard
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsJavascriptCanAccessClipboard
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.javascriptCanAccessClipboard"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:javascriptCanAccessClipboard"
        })
#endif

-- VVV Prop "javascript-can-open-windows-automatically"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@javascript-can-open-windows-automatically@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #javascriptCanOpenWindowsAutomatically
-- @
getSettingsJavascriptCanOpenWindowsAutomatically :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsJavascriptCanOpenWindowsAutomatically obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "javascript-can-open-windows-automatically"

-- | Set the value of the “@javascript-can-open-windows-automatically@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #javascriptCanOpenWindowsAutomatically 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsJavascriptCanOpenWindowsAutomatically :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsJavascriptCanOpenWindowsAutomatically obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "javascript-can-open-windows-automatically" val

-- | Construct a t'GValueConstruct' with valid value for the “@javascript-can-open-windows-automatically@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsJavascriptCanOpenWindowsAutomatically :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsJavascriptCanOpenWindowsAutomatically val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "javascript-can-open-windows-automatically" val

#if defined(ENABLE_OVERLOADING)
data SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo
instance AttrInfo SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo where
    type AttrAllowedOps SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = (~) Bool
    type AttrTransferType SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = Bool
    type AttrGetType SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = Bool
    type AttrLabel SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = "javascript-can-open-windows-automatically"
    type AttrOrigin SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo = Settings
    attrGet = getSettingsJavascriptCanOpenWindowsAutomatically
    attrSet = setSettingsJavascriptCanOpenWindowsAutomatically
    attrPut = setSettingsJavascriptCanOpenWindowsAutomatically
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsJavascriptCanOpenWindowsAutomatically
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.javascriptCanOpenWindowsAutomatically"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:javascriptCanOpenWindowsAutomatically"
        })
#endif

-- VVV Prop "load-icons-ignoring-image-load-setting"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@load-icons-ignoring-image-load-setting@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #loadIconsIgnoringImageLoadSetting
-- @
getSettingsLoadIconsIgnoringImageLoadSetting :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsLoadIconsIgnoringImageLoadSetting obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "load-icons-ignoring-image-load-setting"

-- | Set the value of the “@load-icons-ignoring-image-load-setting@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #loadIconsIgnoringImageLoadSetting 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsLoadIconsIgnoringImageLoadSetting :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsLoadIconsIgnoringImageLoadSetting obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "load-icons-ignoring-image-load-setting" val

-- | Construct a t'GValueConstruct' with valid value for the “@load-icons-ignoring-image-load-setting@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsLoadIconsIgnoringImageLoadSetting :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsLoadIconsIgnoringImageLoadSetting val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "load-icons-ignoring-image-load-setting" val

#if defined(ENABLE_OVERLOADING)
data SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo
instance AttrInfo SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo where
    type AttrAllowedOps SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = (~) Bool
    type AttrTransferType SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = Bool
    type AttrGetType SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = Bool
    type AttrLabel SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = "load-icons-ignoring-image-load-setting"
    type AttrOrigin SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo = Settings
    attrGet = getSettingsLoadIconsIgnoringImageLoadSetting
    attrSet = setSettingsLoadIconsIgnoringImageLoadSetting
    attrPut = setSettingsLoadIconsIgnoringImageLoadSetting
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsLoadIconsIgnoringImageLoadSetting
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.loadIconsIgnoringImageLoadSetting"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:loadIconsIgnoringImageLoadSetting"
        })
#endif

-- VVV Prop "math-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@math-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #mathFontFamily
-- @
getSettingsMathFontFamily :: (MonadIO m, IsSettings o) => o -> m (Maybe T.Text)
getSettingsMathFontFamily obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "math-font-family"

-- | Set the value of the “@math-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #mathFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMathFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsMathFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "math-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@math-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMathFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsMathFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "math-font-family" (P.Just val)

-- | Set the value of the “@math-font-family@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #mathFontFamily
-- @
clearSettingsMathFontFamily :: (MonadIO m, IsSettings o) => o -> m ()
clearSettingsMathFontFamily obj = liftIO $ B.Properties.setObjectPropertyString obj "math-font-family" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data SettingsMathFontFamilyPropertyInfo
instance AttrInfo SettingsMathFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsMathFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint SettingsMathFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMathFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsMathFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsMathFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsMathFontFamilyPropertyInfo = (Maybe T.Text)
    type AttrLabel SettingsMathFontFamilyPropertyInfo = "math-font-family"
    type AttrOrigin SettingsMathFontFamilyPropertyInfo = Settings
    attrGet = getSettingsMathFontFamily
    attrSet = setSettingsMathFontFamily
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMathFontFamily
    attrClear = clearSettingsMathFontFamily
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.mathFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:mathFontFamily"
        })
#endif

-- VVV Prop "media-content-types-requiring-hardware-support"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@media-content-types-requiring-hardware-support@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #mediaContentTypesRequiringHardwareSupport
-- @
getSettingsMediaContentTypesRequiringHardwareSupport :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsMediaContentTypesRequiringHardwareSupport obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsMediaContentTypesRequiringHardwareSupport" $ B.Properties.getObjectPropertyString obj "media-content-types-requiring-hardware-support"

-- | Set the value of the “@media-content-types-requiring-hardware-support@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #mediaContentTypesRequiringHardwareSupport 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMediaContentTypesRequiringHardwareSupport :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsMediaContentTypesRequiringHardwareSupport obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "media-content-types-requiring-hardware-support" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@media-content-types-requiring-hardware-support@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMediaContentTypesRequiringHardwareSupport :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsMediaContentTypesRequiringHardwareSupport val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "media-content-types-requiring-hardware-support" (P.Just val)

-- | Set the value of the “@media-content-types-requiring-hardware-support@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #mediaContentTypesRequiringHardwareSupport
-- @
clearSettingsMediaContentTypesRequiringHardwareSupport :: (MonadIO m, IsSettings o) => o -> m ()
clearSettingsMediaContentTypesRequiringHardwareSupport obj = liftIO $ B.Properties.setObjectPropertyString obj "media-content-types-requiring-hardware-support" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo
instance AttrInfo SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo where
    type AttrAllowedOps SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear, 'AttrPut]
    type AttrBaseTypeConstraint SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = (~) T.Text
    type AttrTransferType SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = T.Text
    type AttrGetType SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = T.Text
    type AttrLabel SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = "media-content-types-requiring-hardware-support"
    type AttrOrigin SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo = Settings
    attrGet = getSettingsMediaContentTypesRequiringHardwareSupport
    attrSet = setSettingsMediaContentTypesRequiringHardwareSupport
    attrPut = setSettingsMediaContentTypesRequiringHardwareSupport
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMediaContentTypesRequiringHardwareSupport
    attrClear = clearSettingsMediaContentTypesRequiringHardwareSupport
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.mediaContentTypesRequiringHardwareSupport"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:mediaContentTypesRequiringHardwareSupport"
        })
#endif

-- VVV Prop "media-playback-allows-inline"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@media-playback-allows-inline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #mediaPlaybackAllowsInline
-- @
getSettingsMediaPlaybackAllowsInline :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsMediaPlaybackAllowsInline obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "media-playback-allows-inline"

-- | Set the value of the “@media-playback-allows-inline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #mediaPlaybackAllowsInline 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMediaPlaybackAllowsInline :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsMediaPlaybackAllowsInline obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "media-playback-allows-inline" val

-- | Construct a t'GValueConstruct' with valid value for the “@media-playback-allows-inline@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMediaPlaybackAllowsInline :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsMediaPlaybackAllowsInline val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "media-playback-allows-inline" val

#if defined(ENABLE_OVERLOADING)
data SettingsMediaPlaybackAllowsInlinePropertyInfo
instance AttrInfo SettingsMediaPlaybackAllowsInlinePropertyInfo where
    type AttrAllowedOps SettingsMediaPlaybackAllowsInlinePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsMediaPlaybackAllowsInlinePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMediaPlaybackAllowsInlinePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsMediaPlaybackAllowsInlinePropertyInfo = (~) Bool
    type AttrTransferType SettingsMediaPlaybackAllowsInlinePropertyInfo = Bool
    type AttrGetType SettingsMediaPlaybackAllowsInlinePropertyInfo = Bool
    type AttrLabel SettingsMediaPlaybackAllowsInlinePropertyInfo = "media-playback-allows-inline"
    type AttrOrigin SettingsMediaPlaybackAllowsInlinePropertyInfo = Settings
    attrGet = getSettingsMediaPlaybackAllowsInline
    attrSet = setSettingsMediaPlaybackAllowsInline
    attrPut = setSettingsMediaPlaybackAllowsInline
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMediaPlaybackAllowsInline
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.mediaPlaybackAllowsInline"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:mediaPlaybackAllowsInline"
        })
#endif

-- VVV Prop "media-playback-requires-user-gesture"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@media-playback-requires-user-gesture@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #mediaPlaybackRequiresUserGesture
-- @
getSettingsMediaPlaybackRequiresUserGesture :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsMediaPlaybackRequiresUserGesture obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "media-playback-requires-user-gesture"

-- | Set the value of the “@media-playback-requires-user-gesture@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #mediaPlaybackRequiresUserGesture 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMediaPlaybackRequiresUserGesture :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsMediaPlaybackRequiresUserGesture obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "media-playback-requires-user-gesture" val

-- | Construct a t'GValueConstruct' with valid value for the “@media-playback-requires-user-gesture@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMediaPlaybackRequiresUserGesture :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsMediaPlaybackRequiresUserGesture val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "media-playback-requires-user-gesture" val

#if defined(ENABLE_OVERLOADING)
data SettingsMediaPlaybackRequiresUserGesturePropertyInfo
instance AttrInfo SettingsMediaPlaybackRequiresUserGesturePropertyInfo where
    type AttrAllowedOps SettingsMediaPlaybackRequiresUserGesturePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsMediaPlaybackRequiresUserGesturePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMediaPlaybackRequiresUserGesturePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsMediaPlaybackRequiresUserGesturePropertyInfo = (~) Bool
    type AttrTransferType SettingsMediaPlaybackRequiresUserGesturePropertyInfo = Bool
    type AttrGetType SettingsMediaPlaybackRequiresUserGesturePropertyInfo = Bool
    type AttrLabel SettingsMediaPlaybackRequiresUserGesturePropertyInfo = "media-playback-requires-user-gesture"
    type AttrOrigin SettingsMediaPlaybackRequiresUserGesturePropertyInfo = Settings
    attrGet = getSettingsMediaPlaybackRequiresUserGesture
    attrSet = setSettingsMediaPlaybackRequiresUserGesture
    attrPut = setSettingsMediaPlaybackRequiresUserGesture
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMediaPlaybackRequiresUserGesture
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.mediaPlaybackRequiresUserGesture"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:mediaPlaybackRequiresUserGesture"
        })
#endif

-- VVV Prop "minimum-font-size"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@minimum-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #minimumFontSize
-- @
getSettingsMinimumFontSize :: (MonadIO m, IsSettings o) => o -> m Word32
getSettingsMinimumFontSize obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "minimum-font-size"

-- | Set the value of the “@minimum-font-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #minimumFontSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMinimumFontSize :: (MonadIO m, IsSettings o) => o -> Word32 -> m ()
setSettingsMinimumFontSize obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyUInt32 obj "minimum-font-size" val

-- | Construct a t'GValueConstruct' with valid value for the “@minimum-font-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMinimumFontSize :: (IsSettings o, MIO.MonadIO m) => Word32 -> m (GValueConstruct o)
constructSettingsMinimumFontSize val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyUInt32 "minimum-font-size" val

#if defined(ENABLE_OVERLOADING)
data SettingsMinimumFontSizePropertyInfo
instance AttrInfo SettingsMinimumFontSizePropertyInfo where
    type AttrAllowedOps SettingsMinimumFontSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsMinimumFontSizePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMinimumFontSizePropertyInfo = (~) Word32
    type AttrTransferTypeConstraint SettingsMinimumFontSizePropertyInfo = (~) Word32
    type AttrTransferType SettingsMinimumFontSizePropertyInfo = Word32
    type AttrGetType SettingsMinimumFontSizePropertyInfo = Word32
    type AttrLabel SettingsMinimumFontSizePropertyInfo = "minimum-font-size"
    type AttrOrigin SettingsMinimumFontSizePropertyInfo = Settings
    attrGet = getSettingsMinimumFontSize
    attrSet = setSettingsMinimumFontSize
    attrPut = setSettingsMinimumFontSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMinimumFontSize
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.minimumFontSize"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:minimumFontSize"
        })
#endif

-- VVV Prop "monospace-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@monospace-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #monospaceFontFamily
-- @
getSettingsMonospaceFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsMonospaceFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsMonospaceFontFamily" $ B.Properties.getObjectPropertyString obj "monospace-font-family"

-- | Set the value of the “@monospace-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #monospaceFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsMonospaceFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsMonospaceFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "monospace-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@monospace-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsMonospaceFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsMonospaceFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "monospace-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsMonospaceFontFamilyPropertyInfo
instance AttrInfo SettingsMonospaceFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsMonospaceFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsMonospaceFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsMonospaceFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsMonospaceFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsMonospaceFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsMonospaceFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsMonospaceFontFamilyPropertyInfo = "monospace-font-family"
    type AttrOrigin SettingsMonospaceFontFamilyPropertyInfo = Settings
    attrGet = getSettingsMonospaceFontFamily
    attrSet = setSettingsMonospaceFontFamily
    attrPut = setSettingsMonospaceFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsMonospaceFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.monospaceFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:monospaceFontFamily"
        })
#endif

-- VVV Prop "pictograph-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pictograph-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #pictographFontFamily
-- @
getSettingsPictographFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsPictographFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsPictographFontFamily" $ B.Properties.getObjectPropertyString obj "pictograph-font-family"

-- | Set the value of the “@pictograph-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #pictographFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsPictographFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsPictographFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "pictograph-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@pictograph-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsPictographFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsPictographFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "pictograph-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsPictographFontFamilyPropertyInfo
instance AttrInfo SettingsPictographFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsPictographFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsPictographFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsPictographFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsPictographFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsPictographFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsPictographFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsPictographFontFamilyPropertyInfo = "pictograph-font-family"
    type AttrOrigin SettingsPictographFontFamilyPropertyInfo = Settings
    attrGet = getSettingsPictographFontFamily
    attrSet = setSettingsPictographFontFamily
    attrPut = setSettingsPictographFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsPictographFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.pictographFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:pictographFontFamily"
        })
#endif

-- VVV Prop "print-backgrounds"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@print-backgrounds@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #printBackgrounds
-- @
getSettingsPrintBackgrounds :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsPrintBackgrounds obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "print-backgrounds"

-- | Set the value of the “@print-backgrounds@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #printBackgrounds 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsPrintBackgrounds :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsPrintBackgrounds obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "print-backgrounds" val

-- | Construct a t'GValueConstruct' with valid value for the “@print-backgrounds@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsPrintBackgrounds :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsPrintBackgrounds val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "print-backgrounds" val

#if defined(ENABLE_OVERLOADING)
data SettingsPrintBackgroundsPropertyInfo
instance AttrInfo SettingsPrintBackgroundsPropertyInfo where
    type AttrAllowedOps SettingsPrintBackgroundsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsPrintBackgroundsPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsPrintBackgroundsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsPrintBackgroundsPropertyInfo = (~) Bool
    type AttrTransferType SettingsPrintBackgroundsPropertyInfo = Bool
    type AttrGetType SettingsPrintBackgroundsPropertyInfo = Bool
    type AttrLabel SettingsPrintBackgroundsPropertyInfo = "print-backgrounds"
    type AttrOrigin SettingsPrintBackgroundsPropertyInfo = Settings
    attrGet = getSettingsPrintBackgrounds
    attrSet = setSettingsPrintBackgrounds
    attrPut = setSettingsPrintBackgrounds
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsPrintBackgrounds
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.printBackgrounds"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:printBackgrounds"
        })
#endif

-- VVV Prop "sans-serif-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@sans-serif-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #sansSerifFontFamily
-- @
getSettingsSansSerifFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsSansSerifFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsSansSerifFontFamily" $ B.Properties.getObjectPropertyString obj "sans-serif-font-family"

-- | Set the value of the “@sans-serif-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #sansSerifFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsSansSerifFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsSansSerifFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "sans-serif-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@sans-serif-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsSansSerifFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsSansSerifFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "sans-serif-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsSansSerifFontFamilyPropertyInfo
instance AttrInfo SettingsSansSerifFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsSansSerifFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsSansSerifFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsSansSerifFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsSansSerifFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsSansSerifFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsSansSerifFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsSansSerifFontFamilyPropertyInfo = "sans-serif-font-family"
    type AttrOrigin SettingsSansSerifFontFamilyPropertyInfo = Settings
    attrGet = getSettingsSansSerifFontFamily
    attrSet = setSettingsSansSerifFontFamily
    attrPut = setSettingsSansSerifFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsSansSerifFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.sansSerifFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:sansSerifFontFamily"
        })
#endif

-- VVV Prop "serif-font-family"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@serif-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #serifFontFamily
-- @
getSettingsSerifFontFamily :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsSerifFontFamily obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsSerifFontFamily" $ B.Properties.getObjectPropertyString obj "serif-font-family"

-- | Set the value of the “@serif-font-family@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #serifFontFamily 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsSerifFontFamily :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsSerifFontFamily obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "serif-font-family" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@serif-font-family@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsSerifFontFamily :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsSerifFontFamily val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "serif-font-family" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsSerifFontFamilyPropertyInfo
instance AttrInfo SettingsSerifFontFamilyPropertyInfo where
    type AttrAllowedOps SettingsSerifFontFamilyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsSerifFontFamilyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsSerifFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsSerifFontFamilyPropertyInfo = (~) T.Text
    type AttrTransferType SettingsSerifFontFamilyPropertyInfo = T.Text
    type AttrGetType SettingsSerifFontFamilyPropertyInfo = T.Text
    type AttrLabel SettingsSerifFontFamilyPropertyInfo = "serif-font-family"
    type AttrOrigin SettingsSerifFontFamilyPropertyInfo = Settings
    attrGet = getSettingsSerifFontFamily
    attrSet = setSettingsSerifFontFamily
    attrPut = setSettingsSerifFontFamily
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsSerifFontFamily
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.serifFontFamily"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:serifFontFamily"
        })
#endif

-- VVV Prop "user-agent"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@user-agent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #userAgent
-- @
getSettingsUserAgent :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsUserAgent obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsUserAgent" $ B.Properties.getObjectPropertyString obj "user-agent"

-- | Set the value of the “@user-agent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #userAgent 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsUserAgent :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsUserAgent obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "user-agent" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@user-agent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsUserAgent :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsUserAgent val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "user-agent" (P.Just val)

-- | Set the value of the “@user-agent@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #userAgent
-- @
clearSettingsUserAgent :: (MonadIO m, IsSettings o) => o -> m ()
clearSettingsUserAgent obj = liftIO $ B.Properties.setObjectPropertyString obj "user-agent" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data SettingsUserAgentPropertyInfo
instance AttrInfo SettingsUserAgentPropertyInfo where
    type AttrAllowedOps SettingsUserAgentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear, 'AttrPut]
    type AttrBaseTypeConstraint SettingsUserAgentPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsUserAgentPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsUserAgentPropertyInfo = (~) T.Text
    type AttrTransferType SettingsUserAgentPropertyInfo = T.Text
    type AttrGetType SettingsUserAgentPropertyInfo = T.Text
    type AttrLabel SettingsUserAgentPropertyInfo = "user-agent"
    type AttrOrigin SettingsUserAgentPropertyInfo = Settings
    attrGet = getSettingsUserAgent
    attrSet = setSettingsUserAgent
    attrPut = setSettingsUserAgent
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsUserAgent
    attrClear = clearSettingsUserAgent
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.userAgent"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:userAgent"
        })
#endif

-- VVV Prop "webrtc-udp-ports-range"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@webrtc-udp-ports-range@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #webrtcUdpPortsRange
-- @
getSettingsWebrtcUdpPortsRange :: (MonadIO m, IsSettings o) => o -> m T.Text
getSettingsWebrtcUdpPortsRange obj = MIO.liftIO $ checkUnexpectedNothing "getSettingsWebrtcUdpPortsRange" $ B.Properties.getObjectPropertyString obj "webrtc-udp-ports-range"

-- | Set the value of the “@webrtc-udp-ports-range@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #webrtcUdpPortsRange 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsWebrtcUdpPortsRange :: (MonadIO m, IsSettings o) => o -> T.Text -> m ()
setSettingsWebrtcUdpPortsRange obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyString obj "webrtc-udp-ports-range" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@webrtc-udp-ports-range@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsWebrtcUdpPortsRange :: (IsSettings o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructSettingsWebrtcUdpPortsRange val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "webrtc-udp-ports-range" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data SettingsWebrtcUdpPortsRangePropertyInfo
instance AttrInfo SettingsWebrtcUdpPortsRangePropertyInfo where
    type AttrAllowedOps SettingsWebrtcUdpPortsRangePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsWebrtcUdpPortsRangePropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsWebrtcUdpPortsRangePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint SettingsWebrtcUdpPortsRangePropertyInfo = (~) T.Text
    type AttrTransferType SettingsWebrtcUdpPortsRangePropertyInfo = T.Text
    type AttrGetType SettingsWebrtcUdpPortsRangePropertyInfo = T.Text
    type AttrLabel SettingsWebrtcUdpPortsRangePropertyInfo = "webrtc-udp-ports-range"
    type AttrOrigin SettingsWebrtcUdpPortsRangePropertyInfo = Settings
    attrGet = getSettingsWebrtcUdpPortsRange
    attrSet = setSettingsWebrtcUdpPortsRange
    attrPut = setSettingsWebrtcUdpPortsRange
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsWebrtcUdpPortsRange
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.webrtcUdpPortsRange"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:webrtcUdpPortsRange"
        })
#endif

-- VVV Prop "zoom-text-only"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@zoom-text-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' settings #zoomTextOnly
-- @
getSettingsZoomTextOnly :: (MonadIO m, IsSettings o) => o -> m Bool
getSettingsZoomTextOnly obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "zoom-text-only"

-- | Set the value of the “@zoom-text-only@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' settings [ #zoomTextOnly 'Data.GI.Base.Attributes.:=' value ]
-- @
setSettingsZoomTextOnly :: (MonadIO m, IsSettings o) => o -> Bool -> m ()
setSettingsZoomTextOnly obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "zoom-text-only" val

-- | Construct a t'GValueConstruct' with valid value for the “@zoom-text-only@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSettingsZoomTextOnly :: (IsSettings o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructSettingsZoomTextOnly val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "zoom-text-only" val

#if defined(ENABLE_OVERLOADING)
data SettingsZoomTextOnlyPropertyInfo
instance AttrInfo SettingsZoomTextOnlyPropertyInfo where
    type AttrAllowedOps SettingsZoomTextOnlyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint SettingsZoomTextOnlyPropertyInfo = IsSettings
    type AttrSetTypeConstraint SettingsZoomTextOnlyPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SettingsZoomTextOnlyPropertyInfo = (~) Bool
    type AttrTransferType SettingsZoomTextOnlyPropertyInfo = Bool
    type AttrGetType SettingsZoomTextOnlyPropertyInfo = Bool
    type AttrLabel SettingsZoomTextOnlyPropertyInfo = "zoom-text-only"
    type AttrOrigin SettingsZoomTextOnlyPropertyInfo = Settings
    attrGet = getSettingsZoomTextOnly
    attrSet = setSettingsZoomTextOnly
    attrPut = setSettingsZoomTextOnly
    attrTransfer _ v = do
        return v
    attrConstruct = constructSettingsZoomTextOnly
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.zoomTextOnly"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#g:attr:zoomTextOnly"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Settings
type instance O.AttributeList Settings = SettingsAttributeList
type SettingsAttributeList = ('[ '("allowFileAccessFromFileUrls", SettingsAllowFileAccessFromFileUrlsPropertyInfo), '("allowModalDialogs", SettingsAllowModalDialogsPropertyInfo), '("allowTopNavigationToDataUrls", SettingsAllowTopNavigationToDataUrlsPropertyInfo), '("allowUniversalAccessFromFileUrls", SettingsAllowUniversalAccessFromFileUrlsPropertyInfo), '("autoLoadImages", SettingsAutoLoadImagesPropertyInfo), '("cursiveFontFamily", SettingsCursiveFontFamilyPropertyInfo), '("defaultCharset", SettingsDefaultCharsetPropertyInfo), '("defaultFontFamily", SettingsDefaultFontFamilyPropertyInfo), '("defaultFontSize", SettingsDefaultFontSizePropertyInfo), '("defaultMonospaceFontSize", SettingsDefaultMonospaceFontSizePropertyInfo), '("disableWebSecurity", SettingsDisableWebSecurityPropertyInfo), '("drawCompositingIndicators", SettingsDrawCompositingIndicatorsPropertyInfo), '("enable2dCanvasAcceleration", SettingsEnable2dCanvasAccelerationPropertyInfo), '("enableAccelerated2dCanvas", SettingsEnableAccelerated2dCanvasPropertyInfo), '("enableBackForwardNavigationGestures", SettingsEnableBackForwardNavigationGesturesPropertyInfo), '("enableCaretBrowsing", SettingsEnableCaretBrowsingPropertyInfo), '("enableDeveloperExtras", SettingsEnableDeveloperExtrasPropertyInfo), '("enableDnsPrefetching", SettingsEnableDnsPrefetchingPropertyInfo), '("enableEncryptedMedia", SettingsEnableEncryptedMediaPropertyInfo), '("enableFrameFlattening", SettingsEnableFrameFlatteningPropertyInfo), '("enableFullscreen", SettingsEnableFullscreenPropertyInfo), '("enableHtml5Database", SettingsEnableHtml5DatabasePropertyInfo), '("enableHtml5LocalStorage", SettingsEnableHtml5LocalStoragePropertyInfo), '("enableHyperlinkAuditing", SettingsEnableHyperlinkAuditingPropertyInfo), '("enableJava", SettingsEnableJavaPropertyInfo), '("enableJavascript", SettingsEnableJavascriptPropertyInfo), '("enableJavascriptMarkup", SettingsEnableJavascriptMarkupPropertyInfo), '("enableMedia", SettingsEnableMediaPropertyInfo), '("enableMediaCapabilities", SettingsEnableMediaCapabilitiesPropertyInfo), '("enableMediaStream", SettingsEnableMediaStreamPropertyInfo), '("enableMediasource", SettingsEnableMediasourcePropertyInfo), '("enableMockCaptureDevices", SettingsEnableMockCaptureDevicesPropertyInfo), '("enableOfflineWebApplicationCache", SettingsEnableOfflineWebApplicationCachePropertyInfo), '("enablePageCache", SettingsEnablePageCachePropertyInfo), '("enablePlugins", SettingsEnablePluginsPropertyInfo), '("enablePrivateBrowsing", SettingsEnablePrivateBrowsingPropertyInfo), '("enableResizableTextAreas", SettingsEnableResizableTextAreasPropertyInfo), '("enableSiteSpecificQuirks", SettingsEnableSiteSpecificQuirksPropertyInfo), '("enableSmoothScrolling", SettingsEnableSmoothScrollingPropertyInfo), '("enableSpatialNavigation", SettingsEnableSpatialNavigationPropertyInfo), '("enableTabsToLinks", SettingsEnableTabsToLinksPropertyInfo), '("enableWebaudio", SettingsEnableWebaudioPropertyInfo), '("enableWebgl", SettingsEnableWebglPropertyInfo), '("enableWebrtc", SettingsEnableWebrtcPropertyInfo), '("enableWriteConsoleMessagesToStdout", SettingsEnableWriteConsoleMessagesToStdoutPropertyInfo), '("enableXssAuditor", SettingsEnableXssAuditorPropertyInfo), '("fantasyFontFamily", SettingsFantasyFontFamilyPropertyInfo), '("hardwareAccelerationPolicy", SettingsHardwareAccelerationPolicyPropertyInfo), '("javascriptCanAccessClipboard", SettingsJavascriptCanAccessClipboardPropertyInfo), '("javascriptCanOpenWindowsAutomatically", SettingsJavascriptCanOpenWindowsAutomaticallyPropertyInfo), '("loadIconsIgnoringImageLoadSetting", SettingsLoadIconsIgnoringImageLoadSettingPropertyInfo), '("mathFontFamily", SettingsMathFontFamilyPropertyInfo), '("mediaContentTypesRequiringHardwareSupport", SettingsMediaContentTypesRequiringHardwareSupportPropertyInfo), '("mediaPlaybackAllowsInline", SettingsMediaPlaybackAllowsInlinePropertyInfo), '("mediaPlaybackRequiresUserGesture", SettingsMediaPlaybackRequiresUserGesturePropertyInfo), '("minimumFontSize", SettingsMinimumFontSizePropertyInfo), '("monospaceFontFamily", SettingsMonospaceFontFamilyPropertyInfo), '("pictographFontFamily", SettingsPictographFontFamilyPropertyInfo), '("printBackgrounds", SettingsPrintBackgroundsPropertyInfo), '("sansSerifFontFamily", SettingsSansSerifFontFamilyPropertyInfo), '("serifFontFamily", SettingsSerifFontFamilyPropertyInfo), '("userAgent", SettingsUserAgentPropertyInfo), '("webrtcUdpPortsRange", SettingsWebrtcUdpPortsRangePropertyInfo), '("zoomTextOnly", SettingsZoomTextOnlyPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
settingsAllowFileAccessFromFileUrls :: AttrLabelProxy "allowFileAccessFromFileUrls"
settingsAllowFileAccessFromFileUrls = AttrLabelProxy

settingsAllowModalDialogs :: AttrLabelProxy "allowModalDialogs"
settingsAllowModalDialogs = AttrLabelProxy

settingsAllowTopNavigationToDataUrls :: AttrLabelProxy "allowTopNavigationToDataUrls"
settingsAllowTopNavigationToDataUrls = AttrLabelProxy

settingsAllowUniversalAccessFromFileUrls :: AttrLabelProxy "allowUniversalAccessFromFileUrls"
settingsAllowUniversalAccessFromFileUrls = AttrLabelProxy

settingsAutoLoadImages :: AttrLabelProxy "autoLoadImages"
settingsAutoLoadImages = AttrLabelProxy

settingsCursiveFontFamily :: AttrLabelProxy "cursiveFontFamily"
settingsCursiveFontFamily = AttrLabelProxy

settingsDefaultCharset :: AttrLabelProxy "defaultCharset"
settingsDefaultCharset = AttrLabelProxy

settingsDefaultFontFamily :: AttrLabelProxy "defaultFontFamily"
settingsDefaultFontFamily = AttrLabelProxy

settingsDefaultFontSize :: AttrLabelProxy "defaultFontSize"
settingsDefaultFontSize = AttrLabelProxy

settingsDefaultMonospaceFontSize :: AttrLabelProxy "defaultMonospaceFontSize"
settingsDefaultMonospaceFontSize = AttrLabelProxy

settingsDisableWebSecurity :: AttrLabelProxy "disableWebSecurity"
settingsDisableWebSecurity = AttrLabelProxy

settingsDrawCompositingIndicators :: AttrLabelProxy "drawCompositingIndicators"
settingsDrawCompositingIndicators = AttrLabelProxy

settingsEnable2dCanvasAcceleration :: AttrLabelProxy "enable2dCanvasAcceleration"
settingsEnable2dCanvasAcceleration = AttrLabelProxy

settingsEnableAccelerated2dCanvas :: AttrLabelProxy "enableAccelerated2dCanvas"
settingsEnableAccelerated2dCanvas = AttrLabelProxy

settingsEnableBackForwardNavigationGestures :: AttrLabelProxy "enableBackForwardNavigationGestures"
settingsEnableBackForwardNavigationGestures = AttrLabelProxy

settingsEnableCaretBrowsing :: AttrLabelProxy "enableCaretBrowsing"
settingsEnableCaretBrowsing = AttrLabelProxy

settingsEnableDeveloperExtras :: AttrLabelProxy "enableDeveloperExtras"
settingsEnableDeveloperExtras = AttrLabelProxy

settingsEnableDnsPrefetching :: AttrLabelProxy "enableDnsPrefetching"
settingsEnableDnsPrefetching = AttrLabelProxy

settingsEnableEncryptedMedia :: AttrLabelProxy "enableEncryptedMedia"
settingsEnableEncryptedMedia = AttrLabelProxy

settingsEnableFrameFlattening :: AttrLabelProxy "enableFrameFlattening"
settingsEnableFrameFlattening = AttrLabelProxy

settingsEnableFullscreen :: AttrLabelProxy "enableFullscreen"
settingsEnableFullscreen = AttrLabelProxy

settingsEnableHtml5Database :: AttrLabelProxy "enableHtml5Database"
settingsEnableHtml5Database = AttrLabelProxy

settingsEnableHtml5LocalStorage :: AttrLabelProxy "enableHtml5LocalStorage"
settingsEnableHtml5LocalStorage = AttrLabelProxy

settingsEnableHyperlinkAuditing :: AttrLabelProxy "enableHyperlinkAuditing"
settingsEnableHyperlinkAuditing = AttrLabelProxy

settingsEnableJava :: AttrLabelProxy "enableJava"
settingsEnableJava = AttrLabelProxy

settingsEnableJavascript :: AttrLabelProxy "enableJavascript"
settingsEnableJavascript = AttrLabelProxy

settingsEnableJavascriptMarkup :: AttrLabelProxy "enableJavascriptMarkup"
settingsEnableJavascriptMarkup = AttrLabelProxy

settingsEnableMedia :: AttrLabelProxy "enableMedia"
settingsEnableMedia = AttrLabelProxy

settingsEnableMediaCapabilities :: AttrLabelProxy "enableMediaCapabilities"
settingsEnableMediaCapabilities = AttrLabelProxy

settingsEnableMediaStream :: AttrLabelProxy "enableMediaStream"
settingsEnableMediaStream = AttrLabelProxy

settingsEnableMediasource :: AttrLabelProxy "enableMediasource"
settingsEnableMediasource = AttrLabelProxy

settingsEnableMockCaptureDevices :: AttrLabelProxy "enableMockCaptureDevices"
settingsEnableMockCaptureDevices = AttrLabelProxy

settingsEnableOfflineWebApplicationCache :: AttrLabelProxy "enableOfflineWebApplicationCache"
settingsEnableOfflineWebApplicationCache = AttrLabelProxy

settingsEnablePageCache :: AttrLabelProxy "enablePageCache"
settingsEnablePageCache = AttrLabelProxy

settingsEnablePlugins :: AttrLabelProxy "enablePlugins"
settingsEnablePlugins = AttrLabelProxy

settingsEnablePrivateBrowsing :: AttrLabelProxy "enablePrivateBrowsing"
settingsEnablePrivateBrowsing = AttrLabelProxy

settingsEnableResizableTextAreas :: AttrLabelProxy "enableResizableTextAreas"
settingsEnableResizableTextAreas = AttrLabelProxy

settingsEnableSiteSpecificQuirks :: AttrLabelProxy "enableSiteSpecificQuirks"
settingsEnableSiteSpecificQuirks = AttrLabelProxy

settingsEnableSmoothScrolling :: AttrLabelProxy "enableSmoothScrolling"
settingsEnableSmoothScrolling = AttrLabelProxy

settingsEnableSpatialNavigation :: AttrLabelProxy "enableSpatialNavigation"
settingsEnableSpatialNavigation = AttrLabelProxy

settingsEnableTabsToLinks :: AttrLabelProxy "enableTabsToLinks"
settingsEnableTabsToLinks = AttrLabelProxy

settingsEnableWebaudio :: AttrLabelProxy "enableWebaudio"
settingsEnableWebaudio = AttrLabelProxy

settingsEnableWebgl :: AttrLabelProxy "enableWebgl"
settingsEnableWebgl = AttrLabelProxy

settingsEnableWebrtc :: AttrLabelProxy "enableWebrtc"
settingsEnableWebrtc = AttrLabelProxy

settingsEnableWriteConsoleMessagesToStdout :: AttrLabelProxy "enableWriteConsoleMessagesToStdout"
settingsEnableWriteConsoleMessagesToStdout = AttrLabelProxy

settingsEnableXssAuditor :: AttrLabelProxy "enableXssAuditor"
settingsEnableXssAuditor = AttrLabelProxy

settingsFantasyFontFamily :: AttrLabelProxy "fantasyFontFamily"
settingsFantasyFontFamily = AttrLabelProxy

settingsHardwareAccelerationPolicy :: AttrLabelProxy "hardwareAccelerationPolicy"
settingsHardwareAccelerationPolicy = AttrLabelProxy

settingsJavascriptCanAccessClipboard :: AttrLabelProxy "javascriptCanAccessClipboard"
settingsJavascriptCanAccessClipboard = AttrLabelProxy

settingsJavascriptCanOpenWindowsAutomatically :: AttrLabelProxy "javascriptCanOpenWindowsAutomatically"
settingsJavascriptCanOpenWindowsAutomatically = AttrLabelProxy

settingsLoadIconsIgnoringImageLoadSetting :: AttrLabelProxy "loadIconsIgnoringImageLoadSetting"
settingsLoadIconsIgnoringImageLoadSetting = AttrLabelProxy

settingsMathFontFamily :: AttrLabelProxy "mathFontFamily"
settingsMathFontFamily = AttrLabelProxy

settingsMediaContentTypesRequiringHardwareSupport :: AttrLabelProxy "mediaContentTypesRequiringHardwareSupport"
settingsMediaContentTypesRequiringHardwareSupport = AttrLabelProxy

settingsMediaPlaybackAllowsInline :: AttrLabelProxy "mediaPlaybackAllowsInline"
settingsMediaPlaybackAllowsInline = AttrLabelProxy

settingsMediaPlaybackRequiresUserGesture :: AttrLabelProxy "mediaPlaybackRequiresUserGesture"
settingsMediaPlaybackRequiresUserGesture = AttrLabelProxy

settingsMinimumFontSize :: AttrLabelProxy "minimumFontSize"
settingsMinimumFontSize = AttrLabelProxy

settingsMonospaceFontFamily :: AttrLabelProxy "monospaceFontFamily"
settingsMonospaceFontFamily = AttrLabelProxy

settingsPictographFontFamily :: AttrLabelProxy "pictographFontFamily"
settingsPictographFontFamily = AttrLabelProxy

settingsPrintBackgrounds :: AttrLabelProxy "printBackgrounds"
settingsPrintBackgrounds = AttrLabelProxy

settingsSansSerifFontFamily :: AttrLabelProxy "sansSerifFontFamily"
settingsSansSerifFontFamily = AttrLabelProxy

settingsSerifFontFamily :: AttrLabelProxy "serifFontFamily"
settingsSerifFontFamily = AttrLabelProxy

settingsUserAgent :: AttrLabelProxy "userAgent"
settingsUserAgent = AttrLabelProxy

settingsWebrtcUdpPortsRange :: AttrLabelProxy "webrtcUdpPortsRange"
settingsWebrtcUdpPortsRange = AttrLabelProxy

settingsZoomTextOnly :: AttrLabelProxy "zoomTextOnly"
settingsZoomTextOnly = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Settings = SettingsSignalList
type SettingsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Settings::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "Settings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_new" webkit_settings_new :: 
    IO (Ptr Settings)

-- | Creates a new t'GI.WebKit2.Objects.Settings.Settings' instance with default values.
-- 
-- It must be manually attached to a t'GI.WebKit2.Objects.WebView.WebView'.
-- See also @/webkit_settings_new_with_settings()/@.
settingsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Settings
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.Settings.Settings' instance.
settingsNew  = liftIO $ do
    result <- webkit_settings_new
    checkUnexpectedReturnNULL "settingsNew" result
    result' <- (wrapObject Settings) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Settings::apply_from_key_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "key_file"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "KeyFile" }
--           , argCType = Just "GKeyFile*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GKeyFile" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the group to read from @key_file"
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
-- throws : True
-- Skip return : False

foreign import ccall "webkit_settings_apply_from_key_file" webkit_settings_apply_from_key_file :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Ptr GLib.KeyFile.KeyFile ->             -- key_file : TInterface (Name {namespace = "GLib", name = "KeyFile"})
    CString ->                              -- group_name : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Reads the contents of the given /@groupName@/ from the given /@keyFile@/ and apply the value of
-- each key\/value to the corresponding property on the /@settings@/.
-- 
-- Value types have to match with the corresponding setting property type and the group keys have to
-- match existing setting property names. If those conditions are not met, the function will return
-- 'P.False'.
-- 
-- Supported value types are strings (unquoted), booleans (0, 1, true, false) and unsigned integers.
-- 
-- /Since: 2.46/
settingsApplyFromKeyFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> GLib.KeyFile.KeyFile
    -- ^ /@keyFile@/: a t'GI.GLib.Structs.KeyFile.KeyFile'
    -> T.Text
    -- ^ /@groupName@/: Name of the group to read from /@keyFile@/
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
settingsApplyFromKeyFile settings keyFile groupName = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    keyFile' <- unsafeManagedPtrGetPtr keyFile
    groupName' <- textToCString groupName
    onException (do
        _ <- propagateGError $ webkit_settings_apply_from_key_file settings' keyFile' groupName'
        touchManagedPtr settings
        touchManagedPtr keyFile
        freeMem groupName'
        return ()
     ) (do
        freeMem groupName'
     )

#if defined(ENABLE_OVERLOADING)
data SettingsApplyFromKeyFileMethodInfo
instance (signature ~ (GLib.KeyFile.KeyFile -> T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsApplyFromKeyFileMethodInfo a signature where
    overloadedMethod = settingsApplyFromKeyFile

instance O.OverloadedMethodInfo SettingsApplyFromKeyFileMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsApplyFromKeyFile",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsApplyFromKeyFile"
        })


#endif

-- method Settings::get_allow_file_access_from_file_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_allow_file_access_from_file_urls" webkit_settings_get_allow_file_access_from_file_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:allowFileAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:attr:allowFileAccessFromFileUrls") property.
-- 
-- /Since: 2.10/
settingsGetAllowFileAccessFromFileUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If file access from file URLs is allowed or 'P.False' otherwise.
settingsGetAllowFileAccessFromFileUrls settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_allow_file_access_from_file_urls settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowFileAccessFromFileUrlsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetAllowFileAccessFromFileUrlsMethodInfo a signature where
    overloadedMethod = settingsGetAllowFileAccessFromFileUrls

instance O.OverloadedMethodInfo SettingsGetAllowFileAccessFromFileUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetAllowFileAccessFromFileUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetAllowFileAccessFromFileUrls"
        })


#endif

-- method Settings::get_allow_modal_dialogs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_allow_modal_dialogs" webkit_settings_get_allow_modal_dialogs :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:allowModalDialogs]("GI.WebKit2.Objects.Settings#g:attr:allowModalDialogs") property.
settingsGetAllowModalDialogs ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if it\'s allowed to create and run modal dialogs or 'P.False' otherwise.
settingsGetAllowModalDialogs settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_allow_modal_dialogs settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowModalDialogsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetAllowModalDialogsMethodInfo a signature where
    overloadedMethod = settingsGetAllowModalDialogs

instance O.OverloadedMethodInfo SettingsGetAllowModalDialogsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetAllowModalDialogs",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetAllowModalDialogs"
        })


#endif

-- method Settings::get_allow_top_navigation_to_data_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_allow_top_navigation_to_data_urls" webkit_settings_get_allow_top_navigation_to_data_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:allowTopNavigationToDataUrls]("GI.WebKit2.Objects.Settings#g:attr:allowTopNavigationToDataUrls") property.
-- 
-- /Since: 2.28/
settingsGetAllowTopNavigationToDataUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If navigation to data URLs from the top frame is allowed or 'P.False'\\
    -- otherwise.
settingsGetAllowTopNavigationToDataUrls settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_allow_top_navigation_to_data_urls settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowTopNavigationToDataUrlsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetAllowTopNavigationToDataUrlsMethodInfo a signature where
    overloadedMethod = settingsGetAllowTopNavigationToDataUrls

instance O.OverloadedMethodInfo SettingsGetAllowTopNavigationToDataUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetAllowTopNavigationToDataUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetAllowTopNavigationToDataUrls"
        })


#endif

-- method Settings::get_allow_universal_access_from_file_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_allow_universal_access_from_file_urls" webkit_settings_get_allow_universal_access_from_file_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:allowUniversalAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:attr:allowUniversalAccessFromFileUrls") property.
-- 
-- /Since: 2.14/
settingsGetAllowUniversalAccessFromFileUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If universal access from file URLs is allowed or 'P.False' otherwise.
settingsGetAllowUniversalAccessFromFileUrls settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_allow_universal_access_from_file_urls settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo a signature where
    overloadedMethod = settingsGetAllowUniversalAccessFromFileUrls

instance O.OverloadedMethodInfo SettingsGetAllowUniversalAccessFromFileUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetAllowUniversalAccessFromFileUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetAllowUniversalAccessFromFileUrls"
        })


#endif

-- method Settings::get_auto_load_images
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_auto_load_images" webkit_settings_get_auto_load_images :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:autoLoadImages]("GI.WebKit2.Objects.Settings#g:attr:autoLoadImages") property.
settingsGetAutoLoadImages ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If auto loading of images is enabled or 'P.False' otherwise.
settingsGetAutoLoadImages settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_auto_load_images settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetAutoLoadImagesMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetAutoLoadImagesMethodInfo a signature where
    overloadedMethod = settingsGetAutoLoadImages

instance O.OverloadedMethodInfo SettingsGetAutoLoadImagesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetAutoLoadImages",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetAutoLoadImages"
        })


#endif

-- method Settings::get_cursive_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_cursive_font_family" webkit_settings_get_cursive_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:cursiveFontFamily]("GI.WebKit2.Objects.Settings#g:attr:cursiveFontFamily") property.
settingsGetCursiveFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content marked with cursive font.
settingsGetCursiveFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_cursive_font_family settings'
    checkUnexpectedReturnNULL "settingsGetCursiveFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetCursiveFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetCursiveFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetCursiveFontFamily

instance O.OverloadedMethodInfo SettingsGetCursiveFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetCursiveFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetCursiveFontFamily"
        })


#endif

-- method Settings::get_default_charset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_default_charset" webkit_settings_get_default_charset :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:defaultCharset]("GI.WebKit2.Objects.Settings#g:attr:defaultCharset") property.
settingsGetDefaultCharset ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ Default charset.
settingsGetDefaultCharset settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_default_charset settings'
    checkUnexpectedReturnNULL "settingsGetDefaultCharset" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultCharsetMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDefaultCharsetMethodInfo a signature where
    overloadedMethod = settingsGetDefaultCharset

instance O.OverloadedMethodInfo SettingsGetDefaultCharsetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDefaultCharset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDefaultCharset"
        })


#endif

-- method Settings::get_default_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_default_font_family" webkit_settings_get_default_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:defaultFontFamily]("GI.WebKit2.Objects.Settings#g:attr:defaultFontFamily") property.
settingsGetDefaultFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content that does not specify a font.
settingsGetDefaultFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_default_font_family settings'
    checkUnexpectedReturnNULL "settingsGetDefaultFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDefaultFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetDefaultFontFamily

instance O.OverloadedMethodInfo SettingsGetDefaultFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDefaultFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDefaultFontFamily"
        })


#endif

-- method Settings::get_default_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_default_font_size" webkit_settings_get_default_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO Word32

-- | Gets the [Settings:defaultFontSize]("GI.WebKit2.Objects.Settings#g:attr:defaultFontSize") property.
settingsGetDefaultFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Word32
    -- ^ __Returns:__ The default font size, in pixels.
settingsGetDefaultFontSize settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_default_font_size settings'
    touchManagedPtr settings
    return result

#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultFontSizeMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDefaultFontSizeMethodInfo a signature where
    overloadedMethod = settingsGetDefaultFontSize

instance O.OverloadedMethodInfo SettingsGetDefaultFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDefaultFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDefaultFontSize"
        })


#endif

-- method Settings::get_default_monospace_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_default_monospace_font_size" webkit_settings_get_default_monospace_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO Word32

-- | Gets the [Settings:defaultMonospaceFontSize]("GI.WebKit2.Objects.Settings#g:attr:defaultMonospaceFontSize") property.
settingsGetDefaultMonospaceFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Word32
    -- ^ __Returns:__ Default monospace font size, in pixels.
settingsGetDefaultMonospaceFontSize settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_default_monospace_font_size settings'
    touchManagedPtr settings
    return result

#if defined(ENABLE_OVERLOADING)
data SettingsGetDefaultMonospaceFontSizeMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDefaultMonospaceFontSizeMethodInfo a signature where
    overloadedMethod = settingsGetDefaultMonospaceFontSize

instance O.OverloadedMethodInfo SettingsGetDefaultMonospaceFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDefaultMonospaceFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDefaultMonospaceFontSize"
        })


#endif

-- method Settings::get_disable_web_security
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_disable_web_security" webkit_settings_get_disable_web_security :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:disableWebSecurity]("GI.WebKit2.Objects.Settings#g:attr:disableWebSecurity") property.
-- 
-- /Since: 2.40/
settingsGetDisableWebSecurity ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If web security support is disabled or 'P.False' otherwise.
settingsGetDisableWebSecurity settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_disable_web_security settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetDisableWebSecurityMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDisableWebSecurityMethodInfo a signature where
    overloadedMethod = settingsGetDisableWebSecurity

instance O.OverloadedMethodInfo SettingsGetDisableWebSecurityMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDisableWebSecurity",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDisableWebSecurity"
        })


#endif

-- method Settings::get_draw_compositing_indicators
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_draw_compositing_indicators" webkit_settings_get_draw_compositing_indicators :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:drawCompositingIndicators]("GI.WebKit2.Objects.Settings#g:attr:drawCompositingIndicators") property.
settingsGetDrawCompositingIndicators ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If compositing borders are drawn or 'P.False' otherwise.
settingsGetDrawCompositingIndicators settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_draw_compositing_indicators settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetDrawCompositingIndicatorsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetDrawCompositingIndicatorsMethodInfo a signature where
    overloadedMethod = settingsGetDrawCompositingIndicators

instance O.OverloadedMethodInfo SettingsGetDrawCompositingIndicatorsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetDrawCompositingIndicators",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetDrawCompositingIndicators"
        })


#endif

-- method Settings::get_enable_2d_canvas_acceleration
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_2d_canvas_acceleration" webkit_settings_get_enable_2d_canvas_acceleration :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enable2dCanvasAcceleration]("GI.WebKit2.Objects.Settings#g:attr:enable2dCanvasAcceleration") property.
-- 
-- /Since: 2.46/
settingsGetEnable2dCanvasAcceleration ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if 2D canvas acceleration is enabled or 'P.False' otherwise.
settingsGetEnable2dCanvasAcceleration settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_2d_canvas_acceleration settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnable2dCanvasAccelerationMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnable2dCanvasAccelerationMethodInfo a signature where
    overloadedMethod = settingsGetEnable2dCanvasAcceleration

instance O.OverloadedMethodInfo SettingsGetEnable2dCanvasAccelerationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnable2dCanvasAcceleration",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnable2dCanvasAcceleration"
        })


#endif

-- method Settings::get_enable_accelerated_2d_canvas
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_accelerated_2d_canvas" webkit_settings_get_enable_accelerated_2d_canvas :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableAccelerated2dCanvas ["(Since version 2.32.)"] #-}
-- | Get the [Settings:enableAccelerated2dCanvas]("GI.WebKit2.Objects.Settings#g:attr:enableAccelerated2dCanvas") property.
-- 
-- /Since: 2.2/
settingsGetEnableAccelerated2dCanvas ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if accelerated 2D canvas is enabled or 'P.False' otherwise.
settingsGetEnableAccelerated2dCanvas settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_accelerated_2d_canvas settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableAccelerated2dCanvasMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableAccelerated2dCanvasMethodInfo a signature where
    overloadedMethod = settingsGetEnableAccelerated2dCanvas

instance O.OverloadedMethodInfo SettingsGetEnableAccelerated2dCanvasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableAccelerated2dCanvas",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableAccelerated2dCanvas"
        })


#endif

-- method Settings::get_enable_back_forward_navigation_gestures
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_back_forward_navigation_gestures" webkit_settings_get_enable_back_forward_navigation_gestures :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableBackForwardNavigationGestures]("GI.WebKit2.Objects.Settings#g:attr:enableBackForwardNavigationGestures") property.
-- 
-- /Since: 2.24/
settingsGetEnableBackForwardNavigationGestures ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if horizontal swipe gesture will trigger back-forward navigaiton or 'P.False' otherwise.
settingsGetEnableBackForwardNavigationGestures settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_back_forward_navigation_gestures settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableBackForwardNavigationGesturesMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableBackForwardNavigationGesturesMethodInfo a signature where
    overloadedMethod = settingsGetEnableBackForwardNavigationGestures

instance O.OverloadedMethodInfo SettingsGetEnableBackForwardNavigationGesturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableBackForwardNavigationGestures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableBackForwardNavigationGestures"
        })


#endif

-- method Settings::get_enable_caret_browsing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_caret_browsing" webkit_settings_get_enable_caret_browsing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableCaretBrowsing]("GI.WebKit2.Objects.Settings#g:attr:enableCaretBrowsing") property.
settingsGetEnableCaretBrowsing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If caret browsing is enabled or 'P.False' otherwise.
settingsGetEnableCaretBrowsing settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_caret_browsing settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableCaretBrowsingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableCaretBrowsingMethodInfo a signature where
    overloadedMethod = settingsGetEnableCaretBrowsing

instance O.OverloadedMethodInfo SettingsGetEnableCaretBrowsingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableCaretBrowsing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableCaretBrowsing"
        })


#endif

-- method Settings::get_enable_developer_extras
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_developer_extras" webkit_settings_get_enable_developer_extras :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableDeveloperExtras]("GI.WebKit2.Objects.Settings#g:attr:enableDeveloperExtras") property.
settingsGetEnableDeveloperExtras ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If developer extras is enabled or 'P.False' otherwise.
settingsGetEnableDeveloperExtras settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_developer_extras settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableDeveloperExtrasMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableDeveloperExtrasMethodInfo a signature where
    overloadedMethod = settingsGetEnableDeveloperExtras

instance O.OverloadedMethodInfo SettingsGetEnableDeveloperExtrasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableDeveloperExtras",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableDeveloperExtras"
        })


#endif

-- method Settings::get_enable_dns_prefetching
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_dns_prefetching" webkit_settings_get_enable_dns_prefetching :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableDnsPrefetching ["(Since version 2.48.)"] #-}
-- | Get the [Settings:enableDnsPrefetching]("GI.WebKit2.Objects.Settings#g:attr:enableDnsPrefetching") property.
settingsGetEnableDnsPrefetching ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If DNS prefetching is enabled or 'P.False' otherwise.
settingsGetEnableDnsPrefetching settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_dns_prefetching settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableDnsPrefetchingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableDnsPrefetchingMethodInfo a signature where
    overloadedMethod = settingsGetEnableDnsPrefetching

instance O.OverloadedMethodInfo SettingsGetEnableDnsPrefetchingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableDnsPrefetching",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableDnsPrefetching"
        })


#endif

-- method Settings::get_enable_encrypted_media
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_encrypted_media" webkit_settings_get_enable_encrypted_media :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableEncryptedMedia]("GI.WebKit2.Objects.Settings#g:attr:enableEncryptedMedia") property.
-- 
-- /Since: 2.20/
settingsGetEnableEncryptedMedia ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if EncryptedMedia support is enabled or 'P.False' otherwise.
settingsGetEnableEncryptedMedia settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_encrypted_media settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableEncryptedMediaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableEncryptedMediaMethodInfo a signature where
    overloadedMethod = settingsGetEnableEncryptedMedia

instance O.OverloadedMethodInfo SettingsGetEnableEncryptedMediaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableEncryptedMedia",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableEncryptedMedia"
        })


#endif

-- method Settings::get_enable_frame_flattening
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_frame_flattening" webkit_settings_get_enable_frame_flattening :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableFrameFlattening ["(Since version 2.38)"] #-}
-- | Frame flattening is no longer supported. This function returns 'P.False'.
settingsGetEnableFrameFlattening ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.False'
settingsGetEnableFrameFlattening settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_frame_flattening settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableFrameFlatteningMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableFrameFlatteningMethodInfo a signature where
    overloadedMethod = settingsGetEnableFrameFlattening

instance O.OverloadedMethodInfo SettingsGetEnableFrameFlatteningMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableFrameFlattening",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableFrameFlattening"
        })


#endif

-- method Settings::get_enable_fullscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_fullscreen" webkit_settings_get_enable_fullscreen :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableFullscreen]("GI.WebKit2.Objects.Settings#g:attr:enableFullscreen") property.
settingsGetEnableFullscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If fullscreen support is enabled or 'P.False' otherwise.
settingsGetEnableFullscreen settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_fullscreen settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableFullscreenMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableFullscreenMethodInfo a signature where
    overloadedMethod = settingsGetEnableFullscreen

instance O.OverloadedMethodInfo SettingsGetEnableFullscreenMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableFullscreen",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableFullscreen"
        })


#endif

-- method Settings::get_enable_html5_database
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_html5_database" webkit_settings_get_enable_html5_database :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableHtml5Database]("GI.WebKit2.Objects.Settings#g:attr:enableHtml5Database") property.
settingsGetEnableHtml5Database ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if IndexedDB support is enabled or 'P.False' otherwise.
settingsGetEnableHtml5Database settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_html5_database settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHtml5DatabaseMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableHtml5DatabaseMethodInfo a signature where
    overloadedMethod = settingsGetEnableHtml5Database

instance O.OverloadedMethodInfo SettingsGetEnableHtml5DatabaseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableHtml5Database",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableHtml5Database"
        })


#endif

-- method Settings::get_enable_html5_local_storage
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_html5_local_storage" webkit_settings_get_enable_html5_local_storage :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableHtml5LocalStorage]("GI.WebKit2.Objects.Settings#g:attr:enableHtml5LocalStorage") property.
settingsGetEnableHtml5LocalStorage ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If HTML5 local storage support is enabled or 'P.False' otherwise.
settingsGetEnableHtml5LocalStorage settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_html5_local_storage settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHtml5LocalStorageMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableHtml5LocalStorageMethodInfo a signature where
    overloadedMethod = settingsGetEnableHtml5LocalStorage

instance O.OverloadedMethodInfo SettingsGetEnableHtml5LocalStorageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableHtml5LocalStorage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableHtml5LocalStorage"
        })


#endif

-- method Settings::get_enable_hyperlink_auditing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_hyperlink_auditing" webkit_settings_get_enable_hyperlink_auditing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableHyperlinkAuditing ["(Since version 2.50.)"] #-}
-- | Get the [Settings:enableHyperlinkAuditing]("GI.WebKit2.Objects.Settings#g:attr:enableHyperlinkAuditing") property.
settingsGetEnableHyperlinkAuditing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If hyper link auditing is enabled or 'P.False' otherwise.
settingsGetEnableHyperlinkAuditing settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_hyperlink_auditing settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableHyperlinkAuditingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableHyperlinkAuditingMethodInfo a signature where
    overloadedMethod = settingsGetEnableHyperlinkAuditing

instance O.OverloadedMethodInfo SettingsGetEnableHyperlinkAuditingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableHyperlinkAuditing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableHyperlinkAuditing"
        })


#endif

-- method Settings::get_enable_java
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_java" webkit_settings_get_enable_java :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableJava ["(Since version 2.38.)","This function always returns 'P.False'."] #-}
-- | Get the [Settings:enableJava]("GI.WebKit2.Objects.Settings#g:attr:enableJava") property.
settingsGetEnableJava ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.False' always.
settingsGetEnableJava settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_java settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableJavaMethodInfo a signature where
    overloadedMethod = settingsGetEnableJava

instance O.OverloadedMethodInfo SettingsGetEnableJavaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableJava",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableJava"
        })


#endif

-- method Settings::get_enable_javascript
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_javascript" webkit_settings_get_enable_javascript :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableJavascript]("GI.WebKit2.Objects.Settings#g:attr:enableJavascript") property.
settingsGetEnableJavascript ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If JavaScript is enabled or 'P.False' otherwise.
settingsGetEnableJavascript settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_javascript settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavascriptMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableJavascriptMethodInfo a signature where
    overloadedMethod = settingsGetEnableJavascript

instance O.OverloadedMethodInfo SettingsGetEnableJavascriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableJavascript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableJavascript"
        })


#endif

-- method Settings::get_enable_javascript_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_javascript_markup" webkit_settings_get_enable_javascript_markup :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:attr:enableJavascriptMarkup") property.
-- 
-- /Since: 2.24/
settingsGetEnableJavascriptMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if JavaScript markup is enabled or 'P.False' otherwise.
settingsGetEnableJavascriptMarkup settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_javascript_markup settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableJavascriptMarkupMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableJavascriptMarkupMethodInfo a signature where
    overloadedMethod = settingsGetEnableJavascriptMarkup

instance O.OverloadedMethodInfo SettingsGetEnableJavascriptMarkupMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableJavascriptMarkup",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableJavascriptMarkup"
        })


#endif

-- method Settings::get_enable_media
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_media" webkit_settings_get_enable_media :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableMedia]("GI.WebKit2.Objects.Settings#g:attr:enableMedia") property.
-- 
-- /Since: 2.26/
settingsGetEnableMedia ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if media support is enabled or 'P.False' otherwise.
settingsGetEnableMedia settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_media settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableMediaMethodInfo a signature where
    overloadedMethod = settingsGetEnableMedia

instance O.OverloadedMethodInfo SettingsGetEnableMediaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableMedia",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableMedia"
        })


#endif

-- method Settings::get_enable_media_capabilities
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_media_capabilities" webkit_settings_get_enable_media_capabilities :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableMediaCapabilities]("GI.WebKit2.Objects.Settings#g:attr:enableMediaCapabilities") property.
-- 
-- /Since: 2.22/
settingsGetEnableMediaCapabilities ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if MediaCapabilities support is enabled or 'P.False' otherwise.
settingsGetEnableMediaCapabilities settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_media_capabilities settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaCapabilitiesMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableMediaCapabilitiesMethodInfo a signature where
    overloadedMethod = settingsGetEnableMediaCapabilities

instance O.OverloadedMethodInfo SettingsGetEnableMediaCapabilitiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableMediaCapabilities",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableMediaCapabilities"
        })


#endif

-- method Settings::get_enable_media_stream
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_media_stream" webkit_settings_get_enable_media_stream :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableMediaStream]("GI.WebKit2.Objects.Settings#g:attr:enableMediaStream") property.
-- 
-- /Since: 2.4/
settingsGetEnableMediaStream ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If mediastream support is enabled or 'P.False' otherwise.
settingsGetEnableMediaStream settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_media_stream settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediaStreamMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableMediaStreamMethodInfo a signature where
    overloadedMethod = settingsGetEnableMediaStream

instance O.OverloadedMethodInfo SettingsGetEnableMediaStreamMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableMediaStream",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableMediaStream"
        })


#endif

-- method Settings::get_enable_mediasource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_mediasource" webkit_settings_get_enable_mediasource :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableMediasource]("GI.WebKit2.Objects.Settings#g:attr:enableMediasource") property.
-- 
-- /Since: 2.4/
settingsGetEnableMediasource ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If MediaSource support is enabled or 'P.False' otherwise.
settingsGetEnableMediasource settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_mediasource settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMediasourceMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableMediasourceMethodInfo a signature where
    overloadedMethod = settingsGetEnableMediasource

instance O.OverloadedMethodInfo SettingsGetEnableMediasourceMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableMediasource",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableMediasource"
        })


#endif

-- method Settings::get_enable_mock_capture_devices
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_mock_capture_devices" webkit_settings_get_enable_mock_capture_devices :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableMockCaptureDevices]("GI.WebKit2.Objects.Settings#g:attr:enableMockCaptureDevices") property.
-- 
-- /Since: 2.24/
settingsGetEnableMockCaptureDevices ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If mock capture devices is enabled or 'P.False' otherwise.
settingsGetEnableMockCaptureDevices settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_mock_capture_devices settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableMockCaptureDevicesMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableMockCaptureDevicesMethodInfo a signature where
    overloadedMethod = settingsGetEnableMockCaptureDevices

instance O.OverloadedMethodInfo SettingsGetEnableMockCaptureDevicesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableMockCaptureDevices",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableMockCaptureDevices"
        })


#endif

-- method Settings::get_enable_offline_web_application_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_offline_web_application_cache" webkit_settings_get_enable_offline_web_application_cache :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableOfflineWebApplicationCache ["(Since version 2.44)"] #-}
-- | Get the [Settings:enableOfflineWebApplicationCache]("GI.WebKit2.Objects.Settings#g:attr:enableOfflineWebApplicationCache") property.
settingsGetEnableOfflineWebApplicationCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.False'.
settingsGetEnableOfflineWebApplicationCache settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_offline_web_application_cache settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableOfflineWebApplicationCacheMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableOfflineWebApplicationCacheMethodInfo a signature where
    overloadedMethod = settingsGetEnableOfflineWebApplicationCache

instance O.OverloadedMethodInfo SettingsGetEnableOfflineWebApplicationCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableOfflineWebApplicationCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableOfflineWebApplicationCache"
        })


#endif

-- method Settings::get_enable_page_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_page_cache" webkit_settings_get_enable_page_cache :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enablePageCache]("GI.WebKit2.Objects.Settings#g:attr:enablePageCache") property.
settingsGetEnablePageCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if page cache enabled or 'P.False' otherwise.
settingsGetEnablePageCache settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_page_cache settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePageCacheMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnablePageCacheMethodInfo a signature where
    overloadedMethod = settingsGetEnablePageCache

instance O.OverloadedMethodInfo SettingsGetEnablePageCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnablePageCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnablePageCache"
        })


#endif

-- method Settings::get_enable_plugins
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_plugins" webkit_settings_get_enable_plugins :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnablePlugins ["(Since version 2.32)"] #-}
-- | Get the [Settings:enablePlugins]("GI.WebKit2.Objects.Settings#g:attr:enablePlugins") property.
settingsGetEnablePlugins ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If plugins are enabled or 'P.False' otherwise.
settingsGetEnablePlugins settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_plugins settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePluginsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnablePluginsMethodInfo a signature where
    overloadedMethod = settingsGetEnablePlugins

instance O.OverloadedMethodInfo SettingsGetEnablePluginsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnablePlugins",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnablePlugins"
        })


#endif

-- method Settings::get_enable_private_browsing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_private_browsing" webkit_settings_get_enable_private_browsing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnablePrivateBrowsing ["(Since version 2.16.)","Use [WebView:isEphemeral](\"GI.WebKit2.Objects.WebView#g:attr:isEphemeral\") or t'GI.WebKit2.Objects.WebContext.WebContext':@/is-ephemeral/@ instead."] #-}
-- | Get the [Settings:enablePrivateBrowsing]("GI.WebKit2.Objects.Settings#g:attr:enablePrivateBrowsing") property.
settingsGetEnablePrivateBrowsing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If private browsing is enabled or 'P.False' otherwise.
settingsGetEnablePrivateBrowsing settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_private_browsing settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnablePrivateBrowsingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnablePrivateBrowsingMethodInfo a signature where
    overloadedMethod = settingsGetEnablePrivateBrowsing

instance O.OverloadedMethodInfo SettingsGetEnablePrivateBrowsingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnablePrivateBrowsing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnablePrivateBrowsing"
        })


#endif

-- method Settings::get_enable_resizable_text_areas
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_resizable_text_areas" webkit_settings_get_enable_resizable_text_areas :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableResizableTextAreas]("GI.WebKit2.Objects.Settings#g:attr:enableResizableTextAreas") property.
settingsGetEnableResizableTextAreas ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If text areas can be resized or 'P.False' otherwise.
settingsGetEnableResizableTextAreas settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_resizable_text_areas settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableResizableTextAreasMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableResizableTextAreasMethodInfo a signature where
    overloadedMethod = settingsGetEnableResizableTextAreas

instance O.OverloadedMethodInfo SettingsGetEnableResizableTextAreasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableResizableTextAreas",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableResizableTextAreas"
        })


#endif

-- method Settings::get_enable_site_specific_quirks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_site_specific_quirks" webkit_settings_get_enable_site_specific_quirks :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableSiteSpecificQuirks]("GI.WebKit2.Objects.Settings#g:attr:enableSiteSpecificQuirks") property.
settingsGetEnableSiteSpecificQuirks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if site specific quirks are enabled or 'P.False' otherwise.
settingsGetEnableSiteSpecificQuirks settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_site_specific_quirks settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSiteSpecificQuirksMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableSiteSpecificQuirksMethodInfo a signature where
    overloadedMethod = settingsGetEnableSiteSpecificQuirks

instance O.OverloadedMethodInfo SettingsGetEnableSiteSpecificQuirksMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableSiteSpecificQuirks",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableSiteSpecificQuirks"
        })


#endif

-- method Settings::get_enable_smooth_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_smooth_scrolling" webkit_settings_get_enable_smooth_scrolling :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableSmoothScrolling]("GI.WebKit2.Objects.Settings#g:attr:enableSmoothScrolling") property.
settingsGetEnableSmoothScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if smooth scrolling is enabled or 'P.False' otherwise.
settingsGetEnableSmoothScrolling settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_smooth_scrolling settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSmoothScrollingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableSmoothScrollingMethodInfo a signature where
    overloadedMethod = settingsGetEnableSmoothScrolling

instance O.OverloadedMethodInfo SettingsGetEnableSmoothScrollingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableSmoothScrolling",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableSmoothScrolling"
        })


#endif

-- method Settings::get_enable_spatial_navigation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_spatial_navigation" webkit_settings_get_enable_spatial_navigation :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableSpatialNavigation]("GI.WebKit2.Objects.Settings#g:attr:enableSpatialNavigation") property.
-- 
-- /Since: 2.2/
settingsGetEnableSpatialNavigation ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If HTML5 spatial navigation support is enabled or 'P.False' otherwise.
settingsGetEnableSpatialNavigation settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_spatial_navigation settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableSpatialNavigationMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableSpatialNavigationMethodInfo a signature where
    overloadedMethod = settingsGetEnableSpatialNavigation

instance O.OverloadedMethodInfo SettingsGetEnableSpatialNavigationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableSpatialNavigation",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableSpatialNavigation"
        })


#endif

-- method Settings::get_enable_tabs_to_links
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_tabs_to_links" webkit_settings_get_enable_tabs_to_links :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableTabsToLinks]("GI.WebKit2.Objects.Settings#g:attr:enableTabsToLinks") property.
settingsGetEnableTabsToLinks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If tabs to link is enabled or 'P.False' otherwise.
settingsGetEnableTabsToLinks settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_tabs_to_links settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableTabsToLinksMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableTabsToLinksMethodInfo a signature where
    overloadedMethod = settingsGetEnableTabsToLinks

instance O.OverloadedMethodInfo SettingsGetEnableTabsToLinksMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableTabsToLinks",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableTabsToLinks"
        })


#endif

-- method Settings::get_enable_webaudio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_webaudio" webkit_settings_get_enable_webaudio :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableWebaudio]("GI.WebKit2.Objects.Settings#g:attr:enableWebaudio") property.
settingsGetEnableWebaudio ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If webaudio support is enabled or 'P.False' otherwise.
settingsGetEnableWebaudio settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_webaudio settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebaudioMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableWebaudioMethodInfo a signature where
    overloadedMethod = settingsGetEnableWebaudio

instance O.OverloadedMethodInfo SettingsGetEnableWebaudioMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableWebaudio",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableWebaudio"
        })


#endif

-- method Settings::get_enable_webgl
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_webgl" webkit_settings_get_enable_webgl :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableWebgl]("GI.WebKit2.Objects.Settings#g:attr:enableWebgl") property.
settingsGetEnableWebgl ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If WebGL support is enabled or 'P.False' otherwise.
settingsGetEnableWebgl settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_webgl settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebglMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableWebglMethodInfo a signature where
    overloadedMethod = settingsGetEnableWebgl

instance O.OverloadedMethodInfo SettingsGetEnableWebglMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableWebgl",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableWebgl"
        })


#endif

-- method Settings::get_enable_webrtc
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_webrtc" webkit_settings_get_enable_webrtc :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [property/@settings@/:enable-webrtc] property.
-- 
-- /Since: 2.38/
settingsGetEnableWebrtc ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If WebRTC support is enabled or 'P.False' otherwise.
settingsGetEnableWebrtc settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_webrtc settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWebrtcMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableWebrtcMethodInfo a signature where
    overloadedMethod = settingsGetEnableWebrtc

instance O.OverloadedMethodInfo SettingsGetEnableWebrtcMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableWebrtc",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableWebrtc"
        })


#endif

-- method Settings::get_enable_write_console_messages_to_stdout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_write_console_messages_to_stdout" webkit_settings_get_enable_write_console_messages_to_stdout :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:enableWriteConsoleMessagesToStdout]("GI.WebKit2.Objects.Settings#g:attr:enableWriteConsoleMessagesToStdout") property.
-- 
-- /Since: 2.2/
settingsGetEnableWriteConsoleMessagesToStdout ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if writing console messages to stdout is enabled or 'P.False'
    -- otherwise.
settingsGetEnableWriteConsoleMessagesToStdout settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_write_console_messages_to_stdout settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo a signature where
    overloadedMethod = settingsGetEnableWriteConsoleMessagesToStdout

instance O.OverloadedMethodInfo SettingsGetEnableWriteConsoleMessagesToStdoutMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableWriteConsoleMessagesToStdout",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableWriteConsoleMessagesToStdout"
        })


#endif

-- method Settings::get_enable_xss_auditor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_enable_xss_auditor" webkit_settings_get_enable_xss_auditor :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetEnableXssAuditor ["(Since version 2.38.)","This function does nothing."] #-}
-- | The XSS auditor has been removed. This function returns 'P.False'.
settingsGetEnableXssAuditor ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.False'
settingsGetEnableXssAuditor settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_enable_xss_auditor settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetEnableXssAuditorMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetEnableXssAuditorMethodInfo a signature where
    overloadedMethod = settingsGetEnableXssAuditor

instance O.OverloadedMethodInfo SettingsGetEnableXssAuditorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetEnableXssAuditor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetEnableXssAuditor"
        })


#endif

-- method Settings::get_fantasy_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_fantasy_font_family" webkit_settings_get_fantasy_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:fantasyFontFamily]("GI.WebKit2.Objects.Settings#g:attr:fantasyFontFamily") property.
settingsGetFantasyFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content marked with fantasy font.
settingsGetFantasyFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_fantasy_font_family settings'
    checkUnexpectedReturnNULL "settingsGetFantasyFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetFantasyFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetFantasyFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetFantasyFontFamily

instance O.OverloadedMethodInfo SettingsGetFantasyFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetFantasyFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetFantasyFontFamily"
        })


#endif

-- method Settings::get_feature_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the feature to toggle."
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

foreign import ccall "webkit_settings_get_feature_enabled" webkit_settings_get_feature_enabled :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Ptr WebKit2.Feature.Feature ->          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CInt

-- | Gets whether a feature is enabled.
-- 
-- /Since: 2.42/
settingsGetFeatureEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> WebKit2.Feature.Feature
    -- ^ /@feature@/: the feature to toggle.
    -> m Bool
    -- ^ __Returns:__ Whether the feature is enabled.
settingsGetFeatureEnabled settings feature = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_settings_get_feature_enabled settings' feature'
    let result' = (/= 0) result
    touchManagedPtr settings
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetFeatureEnabledMethodInfo
instance (signature ~ (WebKit2.Feature.Feature -> m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetFeatureEnabledMethodInfo a signature where
    overloadedMethod = settingsGetFeatureEnabled

instance O.OverloadedMethodInfo SettingsGetFeatureEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetFeatureEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetFeatureEnabled"
        })


#endif

-- method Settings::get_hardware_acceleration_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                  Name
--                    { namespace = "WebKit2" , name = "HardwareAccelerationPolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_hardware_acceleration_policy" webkit_settings_get_hardware_acceleration_policy :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CUInt

-- | Get the [Settings:hardwareAccelerationPolicy]("GI.WebKit2.Objects.Settings#g:attr:hardwareAccelerationPolicy") property.
-- 
-- /Since: 2.16/
settingsGetHardwareAccelerationPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m WebKit2.Enums.HardwareAccelerationPolicy
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.HardwareAccelerationPolicy'
settingsGetHardwareAccelerationPolicy settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_hardware_acceleration_policy settings'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetHardwareAccelerationPolicyMethodInfo
instance (signature ~ (m WebKit2.Enums.HardwareAccelerationPolicy), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetHardwareAccelerationPolicyMethodInfo a signature where
    overloadedMethod = settingsGetHardwareAccelerationPolicy

instance O.OverloadedMethodInfo SettingsGetHardwareAccelerationPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetHardwareAccelerationPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetHardwareAccelerationPolicy"
        })


#endif

-- method Settings::get_javascript_can_access_clipboard
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_javascript_can_access_clipboard" webkit_settings_get_javascript_can_access_clipboard :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:javascriptCanAccessClipboard]("GI.WebKit2.Objects.Settings#g:attr:javascriptCanAccessClipboard") property.
settingsGetJavascriptCanAccessClipboard ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If javascript-can-access-clipboard is enabled or 'P.False' otherwise.
settingsGetJavascriptCanAccessClipboard settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_javascript_can_access_clipboard settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetJavascriptCanAccessClipboardMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetJavascriptCanAccessClipboardMethodInfo a signature where
    overloadedMethod = settingsGetJavascriptCanAccessClipboard

instance O.OverloadedMethodInfo SettingsGetJavascriptCanAccessClipboardMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetJavascriptCanAccessClipboard",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetJavascriptCanAccessClipboard"
        })


#endif

-- method Settings::get_javascript_can_open_windows_automatically
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_javascript_can_open_windows_automatically" webkit_settings_get_javascript_can_open_windows_automatically :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:javascriptCanOpenWindowsAutomatically]("GI.WebKit2.Objects.Settings#g:attr:javascriptCanOpenWindowsAutomatically") property.
settingsGetJavascriptCanOpenWindowsAutomatically ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If JavaScript can open window automatically or 'P.False' otherwise.
settingsGetJavascriptCanOpenWindowsAutomatically settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_javascript_can_open_windows_automatically settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo a signature where
    overloadedMethod = settingsGetJavascriptCanOpenWindowsAutomatically

instance O.OverloadedMethodInfo SettingsGetJavascriptCanOpenWindowsAutomaticallyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetJavascriptCanOpenWindowsAutomatically",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetJavascriptCanOpenWindowsAutomatically"
        })


#endif

-- method Settings::get_load_icons_ignoring_image_load_setting
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_load_icons_ignoring_image_load_setting" webkit_settings_get_load_icons_ignoring_image_load_setting :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

{-# DEPRECATED settingsGetLoadIconsIgnoringImageLoadSetting ["(Since version 2.42)"] #-}
-- | Setting no longer supported. This function returns 'P.False'.
settingsGetLoadIconsIgnoringImageLoadSetting ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.False'
settingsGetLoadIconsIgnoringImageLoadSetting settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_load_icons_ignoring_image_load_setting settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo a signature where
    overloadedMethod = settingsGetLoadIconsIgnoringImageLoadSetting

instance O.OverloadedMethodInfo SettingsGetLoadIconsIgnoringImageLoadSettingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetLoadIconsIgnoringImageLoadSetting",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetLoadIconsIgnoringImageLoadSetting"
        })


#endif

-- method Settings::get_math_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_math_font_family" webkit_settings_get_math_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:mathFontFamily]("GI.WebKit2.Objects.Settings#g:attr:mathFontFamily") property.
settingsGetMathFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The default font family used to display content marked with math font.
    -- 
    -- Since 2.52
settingsGetMathFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_math_font_family settings'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr settings
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data SettingsGetMathFontFamilyMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMathFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetMathFontFamily

instance O.OverloadedMethodInfo SettingsGetMathFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMathFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMathFontFamily"
        })


#endif

-- method Settings::get_media_content_types_requiring_hardware_support
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_media_content_types_requiring_hardware_support" webkit_settings_get_media_content_types_requiring_hardware_support :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:mediaContentTypesRequiringHardwareSupport]("GI.WebKit2.Objects.Settings#g:attr:mediaContentTypesRequiringHardwareSupport") property.
-- 
-- /Since: 2.30/
settingsGetMediaContentTypesRequiringHardwareSupport ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ Media content types requiring hardware support, or 'P.Nothing'.
settingsGetMediaContentTypesRequiringHardwareSupport settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_media_content_types_requiring_hardware_support settings'
    checkUnexpectedReturnNULL "settingsGetMediaContentTypesRequiringHardwareSupport" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo a signature where
    overloadedMethod = settingsGetMediaContentTypesRequiringHardwareSupport

instance O.OverloadedMethodInfo SettingsGetMediaContentTypesRequiringHardwareSupportMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMediaContentTypesRequiringHardwareSupport",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMediaContentTypesRequiringHardwareSupport"
        })


#endif

-- method Settings::get_media_playback_allows_inline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_media_playback_allows_inline" webkit_settings_get_media_playback_allows_inline :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:mediaPlaybackAllowsInline]("GI.WebKit2.Objects.Settings#g:attr:mediaPlaybackAllowsInline") property.
settingsGetMediaPlaybackAllowsInline ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If inline playback is allowed for media
    --    or 'P.False' if only fullscreen playback is allowed.
settingsGetMediaPlaybackAllowsInline settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_media_playback_allows_inline settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaPlaybackAllowsInlineMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMediaPlaybackAllowsInlineMethodInfo a signature where
    overloadedMethod = settingsGetMediaPlaybackAllowsInline

instance O.OverloadedMethodInfo SettingsGetMediaPlaybackAllowsInlineMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMediaPlaybackAllowsInline",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMediaPlaybackAllowsInline"
        })


#endif

-- method Settings::get_media_playback_requires_user_gesture
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_media_playback_requires_user_gesture" webkit_settings_get_media_playback_requires_user_gesture :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:mediaPlaybackRequiresUserGesture]("GI.WebKit2.Objects.Settings#g:attr:mediaPlaybackRequiresUserGesture") property.
settingsGetMediaPlaybackRequiresUserGesture ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If an user gesture is needed to play or load media
    --    or 'P.False' if no user gesture is needed.
settingsGetMediaPlaybackRequiresUserGesture settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_media_playback_requires_user_gesture settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetMediaPlaybackRequiresUserGestureMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMediaPlaybackRequiresUserGestureMethodInfo a signature where
    overloadedMethod = settingsGetMediaPlaybackRequiresUserGesture

instance O.OverloadedMethodInfo SettingsGetMediaPlaybackRequiresUserGestureMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMediaPlaybackRequiresUserGesture",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMediaPlaybackRequiresUserGesture"
        })


#endif

-- method Settings::get_minimum_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_minimum_font_size" webkit_settings_get_minimum_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO Word32

-- | Gets the [Settings:minimumFontSize]("GI.WebKit2.Objects.Settings#g:attr:minimumFontSize") property.
settingsGetMinimumFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Word32
    -- ^ __Returns:__ Minimum font size, in pixels.
settingsGetMinimumFontSize settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_minimum_font_size settings'
    touchManagedPtr settings
    return result

#if defined(ENABLE_OVERLOADING)
data SettingsGetMinimumFontSizeMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMinimumFontSizeMethodInfo a signature where
    overloadedMethod = settingsGetMinimumFontSize

instance O.OverloadedMethodInfo SettingsGetMinimumFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMinimumFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMinimumFontSize"
        })


#endif

-- method Settings::get_monospace_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_monospace_font_family" webkit_settings_get_monospace_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:monospaceFontFamily]("GI.WebKit2.Objects.Settings#g:attr:monospaceFontFamily") property.
settingsGetMonospaceFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ Default font family used to display content marked with monospace font.
settingsGetMonospaceFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_monospace_font_family settings'
    checkUnexpectedReturnNULL "settingsGetMonospaceFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetMonospaceFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetMonospaceFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetMonospaceFontFamily

instance O.OverloadedMethodInfo SettingsGetMonospaceFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetMonospaceFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetMonospaceFontFamily"
        })


#endif

-- method Settings::get_pictograph_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_pictograph_font_family" webkit_settings_get_pictograph_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:pictographFontFamily]("GI.WebKit2.Objects.Settings#g:attr:pictographFontFamily") property.
settingsGetPictographFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content marked with pictograph font.
settingsGetPictographFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_pictograph_font_family settings'
    checkUnexpectedReturnNULL "settingsGetPictographFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetPictographFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetPictographFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetPictographFontFamily

instance O.OverloadedMethodInfo SettingsGetPictographFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetPictographFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetPictographFontFamily"
        })


#endif

-- method Settings::get_print_backgrounds
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_print_backgrounds" webkit_settings_get_print_backgrounds :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:printBackgrounds]("GI.WebKit2.Objects.Settings#g:attr:printBackgrounds") property.
settingsGetPrintBackgrounds ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If background images should be printed or 'P.False' otherwise.
settingsGetPrintBackgrounds settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_print_backgrounds settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetPrintBackgroundsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetPrintBackgroundsMethodInfo a signature where
    overloadedMethod = settingsGetPrintBackgrounds

instance O.OverloadedMethodInfo SettingsGetPrintBackgroundsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetPrintBackgrounds",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetPrintBackgrounds"
        })


#endif

-- method Settings::get_sans_serif_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_sans_serif_font_family" webkit_settings_get_sans_serif_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:sansSerifFontFamily]("GI.WebKit2.Objects.Settings#g:attr:sansSerifFontFamily") property.
settingsGetSansSerifFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content marked with sans-serif font.
settingsGetSansSerifFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_sans_serif_font_family settings'
    checkUnexpectedReturnNULL "settingsGetSansSerifFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetSansSerifFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetSansSerifFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetSansSerifFontFamily

instance O.OverloadedMethodInfo SettingsGetSansSerifFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetSansSerifFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetSansSerifFontFamily"
        })


#endif

-- method Settings::get_serif_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_serif_font_family" webkit_settings_get_serif_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Gets the [Settings:serifFontFamily]("GI.WebKit2.Objects.Settings#g:attr:serifFontFamily") property.
settingsGetSerifFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The default font family used to display content marked with serif font.
settingsGetSerifFontFamily settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_serif_font_family settings'
    checkUnexpectedReturnNULL "settingsGetSerifFontFamily" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetSerifFontFamilyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetSerifFontFamilyMethodInfo a signature where
    overloadedMethod = settingsGetSerifFontFamily

instance O.OverloadedMethodInfo SettingsGetSerifFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetSerifFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetSerifFontFamily"
        })


#endif

-- method Settings::get_user_agent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_user_agent" webkit_settings_get_user_agent :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Get the [Settings:userAgent]("GI.WebKit2.Objects.Settings#g:attr:userAgent") property.
settingsGetUserAgent ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The current value of the user-agent property.
settingsGetUserAgent settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_user_agent settings'
    checkUnexpectedReturnNULL "settingsGetUserAgent" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetUserAgentMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetUserAgentMethodInfo a signature where
    overloadedMethod = settingsGetUserAgent

instance O.OverloadedMethodInfo SettingsGetUserAgentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetUserAgent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetUserAgent"
        })


#endif

-- method Settings::get_webrtc_udp_ports_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_webrtc_udp_ports_range" webkit_settings_get_webrtc_udp_ports_range :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CString

-- | Get the [property/@settings@/:webrtc-udp-ports-range] property.
-- 
-- /Since: 2.48/
settingsGetWebrtcUdpPortsRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m T.Text
    -- ^ __Returns:__ The WebRTC UDP ports range, or 'P.Nothing' if un-set.
settingsGetWebrtcUdpPortsRange settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_webrtc_udp_ports_range settings'
    checkUnexpectedReturnNULL "settingsGetWebrtcUdpPortsRange" result
    result' <- cstringToText result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetWebrtcUdpPortsRangeMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetWebrtcUdpPortsRangeMethodInfo a signature where
    overloadedMethod = settingsGetWebrtcUdpPortsRange

instance O.OverloadedMethodInfo SettingsGetWebrtcUdpPortsRangeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetWebrtcUdpPortsRange",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetWebrtcUdpPortsRange"
        })


#endif

-- method Settings::get_zoom_text_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_get_zoom_text_only" webkit_settings_get_zoom_text_only :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO CInt

-- | Get the [Settings:zoomTextOnly]("GI.WebKit2.Objects.Settings#g:attr:zoomTextOnly") property.
settingsGetZoomTextOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If zoom level of the view should only affect the text
    --    or 'P.False' if all view contents should be scaled.
settingsGetZoomTextOnly settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_settings_get_zoom_text_only settings'
    let result' = (/= 0) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data SettingsGetZoomTextOnlyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsGetZoomTextOnlyMethodInfo a signature where
    overloadedMethod = settingsGetZoomTextOnly

instance O.OverloadedMethodInfo SettingsGetZoomTextOnlyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsGetZoomTextOnly",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsGetZoomTextOnly"
        })


#endif

-- method Settings::set_allow_file_access_from_file_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "allowed"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_allow_file_access_from_file_urls" webkit_settings_set_allow_file_access_from_file_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Set the [Settings:allowFileAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:attr:allowFileAccessFromFileUrls") property.
-- 
-- /Since: 2.10/
settingsSetAllowFileAccessFromFileUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@allowed@/: Value to be set
    -> m ()
settingsSetAllowFileAccessFromFileUrls settings allowed = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_settings_set_allow_file_access_from_file_urls settings' allowed'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowFileAccessFromFileUrlsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetAllowFileAccessFromFileUrlsMethodInfo a signature where
    overloadedMethod = settingsSetAllowFileAccessFromFileUrls

instance O.OverloadedMethodInfo SettingsSetAllowFileAccessFromFileUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetAllowFileAccessFromFileUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetAllowFileAccessFromFileUrls"
        })


#endif

-- method Settings::set_allow_modal_dialogs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "allowed"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_allow_modal_dialogs" webkit_settings_set_allow_modal_dialogs :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Set the [Settings:allowModalDialogs]("GI.WebKit2.Objects.Settings#g:attr:allowModalDialogs") property.
settingsSetAllowModalDialogs ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@allowed@/: Value to be set
    -> m ()
settingsSetAllowModalDialogs settings allowed = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_settings_set_allow_modal_dialogs settings' allowed'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowModalDialogsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetAllowModalDialogsMethodInfo a signature where
    overloadedMethod = settingsSetAllowModalDialogs

instance O.OverloadedMethodInfo SettingsSetAllowModalDialogsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetAllowModalDialogs",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetAllowModalDialogs"
        })


#endif

-- method Settings::set_allow_top_navigation_to_data_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "allowed"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_allow_top_navigation_to_data_urls" webkit_settings_set_allow_top_navigation_to_data_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Set the [Settings:allowTopNavigationToDataUrls]("GI.WebKit2.Objects.Settings#g:attr:allowTopNavigationToDataUrls") property.
-- 
-- /Since: 2.28/
settingsSetAllowTopNavigationToDataUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@allowed@/: Value to be set
    -> m ()
settingsSetAllowTopNavigationToDataUrls settings allowed = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_settings_set_allow_top_navigation_to_data_urls settings' allowed'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowTopNavigationToDataUrlsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetAllowTopNavigationToDataUrlsMethodInfo a signature where
    overloadedMethod = settingsSetAllowTopNavigationToDataUrls

instance O.OverloadedMethodInfo SettingsSetAllowTopNavigationToDataUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetAllowTopNavigationToDataUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetAllowTopNavigationToDataUrls"
        })


#endif

-- method Settings::set_allow_universal_access_from_file_urls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "allowed"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_allow_universal_access_from_file_urls" webkit_settings_set_allow_universal_access_from_file_urls :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Set the [Settings:allowUniversalAccessFromFileUrls]("GI.WebKit2.Objects.Settings#g:attr:allowUniversalAccessFromFileUrls") property.
-- 
-- /Since: 2.14/
settingsSetAllowUniversalAccessFromFileUrls ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@allowed@/: Value to be set
    -> m ()
settingsSetAllowUniversalAccessFromFileUrls settings allowed = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_settings_set_allow_universal_access_from_file_urls settings' allowed'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo a signature where
    overloadedMethod = settingsSetAllowUniversalAccessFromFileUrls

instance O.OverloadedMethodInfo SettingsSetAllowUniversalAccessFromFileUrlsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetAllowUniversalAccessFromFileUrls",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetAllowUniversalAccessFromFileUrls"
        })


#endif

-- method Settings::set_auto_load_images
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_auto_load_images" webkit_settings_set_auto_load_images :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:autoLoadImages]("GI.WebKit2.Objects.Settings#g:attr:autoLoadImages") property.
settingsSetAutoLoadImages ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetAutoLoadImages settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_auto_load_images settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetAutoLoadImagesMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetAutoLoadImagesMethodInfo a signature where
    overloadedMethod = settingsSetAutoLoadImages

instance O.OverloadedMethodInfo SettingsSetAutoLoadImagesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetAutoLoadImages",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetAutoLoadImages"
        })


#endif

-- method Settings::set_cursive_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cursive_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default cursive font family"
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

foreign import ccall "webkit_settings_set_cursive_font_family" webkit_settings_set_cursive_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- cursive_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:cursiveFontFamily]("GI.WebKit2.Objects.Settings#g:attr:cursiveFontFamily") property.
settingsSetCursiveFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@cursiveFontFamily@/: the new default cursive font family
    -> m ()
settingsSetCursiveFontFamily settings cursiveFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    cursiveFontFamily' <- textToCString cursiveFontFamily
    webkit_settings_set_cursive_font_family settings' cursiveFontFamily'
    touchManagedPtr settings
    freeMem cursiveFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetCursiveFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetCursiveFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetCursiveFontFamily

instance O.OverloadedMethodInfo SettingsSetCursiveFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetCursiveFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetCursiveFontFamily"
        })


#endif

-- method Settings::set_default_charset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "default_charset"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "default charset to be set"
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

foreign import ccall "webkit_settings_set_default_charset" webkit_settings_set_default_charset :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- default_charset : TBasicType TUTF8
    IO ()

-- | Set the [Settings:defaultCharset]("GI.WebKit2.Objects.Settings#g:attr:defaultCharset") property.
settingsSetDefaultCharset ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@defaultCharset@/: default charset to be set
    -> m ()
settingsSetDefaultCharset settings defaultCharset = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    defaultCharset' <- textToCString defaultCharset
    webkit_settings_set_default_charset settings' defaultCharset'
    touchManagedPtr settings
    freeMem defaultCharset'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultCharsetMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDefaultCharsetMethodInfo a signature where
    overloadedMethod = settingsSetDefaultCharset

instance O.OverloadedMethodInfo SettingsSetDefaultCharsetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDefaultCharset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDefaultCharset"
        })


#endif

-- method Settings::set_default_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "default_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default font family"
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

foreign import ccall "webkit_settings_set_default_font_family" webkit_settings_set_default_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- default_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:defaultFontFamily]("GI.WebKit2.Objects.Settings#g:attr:defaultFontFamily") property.
settingsSetDefaultFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@defaultFontFamily@/: the new default font family
    -> m ()
settingsSetDefaultFontFamily settings defaultFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    defaultFontFamily' <- textToCString defaultFontFamily
    webkit_settings_set_default_font_family settings' defaultFontFamily'
    touchManagedPtr settings
    freeMem defaultFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDefaultFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetDefaultFontFamily

instance O.OverloadedMethodInfo SettingsSetDefaultFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDefaultFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDefaultFontFamily"
        })


#endif

-- method Settings::set_default_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "font_size"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "default font size to be set in pixels"
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

foreign import ccall "webkit_settings_set_default_font_size" webkit_settings_set_default_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Word32 ->                               -- font_size : TBasicType TUInt32
    IO ()

-- | Set the [Settings:defaultFontSize]("GI.WebKit2.Objects.Settings#g:attr:defaultFontSize") property.
settingsSetDefaultFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Word32
    -- ^ /@fontSize@/: default font size to be set in pixels
    -> m ()
settingsSetDefaultFontSize settings fontSize = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    webkit_settings_set_default_font_size settings' fontSize
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultFontSizeMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDefaultFontSizeMethodInfo a signature where
    overloadedMethod = settingsSetDefaultFontSize

instance O.OverloadedMethodInfo SettingsSetDefaultFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDefaultFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDefaultFontSize"
        })


#endif

-- method Settings::set_default_monospace_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "font_size"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "default monospace font size to be set in pixels"
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

foreign import ccall "webkit_settings_set_default_monospace_font_size" webkit_settings_set_default_monospace_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Word32 ->                               -- font_size : TBasicType TUInt32
    IO ()

-- | Set the [Settings:defaultMonospaceFontSize]("GI.WebKit2.Objects.Settings#g:attr:defaultMonospaceFontSize") property.
settingsSetDefaultMonospaceFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Word32
    -- ^ /@fontSize@/: default monospace font size to be set in pixels
    -> m ()
settingsSetDefaultMonospaceFontSize settings fontSize = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    webkit_settings_set_default_monospace_font_size settings' fontSize
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDefaultMonospaceFontSizeMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDefaultMonospaceFontSizeMethodInfo a signature where
    overloadedMethod = settingsSetDefaultMonospaceFontSize

instance O.OverloadedMethodInfo SettingsSetDefaultMonospaceFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDefaultMonospaceFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDefaultMonospaceFontSize"
        })


#endif

-- method Settings::set_disable_web_security
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "disabled"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_disable_web_security" webkit_settings_set_disable_web_security :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- disabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:disableWebSecurity]("GI.WebKit2.Objects.Settings#g:attr:disableWebSecurity") property.
-- 
-- /Since: 2.40/
settingsSetDisableWebSecurity ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@disabled@/: Value to be set
    -> m ()
settingsSetDisableWebSecurity settings disabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let disabled' = (P.fromIntegral . P.fromEnum) disabled
    webkit_settings_set_disable_web_security settings' disabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDisableWebSecurityMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDisableWebSecurityMethodInfo a signature where
    overloadedMethod = settingsSetDisableWebSecurity

instance O.OverloadedMethodInfo SettingsSetDisableWebSecurityMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDisableWebSecurity",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDisableWebSecurity"
        })


#endif

-- method Settings::set_draw_compositing_indicators
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_draw_compositing_indicators" webkit_settings_set_draw_compositing_indicators :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:drawCompositingIndicators]("GI.WebKit2.Objects.Settings#g:attr:drawCompositingIndicators") property.
settingsSetDrawCompositingIndicators ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetDrawCompositingIndicators settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_draw_compositing_indicators settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetDrawCompositingIndicatorsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetDrawCompositingIndicatorsMethodInfo a signature where
    overloadedMethod = settingsSetDrawCompositingIndicators

instance O.OverloadedMethodInfo SettingsSetDrawCompositingIndicatorsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetDrawCompositingIndicators",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetDrawCompositingIndicators"
        })


#endif

-- method Settings::set_enable_2d_canvas_acceleration
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_2d_canvas_acceleration" webkit_settings_set_enable_2d_canvas_acceleration :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enable2dCanvasAcceleration]("GI.WebKit2.Objects.Settings#g:attr:enable2dCanvasAcceleration") property.
-- 
-- /Since: 2.46/
settingsSetEnable2dCanvasAcceleration ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnable2dCanvasAcceleration settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_2d_canvas_acceleration settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnable2dCanvasAccelerationMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnable2dCanvasAccelerationMethodInfo a signature where
    overloadedMethod = settingsSetEnable2dCanvasAcceleration

instance O.OverloadedMethodInfo SettingsSetEnable2dCanvasAccelerationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnable2dCanvasAcceleration",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnable2dCanvasAcceleration"
        })


#endif

-- method Settings::set_enable_accelerated_2d_canvas
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_accelerated_2d_canvas" webkit_settings_set_enable_accelerated_2d_canvas :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableAccelerated2dCanvas ["(Since version 2.32.)"] #-}
-- | Set the [Settings:enableAccelerated2dCanvas]("GI.WebKit2.Objects.Settings#g:attr:enableAccelerated2dCanvas") property.
-- 
-- /Since: 2.2/
settingsSetEnableAccelerated2dCanvas ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableAccelerated2dCanvas settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_accelerated_2d_canvas settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableAccelerated2dCanvasMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableAccelerated2dCanvasMethodInfo a signature where
    overloadedMethod = settingsSetEnableAccelerated2dCanvas

instance O.OverloadedMethodInfo SettingsSetEnableAccelerated2dCanvasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableAccelerated2dCanvas",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableAccelerated2dCanvas"
        })


#endif

-- method Settings::set_enable_back_forward_navigation_gestures
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_back_forward_navigation_gestures" webkit_settings_set_enable_back_forward_navigation_gestures :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableBackForwardNavigationGestures]("GI.WebKit2.Objects.Settings#g:attr:enableBackForwardNavigationGestures") property.
-- 
-- /Since: 2.24/
settingsSetEnableBackForwardNavigationGestures ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: value to be set
    -> m ()
settingsSetEnableBackForwardNavigationGestures settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_back_forward_navigation_gestures settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableBackForwardNavigationGesturesMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableBackForwardNavigationGesturesMethodInfo a signature where
    overloadedMethod = settingsSetEnableBackForwardNavigationGestures

instance O.OverloadedMethodInfo SettingsSetEnableBackForwardNavigationGesturesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableBackForwardNavigationGestures",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableBackForwardNavigationGestures"
        })


#endif

-- method Settings::set_enable_caret_browsing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_caret_browsing" webkit_settings_set_enable_caret_browsing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableCaretBrowsing]("GI.WebKit2.Objects.Settings#g:attr:enableCaretBrowsing") property.
settingsSetEnableCaretBrowsing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableCaretBrowsing settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_caret_browsing settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableCaretBrowsingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableCaretBrowsingMethodInfo a signature where
    overloadedMethod = settingsSetEnableCaretBrowsing

instance O.OverloadedMethodInfo SettingsSetEnableCaretBrowsingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableCaretBrowsing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableCaretBrowsing"
        })


#endif

-- method Settings::set_enable_developer_extras
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_developer_extras" webkit_settings_set_enable_developer_extras :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableDeveloperExtras]("GI.WebKit2.Objects.Settings#g:attr:enableDeveloperExtras") property.
settingsSetEnableDeveloperExtras ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableDeveloperExtras settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_developer_extras settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableDeveloperExtrasMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableDeveloperExtrasMethodInfo a signature where
    overloadedMethod = settingsSetEnableDeveloperExtras

instance O.OverloadedMethodInfo SettingsSetEnableDeveloperExtrasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableDeveloperExtras",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableDeveloperExtras"
        })


#endif

-- method Settings::set_enable_dns_prefetching
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_dns_prefetching" webkit_settings_set_enable_dns_prefetching :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableDnsPrefetching ["(Since version 2.48.)"] #-}
-- | Set the [Settings:enableDnsPrefetching]("GI.WebKit2.Objects.Settings#g:attr:enableDnsPrefetching") property.
settingsSetEnableDnsPrefetching ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableDnsPrefetching settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_dns_prefetching settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableDnsPrefetchingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableDnsPrefetchingMethodInfo a signature where
    overloadedMethod = settingsSetEnableDnsPrefetching

instance O.OverloadedMethodInfo SettingsSetEnableDnsPrefetchingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableDnsPrefetching",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableDnsPrefetching"
        })


#endif

-- method Settings::set_enable_encrypted_media
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_encrypted_media" webkit_settings_set_enable_encrypted_media :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableEncryptedMedia]("GI.WebKit2.Objects.Settings#g:attr:enableEncryptedMedia") property.
-- 
-- /Since: 2.20/
settingsSetEnableEncryptedMedia ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableEncryptedMedia settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_encrypted_media settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableEncryptedMediaMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableEncryptedMediaMethodInfo a signature where
    overloadedMethod = settingsSetEnableEncryptedMedia

instance O.OverloadedMethodInfo SettingsSetEnableEncryptedMediaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableEncryptedMedia",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableEncryptedMedia"
        })


#endif

-- method Settings::set_enable_frame_flattening
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_frame_flattening" webkit_settings_set_enable_frame_flattening :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableFrameFlattening ["(Since version 2.38)"] #-}
-- | Frame flattening is no longer supported. This function does nothing.
settingsSetEnableFrameFlattening ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableFrameFlattening settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_frame_flattening settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableFrameFlatteningMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableFrameFlatteningMethodInfo a signature where
    overloadedMethod = settingsSetEnableFrameFlattening

instance O.OverloadedMethodInfo SettingsSetEnableFrameFlatteningMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableFrameFlattening",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableFrameFlattening"
        })


#endif

-- method Settings::set_enable_fullscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_fullscreen" webkit_settings_set_enable_fullscreen :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableFullscreen]("GI.WebKit2.Objects.Settings#g:attr:enableFullscreen") property.
settingsSetEnableFullscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableFullscreen settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_fullscreen settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableFullscreenMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableFullscreenMethodInfo a signature where
    overloadedMethod = settingsSetEnableFullscreen

instance O.OverloadedMethodInfo SettingsSetEnableFullscreenMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableFullscreen",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableFullscreen"
        })


#endif

-- method Settings::set_enable_html5_database
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_html5_database" webkit_settings_set_enable_html5_database :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableHtml5Database]("GI.WebKit2.Objects.Settings#g:attr:enableHtml5Database") property.
settingsSetEnableHtml5Database ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableHtml5Database settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_html5_database settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHtml5DatabaseMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableHtml5DatabaseMethodInfo a signature where
    overloadedMethod = settingsSetEnableHtml5Database

instance O.OverloadedMethodInfo SettingsSetEnableHtml5DatabaseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableHtml5Database",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableHtml5Database"
        })


#endif

-- method Settings::set_enable_html5_local_storage
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_html5_local_storage" webkit_settings_set_enable_html5_local_storage :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableHtml5LocalStorage]("GI.WebKit2.Objects.Settings#g:attr:enableHtml5LocalStorage") property.
settingsSetEnableHtml5LocalStorage ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableHtml5LocalStorage settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_html5_local_storage settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHtml5LocalStorageMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableHtml5LocalStorageMethodInfo a signature where
    overloadedMethod = settingsSetEnableHtml5LocalStorage

instance O.OverloadedMethodInfo SettingsSetEnableHtml5LocalStorageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableHtml5LocalStorage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableHtml5LocalStorage"
        })


#endif

-- method Settings::set_enable_hyperlink_auditing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_hyperlink_auditing" webkit_settings_set_enable_hyperlink_auditing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableHyperlinkAuditing ["(Since version 2.50.)"] #-}
-- | Set the [Settings:enableHyperlinkAuditing]("GI.WebKit2.Objects.Settings#g:attr:enableHyperlinkAuditing") property.
settingsSetEnableHyperlinkAuditing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableHyperlinkAuditing settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_hyperlink_auditing settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableHyperlinkAuditingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableHyperlinkAuditingMethodInfo a signature where
    overloadedMethod = settingsSetEnableHyperlinkAuditing

instance O.OverloadedMethodInfo SettingsSetEnableHyperlinkAuditingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableHyperlinkAuditing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableHyperlinkAuditing"
        })


#endif

-- method Settings::set_enable_java
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_java" webkit_settings_set_enable_java :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableJava ["(Since version 2.38.)","This function does nothing."] #-}
-- | Set the [Settings:enableJava]("GI.WebKit2.Objects.Settings#g:attr:enableJava") property.
-- 
-- Deprecated function that does nothing.
settingsSetEnableJava ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableJava settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_java settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavaMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableJavaMethodInfo a signature where
    overloadedMethod = settingsSetEnableJava

instance O.OverloadedMethodInfo SettingsSetEnableJavaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableJava",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableJava"
        })


#endif

-- method Settings::set_enable_javascript
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_javascript" webkit_settings_set_enable_javascript :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableJavascript]("GI.WebKit2.Objects.Settings#g:attr:enableJavascript") property.
settingsSetEnableJavascript ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableJavascript settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_javascript settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavascriptMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableJavascriptMethodInfo a signature where
    overloadedMethod = settingsSetEnableJavascript

instance O.OverloadedMethodInfo SettingsSetEnableJavascriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableJavascript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableJavascript"
        })


#endif

-- method Settings::set_enable_javascript_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_javascript_markup" webkit_settings_set_enable_javascript_markup :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:attr:enableJavascriptMarkup") property.
-- 
-- /Since: 2.24/
settingsSetEnableJavascriptMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableJavascriptMarkup settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_javascript_markup settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableJavascriptMarkupMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableJavascriptMarkupMethodInfo a signature where
    overloadedMethod = settingsSetEnableJavascriptMarkup

instance O.OverloadedMethodInfo SettingsSetEnableJavascriptMarkupMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableJavascriptMarkup",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableJavascriptMarkup"
        })


#endif

-- method Settings::set_enable_media
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_media" webkit_settings_set_enable_media :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableMedia]("GI.WebKit2.Objects.Settings#g:attr:enableMedia") property.
-- 
-- /Since: 2.26/
settingsSetEnableMedia ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableMedia settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_media settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableMediaMethodInfo a signature where
    overloadedMethod = settingsSetEnableMedia

instance O.OverloadedMethodInfo SettingsSetEnableMediaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableMedia",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableMedia"
        })


#endif

-- method Settings::set_enable_media_capabilities
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_media_capabilities" webkit_settings_set_enable_media_capabilities :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableMediaCapabilities]("GI.WebKit2.Objects.Settings#g:attr:enableMediaCapabilities") property.
-- 
-- /Since: 2.22/
settingsSetEnableMediaCapabilities ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableMediaCapabilities settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_media_capabilities settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaCapabilitiesMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableMediaCapabilitiesMethodInfo a signature where
    overloadedMethod = settingsSetEnableMediaCapabilities

instance O.OverloadedMethodInfo SettingsSetEnableMediaCapabilitiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableMediaCapabilities",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableMediaCapabilities"
        })


#endif

-- method Settings::set_enable_media_stream
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_media_stream" webkit_settings_set_enable_media_stream :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableMediaStream]("GI.WebKit2.Objects.Settings#g:attr:enableMediaStream") property.
-- 
-- /Since: 2.4/
settingsSetEnableMediaStream ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableMediaStream settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_media_stream settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediaStreamMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableMediaStreamMethodInfo a signature where
    overloadedMethod = settingsSetEnableMediaStream

instance O.OverloadedMethodInfo SettingsSetEnableMediaStreamMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableMediaStream",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableMediaStream"
        })


#endif

-- method Settings::set_enable_mediasource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_mediasource" webkit_settings_set_enable_mediasource :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableMediasource]("GI.WebKit2.Objects.Settings#g:attr:enableMediasource") property.
-- 
-- /Since: 2.4/
settingsSetEnableMediasource ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableMediasource settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_mediasource settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMediasourceMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableMediasourceMethodInfo a signature where
    overloadedMethod = settingsSetEnableMediasource

instance O.OverloadedMethodInfo SettingsSetEnableMediasourceMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableMediasource",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableMediasource"
        })


#endif

-- method Settings::set_enable_mock_capture_devices
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_mock_capture_devices" webkit_settings_set_enable_mock_capture_devices :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableMockCaptureDevices]("GI.WebKit2.Objects.Settings#g:attr:enableMockCaptureDevices") property.
-- 
-- /Since: 2.4/
settingsSetEnableMockCaptureDevices ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableMockCaptureDevices settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_mock_capture_devices settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableMockCaptureDevicesMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableMockCaptureDevicesMethodInfo a signature where
    overloadedMethod = settingsSetEnableMockCaptureDevices

instance O.OverloadedMethodInfo SettingsSetEnableMockCaptureDevicesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableMockCaptureDevices",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableMockCaptureDevices"
        })


#endif

-- method Settings::set_enable_offline_web_application_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_offline_web_application_cache" webkit_settings_set_enable_offline_web_application_cache :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableOfflineWebApplicationCache ["(Since version 2.44)"] #-}
-- | Setting no longer supported. This function does nothing.
settingsSetEnableOfflineWebApplicationCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableOfflineWebApplicationCache settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_offline_web_application_cache settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableOfflineWebApplicationCacheMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableOfflineWebApplicationCacheMethodInfo a signature where
    overloadedMethod = settingsSetEnableOfflineWebApplicationCache

instance O.OverloadedMethodInfo SettingsSetEnableOfflineWebApplicationCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableOfflineWebApplicationCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableOfflineWebApplicationCache"
        })


#endif

-- method Settings::set_enable_page_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_page_cache" webkit_settings_set_enable_page_cache :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enablePageCache]("GI.WebKit2.Objects.Settings#g:attr:enablePageCache") property.
settingsSetEnablePageCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnablePageCache settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_page_cache settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePageCacheMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnablePageCacheMethodInfo a signature where
    overloadedMethod = settingsSetEnablePageCache

instance O.OverloadedMethodInfo SettingsSetEnablePageCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnablePageCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnablePageCache"
        })


#endif

-- method Settings::set_enable_plugins
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_plugins" webkit_settings_set_enable_plugins :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnablePlugins ["(Since version 2.32)"] #-}
-- | Set the [Settings:enablePlugins]("GI.WebKit2.Objects.Settings#g:attr:enablePlugins") property.
settingsSetEnablePlugins ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnablePlugins settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_plugins settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePluginsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnablePluginsMethodInfo a signature where
    overloadedMethod = settingsSetEnablePlugins

instance O.OverloadedMethodInfo SettingsSetEnablePluginsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnablePlugins",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnablePlugins"
        })


#endif

-- method Settings::set_enable_private_browsing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_private_browsing" webkit_settings_set_enable_private_browsing :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnablePrivateBrowsing ["(Since version 2.16.)","Use [WebView:isEphemeral](\"GI.WebKit2.Objects.WebView#g:attr:isEphemeral\") or t'GI.WebKit2.Objects.WebContext.WebContext':@/is-ephemeral/@ instead."] #-}
-- | Set the [Settings:enablePrivateBrowsing]("GI.WebKit2.Objects.Settings#g:attr:enablePrivateBrowsing") property.
settingsSetEnablePrivateBrowsing ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnablePrivateBrowsing settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_private_browsing settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnablePrivateBrowsingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnablePrivateBrowsingMethodInfo a signature where
    overloadedMethod = settingsSetEnablePrivateBrowsing

instance O.OverloadedMethodInfo SettingsSetEnablePrivateBrowsingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnablePrivateBrowsing",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnablePrivateBrowsing"
        })


#endif

-- method Settings::set_enable_resizable_text_areas
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_resizable_text_areas" webkit_settings_set_enable_resizable_text_areas :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableResizableTextAreas]("GI.WebKit2.Objects.Settings#g:attr:enableResizableTextAreas") property.
settingsSetEnableResizableTextAreas ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableResizableTextAreas settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_resizable_text_areas settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableResizableTextAreasMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableResizableTextAreasMethodInfo a signature where
    overloadedMethod = settingsSetEnableResizableTextAreas

instance O.OverloadedMethodInfo SettingsSetEnableResizableTextAreasMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableResizableTextAreas",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableResizableTextAreas"
        })


#endif

-- method Settings::set_enable_site_specific_quirks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_site_specific_quirks" webkit_settings_set_enable_site_specific_quirks :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableSiteSpecificQuirks]("GI.WebKit2.Objects.Settings#g:attr:enableSiteSpecificQuirks") property.
settingsSetEnableSiteSpecificQuirks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableSiteSpecificQuirks settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_site_specific_quirks settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSiteSpecificQuirksMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableSiteSpecificQuirksMethodInfo a signature where
    overloadedMethod = settingsSetEnableSiteSpecificQuirks

instance O.OverloadedMethodInfo SettingsSetEnableSiteSpecificQuirksMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableSiteSpecificQuirks",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableSiteSpecificQuirks"
        })


#endif

-- method Settings::set_enable_smooth_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_smooth_scrolling" webkit_settings_set_enable_smooth_scrolling :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableSmoothScrolling]("GI.WebKit2.Objects.Settings#g:attr:enableSmoothScrolling") property.
settingsSetEnableSmoothScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableSmoothScrolling settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_smooth_scrolling settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSmoothScrollingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableSmoothScrollingMethodInfo a signature where
    overloadedMethod = settingsSetEnableSmoothScrolling

instance O.OverloadedMethodInfo SettingsSetEnableSmoothScrollingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableSmoothScrolling",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableSmoothScrolling"
        })


#endif

-- method Settings::set_enable_spatial_navigation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_spatial_navigation" webkit_settings_set_enable_spatial_navigation :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableSpatialNavigation]("GI.WebKit2.Objects.Settings#g:attr:enableSpatialNavigation") property.
-- 
-- /Since: 2.2/
settingsSetEnableSpatialNavigation ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableSpatialNavigation settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_spatial_navigation settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableSpatialNavigationMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableSpatialNavigationMethodInfo a signature where
    overloadedMethod = settingsSetEnableSpatialNavigation

instance O.OverloadedMethodInfo SettingsSetEnableSpatialNavigationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableSpatialNavigation",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableSpatialNavigation"
        })


#endif

-- method Settings::set_enable_tabs_to_links
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_tabs_to_links" webkit_settings_set_enable_tabs_to_links :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableTabsToLinks]("GI.WebKit2.Objects.Settings#g:attr:enableTabsToLinks") property.
settingsSetEnableTabsToLinks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableTabsToLinks settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_tabs_to_links settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableTabsToLinksMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableTabsToLinksMethodInfo a signature where
    overloadedMethod = settingsSetEnableTabsToLinks

instance O.OverloadedMethodInfo SettingsSetEnableTabsToLinksMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableTabsToLinks",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableTabsToLinks"
        })


#endif

-- method Settings::set_enable_webaudio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_webaudio" webkit_settings_set_enable_webaudio :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableWebaudio]("GI.WebKit2.Objects.Settings#g:attr:enableWebaudio") property.
settingsSetEnableWebaudio ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableWebaudio settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_webaudio settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebaudioMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableWebaudioMethodInfo a signature where
    overloadedMethod = settingsSetEnableWebaudio

instance O.OverloadedMethodInfo SettingsSetEnableWebaudioMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableWebaudio",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableWebaudio"
        })


#endif

-- method Settings::set_enable_webgl
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_webgl" webkit_settings_set_enable_webgl :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableWebgl]("GI.WebKit2.Objects.Settings#g:attr:enableWebgl") property.
settingsSetEnableWebgl ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableWebgl settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_webgl settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebglMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableWebglMethodInfo a signature where
    overloadedMethod = settingsSetEnableWebgl

instance O.OverloadedMethodInfo SettingsSetEnableWebglMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableWebgl",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableWebgl"
        })


#endif

-- method Settings::set_enable_webrtc
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_webrtc" webkit_settings_set_enable_webrtc :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [property/@settings@/:enable-webrtc] property.
-- 
-- Setting this property to 'P.True' implies the media-stream web-setting will also be enabled.
-- 
-- /Since: 2.38/
settingsSetEnableWebrtc ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableWebrtc settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_webrtc settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWebrtcMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableWebrtcMethodInfo a signature where
    overloadedMethod = settingsSetEnableWebrtc

instance O.OverloadedMethodInfo SettingsSetEnableWebrtcMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableWebrtc",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableWebrtc"
        })


#endif

-- method Settings::set_enable_write_console_messages_to_stdout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_write_console_messages_to_stdout" webkit_settings_set_enable_write_console_messages_to_stdout :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:enableWriteConsoleMessagesToStdout]("GI.WebKit2.Objects.Settings#g:attr:enableWriteConsoleMessagesToStdout") property.
-- 
-- /Since: 2.2/
settingsSetEnableWriteConsoleMessagesToStdout ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableWriteConsoleMessagesToStdout settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_write_console_messages_to_stdout settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo a signature where
    overloadedMethod = settingsSetEnableWriteConsoleMessagesToStdout

instance O.OverloadedMethodInfo SettingsSetEnableWriteConsoleMessagesToStdoutMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableWriteConsoleMessagesToStdout",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableWriteConsoleMessagesToStdout"
        })


#endif

-- method Settings::set_enable_xss_auditor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_enable_xss_auditor" webkit_settings_set_enable_xss_auditor :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetEnableXssAuditor ["(Since version 2.38.)","This function does nothing."] #-}
-- | The XSS auditor has been removed. This function does nothing.
settingsSetEnableXssAuditor ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetEnableXssAuditor settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_enable_xss_auditor settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetEnableXssAuditorMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetEnableXssAuditorMethodInfo a signature where
    overloadedMethod = settingsSetEnableXssAuditor

instance O.OverloadedMethodInfo SettingsSetEnableXssAuditorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetEnableXssAuditor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetEnableXssAuditor"
        })


#endif

-- method Settings::set_fantasy_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fantasy_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default fantasy font family"
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

foreign import ccall "webkit_settings_set_fantasy_font_family" webkit_settings_set_fantasy_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- fantasy_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:fantasyFontFamily]("GI.WebKit2.Objects.Settings#g:attr:fantasyFontFamily") property.
settingsSetFantasyFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@fantasyFontFamily@/: the new default fantasy font family
    -> m ()
settingsSetFantasyFontFamily settings fantasyFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    fantasyFontFamily' <- textToCString fantasyFontFamily
    webkit_settings_set_fantasy_font_family settings' fantasyFontFamily'
    touchManagedPtr settings
    freeMem fantasyFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetFantasyFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetFantasyFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetFantasyFontFamily

instance O.OverloadedMethodInfo SettingsSetFantasyFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetFantasyFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetFantasyFontFamily"
        })


#endif

-- method Settings::set_feature_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the feature to toggle."
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
--                 { rawDocText = Just "whether the feature will be enabled."
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

foreign import ccall "webkit_settings_set_feature_enabled" webkit_settings_set_feature_enabled :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Ptr WebKit2.Feature.Feature ->          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Enables or disables a feature.
-- 
-- The current status of the feature can be determined with
-- 'GI.WebKit2.Objects.Settings.settingsGetFeatureEnabled'. To reset a feature to its
-- initial status, pass the value returned by
-- 'GI.WebKit2.Structs.Feature.featureGetDefaultValue' as the /@enabled@/ parameter.
-- 
-- /Since: 2.42/
settingsSetFeatureEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> WebKit2.Feature.Feature
    -- ^ /@feature@/: the feature to toggle.
    -> Bool
    -- ^ /@enabled@/: whether the feature will be enabled.
    -> m ()
settingsSetFeatureEnabled settings feature enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    feature' <- unsafeManagedPtrGetPtr feature
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_feature_enabled settings' feature' enabled'
    touchManagedPtr settings
    touchManagedPtr feature
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetFeatureEnabledMethodInfo
instance (signature ~ (WebKit2.Feature.Feature -> Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetFeatureEnabledMethodInfo a signature where
    overloadedMethod = settingsSetFeatureEnabled

instance O.OverloadedMethodInfo SettingsSetFeatureEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetFeatureEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetFeatureEnabled"
        })


#endif

-- method Settings::set_hardware_acceleration_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 Name
--                   { namespace = "WebKit2" , name = "HardwareAccelerationPolicy" }
--           , argCType = Just "WebKitHardwareAccelerationPolicy"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHardwareAccelerationPolicy"
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

foreign import ccall "webkit_settings_set_hardware_acceleration_policy" webkit_settings_set_hardware_acceleration_policy :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "WebKit2", name = "HardwareAccelerationPolicy"})
    IO ()

-- | Set the [Settings:hardwareAccelerationPolicy]("GI.WebKit2.Objects.Settings#g:attr:hardwareAccelerationPolicy") property.
-- 
-- /Since: 2.16/
settingsSetHardwareAccelerationPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> WebKit2.Enums.HardwareAccelerationPolicy
    -- ^ /@policy@/: a t'GI.WebKit2.Enums.HardwareAccelerationPolicy'
    -> m ()
settingsSetHardwareAccelerationPolicy settings policy = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let policy' = (fromIntegral . fromEnum) policy
    webkit_settings_set_hardware_acceleration_policy settings' policy'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetHardwareAccelerationPolicyMethodInfo
instance (signature ~ (WebKit2.Enums.HardwareAccelerationPolicy -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetHardwareAccelerationPolicyMethodInfo a signature where
    overloadedMethod = settingsSetHardwareAccelerationPolicy

instance O.OverloadedMethodInfo SettingsSetHardwareAccelerationPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetHardwareAccelerationPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetHardwareAccelerationPolicy"
        })


#endif

-- method Settings::set_javascript_can_access_clipboard
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_javascript_can_access_clipboard" webkit_settings_set_javascript_can_access_clipboard :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:javascriptCanAccessClipboard]("GI.WebKit2.Objects.Settings#g:attr:javascriptCanAccessClipboard") property.
settingsSetJavascriptCanAccessClipboard ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetJavascriptCanAccessClipboard settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_javascript_can_access_clipboard settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetJavascriptCanAccessClipboardMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetJavascriptCanAccessClipboardMethodInfo a signature where
    overloadedMethod = settingsSetJavascriptCanAccessClipboard

instance O.OverloadedMethodInfo SettingsSetJavascriptCanAccessClipboardMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetJavascriptCanAccessClipboard",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetJavascriptCanAccessClipboard"
        })


#endif

-- method Settings::set_javascript_can_open_windows_automatically
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_javascript_can_open_windows_automatically" webkit_settings_set_javascript_can_open_windows_automatically :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:javascriptCanOpenWindowsAutomatically]("GI.WebKit2.Objects.Settings#g:attr:javascriptCanOpenWindowsAutomatically") property.
settingsSetJavascriptCanOpenWindowsAutomatically ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetJavascriptCanOpenWindowsAutomatically settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_javascript_can_open_windows_automatically settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo a signature where
    overloadedMethod = settingsSetJavascriptCanOpenWindowsAutomatically

instance O.OverloadedMethodInfo SettingsSetJavascriptCanOpenWindowsAutomaticallyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetJavascriptCanOpenWindowsAutomatically",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetJavascriptCanOpenWindowsAutomatically"
        })


#endif

-- method Settings::set_load_icons_ignoring_image_load_setting
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_load_icons_ignoring_image_load_setting" webkit_settings_set_load_icons_ignoring_image_load_setting :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED settingsSetLoadIconsIgnoringImageLoadSetting ["(Since version 2.42)"] #-}
-- | Setting no longer supported. This function does nothing.
settingsSetLoadIconsIgnoringImageLoadSetting ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetLoadIconsIgnoringImageLoadSetting settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_load_icons_ignoring_image_load_setting settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo a signature where
    overloadedMethod = settingsSetLoadIconsIgnoringImageLoadSetting

instance O.OverloadedMethodInfo SettingsSetLoadIconsIgnoringImageLoadSettingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetLoadIconsIgnoringImageLoadSetting",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetLoadIconsIgnoringImageLoadSetting"
        })


#endif

-- method Settings::set_math_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "math_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default math font family"
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

foreign import ccall "webkit_settings_set_math_font_family" webkit_settings_set_math_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- math_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:mathFontFamily]("GI.WebKit2.Objects.Settings#g:attr:mathFontFamily") property.
-- 
-- Since 2.52
settingsSetMathFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Maybe (T.Text)
    -- ^ /@mathFontFamily@/: the new default math font family
    -> m ()
settingsSetMathFontFamily settings mathFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    maybeMathFontFamily <- case mathFontFamily of
        Nothing -> return FP.nullPtr
        Just jMathFontFamily -> do
            jMathFontFamily' <- textToCString jMathFontFamily
            return jMathFontFamily'
    webkit_settings_set_math_font_family settings' maybeMathFontFamily
    touchManagedPtr settings
    freeMem maybeMathFontFamily
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMathFontFamilyMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMathFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetMathFontFamily

instance O.OverloadedMethodInfo SettingsSetMathFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMathFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMathFontFamily"
        })


#endif

-- method Settings::set_media_content_types_requiring_hardware_support
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "content_types"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "list of media content types requiring hardware support split by semicolons (:) or %NULL to use the default value."
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

foreign import ccall "webkit_settings_set_media_content_types_requiring_hardware_support" webkit_settings_set_media_content_types_requiring_hardware_support :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- content_types : TBasicType TUTF8
    IO ()

-- | Set the [Settings:mediaContentTypesRequiringHardwareSupport]("GI.WebKit2.Objects.Settings#g:attr:mediaContentTypesRequiringHardwareSupport") property.
-- 
-- /Since: 2.30/
settingsSetMediaContentTypesRequiringHardwareSupport ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Maybe (T.Text)
    -- ^ /@contentTypes@/: list of media content types requiring hardware support split by semicolons (:) or 'P.Nothing' to use the default value.
    -> m ()
settingsSetMediaContentTypesRequiringHardwareSupport settings contentTypes = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    maybeContentTypes <- case contentTypes of
        Nothing -> return FP.nullPtr
        Just jContentTypes -> do
            jContentTypes' <- textToCString jContentTypes
            return jContentTypes'
    webkit_settings_set_media_content_types_requiring_hardware_support settings' maybeContentTypes
    touchManagedPtr settings
    freeMem maybeContentTypes
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo a signature where
    overloadedMethod = settingsSetMediaContentTypesRequiringHardwareSupport

instance O.OverloadedMethodInfo SettingsSetMediaContentTypesRequiringHardwareSupportMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMediaContentTypesRequiringHardwareSupport",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMediaContentTypesRequiringHardwareSupport"
        })


#endif

-- method Settings::set_media_playback_allows_inline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_media_playback_allows_inline" webkit_settings_set_media_playback_allows_inline :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:mediaPlaybackAllowsInline]("GI.WebKit2.Objects.Settings#g:attr:mediaPlaybackAllowsInline") property.
settingsSetMediaPlaybackAllowsInline ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetMediaPlaybackAllowsInline settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_media_playback_allows_inline settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaPlaybackAllowsInlineMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMediaPlaybackAllowsInlineMethodInfo a signature where
    overloadedMethod = settingsSetMediaPlaybackAllowsInline

instance O.OverloadedMethodInfo SettingsSetMediaPlaybackAllowsInlineMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMediaPlaybackAllowsInline",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMediaPlaybackAllowsInline"
        })


#endif

-- method Settings::set_media_playback_requires_user_gesture
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_media_playback_requires_user_gesture" webkit_settings_set_media_playback_requires_user_gesture :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set the [Settings:mediaPlaybackRequiresUserGesture]("GI.WebKit2.Objects.Settings#g:attr:mediaPlaybackRequiresUserGesture") property.
settingsSetMediaPlaybackRequiresUserGesture ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
settingsSetMediaPlaybackRequiresUserGesture settings enabled = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_settings_set_media_playback_requires_user_gesture settings' enabled'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMediaPlaybackRequiresUserGestureMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMediaPlaybackRequiresUserGestureMethodInfo a signature where
    overloadedMethod = settingsSetMediaPlaybackRequiresUserGesture

instance O.OverloadedMethodInfo SettingsSetMediaPlaybackRequiresUserGestureMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMediaPlaybackRequiresUserGesture",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMediaPlaybackRequiresUserGesture"
        })


#endif

-- method Settings::set_minimum_font_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "font_size"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "minimum font size to be set in pixels"
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

foreign import ccall "webkit_settings_set_minimum_font_size" webkit_settings_set_minimum_font_size :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    Word32 ->                               -- font_size : TBasicType TUInt32
    IO ()

-- | Set the [Settings:minimumFontSize]("GI.WebKit2.Objects.Settings#g:attr:minimumFontSize") property.
settingsSetMinimumFontSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Word32
    -- ^ /@fontSize@/: minimum font size to be set in pixels
    -> m ()
settingsSetMinimumFontSize settings fontSize = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    webkit_settings_set_minimum_font_size settings' fontSize
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMinimumFontSizeMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMinimumFontSizeMethodInfo a signature where
    overloadedMethod = settingsSetMinimumFontSize

instance O.OverloadedMethodInfo SettingsSetMinimumFontSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMinimumFontSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMinimumFontSize"
        })


#endif

-- method Settings::set_monospace_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "monospace_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default monospace font family"
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

foreign import ccall "webkit_settings_set_monospace_font_family" webkit_settings_set_monospace_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- monospace_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:monospaceFontFamily]("GI.WebKit2.Objects.Settings#g:attr:monospaceFontFamily") property.
settingsSetMonospaceFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@monospaceFontFamily@/: the new default monospace font family
    -> m ()
settingsSetMonospaceFontFamily settings monospaceFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    monospaceFontFamily' <- textToCString monospaceFontFamily
    webkit_settings_set_monospace_font_family settings' monospaceFontFamily'
    touchManagedPtr settings
    freeMem monospaceFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetMonospaceFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetMonospaceFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetMonospaceFontFamily

instance O.OverloadedMethodInfo SettingsSetMonospaceFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetMonospaceFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetMonospaceFontFamily"
        })


#endif

-- method Settings::set_pictograph_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pictograph_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default pictograph font family"
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

foreign import ccall "webkit_settings_set_pictograph_font_family" webkit_settings_set_pictograph_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- pictograph_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:pictographFontFamily]("GI.WebKit2.Objects.Settings#g:attr:pictographFontFamily") property.
settingsSetPictographFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@pictographFontFamily@/: the new default pictograph font family
    -> m ()
settingsSetPictographFontFamily settings pictographFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    pictographFontFamily' <- textToCString pictographFontFamily
    webkit_settings_set_pictograph_font_family settings' pictographFontFamily'
    touchManagedPtr settings
    freeMem pictographFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetPictographFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetPictographFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetPictographFontFamily

instance O.OverloadedMethodInfo SettingsSetPictographFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetPictographFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetPictographFontFamily"
        })


#endif

-- method Settings::set_print_backgrounds
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "print_backgrounds"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_print_backgrounds" webkit_settings_set_print_backgrounds :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- print_backgrounds : TBasicType TBoolean
    IO ()

-- | Set the [Settings:printBackgrounds]("GI.WebKit2.Objects.Settings#g:attr:printBackgrounds") property.
settingsSetPrintBackgrounds ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@printBackgrounds@/: Value to be set
    -> m ()
settingsSetPrintBackgrounds settings printBackgrounds = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let printBackgrounds' = (P.fromIntegral . P.fromEnum) printBackgrounds
    webkit_settings_set_print_backgrounds settings' printBackgrounds'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetPrintBackgroundsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetPrintBackgroundsMethodInfo a signature where
    overloadedMethod = settingsSetPrintBackgrounds

instance O.OverloadedMethodInfo SettingsSetPrintBackgroundsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetPrintBackgrounds",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetPrintBackgrounds"
        })


#endif

-- method Settings::set_sans_serif_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sans_serif_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default sans-serif font family"
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

foreign import ccall "webkit_settings_set_sans_serif_font_family" webkit_settings_set_sans_serif_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- sans_serif_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:sansSerifFontFamily]("GI.WebKit2.Objects.Settings#g:attr:sansSerifFontFamily") property.
settingsSetSansSerifFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@sansSerifFontFamily@/: the new default sans-serif font family
    -> m ()
settingsSetSansSerifFontFamily settings sansSerifFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    sansSerifFontFamily' <- textToCString sansSerifFontFamily
    webkit_settings_set_sans_serif_font_family settings' sansSerifFontFamily'
    touchManagedPtr settings
    freeMem sansSerifFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetSansSerifFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetSansSerifFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetSansSerifFontFamily

instance O.OverloadedMethodInfo SettingsSetSansSerifFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetSansSerifFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetSansSerifFontFamily"
        })


#endif

-- method Settings::set_serif_font_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "serif_font_family"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default serif font family"
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

foreign import ccall "webkit_settings_set_serif_font_family" webkit_settings_set_serif_font_family :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- serif_font_family : TBasicType TUTF8
    IO ()

-- | Set the [Settings:serifFontFamily]("GI.WebKit2.Objects.Settings#g:attr:serifFontFamily") property.
settingsSetSerifFontFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@serifFontFamily@/: the new default serif font family
    -> m ()
settingsSetSerifFontFamily settings serifFontFamily = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    serifFontFamily' <- textToCString serifFontFamily
    webkit_settings_set_serif_font_family settings' serifFontFamily'
    touchManagedPtr settings
    freeMem serifFontFamily'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetSerifFontFamilyMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetSerifFontFamilyMethodInfo a signature where
    overloadedMethod = settingsSetSerifFontFamily

instance O.OverloadedMethodInfo SettingsSetSerifFontFamilyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetSerifFontFamily",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetSerifFontFamily"
        })


#endif

-- method Settings::set_user_agent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_agent"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The new custom user agent string or %NULL to use the default user agent"
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

foreign import ccall "webkit_settings_set_user_agent" webkit_settings_set_user_agent :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- user_agent : TBasicType TUTF8
    IO ()

-- | Set the [Settings:userAgent]("GI.WebKit2.Objects.Settings#g:attr:userAgent") property.
settingsSetUserAgent ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Maybe (T.Text)
    -- ^ /@userAgent@/: The new custom user agent string or 'P.Nothing' to use the default user agent
    -> m ()
settingsSetUserAgent settings userAgent = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    maybeUserAgent <- case userAgent of
        Nothing -> return FP.nullPtr
        Just jUserAgent -> do
            jUserAgent' <- textToCString jUserAgent
            return jUserAgent'
    webkit_settings_set_user_agent settings' maybeUserAgent
    touchManagedPtr settings
    freeMem maybeUserAgent
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetUserAgentMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetUserAgentMethodInfo a signature where
    overloadedMethod = settingsSetUserAgent

instance O.OverloadedMethodInfo SettingsSetUserAgentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetUserAgent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetUserAgent"
        })


#endif

-- method Settings::set_user_agent_with_application_details
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "application_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The application name used for the user agent or %NULL to use the default user agent."
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
--           { argCName = "application_version"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The application version for the user agent or %NULL to user the default version."
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

foreign import ccall "webkit_settings_set_user_agent_with_application_details" webkit_settings_set_user_agent_with_application_details :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- application_name : TBasicType TUTF8
    CString ->                              -- application_version : TBasicType TUTF8
    IO ()

-- | Set the [Settings:userAgent]("GI.WebKit2.Objects.Settings#g:attr:userAgent") property by appending the application details.
-- 
-- Set the [Settings:userAgent]("GI.WebKit2.Objects.Settings#g:attr:userAgent") property by appending the application details to the default user
-- agent. If no application name or version is given, the default user agent used will be used. If only
-- the version is given, the default engine version is used with the given application name.
settingsSetUserAgentWithApplicationDetails ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Maybe (T.Text)
    -- ^ /@applicationName@/: The application name used for the user agent or 'P.Nothing' to use the default user agent.
    -> Maybe (T.Text)
    -- ^ /@applicationVersion@/: The application version for the user agent or 'P.Nothing' to user the default version.
    -> m ()
settingsSetUserAgentWithApplicationDetails settings applicationName applicationVersion = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    maybeApplicationName <- case applicationName of
        Nothing -> return FP.nullPtr
        Just jApplicationName -> do
            jApplicationName' <- textToCString jApplicationName
            return jApplicationName'
    maybeApplicationVersion <- case applicationVersion of
        Nothing -> return FP.nullPtr
        Just jApplicationVersion -> do
            jApplicationVersion' <- textToCString jApplicationVersion
            return jApplicationVersion'
    webkit_settings_set_user_agent_with_application_details settings' maybeApplicationName maybeApplicationVersion
    touchManagedPtr settings
    freeMem maybeApplicationName
    freeMem maybeApplicationVersion
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetUserAgentWithApplicationDetailsMethodInfo
instance (signature ~ (Maybe (T.Text) -> Maybe (T.Text) -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetUserAgentWithApplicationDetailsMethodInfo a signature where
    overloadedMethod = settingsSetUserAgentWithApplicationDetails

instance O.OverloadedMethodInfo SettingsSetUserAgentWithApplicationDetailsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetUserAgentWithApplicationDetails",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetUserAgentWithApplicationDetails"
        })


#endif

-- method Settings::set_webrtc_udp_ports_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "udp_port_range"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_webrtc_udp_ports_range" webkit_settings_set_webrtc_udp_ports_range :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CString ->                              -- udp_port_range : TBasicType TUTF8
    IO ()

-- | Set the [property/@settings@/:webrtc-udp-ports-range] property.
-- 
-- /Since: 2.48/
settingsSetWebrtcUdpPortsRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> T.Text
    -- ^ /@udpPortRange@/: Value to be set
    -> m ()
settingsSetWebrtcUdpPortsRange settings udpPortRange = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    udpPortRange' <- textToCString udpPortRange
    webkit_settings_set_webrtc_udp_ports_range settings' udpPortRange'
    touchManagedPtr settings
    freeMem udpPortRange'
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetWebrtcUdpPortsRangeMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetWebrtcUdpPortsRangeMethodInfo a signature where
    overloadedMethod = settingsSetWebrtcUdpPortsRange

instance O.OverloadedMethodInfo SettingsSetWebrtcUdpPortsRangeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetWebrtcUdpPortsRange",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetWebrtcUdpPortsRange"
        })


#endif

-- method Settings::set_zoom_text_only
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "zoom_text_only"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value to be set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_settings_set_zoom_text_only" webkit_settings_set_zoom_text_only :: 
    Ptr Settings ->                         -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    CInt ->                                 -- zoom_text_only : TBasicType TBoolean
    IO ()

-- | Set the [Settings:zoomTextOnly]("GI.WebKit2.Objects.Settings#g:attr:zoomTextOnly") property.
settingsSetZoomTextOnly ::
    (B.CallStack.HasCallStack, MonadIO m, IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> Bool
    -- ^ /@zoomTextOnly@/: Value to be set
    -> m ()
settingsSetZoomTextOnly settings zoomTextOnly = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    let zoomTextOnly' = (P.fromIntegral . P.fromEnum) zoomTextOnly
    webkit_settings_set_zoom_text_only settings' zoomTextOnly'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data SettingsSetZoomTextOnlyMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSettings a) => O.OverloadedMethod SettingsSetZoomTextOnlyMethodInfo a signature where
    overloadedMethod = settingsSetZoomTextOnly

instance O.OverloadedMethodInfo SettingsSetZoomTextOnlyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Settings.settingsSetZoomTextOnly",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Settings.html#v:settingsSetZoomTextOnly"
        })


#endif

-- method Settings::font_size_to_pixels
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "points"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the font size in points to convert to pixels"
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
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_font_size_to_pixels" webkit_settings_font_size_to_pixels :: 
    Word32 ->                               -- points : TBasicType TUInt32
    IO Word32

-- | Convert /@points@/ to the equivalent value in pixels.
-- 
-- Applications can use this function to convert font size values
-- in points to font size values in pixels when setting the font size properties
-- of t'GI.WebKit2.Objects.Settings.Settings'.
-- 
-- /Since: 2.20/
settingsFontSizeToPixels ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Word32
    -- ^ /@points@/: the font size in points to convert to pixels
    -> m Word32
    -- ^ __Returns:__ the equivalent font size in pixels.
settingsFontSizeToPixels points = liftIO $ do
    result <- webkit_settings_font_size_to_pixels points
    return result

#if defined(ENABLE_OVERLOADING)
#endif

-- method Settings::font_size_to_points
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "pixels"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the font size in pixels to convert to points"
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
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_font_size_to_points" webkit_settings_font_size_to_points :: 
    Word32 ->                               -- pixels : TBasicType TUInt32
    IO Word32

-- | Convert /@pixels@/ to the equivalent value in points.
-- 
-- Applications can use this function to convert font size values
-- in pixels to font size values in points when getting the font size properties
-- of t'GI.WebKit2.Objects.Settings.Settings'.
-- 
-- /Since: 2.20/
settingsFontSizeToPoints ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Word32
    -- ^ /@pixels@/: the font size in pixels to convert to points
    -> m Word32
    -- ^ __Returns:__ the equivalent font size in points.
settingsFontSizeToPoints pixels = liftIO $ do
    result <- webkit_settings_font_size_to_points pixels
    return result

#if defined(ENABLE_OVERLOADING)
#endif

-- method Settings::get_all_features
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "FeatureList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_all_features" webkit_settings_get_all_features :: 
    IO (Ptr WebKit2.FeatureList.FeatureList)

-- | Gets the list of all available WebKit features.
-- 
-- Features can be toggled with [method/@settings@/.set_feature_enabled],
-- and their current state determined with
-- [method/@settings@/.get_feature_enabled].
-- 
-- Note that most applications should use
-- @/Settings.get_development_features/@ and
-- @/Settings.get_experimental_features/@ instead.
-- 
-- /Since: 2.42/
settingsGetAllFeatures ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebKit2.FeatureList.FeatureList
    -- ^ __Returns:__ List of all features.
settingsGetAllFeatures  = liftIO $ do
    result <- webkit_settings_get_all_features
    checkUnexpectedReturnNULL "settingsGetAllFeatures" result
    result' <- (wrapBoxed WebKit2.FeatureList.FeatureList) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Settings::get_development_features
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "FeatureList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_development_features" webkit_settings_get_development_features :: 
    IO (Ptr WebKit2.FeatureList.FeatureList)

-- | Gets the list of available development WebKit features.
-- 
-- The returned features are a subset of those returned by
-- @/Settings.get_all_features/@, and includes those which
-- web and WebKit developers might find useful, but in general should
-- *not* be exposed to end users; see [enum/@featureStatus@/] for
-- more details.
-- 
-- /Since: 2.42/
settingsGetDevelopmentFeatures ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebKit2.FeatureList.FeatureList
    -- ^ __Returns:__ List of development features.
settingsGetDevelopmentFeatures  = liftIO $ do
    result <- webkit_settings_get_development_features
    checkUnexpectedReturnNULL "settingsGetDevelopmentFeatures" result
    result' <- (wrapBoxed WebKit2.FeatureList.FeatureList) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Settings::get_experimental_features
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "FeatureList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_settings_get_experimental_features" webkit_settings_get_experimental_features :: 
    IO (Ptr WebKit2.FeatureList.FeatureList)

-- | Gets the list of available experimental WebKit features.
-- 
-- The returned features are a subset of those returned by
-- @/Settings.get_all_features/@, and includes those which
-- certain applications may want to expose to end users; see
-- [enum/@featureStatus@/] for more details.
-- 
-- /Since: 2.42/
settingsGetExperimentalFeatures ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebKit2.FeatureList.FeatureList
    -- ^ __Returns:__ List of experimental features.
settingsGetExperimentalFeatures  = liftIO $ do
    result <- webkit_settings_get_experimental_features
    checkUnexpectedReturnNULL "settingsGetExperimentalFeatures" result
    result' <- (wrapBoxed WebKit2.FeatureList.FeatureList) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


