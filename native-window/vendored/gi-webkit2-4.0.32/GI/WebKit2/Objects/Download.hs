{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Object used to communicate with the application when downloading.
-- 
-- t'GI.WebKit2.Objects.Download.Download' carries information about a download request and
-- response, including a t'GI.WebKit2.Objects.URIRequest.URIRequest' and a t'GI.WebKit2.Objects.URIResponse.URIResponse'
-- objects. The application may use this object to control the
-- download process, or to simply figure out what is to be downloaded,
-- and handle the download process itself.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.Download
    ( 

-- * Exported types
    Download(..)                            ,
    IsDownload                              ,
    toDownload                              ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [cancel]("GI.WebKit2.Objects.Download#g:method:cancel"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAllowOverwrite]("GI.WebKit2.Objects.Download#g:method:getAllowOverwrite"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDestination]("GI.WebKit2.Objects.Download#g:method:getDestination"), [getElapsedTime]("GI.WebKit2.Objects.Download#g:method:getElapsedTime"), [getEstimatedProgress]("GI.WebKit2.Objects.Download#g:method:getEstimatedProgress"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getReceivedDataLength]("GI.WebKit2.Objects.Download#g:method:getReceivedDataLength"), [getRequest]("GI.WebKit2.Objects.Download#g:method:getRequest"), [getResponse]("GI.WebKit2.Objects.Download#g:method:getResponse"), [getWebView]("GI.WebKit2.Objects.Download#g:method:getWebView").
-- 
-- ==== Setters
-- [setAllowOverwrite]("GI.WebKit2.Objects.Download#g:method:setAllowOverwrite"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setDestination]("GI.WebKit2.Objects.Download#g:method:setDestination"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveDownloadMethod                   ,
#endif

-- ** cancel #method:cancel#

#if defined(ENABLE_OVERLOADING)
    DownloadCancelMethodInfo                ,
#endif
    downloadCancel                          ,


-- ** getAllowOverwrite #method:getAllowOverwrite#

#if defined(ENABLE_OVERLOADING)
    DownloadGetAllowOverwriteMethodInfo     ,
#endif
    downloadGetAllowOverwrite               ,


-- ** getDestination #method:getDestination#

#if defined(ENABLE_OVERLOADING)
    DownloadGetDestinationMethodInfo        ,
#endif
    downloadGetDestination                  ,


-- ** getElapsedTime #method:getElapsedTime#

#if defined(ENABLE_OVERLOADING)
    DownloadGetElapsedTimeMethodInfo        ,
#endif
    downloadGetElapsedTime                  ,


-- ** getEstimatedProgress #method:getEstimatedProgress#

#if defined(ENABLE_OVERLOADING)
    DownloadGetEstimatedProgressMethodInfo  ,
#endif
    downloadGetEstimatedProgress            ,


-- ** getReceivedDataLength #method:getReceivedDataLength#

#if defined(ENABLE_OVERLOADING)
    DownloadGetReceivedDataLengthMethodInfo ,
#endif
    downloadGetReceivedDataLength           ,


-- ** getRequest #method:getRequest#

#if defined(ENABLE_OVERLOADING)
    DownloadGetRequestMethodInfo            ,
#endif
    downloadGetRequest                      ,


-- ** getResponse #method:getResponse#

#if defined(ENABLE_OVERLOADING)
    DownloadGetResponseMethodInfo           ,
#endif
    downloadGetResponse                     ,


-- ** getWebView #method:getWebView#

#if defined(ENABLE_OVERLOADING)
    DownloadGetWebViewMethodInfo            ,
#endif
    downloadGetWebView                      ,


-- ** setAllowOverwrite #method:setAllowOverwrite#

#if defined(ENABLE_OVERLOADING)
    DownloadSetAllowOverwriteMethodInfo     ,
#endif
    downloadSetAllowOverwrite               ,


-- ** setDestination #method:setDestination#

#if defined(ENABLE_OVERLOADING)
    DownloadSetDestinationMethodInfo        ,
#endif
    downloadSetDestination                  ,




 -- * Properties


-- ** allowOverwrite #attr:allowOverwrite#
-- | Whether or not the download is allowed to overwrite an existing file on
-- disk. If this property is 'P.False' and the destination already exists,
-- the download will fail.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    DownloadAllowOverwritePropertyInfo      ,
#endif
    constructDownloadAllowOverwrite         ,
#if defined(ENABLE_OVERLOADING)
    downloadAllowOverwrite                  ,
#endif
    getDownloadAllowOverwrite               ,
    setDownloadAllowOverwrite               ,


-- ** destination #attr:destination#
-- | The local path to where the download will be saved.

#if defined(ENABLE_OVERLOADING)
    DownloadDestinationPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    downloadDestination                     ,
#endif
    getDownloadDestination                  ,


-- ** estimatedProgress #attr:estimatedProgress#
-- | An estimate of the percent completion for the download operation.
-- This value will range from 0.0 to 1.0. The value is an estimate
-- based on the total number of bytes expected to be received for
-- a download.
-- If you need a more accurate progress information you can connect to
-- [Download::receivedData]("GI.WebKit2.Objects.Download#g:signal:receivedData") signal to track the progress.

#if defined(ENABLE_OVERLOADING)
    DownloadEstimatedProgressPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    downloadEstimatedProgress               ,
#endif
    getDownloadEstimatedProgress            ,


-- ** response #attr:response#
-- | The t'GI.WebKit2.Objects.URIResponse.URIResponse' associated with this download.

#if defined(ENABLE_OVERLOADING)
    DownloadResponsePropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    downloadResponse                        ,
#endif
    getDownloadResponse                     ,




 -- * Signals


-- ** createdDestination #signal:createdDestination#

    DownloadCreatedDestinationCallback      ,
#if defined(ENABLE_OVERLOADING)
    DownloadCreatedDestinationSignalInfo    ,
#endif
    afterDownloadCreatedDestination         ,
    onDownloadCreatedDestination            ,


-- ** decideDestination #signal:decideDestination#

    DownloadDecideDestinationCallback       ,
#if defined(ENABLE_OVERLOADING)
    DownloadDecideDestinationSignalInfo     ,
#endif
    afterDownloadDecideDestination          ,
    onDownloadDecideDestination             ,


-- ** failed #signal:failed#

    DownloadFailedCallback                  ,
#if defined(ENABLE_OVERLOADING)
    DownloadFailedSignalInfo                ,
#endif
    afterDownloadFailed                     ,
    onDownloadFailed                        ,


-- ** finished #signal:finished#

    DownloadFinishedCallback                ,
#if defined(ENABLE_OVERLOADING)
    DownloadFinishedSignalInfo              ,
#endif
    afterDownloadFinished                   ,
    onDownloadFinished                      ,


-- ** receivedData #signal:receivedData#

    DownloadReceivedDataCallback            ,
#if defined(ENABLE_OVERLOADING)
    DownloadReceivedDataSignalInfo          ,
#endif
    afterDownloadReceivedData               ,
    onDownloadReceivedData                  ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView

#endif

-- | Memory-managed wrapper type.
newtype Download = Download (SP.ManagedPtr Download)
    deriving (Eq)

instance SP.ManagedPtrNewtype Download where
    toManagedPtr (Download p) = p

foreign import ccall "webkit_download_get_type"
    c_webkit_download_get_type :: IO B.Types.GType

instance B.Types.TypedObject Download where
    glibType = c_webkit_download_get_type

instance B.Types.GObject Download

-- | Type class for types which can be safely cast to t'Download', for instance with `toDownload`.
class (SP.GObject o, O.IsDescendantOf Download o) => IsDownload o
instance (SP.GObject o, O.IsDescendantOf Download o) => IsDownload o

instance O.HasParentTypes Download
type instance O.ParentTypes Download = '[GObject.Object.Object]

-- | Cast to t'Download', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toDownload :: (MIO.MonadIO m, IsDownload o) => o -> m Download
toDownload = MIO.liftIO . B.ManagedPtr.unsafeCastTo Download

-- | Convert t'Download' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Download) where
    gvalueGType_ = c_webkit_download_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Download)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Download)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Download ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveDownloadMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveDownloadMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDownloadMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDownloadMethod "cancel" o = DownloadCancelMethodInfo
    ResolveDownloadMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDownloadMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDownloadMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDownloadMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDownloadMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDownloadMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDownloadMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDownloadMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDownloadMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDownloadMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDownloadMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDownloadMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDownloadMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDownloadMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDownloadMethod "getAllowOverwrite" o = DownloadGetAllowOverwriteMethodInfo
    ResolveDownloadMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDownloadMethod "getDestination" o = DownloadGetDestinationMethodInfo
    ResolveDownloadMethod "getElapsedTime" o = DownloadGetElapsedTimeMethodInfo
    ResolveDownloadMethod "getEstimatedProgress" o = DownloadGetEstimatedProgressMethodInfo
    ResolveDownloadMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDownloadMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDownloadMethod "getReceivedDataLength" o = DownloadGetReceivedDataLengthMethodInfo
    ResolveDownloadMethod "getRequest" o = DownloadGetRequestMethodInfo
    ResolveDownloadMethod "getResponse" o = DownloadGetResponseMethodInfo
    ResolveDownloadMethod "getWebView" o = DownloadGetWebViewMethodInfo
    ResolveDownloadMethod "setAllowOverwrite" o = DownloadSetAllowOverwriteMethodInfo
    ResolveDownloadMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDownloadMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDownloadMethod "setDestination" o = DownloadSetDestinationMethodInfo
    ResolveDownloadMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDownloadMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDownloadMethod t Download, O.OverloadedMethod info Download p) => OL.IsLabel t (Download -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveDownloadMethod t Download, O.OverloadedMethod info Download p, R.HasField t Download p) => R.HasField t Download p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveDownloadMethod t Download, O.OverloadedMethodInfo info Download) => OL.IsLabel t (O.MethodProxy info Download) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal Download::created-destination
