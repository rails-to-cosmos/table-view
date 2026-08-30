{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a URI scheme request.
-- 
-- If you register a particular URI scheme in a t'GI.WebKit2.Objects.WebContext.WebContext',
-- using 'GI.WebKit2.Objects.WebContext.webContextRegisterUriScheme', you have to provide
-- a t'GI.WebKit2.Callbacks.URISchemeRequestCallback'. After that, when a URI request
-- is made with that particular scheme, your callback will be
-- called. There you will be able to access properties such as the
-- scheme, the URI and path, and the t'GI.WebKit2.Objects.WebView.WebView' that initiated the
-- request, and also finish the request with
-- 'GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinish'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.URISchemeRequest
    ( 

-- * Exported types
    URISchemeRequest(..)                    ,
    IsURISchemeRequest                      ,
    toURISchemeRequest                      ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [finish]("GI.WebKit2.Objects.URISchemeRequest#g:method:finish"), [finishError]("GI.WebKit2.Objects.URISchemeRequest#g:method:finishError"), [finishWithResponse]("GI.WebKit2.Objects.URISchemeRequest#g:method:finishWithResponse"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getHttpBody]("GI.WebKit2.Objects.URISchemeRequest#g:method:getHttpBody"), [getHttpHeaders]("GI.WebKit2.Objects.URISchemeRequest#g:method:getHttpHeaders"), [getHttpMethod]("GI.WebKit2.Objects.URISchemeRequest#g:method:getHttpMethod"), [getPath]("GI.WebKit2.Objects.URISchemeRequest#g:method:getPath"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getScheme]("GI.WebKit2.Objects.URISchemeRequest#g:method:getScheme"), [getUri]("GI.WebKit2.Objects.URISchemeRequest#g:method:getUri"), [getWebView]("GI.WebKit2.Objects.URISchemeRequest#g:method:getWebView").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveURISchemeRequestMethod           ,
#endif

-- ** finish #method:finish#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestFinishMethodInfo        ,
#endif
    uRISchemeRequestFinish                  ,


-- ** finishError #method:finishError#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestFinishErrorMethodInfo   ,
#endif
    uRISchemeRequestFinishError             ,


-- ** finishWithResponse #method:finishWithResponse#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestFinishWithResponseMethodInfo,
#endif
    uRISchemeRequestFinishWithResponse      ,


-- ** getHttpBody #method:getHttpBody#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetHttpBodyMethodInfo   ,
#endif
    uRISchemeRequestGetHttpBody             ,


-- ** getHttpHeaders #method:getHttpHeaders#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetHttpHeadersMethodInfo,
#endif
    uRISchemeRequestGetHttpHeaders          ,


-- ** getHttpMethod #method:getHttpMethod#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetHttpMethodMethodInfo ,
#endif
    uRISchemeRequestGetHttpMethod           ,


-- ** getPath #method:getPath#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetPathMethodInfo       ,
#endif
    uRISchemeRequestGetPath                 ,


-- ** getScheme #method:getScheme#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetSchemeMethodInfo     ,
#endif
    uRISchemeRequestGetScheme               ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetUriMethodInfo        ,
#endif
    uRISchemeRequestGetUri                  ,


-- ** getWebView #method:getWebView#

#if defined(ENABLE_OVERLOADING)
    URISchemeRequestGetWebViewMethodInfo    ,
#endif
    uRISchemeRequestGetWebView              ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URISchemeResponse as WebKit2.URISchemeResponse
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
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URISchemeResponse as WebKit2.URISchemeResponse
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView

#endif

-- | Memory-managed wrapper type.
newtype URISchemeRequest = URISchemeRequest (SP.ManagedPtr URISchemeRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype URISchemeRequest where
    toManagedPtr (URISchemeRequest p) = p

foreign import ccall "webkit_uri_scheme_request_get_type"
    c_webkit_uri_scheme_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject URISchemeRequest where
    glibType = c_webkit_uri_scheme_request_get_type

instance B.Types.GObject URISchemeRequest

-- | Type class for types which can be safely cast to t'URISchemeRequest', for instance with `toURISchemeRequest`.
class (SP.GObject o, O.IsDescendantOf URISchemeRequest o) => IsURISchemeRequest o
instance (SP.GObject o, O.IsDescendantOf URISchemeRequest o) => IsURISchemeRequest o

instance O.HasParentTypes URISchemeRequest
type instance O.ParentTypes URISchemeRequest = '[GObject.Object.Object]

-- | Cast to t'URISchemeRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toURISchemeRequest :: (MIO.MonadIO m, IsURISchemeRequest o) => o -> m URISchemeRequest
toURISchemeRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo URISchemeRequest

-- | Convert t'URISchemeRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe URISchemeRequest) where
    gvalueGType_ = c_webkit_uri_scheme_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr URISchemeRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr URISchemeRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject URISchemeRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveURISchemeRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveURISchemeRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveURISchemeRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveURISchemeRequestMethod "finish" o = URISchemeRequestFinishMethodInfo
    ResolveURISchemeRequestMethod "finishError" o = URISchemeRequestFinishErrorMethodInfo
    ResolveURISchemeRequestMethod "finishWithResponse" o = URISchemeRequestFinishWithResponseMethodInfo
    ResolveURISchemeRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveURISchemeRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveURISchemeRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveURISchemeRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveURISchemeRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveURISchemeRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveURISchemeRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveURISchemeRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveURISchemeRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveURISchemeRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveURISchemeRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveURISchemeRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveURISchemeRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveURISchemeRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveURISchemeRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveURISchemeRequestMethod "getHttpBody" o = URISchemeRequestGetHttpBodyMethodInfo
    ResolveURISchemeRequestMethod "getHttpHeaders" o = URISchemeRequestGetHttpHeadersMethodInfo
    ResolveURISchemeRequestMethod "getHttpMethod" o = URISchemeRequestGetHttpMethodMethodInfo
    ResolveURISchemeRequestMethod "getPath" o = URISchemeRequestGetPathMethodInfo
    ResolveURISchemeRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveURISchemeRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveURISchemeRequestMethod "getScheme" o = URISchemeRequestGetSchemeMethodInfo
    ResolveURISchemeRequestMethod "getUri" o = URISchemeRequestGetUriMethodInfo
    ResolveURISchemeRequestMethod "getWebView" o = URISchemeRequestGetWebViewMethodInfo
    ResolveURISchemeRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveURISchemeRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveURISchemeRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveURISchemeRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveURISchemeRequestMethod t URISchemeRequest, O.OverloadedMethod info URISchemeRequest p) => OL.IsLabel t (URISchemeRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveURISchemeRequestMethod t URISchemeRequest, O.OverloadedMethod info URISchemeRequest p, R.HasField t URISchemeRequest p) => R.HasField t URISchemeRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveURISchemeRequestMethod t URISchemeRequest, O.OverloadedMethodInfo info URISchemeRequest) => OL.IsLabel t (O.MethodProxy info URISchemeRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList URISchemeRequest
type instance O.AttributeList URISchemeRequest = URISchemeRequestAttributeList
type URISchemeRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList URISchemeRequest = URISchemeRequestSignalList
type URISchemeRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method URISchemeRequest::finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
--           { argCName = "stream"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "InputStream" }
--           , argCType = Just "GInputStream*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GInputStream to read the contents of the request"
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
--           { argCName = "stream_length"
--           , argType = TBasicType TInt64
--           , argCType = Just "gint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the stream or -1 if not known"
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
--           { argCName = "content_type"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the content type of the stream or %NULL if not known"
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

foreign import ccall "webkit_uri_scheme_request_finish" webkit_uri_scheme_request_finish :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    Ptr Gio.InputStream.InputStream ->      -- stream : TInterface (Name {namespace = "Gio", name = "InputStream"})
    Int64 ->                                -- stream_length : TBasicType TInt64
    CString ->                              -- content_type : TBasicType TUTF8
    IO ()

-- | Finish a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest' by setting the contents of the request and its mime type.
uRISchemeRequestFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a, Gio.InputStream.IsInputStream b) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> b
    -- ^ /@stream@/: a t'GI.Gio.Objects.InputStream.InputStream' to read the contents of the request
    -> Int64
    -- ^ /@streamLength@/: the length of the stream or -1 if not known
    -> Maybe (T.Text)
    -- ^ /@contentType@/: the content type of the stream or 'P.Nothing' if not known
    -> m ()
uRISchemeRequestFinish request stream streamLength contentType = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    stream' <- unsafeManagedPtrCastPtr stream
    maybeContentType <- case contentType of
        Nothing -> return FP.nullPtr
        Just jContentType -> do
            jContentType' <- textToCString jContentType
            return jContentType'
    webkit_uri_scheme_request_finish request' stream' streamLength maybeContentType
    touchManagedPtr request
    touchManagedPtr stream
    freeMem maybeContentType
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestFinishMethodInfo
instance (signature ~ (b -> Int64 -> Maybe (T.Text) -> m ()), MonadIO m, IsURISchemeRequest a, Gio.InputStream.IsInputStream b) => O.OverloadedMethod URISchemeRequestFinishMethodInfo a signature where
    overloadedMethod = uRISchemeRequestFinish

instance O.OverloadedMethodInfo URISchemeRequestFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestFinish"
        })


#endif

-- method URISchemeRequest::finish_error
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
--           { argCName = "error"
--           , argType = TError
--           , argCType = Just "GError*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GError that will be passed to the #WebKitWebView"
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

foreign import ccall "webkit_uri_scheme_request_finish_error" webkit_uri_scheme_request_finish_error :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    Ptr GError ->                           -- error : TError
    IO ()

-- | Finish a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest' with a t'GError'.
-- 
-- /Since: 2.2/
uRISchemeRequestFinishError ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> GError
    -- ^ /@error@/: a t'GError' that will be passed to the t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
uRISchemeRequestFinishError request error_ = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    error_' <- unsafeManagedPtrGetPtr error_
    webkit_uri_scheme_request_finish_error request' error_'
    touchManagedPtr request
    touchManagedPtr error_
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestFinishErrorMethodInfo
instance (signature ~ (GError -> m ()), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestFinishErrorMethodInfo a signature where
    overloadedMethod = uRISchemeRequestFinishError

instance O.OverloadedMethodInfo URISchemeRequestFinishErrorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinishError",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestFinishError"
        })


#endif

-- method URISchemeRequest::finish_with_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
--           { argCName = "response"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeResponse" }
--           , argCType = Just "WebKitURISchemeResponse*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeResponse"
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

foreign import ccall "webkit_uri_scheme_request_finish_with_response" webkit_uri_scheme_request_finish_with_response :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    Ptr WebKit2.URISchemeResponse.URISchemeResponse -> -- response : TInterface (Name {namespace = "WebKit2", name = "URISchemeResponse"})
    IO ()

-- | Finish a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest' by returning a t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
-- 
-- /Since: 2.36/
uRISchemeRequestFinishWithResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a, WebKit2.URISchemeResponse.IsURISchemeResponse b) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> b
    -- ^ /@response@/: a t'GI.WebKit2.Objects.URISchemeResponse.URISchemeResponse'
    -> m ()
uRISchemeRequestFinishWithResponse request response = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    response' <- unsafeManagedPtrCastPtr response
    webkit_uri_scheme_request_finish_with_response request' response'
    touchManagedPtr request
    touchManagedPtr response
    return ()

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestFinishWithResponseMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsURISchemeRequest a, WebKit2.URISchemeResponse.IsURISchemeResponse b) => O.OverloadedMethod URISchemeRequestFinishWithResponseMethodInfo a signature where
    overloadedMethod = uRISchemeRequestFinishWithResponse

