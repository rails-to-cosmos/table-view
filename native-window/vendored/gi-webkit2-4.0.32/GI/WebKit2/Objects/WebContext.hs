{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Manages aspects common to all t'GI.WebKit2.Objects.WebView.WebView's
-- 
-- The t'GI.WebKit2.Objects.WebContext.WebContext' manages all aspects common to all
-- t'GI.WebKit2.Objects.WebView.WebView's.
-- 
-- You can define the t'GI.WebKit2.Enums.CacheModel' with
-- 'GI.WebKit2.Objects.WebContext.webContextSetCacheModel', depending on the needs of
-- your application. You can access the t'GI.WebKit2.Objects.SecurityManager.SecurityManager' to specify
-- the behaviour of your application regarding security using
-- 'GI.WebKit2.Objects.WebContext.webContextGetSecurityManager'.
-- 
-- It is also possible to change your preferred language or enable
-- spell checking, using 'GI.WebKit2.Objects.WebContext.webContextSetPreferredLanguages',
-- 'GI.WebKit2.Objects.WebContext.webContextSetSpellCheckingLanguages' and
-- 'GI.WebKit2.Objects.WebContext.webContextSetSpellCheckingEnabled'.
-- 
-- You can use 'GI.WebKit2.Objects.WebContext.webContextRegisterUriScheme' to register
-- custom URI schemes, and manage several other settings.
-- 
-- TLS certificate validation failure is now treated as a transport
-- error by default. To handle TLS failures differently, you can
-- connect to [WebView::loadFailedWithTlsErrors]("GI.WebKit2.Objects.WebView#g:signal:loadFailedWithTlsErrors").
-- Alternatively, you can use 'GI.WebKit2.Objects.WebContext.webContextSetTlsErrorsPolicy'
-- to set the policy 'GI.WebKit2.Enums.TLSErrorsPolicyIgnore'; however, this is
-- not appropriate for Internet applications.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebContext
    ( 

-- * Exported types
    WebContext(..)                          ,
    IsWebContext                            ,
    toWebContext                            ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [addPathToSandbox]("GI.WebKit2.Objects.WebContext#g:method:addPathToSandbox"), [allowTlsCertificateForHost]("GI.WebKit2.Objects.WebContext#g:method:allowTlsCertificateForHost"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [clearCache]("GI.WebKit2.Objects.WebContext#g:method:clearCache"), [downloadUri]("GI.WebKit2.Objects.WebContext#g:method:downloadUri"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [initializeNotificationPermissions]("GI.WebKit2.Objects.WebContext#g:method:initializeNotificationPermissions"), [isAutomationAllowed]("GI.WebKit2.Objects.WebContext#g:method:isAutomationAllowed"), [isEphemeral]("GI.WebKit2.Objects.WebContext#g:method:isEphemeral"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [prefetchDns]("GI.WebKit2.Objects.WebContext#g:method:prefetchDns"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [registerUriScheme]("GI.WebKit2.Objects.WebContext#g:method:registerUriScheme"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [sendMessageToAllExtensions]("GI.WebKit2.Objects.WebContext#g:method:sendMessageToAllExtensions"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getCacheModel]("GI.WebKit2.Objects.WebContext#g:method:getCacheModel"), [getCookieManager]("GI.WebKit2.Objects.WebContext#g:method:getCookieManager"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getFaviconDatabase]("GI.WebKit2.Objects.WebContext#g:method:getFaviconDatabase"), [getFaviconDatabaseDirectory]("GI.WebKit2.Objects.WebContext#g:method:getFaviconDatabaseDirectory"), [getGeolocationManager]("GI.WebKit2.Objects.WebContext#g:method:getGeolocationManager"), [getPlugins]("GI.WebKit2.Objects.WebContext#g:method:getPlugins"), [getPluginsFinish]("GI.WebKit2.Objects.WebContext#g:method:getPluginsFinish"), [getProcessModel]("GI.WebKit2.Objects.WebContext#g:method:getProcessModel"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getSandboxEnabled]("GI.WebKit2.Objects.WebContext#g:method:getSandboxEnabled"), [getSecurityManager]("GI.WebKit2.Objects.WebContext#g:method:getSecurityManager"), [getSpellCheckingEnabled]("GI.WebKit2.Objects.WebContext#g:method:getSpellCheckingEnabled"), [getSpellCheckingLanguages]("GI.WebKit2.Objects.WebContext#g:method:getSpellCheckingLanguages"), [getTimeZoneOverride]("GI.WebKit2.Objects.WebContext#g:method:getTimeZoneOverride"), [getTlsErrorsPolicy]("GI.WebKit2.Objects.WebContext#g:method:getTlsErrorsPolicy"), [getUseSystemAppearanceForScrollbars]("GI.WebKit2.Objects.WebContext#g:method:getUseSystemAppearanceForScrollbars"), [getWebProcessCountLimit]("GI.WebKit2.Objects.WebContext#g:method:getWebProcessCountLimit"), [getWebsiteDataManager]("GI.WebKit2.Objects.WebContext#g:method:getWebsiteDataManager").
-- 
-- ==== Setters
-- [setAdditionalPluginsDirectory]("GI.WebKit2.Objects.WebContext#g:method:setAdditionalPluginsDirectory"), [setAutomationAllowed]("GI.WebKit2.Objects.WebContext#g:method:setAutomationAllowed"), [setCacheModel]("GI.WebKit2.Objects.WebContext#g:method:setCacheModel"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setDiskCacheDirectory]("GI.WebKit2.Objects.WebContext#g:method:setDiskCacheDirectory"), [setFaviconDatabaseDirectory]("GI.WebKit2.Objects.WebContext#g:method:setFaviconDatabaseDirectory"), [setNetworkProxySettings]("GI.WebKit2.Objects.WebContext#g:method:setNetworkProxySettings"), [setPreferredLanguages]("GI.WebKit2.Objects.WebContext#g:method:setPreferredLanguages"), [setProcessModel]("GI.WebKit2.Objects.WebContext#g:method:setProcessModel"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setSandboxEnabled]("GI.WebKit2.Objects.WebContext#g:method:setSandboxEnabled"), [setSpellCheckingEnabled]("GI.WebKit2.Objects.WebContext#g:method:setSpellCheckingEnabled"), [setSpellCheckingLanguages]("GI.WebKit2.Objects.WebContext#g:method:setSpellCheckingLanguages"), [setTlsErrorsPolicy]("GI.WebKit2.Objects.WebContext#g:method:setTlsErrorsPolicy"), [setUseSystemAppearanceForScrollbars]("GI.WebKit2.Objects.WebContext#g:method:setUseSystemAppearanceForScrollbars"), [setWebExtensionsDirectory]("GI.WebKit2.Objects.WebContext#g:method:setWebExtensionsDirectory"), [setWebExtensionsInitializationUserData]("GI.WebKit2.Objects.WebContext#g:method:setWebExtensionsInitializationUserData"), [setWebProcessCountLimit]("GI.WebKit2.Objects.WebContext#g:method:setWebProcessCountLimit").

#if defined(ENABLE_OVERLOADING)
    ResolveWebContextMethod                 ,
#endif

-- ** addPathToSandbox #method:addPathToSandbox#

#if defined(ENABLE_OVERLOADING)
    WebContextAddPathToSandboxMethodInfo    ,
#endif
    webContextAddPathToSandbox              ,


-- ** allowTlsCertificateForHost #method:allowTlsCertificateForHost#

#if defined(ENABLE_OVERLOADING)
    WebContextAllowTlsCertificateForHostMethodInfo,
#endif
    webContextAllowTlsCertificateForHost    ,


-- ** clearCache #method:clearCache#

#if defined(ENABLE_OVERLOADING)
    WebContextClearCacheMethodInfo          ,
#endif
    webContextClearCache                    ,


-- ** downloadUri #method:downloadUri#

#if defined(ENABLE_OVERLOADING)
    WebContextDownloadUriMethodInfo         ,
#endif
    webContextDownloadUri                   ,


-- ** getCacheModel #method:getCacheModel#

#if defined(ENABLE_OVERLOADING)
    WebContextGetCacheModelMethodInfo       ,
#endif
    webContextGetCacheModel                 ,


-- ** getCookieManager #method:getCookieManager#

#if defined(ENABLE_OVERLOADING)
    WebContextGetCookieManagerMethodInfo    ,
#endif
    webContextGetCookieManager              ,


-- ** getDefault #method:getDefault#

    webContextGetDefault                    ,


-- ** getFaviconDatabase #method:getFaviconDatabase#

#if defined(ENABLE_OVERLOADING)
    WebContextGetFaviconDatabaseMethodInfo  ,
#endif
    webContextGetFaviconDatabase            ,


-- ** getFaviconDatabaseDirectory #method:getFaviconDatabaseDirectory#

#if defined(ENABLE_OVERLOADING)
    WebContextGetFaviconDatabaseDirectoryMethodInfo,
#endif
    webContextGetFaviconDatabaseDirectory   ,


-- ** getGeolocationManager #method:getGeolocationManager#

#if defined(ENABLE_OVERLOADING)
    WebContextGetGeolocationManagerMethodInfo,
#endif
    webContextGetGeolocationManager         ,


-- ** getPlugins #method:getPlugins#

#if defined(ENABLE_OVERLOADING)
    WebContextGetPluginsMethodInfo          ,
#endif
    webContextGetPlugins                    ,


-- ** getPluginsFinish #method:getPluginsFinish#

#if defined(ENABLE_OVERLOADING)
    WebContextGetPluginsFinishMethodInfo    ,
#endif
    webContextGetPluginsFinish              ,


-- ** getProcessModel #method:getProcessModel#

#if defined(ENABLE_OVERLOADING)
    WebContextGetProcessModelMethodInfo     ,
#endif
    webContextGetProcessModel               ,


-- ** getSandboxEnabled #method:getSandboxEnabled#

#if defined(ENABLE_OVERLOADING)
    WebContextGetSandboxEnabledMethodInfo   ,
#endif
    webContextGetSandboxEnabled             ,


-- ** getSecurityManager #method:getSecurityManager#

#if defined(ENABLE_OVERLOADING)
    WebContextGetSecurityManagerMethodInfo  ,
#endif
    webContextGetSecurityManager            ,


-- ** getSpellCheckingEnabled #method:getSpellCheckingEnabled#

#if defined(ENABLE_OVERLOADING)
    WebContextGetSpellCheckingEnabledMethodInfo,
#endif
    webContextGetSpellCheckingEnabled       ,


-- ** getSpellCheckingLanguages #method:getSpellCheckingLanguages#

#if defined(ENABLE_OVERLOADING)
    WebContextGetSpellCheckingLanguagesMethodInfo,
#endif
    webContextGetSpellCheckingLanguages     ,


-- ** getTimeZoneOverride #method:getTimeZoneOverride#

#if defined(ENABLE_OVERLOADING)
    WebContextGetTimeZoneOverrideMethodInfo ,
#endif
    webContextGetTimeZoneOverride           ,


-- ** getTlsErrorsPolicy #method:getTlsErrorsPolicy#

#if defined(ENABLE_OVERLOADING)
    WebContextGetTlsErrorsPolicyMethodInfo  ,
#endif
    webContextGetTlsErrorsPolicy            ,


-- ** getUseSystemAppearanceForScrollbars #method:getUseSystemAppearanceForScrollbars#

#if defined(ENABLE_OVERLOADING)
    WebContextGetUseSystemAppearanceForScrollbarsMethodInfo,
#endif
    webContextGetUseSystemAppearanceForScrollbars,


-- ** getWebProcessCountLimit #method:getWebProcessCountLimit#

#if defined(ENABLE_OVERLOADING)
    WebContextGetWebProcessCountLimitMethodInfo,
#endif
    webContextGetWebProcessCountLimit       ,


-- ** getWebsiteDataManager #method:getWebsiteDataManager#

#if defined(ENABLE_OVERLOADING)
    WebContextGetWebsiteDataManagerMethodInfo,
#endif
    webContextGetWebsiteDataManager         ,


-- ** initializeNotificationPermissions #method:initializeNotificationPermissions#

#if defined(ENABLE_OVERLOADING)
    WebContextInitializeNotificationPermissionsMethodInfo,
#endif
    webContextInitializeNotificationPermissions,


-- ** isAutomationAllowed #method:isAutomationAllowed#

#if defined(ENABLE_OVERLOADING)
    WebContextIsAutomationAllowedMethodInfo ,
#endif
    webContextIsAutomationAllowed           ,


-- ** isEphemeral #method:isEphemeral#

#if defined(ENABLE_OVERLOADING)
    WebContextIsEphemeralMethodInfo         ,
#endif
    webContextIsEphemeral                   ,


-- ** new #method:new#

    webContextNew                           ,


-- ** newEphemeral #method:newEphemeral#

    webContextNewEphemeral                  ,


-- ** newWithWebsiteDataManager #method:newWithWebsiteDataManager#

    webContextNewWithWebsiteDataManager     ,


-- ** prefetchDns #method:prefetchDns#

#if defined(ENABLE_OVERLOADING)
    WebContextPrefetchDnsMethodInfo         ,
#endif
    webContextPrefetchDns                   ,


-- ** registerUriScheme #method:registerUriScheme#

#if defined(ENABLE_OVERLOADING)
    WebContextRegisterUriSchemeMethodInfo   ,
#endif
    webContextRegisterUriScheme             ,


-- ** sendMessageToAllExtensions #method:sendMessageToAllExtensions#

#if defined(ENABLE_OVERLOADING)
    WebContextSendMessageToAllExtensionsMethodInfo,
#endif
    webContextSendMessageToAllExtensions    ,


-- ** setAdditionalPluginsDirectory #method:setAdditionalPluginsDirectory#

#if defined(ENABLE_OVERLOADING)
    WebContextSetAdditionalPluginsDirectoryMethodInfo,
#endif
    webContextSetAdditionalPluginsDirectory ,


-- ** setAutomationAllowed #method:setAutomationAllowed#

#if defined(ENABLE_OVERLOADING)
    WebContextSetAutomationAllowedMethodInfo,
#endif
    webContextSetAutomationAllowed          ,


-- ** setCacheModel #method:setCacheModel#

#if defined(ENABLE_OVERLOADING)
    WebContextSetCacheModelMethodInfo       ,
#endif
    webContextSetCacheModel                 ,


-- ** setDiskCacheDirectory #method:setDiskCacheDirectory#

#if defined(ENABLE_OVERLOADING)
    WebContextSetDiskCacheDirectoryMethodInfo,
#endif
    webContextSetDiskCacheDirectory         ,


-- ** setFaviconDatabaseDirectory #method:setFaviconDatabaseDirectory#

#if defined(ENABLE_OVERLOADING)
    WebContextSetFaviconDatabaseDirectoryMethodInfo,
#endif
    webContextSetFaviconDatabaseDirectory   ,


-- ** setNetworkProxySettings #method:setNetworkProxySettings#

#if defined(ENABLE_OVERLOADING)
    WebContextSetNetworkProxySettingsMethodInfo,
#endif
    webContextSetNetworkProxySettings       ,


-- ** setPreferredLanguages #method:setPreferredLanguages#

#if defined(ENABLE_OVERLOADING)
    WebContextSetPreferredLanguagesMethodInfo,
#endif
    webContextSetPreferredLanguages         ,


-- ** setProcessModel #method:setProcessModel#

#if defined(ENABLE_OVERLOADING)
    WebContextSetProcessModelMethodInfo     ,
#endif
    webContextSetProcessModel               ,


-- ** setSandboxEnabled #method:setSandboxEnabled#

#if defined(ENABLE_OVERLOADING)
    WebContextSetSandboxEnabledMethodInfo   ,
#endif
    webContextSetSandboxEnabled             ,


-- ** setSpellCheckingEnabled #method:setSpellCheckingEnabled#

#if defined(ENABLE_OVERLOADING)
    WebContextSetSpellCheckingEnabledMethodInfo,
#endif
    webContextSetSpellCheckingEnabled       ,


-- ** setSpellCheckingLanguages #method:setSpellCheckingLanguages#

#if defined(ENABLE_OVERLOADING)
    WebContextSetSpellCheckingLanguagesMethodInfo,
#endif
    webContextSetSpellCheckingLanguages     ,


-- ** setTlsErrorsPolicy #method:setTlsErrorsPolicy#

#if defined(ENABLE_OVERLOADING)
    WebContextSetTlsErrorsPolicyMethodInfo  ,
#endif
    webContextSetTlsErrorsPolicy            ,


-- ** setUseSystemAppearanceForScrollbars #method:setUseSystemAppearanceForScrollbars#

#if defined(ENABLE_OVERLOADING)
    WebContextSetUseSystemAppearanceForScrollbarsMethodInfo,
#endif
    webContextSetUseSystemAppearanceForScrollbars,


-- ** setWebExtensionsDirectory #method:setWebExtensionsDirectory#

#if defined(ENABLE_OVERLOADING)
    WebContextSetWebExtensionsDirectoryMethodInfo,
#endif
    webContextSetWebExtensionsDirectory     ,


-- ** setWebExtensionsInitializationUserData #method:setWebExtensionsInitializationUserData#

#if defined(ENABLE_OVERLOADING)
    WebContextSetWebExtensionsInitializationUserDataMethodInfo,
#endif
    webContextSetWebExtensionsInitializationUserData,


-- ** setWebProcessCountLimit #method:setWebProcessCountLimit#

#if defined(ENABLE_OVERLOADING)
    WebContextSetWebProcessCountLimitMethodInfo,
#endif
    webContextSetWebProcessCountLimit       ,




 -- * Properties


-- ** localStorageDirectory #attr:localStorageDirectory#
-- | The directory where local storage data will be saved.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    WebContextLocalStorageDirectoryPropertyInfo,
#endif
    constructWebContextLocalStorageDirectory,
    getWebContextLocalStorageDirectory      ,
#if defined(ENABLE_OVERLOADING)
    webContextLocalStorageDirectory         ,
#endif


-- ** memoryPressureSettings #attr:memoryPressureSettings#
-- | The t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' applied to the web processes created by this context.
-- 
-- /Since: 2.34/

#if defined(ENABLE_OVERLOADING)
    WebContextMemoryPressureSettingsPropertyInfo,
#endif
    constructWebContextMemoryPressureSettings,
#if defined(ENABLE_OVERLOADING)
    webContextMemoryPressureSettings        ,
#endif


-- ** processSwapOnCrossSiteNavigationEnabled #attr:processSwapOnCrossSiteNavigationEnabled#
-- | Whether swap Web processes on cross-site navigations is enabled.
-- 
-- When enabled, pages from each security origin will be handled by
-- their own separate Web processes, which are started (and
-- terminated) on demand as the user navigates across different
-- domains. This is an important security measure which helps prevent
-- websites stealing data from other visited pages.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo,
#endif
    constructWebContextProcessSwapOnCrossSiteNavigationEnabled,
    getWebContextProcessSwapOnCrossSiteNavigationEnabled,
#if defined(ENABLE_OVERLOADING)
    webContextProcessSwapOnCrossSiteNavigationEnabled,
#endif


-- ** timeZoneOverride #attr:timeZoneOverride#
-- | The timezone override for this web context. Setting this property provides a better
-- alternative to configure the timezone information for all webviews managed by the WebContext.
-- The other, less optimal, approach is to globally set the TZ environment variable in the
-- process before creating the context. However this approach might not be very convenient and
-- can have side-effects in your application.
-- 
-- The expected values for this property are defined in the IANA timezone database. See this
-- wikipedia page for instance, https:\/\/en.wikipedia.org\/wiki\/List_of_tz_database_time_zones.
-- 
-- /Since: 2.38/

#if defined(ENABLE_OVERLOADING)
    WebContextTimeZoneOverridePropertyInfo  ,
#endif
    constructWebContextTimeZoneOverride     ,
    getWebContextTimeZoneOverride           ,
#if defined(ENABLE_OVERLOADING)
    webContextTimeZoneOverride              ,
#endif


-- ** useSystemAppearanceForScrollbars #attr:useSystemAppearanceForScrollbars#
-- | Whether to use system appearance for rendering scrollbars.
-- 
-- This is enabled by default for backwards compatibility, but it\'s only
-- recommened to use when the application includes other widgets to ensure
-- consistency, or when consistency with other applications is required too.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebContextUseSystemAppearanceForScrollbarsPropertyInfo,
#endif
    constructWebContextUseSystemAppearanceForScrollbars,
    getWebContextUseSystemAppearanceForScrollbars,
    setWebContextUseSystemAppearanceForScrollbars,
#if defined(ENABLE_OVERLOADING)
    webContextUseSystemAppearanceForScrollbars,
#endif


-- ** websiteDataManager #attr:websiteDataManager#
-- | The t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' associated with this context.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    WebContextWebsiteDataManagerPropertyInfo,
#endif
    constructWebContextWebsiteDataManager   ,
    getWebContextWebsiteDataManager         ,
#if defined(ENABLE_OVERLOADING)
    webContextWebsiteDataManager            ,
#endif




 -- * Signals


-- ** automationStarted #signal:automationStarted#

    WebContextAutomationStartedCallback     ,
#if defined(ENABLE_OVERLOADING)
    WebContextAutomationStartedSignalInfo   ,
#endif
    afterWebContextAutomationStarted        ,
    onWebContextAutomationStarted           ,


-- ** downloadStarted #signal:downloadStarted#

    WebContextDownloadStartedCallback       ,
#if defined(ENABLE_OVERLOADING)
    WebContextDownloadStartedSignalInfo     ,
#endif
    afterWebContextDownloadStarted          ,
    onWebContextDownloadStarted             ,


-- ** initializeNotificationPermissions #signal:initializeNotificationPermissions#

    WebContextInitializeNotificationPermissionsCallback,
#if defined(ENABLE_OVERLOADING)
    WebContextInitializeNotificationPermissionsSignalInfo,
#endif
    afterWebContextInitializeNotificationPermissions,
    onWebContextInitializeNotificationPermissions,


-- ** initializeWebExtensions #signal:initializeWebExtensions#

    WebContextInitializeWebExtensionsCallback,
#if defined(ENABLE_OVERLOADING)
    WebContextInitializeWebExtensionsSignalInfo,
#endif
    afterWebContextInitializeWebExtensions  ,
    onWebContextInitializeWebExtensions     ,


-- ** userMessageReceived #signal:userMessageReceived#

    WebContextUserMessageReceivedCallback   ,
#if defined(ENABLE_OVERLOADING)
    WebContextUserMessageReceivedSignalInfo ,
#endif
    afterWebContextUserMessageReceived      ,
    onWebContextUserMessageReceived         ,




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
import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GLib.Structs.DateTime as GLib.DateTime
import qualified GI.GLib.Structs.KeyFile as GLib.KeyFile
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.EventKey as Gdk.EventKey
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gdk.Unions.Event as Gdk.Event
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Interfaces.Action as Gio.Action
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import qualified GI.Gio.Objects.UnixFDList as Gio.UnixFDList
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Action as Gtk.Action
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.FileFilter as Gtk.FileFilter
import qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import qualified GI.Gtk.Objects.PrintSettings as Gtk.PrintSettings
import qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Gtk.Objects.Window as Gtk.Window
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import qualified GI.Soup.Structs.Cookie as Soup.Cookie
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import qualified GI.WebKit2.Callbacks as WebKit2.Callbacks
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AuthenticationRequest as WebKit2.AuthenticationRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AutomationSession as WebKit2.AutomationSession
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardList as WebKit2.BackForwardList
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardListItem as WebKit2.BackForwardListItem
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ColorChooserRequest as WebKit2.ColorChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenu as WebKit2.ContextMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenuItem as WebKit2.ContextMenuItem
import {-# SOURCE #-} qualified GI.WebKit2.Objects.CookieManager as WebKit2.CookieManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Download as WebKit2.Download
import {-# SOURCE #-} qualified GI.WebKit2.Objects.EditorState as WebKit2.EditorState
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FaviconDatabase as WebKit2.FaviconDatabase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FileChooserRequest as WebKit2.FileChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FindController as WebKit2.FindController
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FormSubmissionRequest as WebKit2.FormSubmissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.GeolocationManager as WebKit2.GeolocationManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.HitTestResult as WebKit2.HitTestResult
import {-# SOURCE #-} qualified GI.WebKit2.Objects.InputMethodContext as WebKit2.InputMethodContext
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Notification as WebKit2.Notification
import {-# SOURCE #-} qualified GI.WebKit2.Objects.OptionMenu as WebKit2.OptionMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Plugin as WebKit2.Plugin
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintCustomWidget as WebKit2.PrintCustomWidget
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintOperation as WebKit2.PrintOperation
import {-# SOURCE #-} qualified GI.WebKit2.Objects.SecurityManager as WebKit2.SecurityManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Settings as WebKit2.Settings
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserContentManager as WebKit2.UserContentManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMessage as WebKit2.UserMessage
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebInspector as WebKit2.WebInspector
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebResource as WebKit2.WebResource
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebViewBase as WebKit2.WebViewBase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsiteDataManager as WebKit2.WebsiteDataManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WindowProperties as WebKit2.WindowProperties
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ApplicationInfo as WebKit2.ApplicationInfo
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Credential as WebKit2.Credential
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature
import {-# SOURCE #-} qualified GI.WebKit2.Structs.FeatureList as WebKit2.FeatureList
import {-# SOURCE #-} qualified GI.WebKit2.Structs.GeolocationPosition as WebKit2.GeolocationPosition
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPFirstParty as WebKit2.ITPFirstParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPThirdParty as WebKit2.ITPThirdParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.InputMethodUnderline as WebKit2.InputMethodUnderline
import {-# SOURCE #-} qualified GI.WebKit2.Structs.JavascriptResult as WebKit2.JavascriptResult
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MemoryPressureSettings as WebKit2.MemoryPressureSettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MimeInfo as WebKit2.MimeInfo
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NavigationAction as WebKit2.NavigationAction
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NetworkProxySettings as WebKit2.NetworkProxySettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.OptionMenuItem as WebKit2.OptionMenuItem
import {-# SOURCE #-} qualified GI.WebKit2.Structs.PermissionStateQuery as WebKit2.PermissionStateQuery
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptDialog as WebKit2.ScriptDialog
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptMessageReply as WebKit2.ScriptMessageReply
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserScript as WebKit2.UserScript
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserStyleSheet as WebKit2.UserStyleSheet
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebViewSessionState as WebKit2.WebViewSessionState
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebsiteData as WebKit2.WebsiteData

#else
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import qualified GI.WebKit2.Callbacks as WebKit2.Callbacks
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AutomationSession as WebKit2.AutomationSession
import {-# SOURCE #-} qualified GI.WebKit2.Objects.CookieManager as WebKit2.CookieManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Download as WebKit2.Download
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FaviconDatabase as WebKit2.FaviconDatabase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.GeolocationManager as WebKit2.GeolocationManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Plugin as WebKit2.Plugin
import {-# SOURCE #-} qualified GI.WebKit2.Objects.SecurityManager as WebKit2.SecurityManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMessage as WebKit2.UserMessage
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsiteDataManager as WebKit2.WebsiteDataManager
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MemoryPressureSettings as WebKit2.MemoryPressureSettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NetworkProxySettings as WebKit2.NetworkProxySettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin

#endif

-- | Memory-managed wrapper type.
newtype WebContext = WebContext (SP.ManagedPtr WebContext)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebContext where
    toManagedPtr (WebContext p) = p

foreign import ccall "webkit_web_context_get_type"
    c_webkit_web_context_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebContext where
    glibType = c_webkit_web_context_get_type

instance B.Types.GObject WebContext

-- | Type class for types which can be safely cast to t'WebContext', for instance with `toWebContext`.
class (SP.GObject o, O.IsDescendantOf WebContext o) => IsWebContext o
instance (SP.GObject o, O.IsDescendantOf WebContext o) => IsWebContext o

instance O.HasParentTypes WebContext
type instance O.ParentTypes WebContext = '[GObject.Object.Object]

-- | Cast to t'WebContext', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebContext :: (MIO.MonadIO m, IsWebContext o) => o -> m WebContext
toWebContext = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebContext

-- | Convert t'WebContext' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebContext) where
    gvalueGType_ = c_webkit_web_context_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebContext)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebContext)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebContext ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebContextMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebContextMethod "addPathToSandbox" o = WebContextAddPathToSandboxMethodInfo
    ResolveWebContextMethod "allowTlsCertificateForHost" o = WebContextAllowTlsCertificateForHostMethodInfo
    ResolveWebContextMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebContextMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebContextMethod "clearCache" o = WebContextClearCacheMethodInfo
    ResolveWebContextMethod "downloadUri" o = WebContextDownloadUriMethodInfo
    ResolveWebContextMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebContextMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebContextMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebContextMethod "initializeNotificationPermissions" o = WebContextInitializeNotificationPermissionsMethodInfo
    ResolveWebContextMethod "isAutomationAllowed" o = WebContextIsAutomationAllowedMethodInfo
    ResolveWebContextMethod "isEphemeral" o = WebContextIsEphemeralMethodInfo
    ResolveWebContextMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebContextMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebContextMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebContextMethod "prefetchDns" o = WebContextPrefetchDnsMethodInfo
    ResolveWebContextMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebContextMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebContextMethod "registerUriScheme" o = WebContextRegisterUriSchemeMethodInfo
    ResolveWebContextMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebContextMethod "sendMessageToAllExtensions" o = WebContextSendMessageToAllExtensionsMethodInfo
    ResolveWebContextMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebContextMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebContextMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebContextMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebContextMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebContextMethod "getCacheModel" o = WebContextGetCacheModelMethodInfo
    ResolveWebContextMethod "getCookieManager" o = WebContextGetCookieManagerMethodInfo
    ResolveWebContextMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebContextMethod "getFaviconDatabase" o = WebContextGetFaviconDatabaseMethodInfo
    ResolveWebContextMethod "getFaviconDatabaseDirectory" o = WebContextGetFaviconDatabaseDirectoryMethodInfo
    ResolveWebContextMethod "getGeolocationManager" o = WebContextGetGeolocationManagerMethodInfo
    ResolveWebContextMethod "getPlugins" o = WebContextGetPluginsMethodInfo
    ResolveWebContextMethod "getPluginsFinish" o = WebContextGetPluginsFinishMethodInfo
    ResolveWebContextMethod "getProcessModel" o = WebContextGetProcessModelMethodInfo
    ResolveWebContextMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebContextMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebContextMethod "getSandboxEnabled" o = WebContextGetSandboxEnabledMethodInfo
    ResolveWebContextMethod "getSecurityManager" o = WebContextGetSecurityManagerMethodInfo
    ResolveWebContextMethod "getSpellCheckingEnabled" o = WebContextGetSpellCheckingEnabledMethodInfo
    ResolveWebContextMethod "getSpellCheckingLanguages" o = WebContextGetSpellCheckingLanguagesMethodInfo
    ResolveWebContextMethod "getTimeZoneOverride" o = WebContextGetTimeZoneOverrideMethodInfo
    ResolveWebContextMethod "getTlsErrorsPolicy" o = WebContextGetTlsErrorsPolicyMethodInfo
    ResolveWebContextMethod "getUseSystemAppearanceForScrollbars" o = WebContextGetUseSystemAppearanceForScrollbarsMethodInfo
    ResolveWebContextMethod "getWebProcessCountLimit" o = WebContextGetWebProcessCountLimitMethodInfo
    ResolveWebContextMethod "getWebsiteDataManager" o = WebContextGetWebsiteDataManagerMethodInfo
    ResolveWebContextMethod "setAdditionalPluginsDirectory" o = WebContextSetAdditionalPluginsDirectoryMethodInfo
    ResolveWebContextMethod "setAutomationAllowed" o = WebContextSetAutomationAllowedMethodInfo
    ResolveWebContextMethod "setCacheModel" o = WebContextSetCacheModelMethodInfo
    ResolveWebContextMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebContextMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebContextMethod "setDiskCacheDirectory" o = WebContextSetDiskCacheDirectoryMethodInfo
    ResolveWebContextMethod "setFaviconDatabaseDirectory" o = WebContextSetFaviconDatabaseDirectoryMethodInfo
    ResolveWebContextMethod "setNetworkProxySettings" o = WebContextSetNetworkProxySettingsMethodInfo
    ResolveWebContextMethod "setPreferredLanguages" o = WebContextSetPreferredLanguagesMethodInfo
    ResolveWebContextMethod "setProcessModel" o = WebContextSetProcessModelMethodInfo
    ResolveWebContextMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebContextMethod "setSandboxEnabled" o = WebContextSetSandboxEnabledMethodInfo
    ResolveWebContextMethod "setSpellCheckingEnabled" o = WebContextSetSpellCheckingEnabledMethodInfo
    ResolveWebContextMethod "setSpellCheckingLanguages" o = WebContextSetSpellCheckingLanguagesMethodInfo
    ResolveWebContextMethod "setTlsErrorsPolicy" o = WebContextSetTlsErrorsPolicyMethodInfo
    ResolveWebContextMethod "setUseSystemAppearanceForScrollbars" o = WebContextSetUseSystemAppearanceForScrollbarsMethodInfo
    ResolveWebContextMethod "setWebExtensionsDirectory" o = WebContextSetWebExtensionsDirectoryMethodInfo
    ResolveWebContextMethod "setWebExtensionsInitializationUserData" o = WebContextSetWebExtensionsInitializationUserDataMethodInfo
    ResolveWebContextMethod "setWebProcessCountLimit" o = WebContextSetWebProcessCountLimitMethodInfo
    ResolveWebContextMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebContextMethod t WebContext, O.OverloadedMethod info WebContext p) => OL.IsLabel t (WebContext -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebContextMethod t WebContext, O.OverloadedMethod info WebContext p, R.HasField t WebContext p) => R.HasField t WebContext p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebContextMethod t WebContext, O.OverloadedMethodInfo info WebContext) => OL.IsLabel t (O.MethodProxy info WebContext) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal WebContext::automation-started
-- | This signal is emitted when a new automation request is made.
-- Note that it will never be emitted if automation is not enabled in /@context@/,
-- see 'GI.WebKit2.Objects.WebContext.webContextSetAutomationAllowed' for more details.
-- 
-- /Since: 2.18/
type WebContextAutomationStartedCallback =
    WebKit2.AutomationSession.AutomationSession
    -- ^ /@session@/: the t'GI.WebKit2.Objects.AutomationSession.AutomationSession' associated with this event
    -> IO ()

type C_WebContextAutomationStartedCallback =
    Ptr WebContext ->                       -- object
    Ptr WebKit2.AutomationSession.AutomationSession ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebContextAutomationStartedCallback`.
foreign import ccall "wrapper"
    mk_WebContextAutomationStartedCallback :: C_WebContextAutomationStartedCallback -> IO (FunPtr C_WebContextAutomationStartedCallback)

wrap_WebContextAutomationStartedCallback :: 
    GObject a => (a -> WebContextAutomationStartedCallback) ->
    C_WebContextAutomationStartedCallback
wrap_WebContextAutomationStartedCallback gi'cb gi'selfPtr session _ = do
    session' <- (newObject WebKit2.AutomationSession.AutomationSession) session
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  session'


-- | Connect a signal handler for the [automationStarted](#signal:automationStarted) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webContext #automationStarted callback
-- @
-- 
-- 
onWebContextAutomationStarted :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextAutomationStartedCallback) -> m SignalHandlerId
onWebContextAutomationStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextAutomationStartedCallback wrapped
    wrapped'' <- mk_WebContextAutomationStartedCallback wrapped'
    connectSignalFunPtr obj "automation-started" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [automationStarted](#signal:automationStarted) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webContext #automationStarted callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebContextAutomationStarted :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextAutomationStartedCallback) -> m SignalHandlerId
afterWebContextAutomationStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextAutomationStartedCallback wrapped
    wrapped'' <- mk_WebContextAutomationStartedCallback wrapped'
    connectSignalFunPtr obj "automation-started" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebContextAutomationStartedSignalInfo
instance SignalInfo WebContextAutomationStartedSignalInfo where
    type HaskellCallbackType WebContextAutomationStartedSignalInfo = WebContextAutomationStartedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebContextAutomationStartedCallback cb
        cb'' <- mk_WebContextAutomationStartedCallback cb'
        connectSignalFunPtr obj "automation-started" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext::automation-started"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:signal:automationStarted"})

#endif

-- signal WebContext::download-started
-- | This signal is emitted when a new download request is made.
type WebContextDownloadStartedCallback =
    WebKit2.Download.Download
    -- ^ /@download@/: the t'GI.WebKit2.Objects.Download.Download' associated with this event
    -> IO ()

type C_WebContextDownloadStartedCallback =
    Ptr WebContext ->                       -- object
    Ptr WebKit2.Download.Download ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebContextDownloadStartedCallback`.
foreign import ccall "wrapper"
    mk_WebContextDownloadStartedCallback :: C_WebContextDownloadStartedCallback -> IO (FunPtr C_WebContextDownloadStartedCallback)

wrap_WebContextDownloadStartedCallback :: 
    GObject a => (a -> WebContextDownloadStartedCallback) ->
    C_WebContextDownloadStartedCallback
wrap_WebContextDownloadStartedCallback gi'cb gi'selfPtr download _ = do
    download' <- (newObject WebKit2.Download.Download) download
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  download'


-- | Connect a signal handler for the [downloadStarted](#signal:downloadStarted) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webContext #downloadStarted callback
-- @
-- 
-- 
onWebContextDownloadStarted :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextDownloadStartedCallback) -> m SignalHandlerId
onWebContextDownloadStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextDownloadStartedCallback wrapped
    wrapped'' <- mk_WebContextDownloadStartedCallback wrapped'
    connectSignalFunPtr obj "download-started" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [downloadStarted](#signal:downloadStarted) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webContext #downloadStarted callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebContextDownloadStarted :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextDownloadStartedCallback) -> m SignalHandlerId
afterWebContextDownloadStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextDownloadStartedCallback wrapped
    wrapped'' <- mk_WebContextDownloadStartedCallback wrapped'
    connectSignalFunPtr obj "download-started" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebContextDownloadStartedSignalInfo
instance SignalInfo WebContextDownloadStartedSignalInfo where
    type HaskellCallbackType WebContextDownloadStartedSignalInfo = WebContextDownloadStartedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebContextDownloadStartedCallback cb
        cb'' <- mk_WebContextDownloadStartedCallback cb'
        connectSignalFunPtr obj "download-started" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext::download-started"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:signal:downloadStarted"})

#endif

-- signal WebContext::initialize-notification-permissions
-- | This signal is emitted when a t'GI.WebKit2.Objects.WebContext.WebContext' needs to set
-- initial notification permissions for a web process. It is emitted
-- when a new web process is about to be launched, and signals the
-- most appropriate moment to use
-- 'GI.WebKit2.Objects.WebContext.webContextInitializeNotificationPermissions'. If no
-- notification permissions have changed since the last time this
-- signal was emitted, then there is no need to call
-- 'GI.WebKit2.Objects.WebContext.webContextInitializeNotificationPermissions' again.
-- 
-- /Since: 2.16/
type WebContextInitializeNotificationPermissionsCallback =
    IO ()

type C_WebContextInitializeNotificationPermissionsCallback =
    Ptr WebContext ->                       -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebContextInitializeNotificationPermissionsCallback`.
foreign import ccall "wrapper"
    mk_WebContextInitializeNotificationPermissionsCallback :: C_WebContextInitializeNotificationPermissionsCallback -> IO (FunPtr C_WebContextInitializeNotificationPermissionsCallback)

wrap_WebContextInitializeNotificationPermissionsCallback :: 
    GObject a => (a -> WebContextInitializeNotificationPermissionsCallback) ->
    C_WebContextInitializeNotificationPermissionsCallback
wrap_WebContextInitializeNotificationPermissionsCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [initializeNotificationPermissions](#signal:initializeNotificationPermissions) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webContext #initializeNotificationPermissions callback
-- @
-- 
-- 
onWebContextInitializeNotificationPermissions :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextInitializeNotificationPermissionsCallback) -> m SignalHandlerId
onWebContextInitializeNotificationPermissions obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextInitializeNotificationPermissionsCallback wrapped
    wrapped'' <- mk_WebContextInitializeNotificationPermissionsCallback wrapped'
    connectSignalFunPtr obj "initialize-notification-permissions" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [initializeNotificationPermissions](#signal:initializeNotificationPermissions) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webContext #initializeNotificationPermissions callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebContextInitializeNotificationPermissions :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextInitializeNotificationPermissionsCallback) -> m SignalHandlerId
afterWebContextInitializeNotificationPermissions obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextInitializeNotificationPermissionsCallback wrapped
    wrapped'' <- mk_WebContextInitializeNotificationPermissionsCallback wrapped'
    connectSignalFunPtr obj "initialize-notification-permissions" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebContextInitializeNotificationPermissionsSignalInfo
instance SignalInfo WebContextInitializeNotificationPermissionsSignalInfo where
    type HaskellCallbackType WebContextInitializeNotificationPermissionsSignalInfo = WebContextInitializeNotificationPermissionsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebContextInitializeNotificationPermissionsCallback cb
        cb'' <- mk_WebContextInitializeNotificationPermissionsCallback cb'
        connectSignalFunPtr obj "initialize-notification-permissions" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext::initialize-notification-permissions"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:signal:initializeNotificationPermissions"})

#endif

-- signal WebContext::initialize-web-extensions
-- | This signal is emitted when a new web process is about to be
-- launched. It signals the most appropriate moment to use
-- 'GI.WebKit2.Objects.WebContext.webContextSetWebExtensionsInitializationUserData'
-- and 'GI.WebKit2.Objects.WebContext.webContextSetWebExtensionsDirectory'.
-- 
-- /Since: 2.4/
type WebContextInitializeWebExtensionsCallback =
    IO ()

type C_WebContextInitializeWebExtensionsCallback =
    Ptr WebContext ->                       -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebContextInitializeWebExtensionsCallback`.
foreign import ccall "wrapper"
    mk_WebContextInitializeWebExtensionsCallback :: C_WebContextInitializeWebExtensionsCallback -> IO (FunPtr C_WebContextInitializeWebExtensionsCallback)

wrap_WebContextInitializeWebExtensionsCallback :: 
    GObject a => (a -> WebContextInitializeWebExtensionsCallback) ->
    C_WebContextInitializeWebExtensionsCallback
wrap_WebContextInitializeWebExtensionsCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [initializeWebExtensions](#signal:initializeWebExtensions) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webContext #initializeWebExtensions callback
-- @
-- 
-- 
onWebContextInitializeWebExtensions :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextInitializeWebExtensionsCallback) -> m SignalHandlerId
onWebContextInitializeWebExtensions obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextInitializeWebExtensionsCallback wrapped
    wrapped'' <- mk_WebContextInitializeWebExtensionsCallback wrapped'
    connectSignalFunPtr obj "initialize-web-extensions" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [initializeWebExtensions](#signal:initializeWebExtensions) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webContext #initializeWebExtensions callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebContextInitializeWebExtensions :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextInitializeWebExtensionsCallback) -> m SignalHandlerId
afterWebContextInitializeWebExtensions obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextInitializeWebExtensionsCallback wrapped
    wrapped'' <- mk_WebContextInitializeWebExtensionsCallback wrapped'
    connectSignalFunPtr obj "initialize-web-extensions" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebContextInitializeWebExtensionsSignalInfo
instance SignalInfo WebContextInitializeWebExtensionsSignalInfo where
    type HaskellCallbackType WebContextInitializeWebExtensionsSignalInfo = WebContextInitializeWebExtensionsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebContextInitializeWebExtensionsCallback cb
        cb'' <- mk_WebContextInitializeWebExtensionsCallback cb'
        connectSignalFunPtr obj "initialize-web-extensions" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext::initialize-web-extensions"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:signal:initializeWebExtensions"})

#endif

-- signal WebContext::user-message-received
-- | This signal is emitted when a t'GI.WebKit2.Objects.UserMessage.UserMessage' is received from a
-- web process extension. You can reply to the message using
-- 'GI.WebKit2.Objects.UserMessage.userMessageSendReply'.
-- 
-- You can handle the user message asynchronously by calling 'GI.GObject.Objects.Object.objectRef' on
-- /@message@/ and returning 'P.True'.
-- 
-- /Since: 2.28/
type WebContextUserMessageReceivedCallback =
    WebKit2.UserMessage.UserMessage
    -- ^ /@message@/: the t'GI.WebKit2.Objects.UserMessage.UserMessage' received
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the message was handled, or 'P.False' otherwise.

type C_WebContextUserMessageReceivedCallback =
    Ptr WebContext ->                       -- object
    Ptr WebKit2.UserMessage.UserMessage ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebContextUserMessageReceivedCallback`.
foreign import ccall "wrapper"
    mk_WebContextUserMessageReceivedCallback :: C_WebContextUserMessageReceivedCallback -> IO (FunPtr C_WebContextUserMessageReceivedCallback)

wrap_WebContextUserMessageReceivedCallback :: 
    GObject a => (a -> WebContextUserMessageReceivedCallback) ->
    C_WebContextUserMessageReceivedCallback
wrap_WebContextUserMessageReceivedCallback gi'cb gi'selfPtr message _ = do
    message' <- (newObject WebKit2.UserMessage.UserMessage) message
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  message'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [userMessageReceived](#signal:userMessageReceived) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webContext #userMessageReceived callback
-- @
-- 
-- 
onWebContextUserMessageReceived :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextUserMessageReceivedCallback) -> m SignalHandlerId
onWebContextUserMessageReceived obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextUserMessageReceivedCallback wrapped
    wrapped'' <- mk_WebContextUserMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "user-message-received" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [userMessageReceived](#signal:userMessageReceived) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webContext #userMessageReceived callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebContextUserMessageReceived :: (IsWebContext a, MonadIO m) => a -> ((?self :: a) => WebContextUserMessageReceivedCallback) -> m SignalHandlerId
afterWebContextUserMessageReceived obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebContextUserMessageReceivedCallback wrapped
    wrapped'' <- mk_WebContextUserMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "user-message-received" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebContextUserMessageReceivedSignalInfo
instance SignalInfo WebContextUserMessageReceivedSignalInfo where
    type HaskellCallbackType WebContextUserMessageReceivedSignalInfo = WebContextUserMessageReceivedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebContextUserMessageReceivedCallback cb
        cb'' <- mk_WebContextUserMessageReceivedCallback cb'
        connectSignalFunPtr obj "user-message-received" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext::user-message-received"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:signal:userMessageReceived"})

#endif

-- VVV Prop "local-storage-directory"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@local-storage-directory@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webContext #localStorageDirectory
-- @
getWebContextLocalStorageDirectory :: (MonadIO m, IsWebContext o) => o -> m (Maybe T.Text)
getWebContextLocalStorageDirectory obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "local-storage-directory"

-- | Construct a t'GValueConstruct' with valid value for the “@local-storage-directory@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextLocalStorageDirectory :: (IsWebContext o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebContextLocalStorageDirectory val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "local-storage-directory" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebContextLocalStorageDirectoryPropertyInfo
instance AttrInfo WebContextLocalStorageDirectoryPropertyInfo where
    type AttrAllowedOps WebContextLocalStorageDirectoryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebContextLocalStorageDirectoryPropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextLocalStorageDirectoryPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebContextLocalStorageDirectoryPropertyInfo = (~) T.Text
    type AttrTransferType WebContextLocalStorageDirectoryPropertyInfo = T.Text
    type AttrGetType WebContextLocalStorageDirectoryPropertyInfo = (Maybe T.Text)
    type AttrLabel WebContextLocalStorageDirectoryPropertyInfo = "local-storage-directory"
    type AttrOrigin WebContextLocalStorageDirectoryPropertyInfo = WebContext
    attrGet = getWebContextLocalStorageDirectory
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebContextLocalStorageDirectory
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.localStorageDirectory"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:localStorageDirectory"
        })
#endif

-- VVV Prop "memory-pressure-settings"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@memory-pressure-settings@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextMemoryPressureSettings :: (IsWebContext o, MIO.MonadIO m) => WebKit2.MemoryPressureSettings.MemoryPressureSettings -> m (GValueConstruct o)
constructWebContextMemoryPressureSettings val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBoxed "memory-pressure-settings" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebContextMemoryPressureSettingsPropertyInfo
instance AttrInfo WebContextMemoryPressureSettingsPropertyInfo where
    type AttrAllowedOps WebContextMemoryPressureSettingsPropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint WebContextMemoryPressureSettingsPropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextMemoryPressureSettingsPropertyInfo = (~) WebKit2.MemoryPressureSettings.MemoryPressureSettings
    type AttrTransferTypeConstraint WebContextMemoryPressureSettingsPropertyInfo = (~) WebKit2.MemoryPressureSettings.MemoryPressureSettings
    type AttrTransferType WebContextMemoryPressureSettingsPropertyInfo = WebKit2.MemoryPressureSettings.MemoryPressureSettings
    type AttrGetType WebContextMemoryPressureSettingsPropertyInfo = ()
    type AttrLabel WebContextMemoryPressureSettingsPropertyInfo = "memory-pressure-settings"
    type AttrOrigin WebContextMemoryPressureSettingsPropertyInfo = WebContext
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebContextMemoryPressureSettings
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.memoryPressureSettings"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:memoryPressureSettings"
        })
#endif

-- VVV Prop "process-swap-on-cross-site-navigation-enabled"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@process-swap-on-cross-site-navigation-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webContext #processSwapOnCrossSiteNavigationEnabled
-- @
getWebContextProcessSwapOnCrossSiteNavigationEnabled :: (MonadIO m, IsWebContext o) => o -> m Bool
getWebContextProcessSwapOnCrossSiteNavigationEnabled obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "process-swap-on-cross-site-navigation-enabled"

-- | Construct a t'GValueConstruct' with valid value for the “@process-swap-on-cross-site-navigation-enabled@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextProcessSwapOnCrossSiteNavigationEnabled :: (IsWebContext o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebContextProcessSwapOnCrossSiteNavigationEnabled val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "process-swap-on-cross-site-navigation-enabled" val

#if defined(ENABLE_OVERLOADING)
data WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo
instance AttrInfo WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo where
    type AttrAllowedOps WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = (~) Bool
    type AttrTransferType WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = Bool
    type AttrGetType WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = Bool
    type AttrLabel WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = "process-swap-on-cross-site-navigation-enabled"
    type AttrOrigin WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo = WebContext
    attrGet = getWebContextProcessSwapOnCrossSiteNavigationEnabled
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebContextProcessSwapOnCrossSiteNavigationEnabled
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.processSwapOnCrossSiteNavigationEnabled"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:processSwapOnCrossSiteNavigationEnabled"
        })
#endif

-- VVV Prop "time-zone-override"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@time-zone-override@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webContext #timeZoneOverride
-- @
getWebContextTimeZoneOverride :: (MonadIO m, IsWebContext o) => o -> m T.Text
getWebContextTimeZoneOverride obj = MIO.liftIO $ checkUnexpectedNothing "getWebContextTimeZoneOverride" $ B.Properties.getObjectPropertyString obj "time-zone-override"

-- | Construct a t'GValueConstruct' with valid value for the “@time-zone-override@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextTimeZoneOverride :: (IsWebContext o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebContextTimeZoneOverride val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "time-zone-override" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebContextTimeZoneOverridePropertyInfo
instance AttrInfo WebContextTimeZoneOverridePropertyInfo where
    type AttrAllowedOps WebContextTimeZoneOverridePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebContextTimeZoneOverridePropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextTimeZoneOverridePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebContextTimeZoneOverridePropertyInfo = (~) T.Text
    type AttrTransferType WebContextTimeZoneOverridePropertyInfo = T.Text
    type AttrGetType WebContextTimeZoneOverridePropertyInfo = T.Text
    type AttrLabel WebContextTimeZoneOverridePropertyInfo = "time-zone-override"
    type AttrOrigin WebContextTimeZoneOverridePropertyInfo = WebContext
    attrGet = getWebContextTimeZoneOverride
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebContextTimeZoneOverride
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.timeZoneOverride"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:timeZoneOverride"
        })
#endif

-- VVV Prop "use-system-appearance-for-scrollbars"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-system-appearance-for-scrollbars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webContext #useSystemAppearanceForScrollbars
-- @
getWebContextUseSystemAppearanceForScrollbars :: (MonadIO m, IsWebContext o) => o -> m Bool
getWebContextUseSystemAppearanceForScrollbars obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "use-system-appearance-for-scrollbars"

-- | Set the value of the “@use-system-appearance-for-scrollbars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webContext [ #useSystemAppearanceForScrollbars 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebContextUseSystemAppearanceForScrollbars :: (MonadIO m, IsWebContext o) => o -> Bool -> m ()
setWebContextUseSystemAppearanceForScrollbars obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "use-system-appearance-for-scrollbars" val

-- | Construct a t'GValueConstruct' with valid value for the “@use-system-appearance-for-scrollbars@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextUseSystemAppearanceForScrollbars :: (IsWebContext o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebContextUseSystemAppearanceForScrollbars val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "use-system-appearance-for-scrollbars" val

#if defined(ENABLE_OVERLOADING)
data WebContextUseSystemAppearanceForScrollbarsPropertyInfo
instance AttrInfo WebContextUseSystemAppearanceForScrollbarsPropertyInfo where
    type AttrAllowedOps WebContextUseSystemAppearanceForScrollbarsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebContextUseSystemAppearanceForScrollbarsPropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextUseSystemAppearanceForScrollbarsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebContextUseSystemAppearanceForScrollbarsPropertyInfo = (~) Bool
    type AttrTransferType WebContextUseSystemAppearanceForScrollbarsPropertyInfo = Bool
    type AttrGetType WebContextUseSystemAppearanceForScrollbarsPropertyInfo = Bool
    type AttrLabel WebContextUseSystemAppearanceForScrollbarsPropertyInfo = "use-system-appearance-for-scrollbars"
    type AttrOrigin WebContextUseSystemAppearanceForScrollbarsPropertyInfo = WebContext
    attrGet = getWebContextUseSystemAppearanceForScrollbars
    attrSet = setWebContextUseSystemAppearanceForScrollbars
    attrPut = setWebContextUseSystemAppearanceForScrollbars
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebContextUseSystemAppearanceForScrollbars
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.useSystemAppearanceForScrollbars"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:useSystemAppearanceForScrollbars"
        })
#endif

-- VVV Prop "website-data-manager"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@website-data-manager@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webContext #websiteDataManager
-- @
getWebContextWebsiteDataManager :: (MonadIO m, IsWebContext o) => o -> m WebKit2.WebsiteDataManager.WebsiteDataManager
getWebContextWebsiteDataManager obj = MIO.liftIO $ checkUnexpectedNothing "getWebContextWebsiteDataManager" $ B.Properties.getObjectPropertyObject obj "website-data-manager" WebKit2.WebsiteDataManager.WebsiteDataManager

-- | Construct a t'GValueConstruct' with valid value for the “@website-data-manager@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebContextWebsiteDataManager :: (IsWebContext o, MIO.MonadIO m, WebKit2.WebsiteDataManager.IsWebsiteDataManager a) => a -> m (GValueConstruct o)
constructWebContextWebsiteDataManager val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "website-data-manager" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebContextWebsiteDataManagerPropertyInfo
instance AttrInfo WebContextWebsiteDataManagerPropertyInfo where
    type AttrAllowedOps WebContextWebsiteDataManagerPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebContextWebsiteDataManagerPropertyInfo = IsWebContext
    type AttrSetTypeConstraint WebContextWebsiteDataManagerPropertyInfo = WebKit2.WebsiteDataManager.IsWebsiteDataManager
    type AttrTransferTypeConstraint WebContextWebsiteDataManagerPropertyInfo = WebKit2.WebsiteDataManager.IsWebsiteDataManager
    type AttrTransferType WebContextWebsiteDataManagerPropertyInfo = WebKit2.WebsiteDataManager.WebsiteDataManager
    type AttrGetType WebContextWebsiteDataManagerPropertyInfo = WebKit2.WebsiteDataManager.WebsiteDataManager
    type AttrLabel WebContextWebsiteDataManagerPropertyInfo = "website-data-manager"
    type AttrOrigin WebContextWebsiteDataManagerPropertyInfo = WebContext
    attrGet = getWebContextWebsiteDataManager
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.WebsiteDataManager.WebsiteDataManager v
    attrConstruct = constructWebContextWebsiteDataManager
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.websiteDataManager"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#g:attr:websiteDataManager"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebContext
type instance O.AttributeList WebContext = WebContextAttributeList
type WebContextAttributeList = ('[ '("localStorageDirectory", WebContextLocalStorageDirectoryPropertyInfo), '("memoryPressureSettings", WebContextMemoryPressureSettingsPropertyInfo), '("processSwapOnCrossSiteNavigationEnabled", WebContextProcessSwapOnCrossSiteNavigationEnabledPropertyInfo), '("timeZoneOverride", WebContextTimeZoneOverridePropertyInfo), '("useSystemAppearanceForScrollbars", WebContextUseSystemAppearanceForScrollbarsPropertyInfo), '("websiteDataManager", WebContextWebsiteDataManagerPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
webContextLocalStorageDirectory :: AttrLabelProxy "localStorageDirectory"
webContextLocalStorageDirectory = AttrLabelProxy

webContextMemoryPressureSettings :: AttrLabelProxy "memoryPressureSettings"
webContextMemoryPressureSettings = AttrLabelProxy

webContextProcessSwapOnCrossSiteNavigationEnabled :: AttrLabelProxy "processSwapOnCrossSiteNavigationEnabled"
webContextProcessSwapOnCrossSiteNavigationEnabled = AttrLabelProxy

webContextTimeZoneOverride :: AttrLabelProxy "timeZoneOverride"
webContextTimeZoneOverride = AttrLabelProxy

webContextUseSystemAppearanceForScrollbars :: AttrLabelProxy "useSystemAppearanceForScrollbars"
webContextUseSystemAppearanceForScrollbars = AttrLabelProxy

webContextWebsiteDataManager :: AttrLabelProxy "websiteDataManager"
webContextWebsiteDataManager = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebContext = WebContextSignalList
type WebContextSignalList = ('[ '("automationStarted", WebContextAutomationStartedSignalInfo), '("downloadStarted", WebContextDownloadStartedSignalInfo), '("initializeNotificationPermissions", WebContextInitializeNotificationPermissionsSignalInfo), '("initializeWebExtensions", WebContextInitializeWebExtensionsSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("userMessageReceived", WebContextUserMessageReceivedSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebContext::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_new" webkit_web_context_new :: 
    IO (Ptr WebContext)

-- | Create a new t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- /Since: 2.8/
webContextNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebContext
    -- ^ __Returns:__ a newly created t'GI.WebKit2.Objects.WebContext.WebContext'
webContextNew  = liftIO $ do
    result <- webkit_web_context_new
    checkUnexpectedReturnNULL "webContextNew" result
    result' <- (wrapObject WebContext) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebContext::new_ephemeral
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_new_ephemeral" webkit_web_context_new_ephemeral :: 
    IO (Ptr WebContext)

-- | Create a new ephemeral t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- An ephemeral t'GI.WebKit2.Objects.WebContext.WebContext' is a context
-- created with an ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'. This is just a convenient method
-- to create ephemeral contexts without having to create your own t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
-- All t'GI.WebKit2.Objects.WebView.WebView's associated with this context will also be ephemeral. Websites will
-- not store any data in the client storage.
-- This is normally used to implement private instances.
-- 
-- /Since: 2.16/
webContextNewEphemeral ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebContext
    -- ^ __Returns:__ a new ephemeral t'GI.WebKit2.Objects.WebContext.WebContext'.
webContextNewEphemeral  = liftIO $ do
    result <- webkit_web_context_new_ephemeral
    checkUnexpectedReturnNULL "webContextNewEphemeral" result
    result' <- (wrapObject WebContext) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebContext::new_with_website_data_manager
-- method type : Constructor
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
--               (TInterface Name { namespace = "WebKit2" , name = "WebContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_new_with_website_data_manager" webkit_web_context_new_with_website_data_manager :: 
    Ptr WebKit2.WebsiteDataManager.WebsiteDataManager -> -- manager : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataManager"})
    IO (Ptr WebContext)

-- | Create a new t'GI.WebKit2.Objects.WebContext.WebContext' with a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
-- 
-- /Since: 2.10/
webContextNewWithWebsiteDataManager ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.WebsiteDataManager.IsWebsiteDataManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
    -> m WebContext
    -- ^ __Returns:__ a newly created t'GI.WebKit2.Objects.WebContext.WebContext'
webContextNewWithWebsiteDataManager manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_web_context_new_with_website_data_manager manager'
    checkUnexpectedReturnNULL "webContextNewWithWebsiteDataManager" result
    result' <- (wrapObject WebContext) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebContext::add_path_to_sandbox
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "path"
--           , argType = TBasicType TFileName
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an absolute path to mount in the sandbox"
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
--           { argCName = "read_only"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "if %TRUE the path will be read-only"
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

foreign import ccall "webkit_web_context_add_path_to_sandbox" webkit_web_context_add_path_to_sandbox :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- path : TBasicType TFileName
    CInt ->                                 -- read_only : TBasicType TBoolean
    IO ()

-- | Adds a path to be mounted in the sandbox.
-- 
-- /@path@/ must exist before any web process has been created. It is a fatal error
-- to add paths after a web process has been spawned.
-- 
-- Paths under @\/sys@, @\/proc@, and @\/dev@ are invalid. Attempting to
-- add all of @\/@ is not valid. Since 2.40, adding the user\'s entire
-- home directory or \/home is also not valid.
-- 
-- See also 'GI.WebKit2.Objects.WebContext.webContextSetSandboxEnabled'
-- 
-- /Since: 2.26/
webContextAddPathToSandbox ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> [Char]
    -- ^ /@path@/: an absolute path to mount in the sandbox
    -> Bool
    -- ^ /@readOnly@/: if 'P.True' the path will be read-only
    -> m ()
webContextAddPathToSandbox context path readOnly = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    path' <- stringToCString path
    let readOnly' = (P.fromIntegral . P.fromEnum) readOnly
    webkit_web_context_add_path_to_sandbox context' path' readOnly'
    touchManagedPtr context
    freeMem path'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextAddPathToSandboxMethodInfo
instance (signature ~ ([Char] -> Bool -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextAddPathToSandboxMethodInfo a signature where
    overloadedMethod = webContextAddPathToSandbox

instance O.OverloadedMethodInfo WebContextAddPathToSandboxMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextAddPathToSandbox",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextAddPathToSandbox"
        })


#endif

-- method WebContext::allow_tls_certificate_for_host
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "certificate"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "TlsCertificate" }
--           , argCType = Just "GTlsCertificate*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GTlsCertificate" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "host"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the host for which a certificate is to be allowed"
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

foreign import ccall "webkit_web_context_allow_tls_certificate_for_host" webkit_web_context_allow_tls_certificate_for_host :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr Gio.TlsCertificate.TlsCertificate -> -- certificate : TInterface (Name {namespace = "Gio", name = "TlsCertificate"})
    CString ->                              -- host : TBasicType TUTF8
    IO ()

-- | Ignore further TLS errors on the /@host@/ for the certificate present in /@info@/.
-- 
-- If /@host@/ is an IPv6 address, it should not be surrounded by brackets. This
-- expectation matches 'GI.GLib.Structs.Uri.uriGetHost'.
-- 
-- /Since: 2.6/
webContextAllowTlsCertificateForHost ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a, Gio.TlsCertificate.IsTlsCertificate b) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> b
    -- ^ /@certificate@/: a t'GI.Gio.Objects.TlsCertificate.TlsCertificate'
    -> T.Text
    -- ^ /@host@/: the host for which a certificate is to be allowed
    -> m ()
webContextAllowTlsCertificateForHost context certificate host = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    certificate' <- unsafeManagedPtrCastPtr certificate
    host' <- textToCString host
    webkit_web_context_allow_tls_certificate_for_host context' certificate' host'
    touchManagedPtr context
    touchManagedPtr certificate
    freeMem host'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextAllowTlsCertificateForHostMethodInfo
instance (signature ~ (b -> T.Text -> m ()), MonadIO m, IsWebContext a, Gio.TlsCertificate.IsTlsCertificate b) => O.OverloadedMethod WebContextAllowTlsCertificateForHostMethodInfo a signature where
    overloadedMethod = webContextAllowTlsCertificateForHost

instance O.OverloadedMethodInfo WebContextAllowTlsCertificateForHostMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextAllowTlsCertificateForHost",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextAllowTlsCertificateForHost"
        })


#endif

-- method WebContext::clear_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_clear_cache" webkit_web_context_clear_cache :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO ()

-- | Clears all resources currently cached.
-- 
-- See also 'GI.WebKit2.Objects.WebContext.webContextSetCacheModel'.
webContextClearCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m ()
webContextClearCache context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_web_context_clear_cache context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextClearCacheMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextClearCacheMethodInfo a signature where
    overloadedMethod = webContextClearCache

instance O.OverloadedMethodInfo WebContextClearCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextClearCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextClearCache"
        })


#endif

-- method WebContext::download_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI to download"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Download" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_download_uri" webkit_web_context_download_uri :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- uri : TBasicType TUTF8
    IO (Ptr WebKit2.Download.Download)

-- | Requests downloading of the specified URI string.
-- 
-- The download operation will not be associated to any t'GI.WebKit2.Objects.WebView.WebView',
-- if you are interested in starting a download from a particular t'GI.WebKit2.Objects.WebView.WebView' use
-- 'GI.WebKit2.Objects.WebView.webViewDownloadUri' instead.
webContextDownloadUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@uri@/: the URI to download
    -> m WebKit2.Download.Download
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.Download.Download' representing
    --    the download operation.
webContextDownloadUri context uri = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    uri' <- textToCString uri
    result <- webkit_web_context_download_uri context' uri'
    checkUnexpectedReturnNULL "webContextDownloadUri" result
    result' <- (wrapObject WebKit2.Download.Download) result
    touchManagedPtr context
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextDownloadUriMethodInfo
instance (signature ~ (T.Text -> m WebKit2.Download.Download), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextDownloadUriMethodInfo a signature where
    overloadedMethod = webContextDownloadUri

instance O.OverloadedMethodInfo WebContextDownloadUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextDownloadUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextDownloadUri"
        })


#endif

-- method WebContext::get_cache_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--               (TInterface Name { namespace = "WebKit2" , name = "CacheModel" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_cache_model" webkit_web_context_get_cache_model :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CUInt

-- | Returns the current cache model.
-- 
-- For more information about this
-- value check the documentation of the function
-- 'GI.WebKit2.Objects.WebContext.webContextSetCacheModel'.
webContextGetCacheModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.Enums.CacheModel
    -- ^ __Returns:__ the current t'GI.WebKit2.Enums.CacheModel'
webContextGetCacheModel context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_cache_model context'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetCacheModelMethodInfo
instance (signature ~ (m WebKit2.Enums.CacheModel), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetCacheModelMethodInfo a signature where
    overloadedMethod = webContextGetCacheModel

instance O.OverloadedMethodInfo WebContextGetCacheModelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetCacheModel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetCacheModel"
        })


#endif

-- method WebContext::get_cookie_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_cookie_manager" webkit_web_context_get_cookie_manager :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebKit2.CookieManager.CookieManager)

-- | Get the t'GI.WebKit2.Objects.CookieManager.CookieManager' of the /@context@/\'s t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
webContextGetCookieManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.CookieManager.CookieManager
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.CookieManager.CookieManager' of /@context@/.
webContextGetCookieManager context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_cookie_manager context'
    checkUnexpectedReturnNULL "webContextGetCookieManager" result
    result' <- (newObject WebKit2.CookieManager.CookieManager) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetCookieManagerMethodInfo
instance (signature ~ (m WebKit2.CookieManager.CookieManager), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetCookieManagerMethodInfo a signature where
    overloadedMethod = webContextGetCookieManager

instance O.OverloadedMethodInfo WebContextGetCookieManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetCookieManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetCookieManager"
        })


#endif

-- method WebContext::get_favicon_database
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                  Name { namespace = "WebKit2" , name = "FaviconDatabase" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_favicon_database" webkit_web_context_get_favicon_database :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebKit2.FaviconDatabase.FaviconDatabase)

-- | Get the t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase' associated with /@context@/.
-- 
-- To initialize the database you need to call
-- 'GI.WebKit2.Objects.WebContext.webContextSetFaviconDatabaseDirectory'.
webContextGetFaviconDatabase ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.FaviconDatabase.FaviconDatabase
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase' of /@context@/.
webContextGetFaviconDatabase context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_favicon_database context'
    checkUnexpectedReturnNULL "webContextGetFaviconDatabase" result
    result' <- (newObject WebKit2.FaviconDatabase.FaviconDatabase) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetFaviconDatabaseMethodInfo
instance (signature ~ (m WebKit2.FaviconDatabase.FaviconDatabase), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetFaviconDatabaseMethodInfo a signature where
    overloadedMethod = webContextGetFaviconDatabase

instance O.OverloadedMethodInfo WebContextGetFaviconDatabaseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetFaviconDatabase",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetFaviconDatabase"
        })


#endif

-- method WebContext::get_favicon_database_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_favicon_database_directory" webkit_web_context_get_favicon_database_directory :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CString

-- | Get the directory path to store the favicons database.
-- 
-- Get the directory path being used to store the favicons database
-- for /@context@/, or 'P.Nothing' if
-- 'GI.WebKit2.Objects.WebContext.webContextSetFaviconDatabaseDirectory' hasn\'t been
-- called yet.
-- 
-- This function will always return the same path after having called
-- 'GI.WebKit2.Objects.WebContext.webContextSetFaviconDatabaseDirectory' for the first
-- time.
webContextGetFaviconDatabaseDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the path of the directory of the favicons
    -- database associated with /@context@/, or 'P.Nothing'.
webContextGetFaviconDatabaseDirectory context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_favicon_database_directory context'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr context
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebContextGetFaviconDatabaseDirectoryMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetFaviconDatabaseDirectoryMethodInfo a signature where
    overloadedMethod = webContextGetFaviconDatabaseDirectory

instance O.OverloadedMethodInfo WebContextGetFaviconDatabaseDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetFaviconDatabaseDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetFaviconDatabaseDirectory"
        })


#endif

-- method WebContext::get_geolocation_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                  Name { namespace = "WebKit2" , name = "GeolocationManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_geolocation_manager" webkit_web_context_get_geolocation_manager :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebKit2.GeolocationManager.GeolocationManager)

-- | Get the t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager' of /@context@/.
-- 
-- /Since: 2.26/
webContextGetGeolocationManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.GeolocationManager.GeolocationManager
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager' of /@context@/.
webContextGetGeolocationManager context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_geolocation_manager context'
    checkUnexpectedReturnNULL "webContextGetGeolocationManager" result
    result' <- (newObject WebKit2.GeolocationManager.GeolocationManager) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetGeolocationManagerMethodInfo
instance (signature ~ (m WebKit2.GeolocationManager.GeolocationManager), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetGeolocationManagerMethodInfo a signature where
    overloadedMethod = webContextGetGeolocationManager

instance O.OverloadedMethodInfo WebContextGetGeolocationManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetGeolocationManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetGeolocationManager"
        })


#endif

-- method WebContext::get_plugins
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_plugins" webkit_web_context_get_plugins :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED webContextGetPlugins ["(Since version 2.32)"] #-}
-- | Asynchronously get the list of installed plugins.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebContext.webContextGetPluginsFinish' to get the result of the operation.
webContextGetPlugins ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
webContextGetPlugins context cancellable callback = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
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
    webkit_web_context_get_plugins context' maybeCancellable maybeCallback userData
    touchManagedPtr context
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextGetPluginsMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebContext a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebContextGetPluginsMethodInfo a signature where
    overloadedMethod = webContextGetPlugins

instance O.OverloadedMethodInfo WebContextGetPluginsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetPlugins",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetPlugins"
        })


#endif

-- method WebContext::get_plugins_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                  (TInterface Name { namespace = "WebKit2" , name = "Plugin" }))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_context_get_plugins_finish" webkit_web_context_get_plugins_finish :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr WebKit2.Plugin.Plugin)))

{-# DEPRECATED webContextGetPluginsFinish ["(Since version 2.32)"] #-}
-- | Finish an asynchronous operation started with webkit_web_context_get_plugins.
webContextGetPluginsFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [WebKit2.Plugin.Plugin]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Objects.Plugin.Plugin'. You must free the t'GI.GLib.Structs.List.List' with
    --    @/g_list_free()/@ and unref the t'GI.WebKit2.Objects.Plugin.Plugin's with 'GI.GObject.Objects.Object.objectUnref' when you\'re done with them. /(Can throw 'Data.GI.Base.GError.GError')/
webContextGetPluginsFinish context result_ = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_context_get_plugins_finish context' result_'
        result' <- unpackGList result
        result'' <- mapM (wrapObject WebKit2.Plugin.Plugin) result'
        g_list_free result
        touchManagedPtr context
        touchManagedPtr result_
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebContextGetPluginsFinishMethodInfo
instance (signature ~ (b -> m [WebKit2.Plugin.Plugin]), MonadIO m, IsWebContext a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebContextGetPluginsFinishMethodInfo a signature where
    overloadedMethod = webContextGetPluginsFinish

instance O.OverloadedMethodInfo WebContextGetPluginsFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetPluginsFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetPluginsFinish"
        })


#endif

-- method WebContext::get_process_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--               (TInterface Name { namespace = "WebKit2" , name = "ProcessModel" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_process_model" webkit_web_context_get_process_model :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CUInt

{-# DEPRECATED webContextGetProcessModel ["(Since version 2.40)"] #-}
-- | Returns 'GI.WebKit2.Enums.ProcessModelMultipleSecondaryProcesses'.
-- 
-- For more information about why this function is deprecated,
-- see 'GI.WebKit2.Objects.WebContext.webContextSetProcessModel'.
-- 
-- /Since: 2.4/
webContextGetProcessModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.Enums.ProcessModel
    -- ^ __Returns:__ 'GI.WebKit2.Enums.ProcessModelMultipleSecondaryProcesses'
webContextGetProcessModel context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_process_model context'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetProcessModelMethodInfo
instance (signature ~ (m WebKit2.Enums.ProcessModel), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetProcessModelMethodInfo a signature where
    overloadedMethod = webContextGetProcessModel

instance O.OverloadedMethodInfo WebContextGetProcessModelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetProcessModel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetProcessModel"
        })


#endif

-- method WebContext::get_sandbox_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_sandbox_enabled" webkit_web_context_get_sandbox_enabled :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CInt

-- | Get whether sandboxing is currently enabled.
-- 
-- /Since: 2.26/
webContextGetSandboxEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if sandboxing is enabled, or 'P.False' otherwise.
webContextGetSandboxEnabled context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_sandbox_enabled context'
    let result' = (/= 0) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetSandboxEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetSandboxEnabledMethodInfo a signature where
    overloadedMethod = webContextGetSandboxEnabled

instance O.OverloadedMethodInfo WebContextGetSandboxEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetSandboxEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetSandboxEnabled"
        })


#endif

-- method WebContext::get_security_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                  Name { namespace = "WebKit2" , name = "SecurityManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_security_manager" webkit_web_context_get_security_manager :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebKit2.SecurityManager.SecurityManager)

-- | Get the t'GI.WebKit2.Objects.SecurityManager.SecurityManager' of /@context@/.
webContextGetSecurityManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.SecurityManager.SecurityManager
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.SecurityManager.SecurityManager' of /@context@/.
webContextGetSecurityManager context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_security_manager context'
    checkUnexpectedReturnNULL "webContextGetSecurityManager" result
    result' <- (newObject WebKit2.SecurityManager.SecurityManager) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetSecurityManagerMethodInfo
instance (signature ~ (m WebKit2.SecurityManager.SecurityManager), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetSecurityManagerMethodInfo a signature where
    overloadedMethod = webContextGetSecurityManager

instance O.OverloadedMethodInfo WebContextGetSecurityManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetSecurityManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetSecurityManager"
        })


#endif

-- method WebContext::get_spell_checking_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_spell_checking_enabled" webkit_web_context_get_spell_checking_enabled :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CInt

-- | Get whether spell checking feature is currently enabled.
webContextGetSpellCheckingEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Bool
    -- ^ __Returns:__ 'P.True' If spell checking is enabled, or 'P.False' otherwise.
webContextGetSpellCheckingEnabled context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_spell_checking_enabled context'
    let result' = (/= 0) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetSpellCheckingEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetSpellCheckingEnabledMethodInfo a signature where
    overloadedMethod = webContextGetSpellCheckingEnabled

instance O.OverloadedMethodInfo WebContextGetSpellCheckingEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetSpellCheckingEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetSpellCheckingEnabled"
        })


#endif

-- method WebContext::get_spell_checking_languages
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_spell_checking_languages" webkit_web_context_get_spell_checking_languages :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr CString)

-- | Get the the list of spell checking languages.
-- 
-- Get the the list of spell checking languages associated with
-- /@context@/, or 'P.Nothing' if no languages have been previously set.
-- 
-- See 'GI.WebKit2.Objects.WebContext.webContextSetSpellCheckingLanguages' for more
-- details on the format of the languages in the list.
webContextGetSpellCheckingLanguages ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ A 'P.Nothing'-terminated
    --    array of languages if available, or 'P.Nothing' otherwise.
webContextGetSpellCheckingLanguages context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_spell_checking_languages context'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        return result''
    touchManagedPtr context
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebContextGetSpellCheckingLanguagesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetSpellCheckingLanguagesMethodInfo a signature where
    overloadedMethod = webContextGetSpellCheckingLanguages

instance O.OverloadedMethodInfo WebContextGetSpellCheckingLanguagesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetSpellCheckingLanguages",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetSpellCheckingLanguages"
        })


#endif

-- method WebContext::get_time_zone_override
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_time_zone_override" webkit_web_context_get_time_zone_override :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CString

-- | Get the [WebContext:timeZoneOverride]("GI.WebKit2.Objects.WebContext#g:attr:timeZoneOverride") property.
-- 
-- /Since: 2.38/
webContextGetTimeZoneOverride ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m T.Text
webContextGetTimeZoneOverride context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_time_zone_override context'
    checkUnexpectedReturnNULL "webContextGetTimeZoneOverride" result
    result' <- cstringToText result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetTimeZoneOverrideMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetTimeZoneOverrideMethodInfo a signature where
    overloadedMethod = webContextGetTimeZoneOverride

instance O.OverloadedMethodInfo WebContextGetTimeZoneOverrideMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetTimeZoneOverride",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetTimeZoneOverride"
        })


#endif

-- method WebContext::get_tls_errors_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_tls_errors_policy" webkit_web_context_get_tls_errors_policy :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CUInt

{-# DEPRECATED webContextGetTlsErrorsPolicy ["(Since version 2.32.)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetTlsErrorsPolicy' instead."] #-}
-- | Get the TLS errors policy of /@context@/.
webContextGetTlsErrorsPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.Enums.TLSErrorsPolicy
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.TLSErrorsPolicy'
webContextGetTlsErrorsPolicy context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_tls_errors_policy context'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetTlsErrorsPolicyMethodInfo
instance (signature ~ (m WebKit2.Enums.TLSErrorsPolicy), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetTlsErrorsPolicyMethodInfo a signature where
    overloadedMethod = webContextGetTlsErrorsPolicy

instance O.OverloadedMethodInfo WebContextGetTlsErrorsPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetTlsErrorsPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetTlsErrorsPolicy"
        })


#endif

-- method WebContext::get_use_system_appearance_for_scrollbars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_get_use_system_appearance_for_scrollbars" webkit_web_context_get_use_system_appearance_for_scrollbars :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CInt

{-# DEPRECATED webContextGetUseSystemAppearanceForScrollbars ["(Since version 2.46)"] #-}
-- | Get the [WebContext:useSystemAppearanceForScrollbars]("GI.WebKit2.Objects.WebContext#g:attr:useSystemAppearanceForScrollbars") property.
-- 
-- /Since: 2.30/
webContextGetUseSystemAppearanceForScrollbars ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if scrollbars are rendering using the system appearance, or 'P.False' otherwise
webContextGetUseSystemAppearanceForScrollbars context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_use_system_appearance_for_scrollbars context'
    let result' = (/= 0) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetUseSystemAppearanceForScrollbarsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetUseSystemAppearanceForScrollbarsMethodInfo a signature where
    overloadedMethod = webContextGetUseSystemAppearanceForScrollbars

instance O.OverloadedMethodInfo WebContextGetUseSystemAppearanceForScrollbarsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetUseSystemAppearanceForScrollbars",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetUseSystemAppearanceForScrollbars"
        })


#endif

-- method WebContext::get_web_process_count_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_web_process_count_limit" webkit_web_context_get_web_process_count_limit :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO Word32

{-# DEPRECATED webContextGetWebProcessCountLimit ["(Since version 2.26)"] #-}
-- | Gets the maximum number of web processes that can be created at the same time for the /@context@/.
-- 
-- This function is now deprecated and always returns 0 (no limit). See also 'GI.WebKit2.Objects.WebContext.webContextSetWebProcessCountLimit'.
-- 
-- /Since: 2.10/
webContextGetWebProcessCountLimit ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Word32
    -- ^ __Returns:__ the maximum limit of web processes, or 0 if there isn\'t a limit.
webContextGetWebProcessCountLimit context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_web_process_count_limit context'
    touchManagedPtr context
    return result

#if defined(ENABLE_OVERLOADING)
data WebContextGetWebProcessCountLimitMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetWebProcessCountLimitMethodInfo a signature where
    overloadedMethod = webContextGetWebProcessCountLimit

instance O.OverloadedMethodInfo WebContextGetWebProcessCountLimitMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetWebProcessCountLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetWebProcessCountLimit"
        })


#endif

-- method WebContext::get_website_data_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--                  Name { namespace = "WebKit2" , name = "WebsiteDataManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_website_data_manager" webkit_web_context_get_website_data_manager :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebKit2.WebsiteDataManager.WebsiteDataManager)

-- | Get the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' of /@context@/.
-- 
-- /Since: 2.10/
webContextGetWebsiteDataManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m WebKit2.WebsiteDataManager.WebsiteDataManager
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
webContextGetWebsiteDataManager context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_get_website_data_manager context'
    checkUnexpectedReturnNULL "webContextGetWebsiteDataManager" result
    result' <- (newObject WebKit2.WebsiteDataManager.WebsiteDataManager) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextGetWebsiteDataManagerMethodInfo
instance (signature ~ (m WebKit2.WebsiteDataManager.WebsiteDataManager), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextGetWebsiteDataManagerMethodInfo a signature where
    overloadedMethod = webContextGetWebsiteDataManager

instance O.OverloadedMethodInfo WebContextGetWebsiteDataManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextGetWebsiteDataManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextGetWebsiteDataManager"
        })


#endif

-- method WebContext::initialize_notification_permissions
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "allowed_origins"
--           , argType =
--               TGList
--                 (TInterface
--                    Name { namespace = "WebKit2" , name = "SecurityOrigin" })
--           , argCType = Just "GList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GList of security origins"
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
--           { argCName = "disallowed_origins"
--           , argType =
--               TGList
--                 (TInterface
--                    Name { namespace = "WebKit2" , name = "SecurityOrigin" })
--           , argCType = Just "GList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GList of security origins"
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

foreign import ccall "webkit_web_context_initialize_notification_permissions" webkit_web_context_initialize_notification_permissions :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr (GList (Ptr WebKit2.SecurityOrigin.SecurityOrigin)) -> -- allowed_origins : TGList (TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"}))
    Ptr (GList (Ptr WebKit2.SecurityOrigin.SecurityOrigin)) -> -- disallowed_origins : TGList (TInterface (Name {namespace = "WebKit2", name = "SecurityOrigin"}))
    IO ()

-- | Sets initial desktop notification permissions for the /@context@/.
-- 
-- /@allowedOrigins@/ and /@disallowedOrigins@/ must each be t'GI.GLib.Structs.List.List' of
-- t'GI.WebKit2.Structs.SecurityOrigin.SecurityOrigin' objects representing origins that will,
-- respectively, either always or never have permission to show desktop
-- notifications. No t'GI.WebKit2.Objects.NotificationPermissionRequest.NotificationPermissionRequest' will ever be
-- generated for any of the security origins represented in
-- /@allowedOrigins@/ or /@disallowedOrigins@/. This function is necessary
-- because some webpages proactively check whether they have permission
-- to display notifications without ever creating a permission request.
-- 
-- This function only affects web processes that have not already been
-- created. The best time to call it is when handling
-- [WebContext::initializeNotificationPermissions]("GI.WebKit2.Objects.WebContext#g:signal:initializeNotificationPermissions") so as to
-- ensure that new web processes receive the most recent set of
-- permissions.
-- 
-- /Since: 2.16/
webContextInitializeNotificationPermissions ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> [WebKit2.SecurityOrigin.SecurityOrigin]
    -- ^ /@allowedOrigins@/: a t'GI.GLib.Structs.List.List' of security origins
    -> [WebKit2.SecurityOrigin.SecurityOrigin]
    -- ^ /@disallowedOrigins@/: a t'GI.GLib.Structs.List.List' of security origins
    -> m ()
webContextInitializeNotificationPermissions context allowedOrigins disallowedOrigins = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    allowedOrigins' <- mapM unsafeManagedPtrGetPtr allowedOrigins
    allowedOrigins'' <- packGList allowedOrigins'
    disallowedOrigins' <- mapM unsafeManagedPtrGetPtr disallowedOrigins
    disallowedOrigins'' <- packGList disallowedOrigins'
    webkit_web_context_initialize_notification_permissions context' allowedOrigins'' disallowedOrigins''
    touchManagedPtr context
    mapM_ touchManagedPtr allowedOrigins
    mapM_ touchManagedPtr disallowedOrigins
    g_list_free allowedOrigins''
    g_list_free disallowedOrigins''
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextInitializeNotificationPermissionsMethodInfo
instance (signature ~ ([WebKit2.SecurityOrigin.SecurityOrigin] -> [WebKit2.SecurityOrigin.SecurityOrigin] -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextInitializeNotificationPermissionsMethodInfo a signature where
    overloadedMethod = webContextInitializeNotificationPermissions

instance O.OverloadedMethodInfo WebContextInitializeNotificationPermissionsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextInitializeNotificationPermissions",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextInitializeNotificationPermissions"
        })


#endif

-- method WebContext::is_automation_allowed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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

foreign import ccall "webkit_web_context_is_automation_allowed" webkit_web_context_is_automation_allowed :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CInt

-- | Get whether automation is allowed in /@context@/.
-- 
-- See also 'GI.WebKit2.Objects.WebContext.webContextSetAutomationAllowed'.
-- 
-- /Since: 2.18/
webContextIsAutomationAllowed ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if automation is allowed or 'P.False' otherwise.
webContextIsAutomationAllowed context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_is_automation_allowed context'
    let result' = (/= 0) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextIsAutomationAllowedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextIsAutomationAllowedMethodInfo a signature where
    overloadedMethod = webContextIsAutomationAllowed

instance O.OverloadedMethodInfo WebContextIsAutomationAllowedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextIsAutomationAllowed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextIsAutomationAllowed"
        })


#endif

-- method WebContext::is_ephemeral
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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

foreign import ccall "webkit_web_context_is_ephemeral" webkit_web_context_is_ephemeral :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO CInt

-- | Get whether a t'GI.WebKit2.Objects.WebContext.WebContext' is ephemeral.
-- 
-- /Since: 2.16/
webContextIsEphemeral ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@context@/ is ephemeral or 'P.False' otherwise.
webContextIsEphemeral context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_context_is_ephemeral context'
    let result' = (/= 0) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data WebContextIsEphemeralMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextIsEphemeralMethodInfo a signature where
    overloadedMethod = webContextIsEphemeral

instance O.OverloadedMethodInfo WebContextIsEphemeralMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextIsEphemeral",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextIsEphemeral"
        })


#endif

-- method WebContext::prefetch_dns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "hostname"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a hostname to be resolved"
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

foreign import ccall "webkit_web_context_prefetch_dns" webkit_web_context_prefetch_dns :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- hostname : TBasicType TUTF8
    IO ()

-- | Resolve the domain name of the given /@hostname@/ in advance.
-- 
-- Resolve the domain name of the given /@hostname@/ in advance, so that if a URI
-- of /@hostname@/ is requested the load will be performed more quickly.
webContextPrefetchDns ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@hostname@/: a hostname to be resolved
    -> m ()
webContextPrefetchDns context hostname = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    hostname' <- textToCString hostname
    webkit_web_context_prefetch_dns context' hostname'
    touchManagedPtr context
    freeMem hostname'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextPrefetchDnsMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextPrefetchDnsMethodInfo a signature where
    overloadedMethod = webContextPrefetchDns

instance O.OverloadedMethodInfo WebContextPrefetchDnsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextPrefetchDns",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextPrefetchDns"
        })


#endif

-- method WebContext::register_uri_scheme
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                 { rawDocText = Just "the network scheme to register"
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
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequestCallback" }
--           , argCType = Just "WebKitURISchemeRequestCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequestCallback"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
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
--                 { rawDocText = Just "data to pass to callback function"
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
--           { argCName = "user_data_destroy_func"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notify for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "webkit_web_context_register_uri_scheme" webkit_web_context_register_uri_scheme :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- scheme : TBasicType TUTF8
    FunPtr WebKit2.Callbacks.C_URISchemeRequestCallback -> -- callback : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequestCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- user_data_destroy_func : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Register /@scheme@/ in /@context@/.
-- 
-- Register /@scheme@/ in /@context@/, so that when an URI request with /@scheme@/ is made in the
-- t'GI.WebKit2.Objects.WebContext.WebContext', the t'GI.WebKit2.Callbacks.URISchemeRequestCallback' registered will be called with a
-- t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'.
-- It is possible to handle URI scheme requests asynchronously, by calling 'GI.GObject.Objects.Object.objectRef' on the
-- t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest' and calling 'GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinish' later
-- when the data of the request is available or
-- 'GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinishError' in case of error.
-- 
-- 
-- === /c code/
-- >static void
-- >about_uri_scheme_request_cb (WebKitURISchemeRequest *request,
-- >                             gpointer                user_data)
-- >{
-- >    GInputStream *stream;
-- >    gsize         stream_length;
-- >    const gchar  *path = webkit_uri_scheme_request_get_path (request);
-- >
-- >    if (!g_strcmp0 (path, "memory")) {
-- >        // Create a GInputStream with the contents of memory about page, and set its length to stream_length
-- >    } else if (!g_strcmp0 (path, "applications")) {
-- >        // Create a GInputStream with the contents of applications about page, and set its length to stream_length
-- >    } else if (!g_strcmp0 (path, "example")) {
-- >        gchar *contents = g_strdup_printf ("<html><body><p>Example about page</p></body></html>");
-- >        stream_length = strlen (contents);
-- >        stream = g_memory_input_stream_new_from_data (contents, stream_length, g_free);
-- >    } else {
-- >        GError *error = g_error_new (ABOUT_HANDLER_ERROR, ABOUT_HANDLER_ERROR_INVALID, "Invalid about:%s page.", path);
-- >        webkit_uri_scheme_request_finish_error (request, error);
-- >        g_error_free (error);
-- >        return;
-- >    }
-- >    webkit_uri_scheme_request_finish (request, stream, stream_length, "text/html");
-- >    g_object_unref (stream);
-- >}
webContextRegisterUriScheme ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@scheme@/: the network scheme to register
    -> WebKit2.Callbacks.URISchemeRequestCallback
    -- ^ /@callback@/: a t'GI.WebKit2.Callbacks.URISchemeRequestCallback'
    -> m ()
webContextRegisterUriScheme context scheme callback = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    scheme' <- textToCString scheme
    callback' <- WebKit2.Callbacks.mk_URISchemeRequestCallback (WebKit2.Callbacks.wrap_URISchemeRequestCallback Nothing (WebKit2.Callbacks.drop_closures_URISchemeRequestCallback callback))
    let userData = castFunPtrToPtr callback'
    let userDataDestroyFunc = SP.safeFreeFunPtrPtr
    webkit_web_context_register_uri_scheme context' scheme' callback' userData userDataDestroyFunc
    touchManagedPtr context
    freeMem scheme'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextRegisterUriSchemeMethodInfo
instance (signature ~ (T.Text -> WebKit2.Callbacks.URISchemeRequestCallback -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextRegisterUriSchemeMethodInfo a signature where
    overloadedMethod = webContextRegisterUriScheme

instance O.OverloadedMethodInfo WebContextRegisterUriSchemeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextRegisterUriScheme",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextRegisterUriScheme"
        })


#endif

-- method WebContext::send_message_to_all_extensions
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
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

foreign import ccall "webkit_web_context_send_message_to_all_extensions" webkit_web_context_send_message_to_all_extensions :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr WebKit2.UserMessage.UserMessage ->  -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    IO ()

-- | Send /@message@/ to all web process extensions associated to /@context@/.
-- 
-- If /@message@/ is floating, it\'s consumed.
-- 
-- /Since: 2.28/
webContextSendMessageToAllExtensions ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a, WebKit2.UserMessage.IsUserMessage b) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> b
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> m ()
webContextSendMessageToAllExtensions context message = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    message' <- unsafeManagedPtrCastPtr message
    webkit_web_context_send_message_to_all_extensions context' message'
    touchManagedPtr context
    touchManagedPtr message
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSendMessageToAllExtensionsMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebContext a, WebKit2.UserMessage.IsUserMessage b) => O.OverloadedMethod WebContextSendMessageToAllExtensionsMethodInfo a signature where
    overloadedMethod = webContextSendMessageToAllExtensions

instance O.OverloadedMethodInfo WebContextSendMessageToAllExtensionsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSendMessageToAllExtensions",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSendMessageToAllExtensions"
        })


#endif

-- method WebContext::set_additional_plugins_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "directory"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the directory to add"
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

foreign import ccall "webkit_web_context_set_additional_plugins_directory" webkit_web_context_set_additional_plugins_directory :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- directory : TBasicType TUTF8
    IO ()

{-# DEPRECATED webContextSetAdditionalPluginsDirectory ["(Since version 2.32)"] #-}
-- | Set an additional directory where WebKit will look for plugins.
webContextSetAdditionalPluginsDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@directory@/: the directory to add
    -> m ()
webContextSetAdditionalPluginsDirectory context directory = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    directory' <- textToCString directory
    webkit_web_context_set_additional_plugins_directory context' directory'
    touchManagedPtr context
    freeMem directory'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetAdditionalPluginsDirectoryMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetAdditionalPluginsDirectoryMethodInfo a signature where
    overloadedMethod = webContextSetAdditionalPluginsDirectory

instance O.OverloadedMethodInfo WebContextSetAdditionalPluginsDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetAdditionalPluginsDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetAdditionalPluginsDirectory"
        })


#endif

-- method WebContext::set_automation_allowed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "allowed"
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

foreign import ccall "webkit_web_context_set_automation_allowed" webkit_web_context_set_automation_allowed :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Set whether automation is allowed in /@context@/.
-- 
-- When automation is enabled the browser could
-- be controlled by another process by requesting an automation session. When a new automation
-- session is requested the signal [WebContext::automationStarted]("GI.WebKit2.Objects.WebContext#g:signal:automationStarted") is emitted.
-- Automation is disabled by default, so you need to explicitly call this method passing 'P.True'
-- to enable it.
-- 
-- Note that only one t'GI.WebKit2.Objects.WebContext.WebContext' can have automation enabled, so this will do nothing
-- if there\'s another t'GI.WebKit2.Objects.WebContext.WebContext' with automation already enabled.
-- 
-- /Since: 2.18/
webContextSetAutomationAllowed ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Bool
    -- ^ /@allowed@/: value to set
    -> m ()
webContextSetAutomationAllowed context allowed = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_web_context_set_automation_allowed context' allowed'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetAutomationAllowedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetAutomationAllowedMethodInfo a signature where
    overloadedMethod = webContextSetAutomationAllowed

instance O.OverloadedMethodInfo WebContextSetAutomationAllowedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetAutomationAllowed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetAutomationAllowed"
        })


#endif

-- method WebContext::set_cache_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "cache_model"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CacheModel" }
--           , argCType = Just "WebKitCacheModel"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCacheModel"
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

foreign import ccall "webkit_web_context_set_cache_model" webkit_web_context_set_cache_model :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CUInt ->                                -- cache_model : TInterface (Name {namespace = "WebKit2", name = "CacheModel"})
    IO ()

-- | Specifies a usage model for WebViews.
-- 
-- Specifies a usage model for WebViews, which WebKit will use to
-- determine its caching behavior. All web views follow the cache
-- model. This cache model determines the RAM and disk space to use
-- for caching previously viewed content .
-- 
-- Research indicates that users tend to browse within clusters of
-- documents that hold resources in common, and to revisit previously
-- visited documents. WebKit and the frameworks below it include
-- built-in caches that take advantage of these patterns,
-- substantially improving document load speed in browsing
-- situations. The WebKit cache model controls the behaviors of all of
-- these caches, including various WebCore caches.
-- 
-- Browsers can improve document load speed substantially by
-- specifying 'GI.WebKit2.Enums.CacheModelWebBrowser'. Applications without a
-- browsing interface can reduce memory usage substantially by
-- specifying 'GI.WebKit2.Enums.CacheModelDocumentViewer'. The default value is
-- 'GI.WebKit2.Enums.CacheModelWebBrowser'.
webContextSetCacheModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> WebKit2.Enums.CacheModel
    -- ^ /@cacheModel@/: a t'GI.WebKit2.Enums.CacheModel'
    -> m ()
webContextSetCacheModel context cacheModel = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let cacheModel' = (fromIntegral . fromEnum) cacheModel
    webkit_web_context_set_cache_model context' cacheModel'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetCacheModelMethodInfo
instance (signature ~ (WebKit2.Enums.CacheModel -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetCacheModelMethodInfo a signature where
    overloadedMethod = webContextSetCacheModel

instance O.OverloadedMethodInfo WebContextSetCacheModelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetCacheModel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetCacheModel"
        })


#endif

-- method WebContext::set_disk_cache_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "directory"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the directory to set"
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

foreign import ccall "webkit_web_context_set_disk_cache_directory" webkit_web_context_set_disk_cache_directory :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- directory : TBasicType TUTF8
    IO ()

{-# DEPRECATED webContextSetDiskCacheDirectory ["(Since version 2.10.)","Use 'GI.WebKit2.Objects.WebContext.webContextNewWithWebsiteDataManager' instead."] #-}
-- | Set the directory where disk cache files will be stored.
-- 
-- This method must be called before loading anything in this context, otherwise
-- it will not have any effect.
-- 
-- Note that this method overrides the directory set in the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager',
-- but it doesn\'t change the value returned by 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetDiskCacheDirectory'
-- since the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' is immutable.
webContextSetDiskCacheDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@directory@/: the directory to set
    -> m ()
webContextSetDiskCacheDirectory context directory = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    directory' <- textToCString directory
    webkit_web_context_set_disk_cache_directory context' directory'
    touchManagedPtr context
    freeMem directory'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetDiskCacheDirectoryMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetDiskCacheDirectoryMethodInfo a signature where
    overloadedMethod = webContextSetDiskCacheDirectory

instance O.OverloadedMethodInfo WebContextSetDiskCacheDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetDiskCacheDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetDiskCacheDirectory"
        })


#endif

-- method WebContext::set_favicon_database_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "path"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an absolute path to the icon database\ndirectory or %NULL to use the defaults"
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

foreign import ccall "webkit_web_context_set_favicon_database_directory" webkit_web_context_set_favicon_database_directory :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- path : TBasicType TUTF8
    IO ()

-- | Set the directory path to store the favicons database.
-- 
-- Set the directory path to be used to store the favicons database
-- for /@context@/ on disk. Passing 'P.Nothing' as /@path@/ means using the
-- default directory for the platform (see 'GI.GLib.Functions.getUserCacheDir').
-- 
-- Calling this method also means enabling the favicons database for
-- its use from the applications, so that\'s why it\'s expected to be
-- called only once. Further calls for the same instance of
-- t'GI.WebKit2.Objects.WebContext.WebContext' won\'t cause any effect.
webContextSetFaviconDatabaseDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Maybe (T.Text)
    -- ^ /@path@/: an absolute path to the icon database
    -- directory or 'P.Nothing' to use the defaults
    -> m ()
webContextSetFaviconDatabaseDirectory context path = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybePath <- case path of
        Nothing -> return FP.nullPtr
        Just jPath -> do
            jPath' <- textToCString jPath
            return jPath'
    webkit_web_context_set_favicon_database_directory context' maybePath
    touchManagedPtr context
    freeMem maybePath
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetFaviconDatabaseDirectoryMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetFaviconDatabaseDirectoryMethodInfo a signature where
    overloadedMethod = webContextSetFaviconDatabaseDirectory

instance O.OverloadedMethodInfo WebContextSetFaviconDatabaseDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetFaviconDatabaseDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetFaviconDatabaseDirectory"
        })


#endif

-- method WebContext::set_network_proxy_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_set_network_proxy_settings" webkit_web_context_set_network_proxy_settings :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CUInt ->                                -- proxy_mode : TInterface (Name {namespace = "WebKit2", name = "NetworkProxyMode"})
    Ptr WebKit2.NetworkProxySettings.NetworkProxySettings -> -- proxy_settings : TInterface (Name {namespace = "WebKit2", name = "NetworkProxySettings"})
    IO ()

{-# DEPRECATED webContextSetNetworkProxySettings ["(Since version 2.32.)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetNetworkProxySettings' instead."] #-}
-- | Set the network proxy settings to be used by connections started in /@context@/.
-- 
-- By default 'GI.WebKit2.Enums.NetworkProxyModeDefault' is used, which means that the
-- system settings will be used ('GI.Gio.Functions.proxyResolverGetDefault').
-- If you want to override the system default settings, you can either use
-- 'GI.WebKit2.Enums.NetworkProxyModeNoProxy' to make sure no proxies are used at all,
-- or 'GI.WebKit2.Enums.NetworkProxyModeCustom' to provide your own proxy settings.
-- When /@proxyMode@/ is 'GI.WebKit2.Enums.NetworkProxyModeCustom' /@proxySettings@/ must be
-- a valid t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings'; otherwise, /@proxySettings@/ must be 'P.Nothing'.
-- 
-- /Since: 2.16/
webContextSetNetworkProxySettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> WebKit2.Enums.NetworkProxyMode
    -- ^ /@proxyMode@/: a t'GI.WebKit2.Enums.NetworkProxyMode'
    -> Maybe (WebKit2.NetworkProxySettings.NetworkProxySettings)
    -- ^ /@proxySettings@/: a t'GI.WebKit2.Structs.NetworkProxySettings.NetworkProxySettings', or 'P.Nothing'
    -> m ()
webContextSetNetworkProxySettings context proxyMode proxySettings = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let proxyMode' = (fromIntegral . fromEnum) proxyMode
    maybeProxySettings <- case proxySettings of
        Nothing -> return FP.nullPtr
        Just jProxySettings -> do
            jProxySettings' <- unsafeManagedPtrGetPtr jProxySettings
            return jProxySettings'
    webkit_web_context_set_network_proxy_settings context' proxyMode' maybeProxySettings
    touchManagedPtr context
    whenJust proxySettings touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetNetworkProxySettingsMethodInfo
instance (signature ~ (WebKit2.Enums.NetworkProxyMode -> Maybe (WebKit2.NetworkProxySettings.NetworkProxySettings) -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetNetworkProxySettingsMethodInfo a signature where
    overloadedMethod = webContextSetNetworkProxySettings

instance O.OverloadedMethodInfo WebContextSetNetworkProxySettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetNetworkProxySettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetNetworkProxySettings"
        })


#endif

-- method WebContext::set_preferred_languages
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "languages"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a %NULL-terminated list of language identifiers"
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

foreign import ccall "webkit_web_context_set_preferred_languages" webkit_web_context_set_preferred_languages :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr CString ->                          -- languages : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Set the list of preferred languages.
-- 
-- Set the list of preferred languages, sorted from most desirable
-- to least desirable. The list will be used in the following ways:
-- 
-- * Determining how to build the @Accept-Language@ HTTP header that will be
--   included in the network requests started by the t'GI.WebKit2.Objects.WebContext.WebContext'.
-- * Setting the values of @navigator.language@ and @navigator.languages@.
-- * The first item in the list sets the default locale for JavaScript
--   @Intl@ functions.
webContextSetPreferredLanguages ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Maybe ([T.Text])
    -- ^ /@languages@/: a 'P.Nothing'-terminated list of language identifiers
    -> m ()
webContextSetPreferredLanguages context languages = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeLanguages <- case languages of
        Nothing -> return FP.nullPtr
        Just jLanguages -> do
            jLanguages' <- packZeroTerminatedUTF8CArray jLanguages
            return jLanguages'
    webkit_web_context_set_preferred_languages context' maybeLanguages
    touchManagedPtr context
    mapZeroTerminatedCArray freeMem maybeLanguages
    freeMem maybeLanguages
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetPreferredLanguagesMethodInfo
instance (signature ~ (Maybe ([T.Text]) -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetPreferredLanguagesMethodInfo a signature where
    overloadedMethod = webContextSetPreferredLanguages

instance O.OverloadedMethodInfo WebContextSetPreferredLanguagesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetPreferredLanguages",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetPreferredLanguages"
        })


#endif

-- method WebContext::set_process_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "process_model"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ProcessModel" }
--           , argCType = Just "WebKitProcessModel"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitProcessModel"
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

foreign import ccall "webkit_web_context_set_process_model" webkit_web_context_set_process_model :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CUInt ->                                -- process_model : TInterface (Name {namespace = "WebKit2", name = "ProcessModel"})
    IO ()

{-# DEPRECATED webContextSetProcessModel ["(Since version 2.40)"] #-}
-- | This function previously allowed specifying the process model to use.
-- However, since 2.26, the only allowed process model is
-- 'GI.WebKit2.Enums.ProcessModelMultipleSecondaryProcesses', so this function
-- does nothing.
-- 
-- /Since: 2.4/
webContextSetProcessModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> WebKit2.Enums.ProcessModel
    -- ^ /@processModel@/: a t'GI.WebKit2.Enums.ProcessModel'
    -> m ()
webContextSetProcessModel context processModel = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let processModel' = (fromIntegral . fromEnum) processModel
    webkit_web_context_set_process_model context' processModel'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetProcessModelMethodInfo
instance (signature ~ (WebKit2.Enums.ProcessModel -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetProcessModelMethodInfo a signature where
    overloadedMethod = webContextSetProcessModel

instance O.OverloadedMethodInfo WebContextSetProcessModelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetProcessModel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetProcessModel"
        })


#endif

-- method WebContext::set_sandbox_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--                 { rawDocText = Just "if %TRUE enable sandboxing"
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

foreign import ccall "webkit_web_context_set_sandbox_enabled" webkit_web_context_set_sandbox_enabled :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set whether WebKit subprocesses will be sandboxed.
-- 
-- Set whether WebKit subprocesses will be sandboxed, limiting access to the system.
-- This method __must be called before any web process has been created__,
-- as early as possible in your application. Calling it later is a fatal error.
-- 
-- This is only implemented on Linux and is a no-op otherwise.
-- 
-- /Since: 2.26/
webContextSetSandboxEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Bool
    -- ^ /@enabled@/: if 'P.True' enable sandboxing
    -> m ()
webContextSetSandboxEnabled context enabled = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_web_context_set_sandbox_enabled context' enabled'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetSandboxEnabledMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetSandboxEnabledMethodInfo a signature where
    overloadedMethod = webContextSetSandboxEnabled

instance O.OverloadedMethodInfo WebContextSetSandboxEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetSandboxEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetSandboxEnabled"
        })


#endif

-- method WebContext::set_spell_checking_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_set_spell_checking_enabled" webkit_web_context_set_spell_checking_enabled :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Enable or disable the spell checking feature.
webContextSetSpellCheckingEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Bool
    -- ^ /@enabled@/: Value to be set
    -> m ()
webContextSetSpellCheckingEnabled context enabled = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_web_context_set_spell_checking_enabled context' enabled'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetSpellCheckingEnabledMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetSpellCheckingEnabledMethodInfo a signature where
    overloadedMethod = webContextSetSpellCheckingEnabled

instance O.OverloadedMethodInfo WebContextSetSpellCheckingEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetSpellCheckingEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetSpellCheckingEnabled"
        })


#endif

-- method WebContext::set_spell_checking_languages
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "languages"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a %NULL-terminated list of spell checking languages"
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

foreign import ccall "webkit_web_context_set_spell_checking_languages" webkit_web_context_set_spell_checking_languages :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr CString ->                          -- languages : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Set the list of spell checking languages to be used for spell
-- checking.
-- 
-- The locale string typically is in the form lang_COUNTRY, where lang
-- is an ISO-639 language code, and COUNTRY is an ISO-3166 country code.
-- For instance, sv_FI for Swedish as written in Finland or pt_BR
-- for Portuguese as written in Brazil.
-- 
-- You need to call this function with a valid list of languages at
-- least once in order to properly enable the spell checking feature
-- in WebKit.
webContextSetSpellCheckingLanguages ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> [T.Text]
    -- ^ /@languages@/: a 'P.Nothing'-terminated list of spell checking languages
    -> m ()
webContextSetSpellCheckingLanguages context languages = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    languages' <- packZeroTerminatedUTF8CArray languages
    webkit_web_context_set_spell_checking_languages context' languages'
    touchManagedPtr context
    mapZeroTerminatedCArray freeMem languages'
    freeMem languages'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetSpellCheckingLanguagesMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetSpellCheckingLanguagesMethodInfo a signature where
    overloadedMethod = webContextSetSpellCheckingLanguages

instance O.OverloadedMethodInfo WebContextSetSpellCheckingLanguagesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetSpellCheckingLanguages",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetSpellCheckingLanguages"
        })


#endif

-- method WebContext::set_tls_errors_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_set_tls_errors_policy" webkit_web_context_set_tls_errors_policy :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "WebKit2", name = "TLSErrorsPolicy"})
    IO ()

{-# DEPRECATED webContextSetTlsErrorsPolicy ["(Since version 2.32.)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetTlsErrorsPolicy' instead."] #-}
-- | Set the TLS errors policy of /@context@/ as /@policy@/.
webContextSetTlsErrorsPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> WebKit2.Enums.TLSErrorsPolicy
    -- ^ /@policy@/: a t'GI.WebKit2.Enums.TLSErrorsPolicy'
    -> m ()
webContextSetTlsErrorsPolicy context policy = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let policy' = (fromIntegral . fromEnum) policy
    webkit_web_context_set_tls_errors_policy context' policy'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetTlsErrorsPolicyMethodInfo
instance (signature ~ (WebKit2.Enums.TLSErrorsPolicy -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetTlsErrorsPolicyMethodInfo a signature where
    overloadedMethod = webContextSetTlsErrorsPolicy

instance O.OverloadedMethodInfo WebContextSetTlsErrorsPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetTlsErrorsPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetTlsErrorsPolicy"
        })


#endif

-- method WebContext::set_use_system_appearance_for_scrollbars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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

foreign import ccall "webkit_web_context_set_use_system_appearance_for_scrollbars" webkit_web_context_set_use_system_appearance_for_scrollbars :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED webContextSetUseSystemAppearanceForScrollbars ["(Since version 2.46)"] #-}
-- | Set the [WebContext:useSystemAppearanceForScrollbars]("GI.WebKit2.Objects.WebContext#g:attr:useSystemAppearanceForScrollbars") property.
-- 
-- This is now deprecated and when WebKit is built with Skia this method does nothing.
-- 
-- /Since: 2.30/
webContextSetUseSystemAppearanceForScrollbars ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Bool
    -- ^ /@enabled@/: value to set
    -> m ()
webContextSetUseSystemAppearanceForScrollbars context enabled = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_web_context_set_use_system_appearance_for_scrollbars context' enabled'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetUseSystemAppearanceForScrollbarsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetUseSystemAppearanceForScrollbarsMethodInfo a signature where
    overloadedMethod = webContextSetUseSystemAppearanceForScrollbars

instance O.OverloadedMethodInfo WebContextSetUseSystemAppearanceForScrollbarsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetUseSystemAppearanceForScrollbars",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetUseSystemAppearanceForScrollbars"
        })


#endif

-- method WebContext::set_web_extensions_directory
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "directory"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the directory to add"
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

foreign import ccall "webkit_web_context_set_web_extensions_directory" webkit_web_context_set_web_extensions_directory :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    CString ->                              -- directory : TBasicType TUTF8
    IO ()

-- | Set the directory where WebKit will look for web process extensions.
-- 
-- This method must be called before loading anything in this context,
-- otherwise it will not have any effect. You can connect to
-- [WebContext::initializeWebExtensions]("GI.WebKit2.Objects.WebContext#g:signal:initializeWebExtensions") to call this method
-- before anything is loaded.
webContextSetWebExtensionsDirectory ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> T.Text
    -- ^ /@directory@/: the directory to add
    -> m ()
webContextSetWebExtensionsDirectory context directory = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    directory' <- textToCString directory
    webkit_web_context_set_web_extensions_directory context' directory'
    touchManagedPtr context
    freeMem directory'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetWebExtensionsDirectoryMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetWebExtensionsDirectoryMethodInfo a signature where
    overloadedMethod = webContextSetWebExtensionsDirectory

instance O.OverloadedMethodInfo WebContextSetWebExtensionsDirectoryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetWebExtensionsDirectory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetWebExtensionsDirectory"
        })


#endif

-- method WebContext::set_web_extensions_initialization_user_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebContext"
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
--           { argCName = "user_data"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GVariant" , sinceVersion = Nothing }
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

foreign import ccall "webkit_web_context_set_web_extensions_initialization_user_data" webkit_web_context_set_web_extensions_initialization_user_data :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Ptr GVariant ->                         -- user_data : TVariant
    IO ()

-- | Set user data to be passed to web process extensions on initialization.
-- 
-- The data will be passed to the
-- @/WebKitWebExtensionInitializeWithUserDataFunction/@.
-- This method must be called before loading anything in this context,
-- otherwise it will not have any effect. You can connect to
-- [WebContext::initializeWebExtensions]("GI.WebKit2.Objects.WebContext#g:signal:initializeWebExtensions") to call this method
-- before anything is loaded.
-- 
-- /Since: 2.4/
webContextSetWebExtensionsInitializationUserData ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.WebContext.WebContext'
    -> GVariant
    -- ^ /@userData@/: a t'GVariant'
    -> m ()
webContextSetWebExtensionsInitializationUserData context userData = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    userData' <- unsafeManagedPtrGetPtr userData
    webkit_web_context_set_web_extensions_initialization_user_data context' userData'
    touchManagedPtr context
    touchManagedPtr userData
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetWebExtensionsInitializationUserDataMethodInfo
instance (signature ~ (GVariant -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetWebExtensionsInitializationUserDataMethodInfo a signature where
    overloadedMethod = webContextSetWebExtensionsInitializationUserData

instance O.OverloadedMethodInfo WebContextSetWebExtensionsInitializationUserDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetWebExtensionsInitializationUserData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetWebExtensionsInitializationUserData"
        })


#endif

-- method WebContext::set_web_process_count_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebContext"
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
--           { argCName = "limit"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the maximum number of web processes"
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

foreign import ccall "webkit_web_context_set_web_process_count_limit" webkit_web_context_set_web_process_count_limit :: 
    Ptr WebContext ->                       -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    Word32 ->                               -- limit : TBasicType TUInt
    IO ()

{-# DEPRECATED webContextSetWebProcessCountLimit ["(Since version 2.26)"] #-}
-- | Sets the maximum number of web processes.
-- 
-- Sets the maximum number of web processes that can be created at the same time for the /@context@/.
-- The default value is 0 and means no limit.
-- 
-- This function is now deprecated and does nothing for security reasons.
-- 
-- /Since: 2.10/
webContextSetWebProcessCountLimit ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext'
    -> Word32
    -- ^ /@limit@/: the maximum number of web processes
    -> m ()
webContextSetWebProcessCountLimit context limit = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_web_context_set_web_process_count_limit context' limit
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data WebContextSetWebProcessCountLimitMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsWebContext a) => O.OverloadedMethod WebContextSetWebProcessCountLimitMethodInfo a signature where
    overloadedMethod = webContextSetWebProcessCountLimit

instance O.OverloadedMethodInfo WebContextSetWebProcessCountLimitMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebContext.webContextSetWebProcessCountLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebContext.html#v:webContextSetWebProcessCountLimit"
        })


#endif

-- method WebContext::get_default
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_context_get_default" webkit_web_context_get_default :: 
    IO (Ptr WebContext)

-- | Gets the default web context.
webContextGetDefault ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebContext
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.WebContext.WebContext'
webContextGetDefault  = liftIO $ do
    result <- webkit_web_context_get_default
    checkUnexpectedReturnNULL "webContextGetDefault" result
    result' <- (newObject WebContext) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