-- | This signal is emitted after [Download::decideDestination]("GI.WebKit2.Objects.Download#g:signal:decideDestination") and before
-- [Download::receivedData]("GI.WebKit2.Objects.Download#g:signal:receivedData") to notify that destination file has been
-- created successfully at /@destination@/.
type DownloadCreatedDestinationCallback =
    T.Text
    -- ^ /@destination@/: the destination
    -> IO ()

type C_DownloadCreatedDestinationCallback =
    Ptr Download ->                         -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DownloadCreatedDestinationCallback`.
foreign import ccall "wrapper"
    mk_DownloadCreatedDestinationCallback :: C_DownloadCreatedDestinationCallback -> IO (FunPtr C_DownloadCreatedDestinationCallback)

wrap_DownloadCreatedDestinationCallback :: 
    GObject a => (a -> DownloadCreatedDestinationCallback) ->
    C_DownloadCreatedDestinationCallback
wrap_DownloadCreatedDestinationCallback gi'cb gi'selfPtr destination _ = do
    destination' <- cstringToText destination
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  destination'


-- | Connect a signal handler for the [createdDestination](#signal:createdDestination) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' download #createdDestination callback
-- @
-- 
-- 
onDownloadCreatedDestination :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadCreatedDestinationCallback) -> m SignalHandlerId
onDownloadCreatedDestination obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadCreatedDestinationCallback wrapped
    wrapped'' <- mk_DownloadCreatedDestinationCallback wrapped'
    connectSignalFunPtr obj "created-destination" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [createdDestination](#signal:createdDestination) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' download #createdDestination callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterDownloadCreatedDestination :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadCreatedDestinationCallback) -> m SignalHandlerId
afterDownloadCreatedDestination obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadCreatedDestinationCallback wrapped
    wrapped'' <- mk_DownloadCreatedDestinationCallback wrapped'
    connectSignalFunPtr obj "created-destination" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DownloadCreatedDestinationSignalInfo
instance SignalInfo DownloadCreatedDestinationSignalInfo where
    type HaskellCallbackType DownloadCreatedDestinationSignalInfo = DownloadCreatedDestinationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DownloadCreatedDestinationCallback cb
        cb'' <- mk_DownloadCreatedDestinationCallback cb'
        connectSignalFunPtr obj "created-destination" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download::created-destination"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:signal:createdDestination"})

#endif

-- signal Download::decide-destination
-- | This signal is emitted after response is received to
-- decide a destination for the download using
-- 'GI.WebKit2.Objects.Download.downloadSetDestination'. If this signal is not
-- handled, the file will be downloaded to 'GI.GLib.Enums.UserDirectoryDirectoryDownload'
-- directory using /@suggestedFilename@/.
-- 
-- Since 2.40, you may handle this signal asynchronously by
-- returning 'P.True' without calling 'GI.WebKit2.Objects.Download.downloadSetDestination'.
-- This indicates intent to eventually call 'GI.WebKit2.Objects.Download.downloadSetDestination'.
-- In this case, the download will not proceed until the destination is set
-- or cancelled with 'GI.WebKit2.Objects.Download.downloadCancel'.
type DownloadDecideDestinationCallback =
    T.Text
    -- ^ /@suggestedFilename@/: the filename suggested for the download
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event,
    --   or 'P.False' to propagate the event further.

type C_DownloadDecideDestinationCallback =
    Ptr Download ->                         -- object
    CString ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_DownloadDecideDestinationCallback`.