instance O.OverloadedMethodInfo URISchemeRequestFinishWithResponseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestFinishWithResponse",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestFinishWithResponse"
        })


#endif

-- method URISchemeRequest::get_http_body
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "InputStream" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_scheme_request_get_http_body" webkit_uri_scheme_request_get_http_body :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO (Ptr Gio.InputStream.InputStream)

-- | Get the request body.
-- 
-- /Since: 2.40/
uRISchemeRequestGetHttpBody ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m Gio.InputStream.InputStream
    -- ^ __Returns:__ (nullable): the body of the /@request@/.
uRISchemeRequestGetHttpBody request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_http_body request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetHttpBody" result
    result' <- (wrapObject Gio.InputStream.InputStream) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetHttpBodyMethodInfo
instance (signature ~ (m Gio.InputStream.InputStream), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetHttpBodyMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetHttpBody

instance O.OverloadedMethodInfo URISchemeRequestGetHttpBodyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetHttpBody",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetHttpBody"
        })


#endif

-- method URISchemeRequest::get_http_headers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
--               (TInterface Name { namespace = "Soup" , name = "MessageHeaders" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_scheme_request_get_http_headers" webkit_uri_scheme_request_get_http_headers :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO (Ptr Soup.MessageHeaders.MessageHeaders)

-- | Get the t'GI.Soup.Structs.MessageHeaders.MessageHeaders' of the request.
-- 
-- /Since: 2.36/
uRISchemeRequestGetHttpHeaders ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m Soup.MessageHeaders.MessageHeaders
    -- ^ __Returns:__ the t'GI.Soup.Structs.MessageHeaders.MessageHeaders' of the /@request@/.
uRISchemeRequestGetHttpHeaders request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_http_headers request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetHttpHeaders" result
    result' <- (newBoxed Soup.MessageHeaders.MessageHeaders) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetHttpHeadersMethodInfo
instance (signature ~ (m Soup.MessageHeaders.MessageHeaders), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetHttpHeadersMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetHttpHeaders

instance O.OverloadedMethodInfo URISchemeRequestGetHttpHeadersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetHttpHeaders",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetHttpHeaders"
        })


#endif

-- method URISchemeRequest::get_http_method
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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

foreign import ccall "webkit_uri_scheme_request_get_http_method" webkit_uri_scheme_request_get_http_method :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO CString

-- | Get the HTTP method of the /@request@/.
-- 
-- /Since: 2.36/
uRISchemeRequestGetHttpMethod ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m T.Text
    -- ^ __Returns:__ the HTTP method of the /@request@/
uRISchemeRequestGetHttpMethod request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_http_method request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetHttpMethod" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetHttpMethodMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetHttpMethodMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetHttpMethod

instance O.OverloadedMethodInfo URISchemeRequestGetHttpMethodMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetHttpMethod",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetHttpMethod"
        })


