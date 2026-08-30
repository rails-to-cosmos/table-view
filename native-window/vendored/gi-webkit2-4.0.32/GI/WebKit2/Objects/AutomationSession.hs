{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Automation Session.
-- 
-- WebKitAutomationSession represents an automation session of a WebKitWebContext.
-- When a new session is requested, a WebKitAutomationSession is created and the signal
-- WebKitWebContext[automationStarted](#g:signal:automationStarted) is emitted with the WebKitAutomationSession as
-- argument. Then, the automation client can request the session to create a new
-- t'GI.WebKit2.Objects.WebView.WebView' to interact with it. When this happens the signal [AutomationSession::createWebView]("GI.WebKit2.Objects.AutomationSession#g:signal:createWebView")
-- is emitted.
-- 
-- /Since: 2.18/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.AutomationSession
    ( 

-- * Exported types
    AutomationSession(..)                   ,
    IsAutomationSession                     ,
    toAutomationSession                     ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getApplicationInfo]("GI.WebKit2.Objects.AutomationSession#g:method:getApplicationInfo"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getId]("GI.WebKit2.Objects.AutomationSession#g:method:getId"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setApplicationInfo]("GI.WebKit2.Objects.AutomationSession#g:method:setApplicationInfo"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveAutomationSessionMethod          ,
#endif

-- ** getApplicationInfo #method:getApplicationInfo#

#if defined(ENABLE_OVERLOADING)
    AutomationSessionGetApplicationInfoMethodInfo,
#endif
    automationSessionGetApplicationInfo     ,


-- ** getId #method:getId#

#if defined(ENABLE_OVERLOADING)
    AutomationSessionGetIdMethodInfo        ,
#endif
    automationSessionGetId                  ,


-- ** setApplicationInfo #method:setApplicationInfo#

#if defined(ENABLE_OVERLOADING)
    AutomationSessionSetApplicationInfoMethodInfo,
#endif
    automationSessionSetApplicationInfo     ,




 -- * Properties


-- ** id #attr:id#
-- | The session unique identifier.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    AutomationSessionIdPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    automationSessionId                     ,
#endif
    constructAutomationSessionId            ,
    getAutomationSessionId                  ,




 -- * Signals


-- ** createWebView #signal:createWebView#

    AutomationSessionCreateWebViewCallback  ,
#if defined(ENABLE_OVERLOADING)
    AutomationSessionCreateWebViewSignalInfo,
#endif
    afterAutomationSessionCreateWebView     ,
    onAutomationSessionCreateWebView        ,


-- ** willClose #signal:willClose#

    AutomationSessionWillCloseCallback      ,
#if defined(ENABLE_OVERLOADING)
    AutomationSessionWillCloseSignalInfo    ,
#endif
    afterAutomationSessionWillClose         ,
    onAutomationSessionWillClose            ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebContext as WebKit2.WebContext
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
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ApplicationInfo as WebKit2.ApplicationInfo

#endif

-- | Memory-managed wrapper type.
newtype AutomationSession = AutomationSession (SP.ManagedPtr AutomationSession)
    deriving (Eq)

instance SP.ManagedPtrNewtype AutomationSession where
    toManagedPtr (AutomationSession p) = p

foreign import ccall "webkit_automation_session_get_type"
    c_webkit_automation_session_get_type :: IO B.Types.GType

instance B.Types.TypedObject AutomationSession where
    glibType = c_webkit_automation_session_get_type

instance B.Types.GObject AutomationSession

-- | Type class for types which can be safely cast to t'AutomationSession', for instance with `toAutomationSession`.
class (SP.GObject o, O.IsDescendantOf AutomationSession o) => IsAutomationSession o
instance (SP.GObject o, O.IsDescendantOf AutomationSession o) => IsAutomationSession o

instance O.HasParentTypes AutomationSession
type instance O.ParentTypes AutomationSession = '[GObject.Object.Object]

-- | Cast to t'AutomationSession', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toAutomationSession :: (MIO.MonadIO m, IsAutomationSession o) => o -> m AutomationSession
toAutomationSession = MIO.liftIO . B.ManagedPtr.unsafeCastTo AutomationSession

-- | Convert t'AutomationSession' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe AutomationSession) where
    gvalueGType_ = c_webkit_automation_session_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr AutomationSession)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr AutomationSession)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject AutomationSession ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveAutomationSessionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveAutomationSessionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAutomationSessionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAutomationSessionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAutomationSessionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAutomationSessionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAutomationSessionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAutomationSessionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAutomationSessionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAutomationSessionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAutomationSessionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAutomationSessionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAutomationSessionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAutomationSessionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAutomationSessionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAutomationSessionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAutomationSessionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAutomationSessionMethod "getApplicationInfo" o = AutomationSessionGetApplicationInfoMethodInfo
    ResolveAutomationSessionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAutomationSessionMethod "getId" o = AutomationSessionGetIdMethodInfo
    ResolveAutomationSessionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAutomationSessionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAutomationSessionMethod "setApplicationInfo" o = AutomationSessionSetApplicationInfoMethodInfo
    ResolveAutomationSessionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAutomationSessionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAutomationSessionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAutomationSessionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAutomationSessionMethod t AutomationSession, O.OverloadedMethod info AutomationSession p) => OL.IsLabel t (AutomationSession -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveAutomationSessionMethod t AutomationSession, O.OverloadedMethod info AutomationSession p, R.HasField t AutomationSession p) => R.HasField t AutomationSession p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveAutomationSessionMethod t AutomationSession, O.OverloadedMethodInfo info AutomationSession) => OL.IsLabel t (O.MethodProxy info AutomationSession) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal AutomationSession::create-web-view