foreign import ccall "wrapper"
    mk_DownloadDecideDestinationCallback :: C_DownloadDecideDestinationCallback -> IO (FunPtr C_DownloadDecideDestinationCallback)

wrap_DownloadDecideDestinationCallback :: 
    GObject a => (a -> DownloadDecideDestinationCallback) ->
    C_DownloadDecideDestinationCallback
wrap_DownloadDecideDestinationCallback gi'cb gi'selfPtr suggestedFilename _ = do
    suggestedFilename' <- cstringToText suggestedFilename
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  suggestedFilename'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [decideDestination](#signal:decideDestination) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' download #decideDestination callback
-- @
-- 
-- 
onDownloadDecideDestination :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadDecideDestinationCallback) -> m SignalHandlerId
onDownloadDecideDestination obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadDecideDestinationCallback wrapped
    wrapped'' <- mk_DownloadDecideDestinationCallback wrapped'
    connectSignalFunPtr obj "decide-destination" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [decideDestination](#signal:decideDestination) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' download #decideDestination callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterDownloadDecideDestination :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadDecideDestinationCallback) -> m SignalHandlerId
afterDownloadDecideDestination obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadDecideDestinationCallback wrapped
    wrapped'' <- mk_DownloadDecideDestinationCallback wrapped'
    connectSignalFunPtr obj "decide-destination" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DownloadDecideDestinationSignalInfo
instance SignalInfo DownloadDecideDestinationSignalInfo where
    type HaskellCallbackType DownloadDecideDestinationSignalInfo = DownloadDecideDestinationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DownloadDecideDestinationCallback cb
        cb'' <- mk_DownloadDecideDestinationCallback cb'
        connectSignalFunPtr obj "decide-destination" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download::decide-destination"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:signal:decideDestination"})