#endif

-- method URISchemeRequest::get_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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

foreign import ccall "webkit_uri_scheme_request_get_path" webkit_uri_scheme_request_get_path :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO CString

-- | Get the URI path of /@request@/.
uRISchemeRequestGetPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m T.Text
    -- ^ __Returns:__ the URI path of /@request@/
uRISchemeRequestGetPath request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_path request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetPath" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetPathMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetPathMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetPath

instance O.OverloadedMethodInfo URISchemeRequestGetPathMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetPath",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetPath"
        })


#endif

-- method URISchemeRequest::get_scheme
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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

foreign import ccall "webkit_uri_scheme_request_get_scheme" webkit_uri_scheme_request_get_scheme :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO CString

-- | Get the URI scheme of /@request@/.
uRISchemeRequestGetScheme ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m T.Text
    -- ^ __Returns:__ the URI scheme of /@request@/
uRISchemeRequestGetScheme request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_scheme request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetScheme" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetSchemeMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetSchemeMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetScheme

instance O.OverloadedMethodInfo URISchemeRequestGetSchemeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetScheme",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetScheme"
        })


#endif

-- method URISchemeRequest::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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

foreign import ccall "webkit_uri_scheme_request_get_uri" webkit_uri_scheme_request_get_uri :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO CString

-- | Get the URI of /@request@/.
uRISchemeRequestGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m T.Text
    -- ^ __Returns:__ the full URI of /@request@/