-- | This signal is emitted when the automation client requests a new
-- browsing context to interact with it. The callback handler should
-- return a t'GI.WebKit2.Objects.WebView.WebView' created with [WebView:isControlledByAutomation]("GI.WebKit2.Objects.WebView#g:attr:isControlledByAutomation")
-- construct property enabled and [WebView:automationPresentationType]("GI.WebKit2.Objects.WebView#g:attr:automationPresentationType") construct
-- property set if needed.
-- 
-- If the signal is emitted with \"tab\" detail, the returned t'GI.WebKit2.Objects.WebView.WebView' should be
-- a new web view added to a new tab of the current browsing context window.
-- If the signal is emitted with \"window\" detail, the returned t'GI.WebKit2.Objects.WebView.WebView' should be
-- a new web view added to a new window.
-- When creating a new web view and there\'s an active browsing context, the new window
-- or tab shouldn\'t be focused.
-- 
-- /Since: 2.18/
type AutomationSessionCreateWebViewCallback =
    IO WebKit2.WebView.WebView
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.WebView.WebView' widget.

type C_AutomationSessionCreateWebViewCallback =
    Ptr AutomationSession ->                -- object
    Ptr () ->                               -- user_data
    IO (Ptr WebKit2.WebView.WebView)

-- | Generate a function pointer callable from C code, from a `C_AutomationSessionCreateWebViewCallback`.
foreign import ccall "wrapper"
    mk_AutomationSessionCreateWebViewCallback :: C_AutomationSessionCreateWebViewCallback -> IO (FunPtr C_AutomationSessionCreateWebViewCallback)

wrap_AutomationSessionCreateWebViewCallback :: 
    GObject a => (a -> AutomationSessionCreateWebViewCallback) ->
    C_AutomationSessionCreateWebViewCallback
wrap_AutomationSessionCreateWebViewCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    result' <- unsafeManagedPtrCastPtr result
    return result'


-- | Connect a signal handler for the [createWebView](#signal:createWebView) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' automationSession #createWebView callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@create-web-view::detail@” instead.
-- 
onAutomationSessionCreateWebView :: (IsAutomationSession a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => AutomationSessionCreateWebViewCallback) -> m SignalHandlerId
onAutomationSessionCreateWebView obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AutomationSessionCreateWebViewCallback wrapped
    wrapped'' <- mk_AutomationSessionCreateWebViewCallback wrapped'
    connectSignalFunPtr obj "create-web-view" wrapped'' SignalConnectBefore detail

-- | Connect a signal handler for the [createWebView](#signal:createWebView) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' automationSession #createWebView callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@create-web-view::detail@” instead.
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterAutomationSessionCreateWebView :: (IsAutomationSession a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => AutomationSessionCreateWebViewCallback) -> m SignalHandlerId
afterAutomationSessionCreateWebView obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AutomationSessionCreateWebViewCallback wrapped
    wrapped'' <- mk_AutomationSessionCreateWebViewCallback wrapped'
    connectSignalFunPtr obj "create-web-view" wrapped'' SignalConnectAfter detail


#if defined(ENABLE_OVERLOADING)
data AutomationSessionCreateWebViewSignalInfo
instance SignalInfo AutomationSessionCreateWebViewSignalInfo where
    type HaskellCallbackType AutomationSessionCreateWebViewSignalInfo = AutomationSessionCreateWebViewCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AutomationSessionCreateWebViewCallback cb
        cb'' <- mk_AutomationSessionCreateWebViewCallback cb'
        connectSignalFunPtr obj "create-web-view" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession::create-web-view"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#g:signal:createWebView"})

#endif

-- signal AutomationSession::will-close
-- | This signal is emitted when the given automation session is about to finish.
-- It allows clients to perform any cleanup tasks before the session is destroyed.
-- 
-- /Since: 2.46/
type AutomationSessionWillCloseCallback =
    IO ()