#endif

-- signal Download::failed
-- | This signal is emitted when an error occurs during the download
-- operation. The given /@error@/, of the domain @/WEBKIT_DOWNLOAD_ERROR/@,
-- contains further details of the failure. If the download is cancelled
-- with 'GI.WebKit2.Objects.Download.downloadCancel', this signal is emitted with error
-- 'GI.WebKit2.Enums.DownloadErrorCancelledByUser'. The download operation finishes
-- after an error and [Download::finished]("GI.WebKit2.Objects.Download#g:signal:finished") signal is emitted after this one.
type DownloadFailedCallback =
    GError
    -- ^ /@error@/: the t'GError' that was triggered
    -> IO ()

type C_DownloadFailedCallback =
    Ptr Download ->                         -- object
    Ptr GError ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DownloadFailedCallback`.
foreign import ccall "wrapper"
    mk_DownloadFailedCallback :: C_DownloadFailedCallback -> IO (FunPtr C_DownloadFailedCallback)

wrap_DownloadFailedCallback :: 
    GObject a => (a -> DownloadFailedCallback) ->
    C_DownloadFailedCallback
wrap_DownloadFailedCallback gi'cb gi'selfPtr error_ _ = do
    error_' <- (newBoxed GError) error_
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  error_'


-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' download #failed callback
-- @
-- 
-- 
onDownloadFailed :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadFailedCallback) -> m SignalHandlerId
onDownloadFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadFailedCallback wrapped
    wrapped'' <- mk_DownloadFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' download #failed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterDownloadFailed :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadFailedCallback) -> m SignalHandlerId
afterDownloadFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadFailedCallback wrapped
    wrapped'' <- mk_DownloadFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DownloadFailedSignalInfo
instance SignalInfo DownloadFailedSignalInfo where
    type HaskellCallbackType DownloadFailedSignalInfo = DownloadFailedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DownloadFailedCallback cb
        cb'' <- mk_DownloadFailedCallback cb'
        connectSignalFunPtr obj "failed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download::failed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:signal:failed"})

#endif

-- signal Download::finished
-- | This signal is emitted when download finishes successfully or due to an error.
-- In case of errors [Download::failed]("GI.WebKit2.Objects.Download#g:signal:failed") signal is emitted before this one.
type DownloadFinishedCallback =
    IO ()

type C_DownloadFinishedCallback =
    Ptr Download ->                         -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DownloadFinishedCallback`.
foreign import ccall "wrapper"
    mk_DownloadFinishedCallback :: C_DownloadFinishedCallback -> IO (FunPtr C_DownloadFinishedCallback)

wrap_DownloadFinishedCallback :: 
    GObject a => (a -> DownloadFinishedCallback) ->
    C_DownloadFinishedCallback
wrap_DownloadFinishedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' download #finished callback
-- @
-- 
-- 
onDownloadFinished :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadFinishedCallback) -> m SignalHandlerId
onDownloadFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadFinishedCallback wrapped
    wrapped'' <- mk_DownloadFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' download #finished callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterDownloadFinished :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadFinishedCallback) -> m SignalHandlerId
afterDownloadFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadFinishedCallback wrapped
    wrapped'' <- mk_DownloadFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DownloadFinishedSignalInfo
instance SignalInfo DownloadFinishedSignalInfo where
    type HaskellCallbackType DownloadFinishedSignalInfo = DownloadFinishedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DownloadFinishedCallback cb
        cb'' <- mk_DownloadFinishedCallback cb'
        connectSignalFunPtr obj "finished" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download::finished"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:signal:finished"})

#endif

-- signal Download::received-data
-- | This signal is emitted after response is received,
-- every time new data has been written to the destination. It\'s
-- useful to know the progress of the download operation.
type DownloadReceivedDataCallback =
    Word64
    -- ^ /@dataLength@/: the length of data received in bytes
    -> IO ()