uRISchemeRequestGetUri request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_uri request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetUri" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetUriMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetUriMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetUri

instance O.OverloadedMethodInfo URISchemeRequestGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetUri"
        })


#endif

-- method URISchemeRequest::get_web_view
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "URISchemeRequest" }
--           , argCType = Just "WebKitURISchemeRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURISchemeRequest"
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
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_uri_scheme_request_get_web_view" webkit_uri_scheme_request_get_web_view :: 
    Ptr URISchemeRequest ->                 -- request : TInterface (Name {namespace = "WebKit2", name = "URISchemeRequest"})
    IO (Ptr WebKit2.WebView.WebView)

-- | Get the t'GI.WebKit2.Objects.WebView.WebView' that initiated the request.
uRISchemeRequestGetWebView ::
    (B.CallStack.HasCallStack, MonadIO m, IsURISchemeRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> m WebKit2.WebView.WebView
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebView.WebView' that initiated /@request@/.
uRISchemeRequestGetWebView request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_uri_scheme_request_get_web_view request'
    checkUnexpectedReturnNULL "uRISchemeRequestGetWebView" result
    result' <- (newObject WebKit2.WebView.WebView) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data URISchemeRequestGetWebViewMethodInfo
instance (signature ~ (m WebKit2.WebView.WebView), MonadIO m, IsURISchemeRequest a) => O.OverloadedMethod URISchemeRequestGetWebViewMethodInfo a signature where
    overloadedMethod = uRISchemeRequestGetWebView

instance O.OverloadedMethodInfo URISchemeRequestGetWebViewMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.URISchemeRequest.uRISchemeRequestGetWebView",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-URISchemeRequest.html#v:uRISchemeRequestGetWebView"
        })


#endif