type C_AutomationSessionWillCloseCallback =
    Ptr AutomationSession ->                -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AutomationSessionWillCloseCallback`.
foreign import ccall "wrapper"
    mk_AutomationSessionWillCloseCallback :: C_AutomationSessionWillCloseCallback -> IO (FunPtr C_AutomationSessionWillCloseCallback)

wrap_AutomationSessionWillCloseCallback :: 
    GObject a => (a -> AutomationSessionWillCloseCallback) ->
    C_AutomationSessionWillCloseCallback
wrap_AutomationSessionWillCloseCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [willClose](#signal:willClose) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' automationSession #willClose callback
-- @
-- 
-- 
onAutomationSessionWillClose :: (IsAutomationSession a, MonadIO m) => a -> ((?self :: a) => AutomationSessionWillCloseCallback) -> m SignalHandlerId
onAutomationSessionWillClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AutomationSessionWillCloseCallback wrapped
    wrapped'' <- mk_AutomationSessionWillCloseCallback wrapped'
    connectSignalFunPtr obj "will-close" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [willClose](#signal:willClose) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' automationSession #willClose callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterAutomationSessionWillClose :: (IsAutomationSession a, MonadIO m) => a -> ((?self :: a) => AutomationSessionWillCloseCallback) -> m SignalHandlerId
afterAutomationSessionWillClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_AutomationSessionWillCloseCallback wrapped
    wrapped'' <- mk_AutomationSessionWillCloseCallback wrapped'
    connectSignalFunPtr obj "will-close" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data AutomationSessionWillCloseSignalInfo
instance SignalInfo AutomationSessionWillCloseSignalInfo where
    type HaskellCallbackType AutomationSessionWillCloseSignalInfo = AutomationSessionWillCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AutomationSessionWillCloseCallback cb
        cb'' <- mk_AutomationSessionWillCloseCallback cb'
        connectSignalFunPtr obj "will-close" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession::will-close"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#g:signal:willClose"})

#endif

-- VVV Prop "id"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' automationSession #id
-- @
getAutomationSessionId :: (MonadIO m, IsAutomationSession o) => o -> m T.Text
getAutomationSessionId obj = MIO.liftIO $ checkUnexpectedNothing "getAutomationSessionId" $ B.Properties.getObjectPropertyString obj "id"

-- | Construct a t'GValueConstruct' with valid value for the “@id@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAutomationSessionId :: (IsAutomationSession o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructAutomationSessionId val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "id" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data AutomationSessionIdPropertyInfo
instance AttrInfo AutomationSessionIdPropertyInfo where
    type AttrAllowedOps AutomationSessionIdPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint AutomationSessionIdPropertyInfo = IsAutomationSession
    type AttrSetTypeConstraint AutomationSessionIdPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint AutomationSessionIdPropertyInfo = (~) T.Text
    type AttrTransferType AutomationSessionIdPropertyInfo = T.Text
    type AttrGetType AutomationSessionIdPropertyInfo = T.Text
    type AttrLabel AutomationSessionIdPropertyInfo = "id"
    type AttrOrigin AutomationSessionIdPropertyInfo = AutomationSession
    attrGet = getAutomationSessionId
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructAutomationSessionId
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession.id"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#g:attr:id"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AutomationSession
type instance O.AttributeList AutomationSession = AutomationSessionAttributeList
type AutomationSessionAttributeList = ('[ '("id", AutomationSessionIdPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
automationSessionId :: AttrLabelProxy "id"
automationSessionId = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList AutomationSession = AutomationSessionSignalList
type AutomationSessionSignalList = ('[ '("createWebView", AutomationSessionCreateWebViewSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("willClose", AutomationSessionWillCloseSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method AutomationSession::get_application_info
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "session"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AutomationSession" }
--           , argCType = Just "WebKitAutomationSession*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAutomationSession"
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
--                  Name { namespace = "WebKit2" , name = "ApplicationInfo" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_automation_session_get_application_info" webkit_automation_session_get_application_info :: 
    Ptr AutomationSession ->                -- session : TInterface (Name {namespace = "WebKit2", name = "AutomationSession"})
    IO (Ptr WebKit2.ApplicationInfo.ApplicationInfo)

-- | Get the the previously set t'GI.WebKit2.Objects.AutomationSession.AutomationSession'.
-- 
-- Get the t'GI.WebKit2.Objects.AutomationSession.AutomationSession' previously set with 'GI.WebKit2.Objects.AutomationSession.automationSessionSetApplicationInfo'.
-- 
-- /Since: 2.18/
automationSessionGetApplicationInfo ::
    (B.CallStack.HasCallStack, MonadIO m, IsAutomationSession a) =>
    a
    -- ^ /@session@/: a t'GI.WebKit2.Objects.AutomationSession.AutomationSession'
    -> m (Maybe WebKit2.ApplicationInfo.ApplicationInfo)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.AutomationSession.AutomationSession' of /@session@/, or 'P.Nothing' if no one has been set.
automationSessionGetApplicationInfo session = liftIO $ do
    session' <- unsafeManagedPtrCastPtr session
    result <- webkit_automation_session_get_application_info session'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed WebKit2.ApplicationInfo.ApplicationInfo) result'
        return result''
    touchManagedPtr session
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data AutomationSessionGetApplicationInfoMethodInfo
instance (signature ~ (m (Maybe WebKit2.ApplicationInfo.ApplicationInfo)), MonadIO m, IsAutomationSession a) => O.OverloadedMethod AutomationSessionGetApplicationInfoMethodInfo a signature where
    overloadedMethod = automationSessionGetApplicationInfo

instance O.OverloadedMethodInfo AutomationSessionGetApplicationInfoMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession.automationSessionGetApplicationInfo",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#v:automationSessionGetApplicationInfo"
        })


#endif

-- method AutomationSession::get_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "session"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AutomationSession" }
--           , argCType = Just "WebKitAutomationSession*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAutomationSession"
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

foreign import ccall "webkit_automation_session_get_id" webkit_automation_session_get_id :: 
    Ptr AutomationSession ->                -- session : TInterface (Name {namespace = "WebKit2", name = "AutomationSession"})
    IO CString

-- | Get the unique identifier of a t'GI.WebKit2.Objects.AutomationSession.AutomationSession'
-- 
-- /Since: 2.18/
automationSessionGetId ::
    (B.CallStack.HasCallStack, MonadIO m, IsAutomationSession a) =>
    a
    -- ^ /@session@/: a t'GI.WebKit2.Objects.AutomationSession.AutomationSession'
    -> m T.Text
    -- ^ __Returns:__ the unique identifier of /@session@/
automationSessionGetId session = liftIO $ do
    session' <- unsafeManagedPtrCastPtr session
    result <- webkit_automation_session_get_id session'
    checkUnexpectedReturnNULL "automationSessionGetId" result
    result' <- cstringToText result
    touchManagedPtr session
    return result'

#if defined(ENABLE_OVERLOADING)
data AutomationSessionGetIdMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsAutomationSession a) => O.OverloadedMethod AutomationSessionGetIdMethodInfo a signature where
    overloadedMethod = automationSessionGetId

instance O.OverloadedMethodInfo AutomationSessionGetIdMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession.automationSessionGetId",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#v:automationSessionGetId"
        })


#endif

-- method AutomationSession::set_application_info
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "session"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "AutomationSession" }
--           , argCType = Just "WebKitAutomationSession*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitAutomationSession"
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
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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

foreign import ccall "webkit_automation_session_set_application_info" webkit_automation_session_set_application_info :: 
    Ptr AutomationSession ->                -- session : TInterface (Name {namespace = "WebKit2", name = "AutomationSession"})
    Ptr WebKit2.ApplicationInfo.ApplicationInfo -> -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    IO ()

-- | Set the application information to /@session@/.
-- 
-- This information will be used by the driver service
-- to match the requested capabilities with the actual application information. If this information
-- is not provided to the session when a new automation session is requested, the creation might fail
-- if the client requested a specific browser name or version. This will not have any effect when called
-- after the automation session has been fully created, so this must be called in the callback of
-- [WebContext::automationStarted]("GI.WebKit2.Objects.WebContext#g:signal:automationStarted") signal.
-- 
-- /Since: 2.18/
automationSessionSetApplicationInfo ::
    (B.CallStack.HasCallStack, MonadIO m, IsAutomationSession a) =>
    a
    -- ^ /@session@/: a t'GI.WebKit2.Objects.AutomationSession.AutomationSession'
    -> WebKit2.ApplicationInfo.ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> m ()
automationSessionSetApplicationInfo session info = liftIO $ do
    session' <- unsafeManagedPtrCastPtr session
    info' <- unsafeManagedPtrGetPtr info
    webkit_automation_session_set_application_info session' info'
    touchManagedPtr session
    touchManagedPtr info
    return ()

#if defined(ENABLE_OVERLOADING)
data AutomationSessionSetApplicationInfoMethodInfo
instance (signature ~ (WebKit2.ApplicationInfo.ApplicationInfo -> m ()), MonadIO m, IsAutomationSession a) => O.OverloadedMethod AutomationSessionSetApplicationInfoMethodInfo a signature where
    overloadedMethod = automationSessionSetApplicationInfo

instance O.OverloadedMethodInfo AutomationSessionSetApplicationInfoMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.AutomationSession.automationSessionSetApplicationInfo",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-AutomationSession.html#v:automationSessionSetApplicationInfo"
        })


#endif