type C_DownloadReceivedDataCallback =
    Ptr Download ->                         -- object
    Word64 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DownloadReceivedDataCallback`.
foreign import ccall "wrapper"
    mk_DownloadReceivedDataCallback :: C_DownloadReceivedDataCallback -> IO (FunPtr C_DownloadReceivedDataCallback)

wrap_DownloadReceivedDataCallback :: 
    GObject a => (a -> DownloadReceivedDataCallback) ->
    C_DownloadReceivedDataCallback
wrap_DownloadReceivedDataCallback gi'cb gi'selfPtr dataLength _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  dataLength


-- | Connect a signal handler for the [receivedData](#signal:receivedData) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' download #receivedData callback
-- @
-- 
-- 
onDownloadReceivedData :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadReceivedDataCallback) -> m SignalHandlerId
onDownloadReceivedData obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadReceivedDataCallback wrapped
    wrapped'' <- mk_DownloadReceivedDataCallback wrapped'
    connectSignalFunPtr obj "received-data" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [receivedData](#signal:receivedData) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' download #receivedData callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterDownloadReceivedData :: (IsDownload a, MonadIO m) => a -> ((?self :: a) => DownloadReceivedDataCallback) -> m SignalHandlerId
afterDownloadReceivedData obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_DownloadReceivedDataCallback wrapped
    wrapped'' <- mk_DownloadReceivedDataCallback wrapped'
    connectSignalFunPtr obj "received-data" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DownloadReceivedDataSignalInfo
instance SignalInfo DownloadReceivedDataSignalInfo where
    type HaskellCallbackType DownloadReceivedDataSignalInfo = DownloadReceivedDataCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DownloadReceivedDataCallback cb
        cb'' <- mk_DownloadReceivedDataCallback cb'
        connectSignalFunPtr obj "received-data" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download::received-data"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:signal:receivedData"})

#endif

-- VVV Prop "allow-overwrite"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@allow-overwrite@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' download #allowOverwrite
-- @
getDownloadAllowOverwrite :: (MonadIO m, IsDownload o) => o -> m Bool
getDownloadAllowOverwrite obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "allow-overwrite"

-- | Set the value of the “@allow-overwrite@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' download [ #allowOverwrite 'Data.GI.Base.Attributes.:=' value ]
-- @
setDownloadAllowOverwrite :: (MonadIO m, IsDownload o) => o -> Bool -> m ()
setDownloadAllowOverwrite obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "allow-overwrite" val

-- | Construct a t'GValueConstruct' with valid value for the “@allow-overwrite@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructDownloadAllowOverwrite :: (IsDownload o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructDownloadAllowOverwrite val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-overwrite" val

#if defined(ENABLE_OVERLOADING)
data DownloadAllowOverwritePropertyInfo
instance AttrInfo DownloadAllowOverwritePropertyInfo where
    type AttrAllowedOps DownloadAllowOverwritePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint DownloadAllowOverwritePropertyInfo = IsDownload
    type AttrSetTypeConstraint DownloadAllowOverwritePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint DownloadAllowOverwritePropertyInfo = (~) Bool
    type AttrTransferType DownloadAllowOverwritePropertyInfo = Bool
    type AttrGetType DownloadAllowOverwritePropertyInfo = Bool
    type AttrLabel DownloadAllowOverwritePropertyInfo = "allow-overwrite"
    type AttrOrigin DownloadAllowOverwritePropertyInfo = Download
    attrGet = getDownloadAllowOverwrite
    attrSet = setDownloadAllowOverwrite
    attrPut = setDownloadAllowOverwrite
    attrTransfer _ v = do
        return v
    attrConstruct = constructDownloadAllowOverwrite
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.allowOverwrite"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:attr:allowOverwrite"
        })
#endif

-- VVV Prop "destination"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@destination@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' download #destination
-- @
getDownloadDestination :: (MonadIO m, IsDownload o) => o -> m (Maybe T.Text)
getDownloadDestination obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "destination"

#if defined(ENABLE_OVERLOADING)
data DownloadDestinationPropertyInfo
instance AttrInfo DownloadDestinationPropertyInfo where
    type AttrAllowedOps DownloadDestinationPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint DownloadDestinationPropertyInfo = IsDownload
    type AttrSetTypeConstraint DownloadDestinationPropertyInfo = (~) ()
    type AttrTransferTypeConstraint DownloadDestinationPropertyInfo = (~) ()
    type AttrTransferType DownloadDestinationPropertyInfo = ()
    type AttrGetType DownloadDestinationPropertyInfo = (Maybe T.Text)
    type AttrLabel DownloadDestinationPropertyInfo = "destination"
    type AttrOrigin DownloadDestinationPropertyInfo = Download
    attrGet = getDownloadDestination
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.destination"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:attr:destination"
        })
#endif

-- VVV Prop "estimated-progress"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@estimated-progress@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' download #estimatedProgress
-- @
getDownloadEstimatedProgress :: (MonadIO m, IsDownload o) => o -> m Double
getDownloadEstimatedProgress obj = MIO.liftIO $ B.Properties.getObjectPropertyDouble obj "estimated-progress"

#if defined(ENABLE_OVERLOADING)
data DownloadEstimatedProgressPropertyInfo
instance AttrInfo DownloadEstimatedProgressPropertyInfo where
    type AttrAllowedOps DownloadEstimatedProgressPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint DownloadEstimatedProgressPropertyInfo = IsDownload
    type AttrSetTypeConstraint DownloadEstimatedProgressPropertyInfo = (~) ()
    type AttrTransferTypeConstraint DownloadEstimatedProgressPropertyInfo = (~) ()
    type AttrTransferType DownloadEstimatedProgressPropertyInfo = ()
    type AttrGetType DownloadEstimatedProgressPropertyInfo = Double
    type AttrLabel DownloadEstimatedProgressPropertyInfo = "estimated-progress"
    type AttrOrigin DownloadEstimatedProgressPropertyInfo = Download
    attrGet = getDownloadEstimatedProgress
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.estimatedProgress"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:attr:estimatedProgress"
        })
#endif

-- VVV Prop "response"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "URIResponse"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@response@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' download #response
-- @
getDownloadResponse :: (MonadIO m, IsDownload o) => o -> m (Maybe WebKit2.URIResponse.URIResponse)
getDownloadResponse obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "response" WebKit2.URIResponse.URIResponse

#if defined(ENABLE_OVERLOADING)
data DownloadResponsePropertyInfo
instance AttrInfo DownloadResponsePropertyInfo where
    type AttrAllowedOps DownloadResponsePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint DownloadResponsePropertyInfo = IsDownload
    type AttrSetTypeConstraint DownloadResponsePropertyInfo = (~) ()
    type AttrTransferTypeConstraint DownloadResponsePropertyInfo = (~) ()
    type AttrTransferType DownloadResponsePropertyInfo = ()
    type AttrGetType DownloadResponsePropertyInfo = (Maybe WebKit2.URIResponse.URIResponse)
    type AttrLabel DownloadResponsePropertyInfo = "response"
    type AttrOrigin DownloadResponsePropertyInfo = Download
    attrGet = getDownloadResponse
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.response"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#g:attr:response"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Download
type instance O.AttributeList Download = DownloadAttributeList
type DownloadAttributeList = ('[ '("allowOverwrite", DownloadAllowOverwritePropertyInfo), '("destination", DownloadDestinationPropertyInfo), '("estimatedProgress", DownloadEstimatedProgressPropertyInfo), '("response", DownloadResponsePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
downloadAllowOverwrite :: AttrLabelProxy "allowOverwrite"
downloadAllowOverwrite = AttrLabelProxy

downloadDestination :: AttrLabelProxy "destination"
downloadDestination = AttrLabelProxy

downloadEstimatedProgress :: AttrLabelProxy "estimatedProgress"
downloadEstimatedProgress = AttrLabelProxy

downloadResponse :: AttrLabelProxy "response"
downloadResponse = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Download = DownloadSignalList
type DownloadSignalList = ('[ '("createdDestination", DownloadCreatedDestinationSignalInfo), '("decideDestination", DownloadDecideDestinationSignalInfo), '("failed", DownloadFailedSignalInfo), '("finished", DownloadFinishedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("receivedData", DownloadReceivedDataSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Download::cancel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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

foreign import ccall "webkit_download_cancel" webkit_download_cancel :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO ()

-- | Cancels the download.
-- 
-- When the ongoing download
-- operation is effectively cancelled the signal
-- [Download::failed]("GI.WebKit2.Objects.Download#g:signal:failed") is emitted with
-- 'GI.WebKit2.Enums.DownloadErrorCancelledByUser' error.
downloadCancel ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m ()
downloadCancel download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    webkit_download_cancel download'
    touchManagedPtr download
    return ()

#if defined(ENABLE_OVERLOADING)
data DownloadCancelMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadCancelMethodInfo a signature where
    overloadedMethod = downloadCancel

instance O.OverloadedMethodInfo DownloadCancelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadCancel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadCancel"
        })


#endif

-- method Download::get_allow_overwrite
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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

foreign import ccall "webkit_download_get_allow_overwrite" webkit_download_get_allow_overwrite :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO CInt

-- | Returns the current value of the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property.
-- 
-- Returns the current value of the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property,
-- which determines whether the download will overwrite an existing file on
-- disk, or if it will fail if the destination already exists.
-- 
-- /Since: 2.6/
downloadGetAllowOverwrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m Bool
    -- ^ __Returns:__ the current value of the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property
downloadGetAllowOverwrite download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_allow_overwrite download'
    let result' = (/= 0) result
    touchManagedPtr download
    return result'

#if defined(ENABLE_OVERLOADING)
data DownloadGetAllowOverwriteMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetAllowOverwriteMethodInfo a signature where
    overloadedMethod = downloadGetAllowOverwrite

instance O.OverloadedMethodInfo DownloadGetAllowOverwriteMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetAllowOverwrite",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetAllowOverwrite"
        })


#endif

-- method Download::get_destination
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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

foreign import ccall "webkit_download_get_destination" webkit_download_get_destination :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO CString

-- | Obtains the destination to which the downloaded file will be written.
-- 
-- You can connect to [Download::createdDestination]("GI.WebKit2.Objects.Download#g:signal:createdDestination") to make
-- sure this method returns a valid destination.
downloadGetDestination ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the destination or 'P.Nothing'
downloadGetDestination download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_destination download'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr download
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data DownloadGetDestinationMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetDestinationMethodInfo a signature where
    overloadedMethod = downloadGetDestination

instance O.OverloadedMethodInfo DownloadGetDestinationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetDestination",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetDestination"
        })


#endif

-- method Download::get_elapsed_time
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_download_get_elapsed_time" webkit_download_get_elapsed_time :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO CDouble

-- | Gets the elapsed time in seconds, including any fractional part.
-- 
-- If the download finished, had an error or was cancelled this is
-- the time between its start and the event.
downloadGetElapsedTime ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m Double
    -- ^ __Returns:__ seconds since the download was started
downloadGetElapsedTime download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_elapsed_time download'
    let result' = realToFrac result
    touchManagedPtr download
    return result'

#if defined(ENABLE_OVERLOADING)
data DownloadGetElapsedTimeMethodInfo
instance (signature ~ (m Double), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetElapsedTimeMethodInfo a signature where
    overloadedMethod = downloadGetElapsedTime

instance O.OverloadedMethodInfo DownloadGetElapsedTimeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetElapsedTime",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetElapsedTime"
        })


#endif

-- method Download::get_estimated_progress
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_download_get_estimated_progress" webkit_download_get_estimated_progress :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO CDouble

-- | Gets the value of the [Download:estimatedProgress]("GI.WebKit2.Objects.Download#g:attr:estimatedProgress") property.
-- Gets the value of the [Download:estimatedProgress]("GI.WebKit2.Objects.Download#g:attr:estimatedProgress") property.
-- You can monitor the estimated progress of the download operation by
-- connecting to the notify[estimatedProgress](#g:signal:estimatedProgress) signal of /@download@/.
downloadGetEstimatedProgress ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m Double
    -- ^ __Returns:__ an estimate of the of the percent complete for a download
    --     as a range from 0.0 to 1.0.
downloadGetEstimatedProgress download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_estimated_progress download'
    let result' = realToFrac result
    touchManagedPtr download
    return result'

#if defined(ENABLE_OVERLOADING)
data DownloadGetEstimatedProgressMethodInfo
instance (signature ~ (m Double), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetEstimatedProgressMethodInfo a signature where
    overloadedMethod = downloadGetEstimatedProgress

instance O.OverloadedMethodInfo DownloadGetEstimatedProgressMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetEstimatedProgress",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetEstimatedProgress"
        })


#endif

-- method Download::get_received_data_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_download_get_received_data_length" webkit_download_get_received_data_length :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO Word64

-- | Gets the length of the data already downloaded for /@download@/.
-- 
-- Gets the length of the data already downloaded for /@download@/
-- in bytes.
downloadGetReceivedDataLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m Word64
    -- ^ __Returns:__ the amount of bytes already downloaded.
downloadGetReceivedDataLength download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_received_data_length download'
    touchManagedPtr download
    return result

#if defined(ENABLE_OVERLOADING)
data DownloadGetReceivedDataLengthMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetReceivedDataLengthMethodInfo a signature where
    overloadedMethod = downloadGetReceivedDataLength

instance O.OverloadedMethodInfo DownloadGetReceivedDataLengthMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetReceivedDataLength",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetReceivedDataLength"
        })


#endif

-- method Download::get_request
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIRequest" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_download_get_request" webkit_download_get_request :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO (Ptr WebKit2.URIRequest.URIRequest)

-- | Retrieves the t'GI.WebKit2.Objects.URIRequest.URIRequest' object that backs the download
-- process.
downloadGetRequest ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m WebKit2.URIRequest.URIRequest
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.URIRequest.URIRequest' of /@download@/
downloadGetRequest download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_request download'
    checkUnexpectedReturnNULL "downloadGetRequest" result
    result' <- (newObject WebKit2.URIRequest.URIRequest) result
    touchManagedPtr download
    return result'

#if defined(ENABLE_OVERLOADING)
data DownloadGetRequestMethodInfo
instance (signature ~ (m WebKit2.URIRequest.URIRequest), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetRequestMethodInfo a signature where
    overloadedMethod = downloadGetRequest

instance O.OverloadedMethodInfo DownloadGetRequestMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetRequest",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetRequest"
        })


#endif

-- method Download::get_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIResponse" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_download_get_response" webkit_download_get_response :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO (Ptr WebKit2.URIResponse.URIResponse)

-- | Retrieves the t'GI.WebKit2.Objects.URIResponse.URIResponse' object that backs the download process.
-- 
-- Retrieves the t'GI.WebKit2.Objects.URIResponse.URIResponse' object that backs the download
-- process. This method returns 'P.Nothing' if called before the response
-- is received from the server. You can connect to notify[response](#g:signal:response)
-- signal to be notified when the response is received.
downloadGetResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m (Maybe WebKit2.URIResponse.URIResponse)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.URIResponse.URIResponse', or 'P.Nothing' if
    --     the response hasn\'t been received yet.
downloadGetResponse download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_response download'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.URIResponse.URIResponse) result'
        return result''
    touchManagedPtr download
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data DownloadGetResponseMethodInfo
instance (signature ~ (m (Maybe WebKit2.URIResponse.URIResponse)), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetResponseMethodInfo a signature where
    overloadedMethod = downloadGetResponse

instance O.OverloadedMethodInfo DownloadGetResponseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetResponse",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetResponse"
        })


#endif

-- method Download::get_web_view
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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

foreign import ccall "webkit_download_get_web_view" webkit_download_get_web_view :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    IO (Ptr WebKit2.WebView.WebView)

-- | Get the t'GI.WebKit2.Objects.WebView.WebView' that initiated the download.
downloadGetWebView ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> m (Maybe WebKit2.WebView.WebView)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebView.WebView' that initiated /@download@/,
    --    or 'P.Nothing' if /@download@/ was not initiated by a t'GI.WebKit2.Objects.WebView.WebView'.
downloadGetWebView download = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    result <- webkit_download_get_web_view download'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.WebView.WebView) result'
        return result''
    touchManagedPtr download
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data DownloadGetWebViewMethodInfo
instance (signature ~ (m (Maybe WebKit2.WebView.WebView)), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadGetWebViewMethodInfo a signature where
    overloadedMethod = downloadGetWebView

instance O.OverloadedMethodInfo DownloadGetWebViewMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadGetWebView",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadGetWebView"
        })


#endif

-- method Download::set_allow_overwrite
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just
--                       "the new value for the #WebKitDownload:allow-overwrite property"
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

foreign import ccall "webkit_download_set_allow_overwrite" webkit_download_set_allow_overwrite :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    CInt ->                                 -- allowed : TBasicType TBoolean
    IO ()

-- | Sets the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property.
-- 
-- Sets the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property, which determines whether
-- the download may overwrite an existing file on disk, or if it will fail if
-- the destination already exists.
-- 
-- /Since: 2.6/
downloadSetAllowOverwrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> Bool
    -- ^ /@allowed@/: the new value for the [Download:allowOverwrite]("GI.WebKit2.Objects.Download#g:attr:allowOverwrite") property
    -> m ()
downloadSetAllowOverwrite download allowed = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    let allowed' = (P.fromIntegral . P.fromEnum) allowed
    webkit_download_set_allow_overwrite download' allowed'
    touchManagedPtr download
    return ()

#if defined(ENABLE_OVERLOADING)
data DownloadSetAllowOverwriteMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadSetAllowOverwriteMethodInfo a signature where
    overloadedMethod = downloadSetAllowOverwrite

instance O.OverloadedMethodInfo DownloadSetAllowOverwriteMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadSetAllowOverwrite",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadSetAllowOverwrite"
        })


#endif

-- method Download::set_destination
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "download"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Download" }
--           , argCType = Just "WebKitDownload*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitDownload" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destination"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the destination" , sinceVersion = Nothing }
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

foreign import ccall "webkit_download_set_destination" webkit_download_set_destination :: 
    Ptr Download ->                         -- download : TInterface (Name {namespace = "WebKit2", name = "Download"})
    CString ->                              -- destination : TBasicType TUTF8
    IO ()

-- | Sets the destination to which the downloaded file will be written.
-- 
-- This method should be called before the download transfer
-- starts or it will not have any effect on the ongoing download
-- operation. To set the destination using the filename suggested
-- by the server connect to [Download::decideDestination]("GI.WebKit2.Objects.Download#g:signal:decideDestination")
-- signal and call 'GI.WebKit2.Objects.Download.downloadSetDestination'. If you want to
-- set a fixed destination that doesn\'t depend on the suggested
-- filename you can connect to notify[response](#g:signal:response) signal and call
-- 'GI.WebKit2.Objects.Download.downloadSetDestination'.
-- 
-- If [Download::decideDestination]("GI.WebKit2.Objects.Download#g:signal:decideDestination") signal is not handled
-- and destination is not set when the download transfer starts,
-- the file will be saved with the filename suggested by the server in
-- 'GI.GLib.Enums.UserDirectoryDirectoryDownload' directory.
downloadSetDestination ::
    (B.CallStack.HasCallStack, MonadIO m, IsDownload a) =>
    a
    -- ^ /@download@/: a t'GI.WebKit2.Objects.Download.Download'
    -> T.Text
    -- ^ /@destination@/: the destination
    -> m ()
downloadSetDestination download destination = liftIO $ do
    download' <- unsafeManagedPtrCastPtr download
    destination' <- textToCString destination
    webkit_download_set_destination download' destination'
    touchManagedPtr download
    freeMem destination'
    return ()

#if defined(ENABLE_OVERLOADING)
data DownloadSetDestinationMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsDownload a) => O.OverloadedMethod DownloadSetDestinationMethodInfo a signature where
    overloadedMethod = downloadSetDestination

instance O.OverloadedMethodInfo DownloadSetDestinationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Download.downloadSetDestination",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Download.html#v:downloadSetDestination"
        })


#endif


