{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Controls text search in a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- A t'GI.WebKit2.Objects.FindController.FindController' is used to search text in a t'GI.WebKit2.Objects.WebView.WebView'. You
-- can get a t'GI.WebKit2.Objects.WebView.WebView'\'s t'GI.WebKit2.Objects.FindController.FindController' with
-- 'GI.WebKit2.Objects.WebView.webViewGetFindController', and later use it to search
-- for text using 'GI.WebKit2.Objects.FindController.findControllerSearch', or get the
-- number of matches using 'GI.WebKit2.Objects.FindController.findControllerCountMatches'. The
-- operations are asynchronous and trigger signals when ready, such as
-- [FindController::foundText]("GI.WebKit2.Objects.FindController#g:signal:foundText"),
-- [FindController::failedToFindText]("GI.WebKit2.Objects.FindController#g:signal:failedToFindText") or
-- [FindController::countedMatches]("GI.WebKit2.Objects.FindController#g:signal:countedMatches").

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.FindController
    ( 

-- * Exported types
    FindController(..)                      ,
    IsFindController                        ,
    toFindController                        ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [countMatches]("GI.WebKit2.Objects.FindController#g:method:countMatches"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [search]("GI.WebKit2.Objects.FindController#g:method:search"), [searchFinish]("GI.WebKit2.Objects.FindController#g:method:searchFinish"), [searchNext]("GI.WebKit2.Objects.FindController#g:method:searchNext"), [searchPrevious]("GI.WebKit2.Objects.FindController#g:method:searchPrevious"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getMaxMatchCount]("GI.WebKit2.Objects.FindController#g:method:getMaxMatchCount"), [getOptions]("GI.WebKit2.Objects.FindController#g:method:getOptions"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getSearchText]("GI.WebKit2.Objects.FindController#g:method:getSearchText"), [getWebView]("GI.WebKit2.Objects.FindController#g:method:getWebView").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveFindControllerMethod             ,
#endif

-- ** countMatches #method:countMatches#

#if defined(ENABLE_OVERLOADING)
    FindControllerCountMatchesMethodInfo    ,
#endif
    findControllerCountMatches              ,


-- ** getMaxMatchCount #method:getMaxMatchCount#

#if defined(ENABLE_OVERLOADING)
    FindControllerGetMaxMatchCountMethodInfo,
#endif
    findControllerGetMaxMatchCount          ,


-- ** getOptions #method:getOptions#

#if defined(ENABLE_OVERLOADING)
    FindControllerGetOptionsMethodInfo      ,
#endif
    findControllerGetOptions                ,


-- ** getSearchText #method:getSearchText#

#if defined(ENABLE_OVERLOADING)
    FindControllerGetSearchTextMethodInfo   ,
#endif
    findControllerGetSearchText             ,


-- ** getWebView #method:getWebView#

#if defined(ENABLE_OVERLOADING)
    FindControllerGetWebViewMethodInfo      ,
#endif
    findControllerGetWebView                ,


-- ** search #method:search#

#if defined(ENABLE_OVERLOADING)
    FindControllerSearchMethodInfo          ,
#endif
    findControllerSearch                    ,


-- ** searchFinish #method:searchFinish#

#if defined(ENABLE_OVERLOADING)
    FindControllerSearchFinishMethodInfo    ,
#endif
    findControllerSearchFinish              ,


-- ** searchNext #method:searchNext#

#if defined(ENABLE_OVERLOADING)
    FindControllerSearchNextMethodInfo      ,
#endif
    findControllerSearchNext                ,


-- ** searchPrevious #method:searchPrevious#

#if defined(ENABLE_OVERLOADING)
    FindControllerSearchPreviousMethodInfo  ,
#endif
    findControllerSearchPrevious            ,




 -- * Properties


-- ** maxMatchCount #attr:maxMatchCount#
-- | The maximum number of matches to report for a given search.

#if defined(ENABLE_OVERLOADING)
    FindControllerMaxMatchCountPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    findControllerMaxMatchCount             ,
#endif
    getFindControllerMaxMatchCount          ,


-- ** options #attr:options#
-- | The options to be used in the search operation.

#if defined(ENABLE_OVERLOADING)
    FindControllerOptionsPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    findControllerOptions                   ,
#endif
    getFindControllerOptions                ,


-- ** text #attr:text#
-- | The current search text for this t'GI.WebKit2.Objects.FindController.FindController'.

#if defined(ENABLE_OVERLOADING)
    FindControllerTextPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    findControllerText                      ,
#endif
    getFindControllerText                   ,


-- ** webView #attr:webView#
-- | The t'GI.WebKit2.Objects.WebView.WebView' this controller is associated to.

#if defined(ENABLE_OVERLOADING)
    FindControllerWebViewPropertyInfo       ,
#endif
    constructFindControllerWebView          ,
#if defined(ENABLE_OVERLOADING)
    findControllerWebView                   ,
#endif
    getFindControllerWebView                ,




 -- * Signals


-- ** countedMatches #signal:countedMatches#

    FindControllerCountedMatchesCallback    ,
#if defined(ENABLE_OVERLOADING)
    FindControllerCountedMatchesSignalInfo  ,
#endif
    afterFindControllerCountedMatches       ,
    onFindControllerCountedMatches          ,


-- ** failedToFindText #signal:failedToFindText#

    FindControllerFailedToFindTextCallback  ,
#if defined(ENABLE_OVERLOADING)
    FindControllerFailedToFindTextSignalInfo,
#endif
    afterFindControllerFailedToFindText     ,
    onFindControllerFailedToFindText        ,


-- ** foundText #signal:foundText#

    FindControllerFoundTextCallback         ,
#if defined(ENABLE_OVERLOADING)
    FindControllerFoundTextSignalInfo       ,
#endif
    afterFindControllerFoundText            ,
    onFindControllerFoundText               ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView

#endif

-- | Memory-managed wrapper type.
newtype FindController = FindController (SP.ManagedPtr FindController)
    deriving (Eq)

instance SP.ManagedPtrNewtype FindController where
    toManagedPtr (FindController p) = p

foreign import ccall "webkit_find_controller_get_type"
    c_webkit_find_controller_get_type :: IO B.Types.GType

instance B.Types.TypedObject FindController where
    glibType = c_webkit_find_controller_get_type

instance B.Types.GObject FindController

-- | Type class for types which can be safely cast to t'FindController', for instance with `toFindController`.
class (SP.GObject o, O.IsDescendantOf FindController o) => IsFindController o
instance (SP.GObject o, O.IsDescendantOf FindController o) => IsFindController o

instance O.HasParentTypes FindController
type instance O.ParentTypes FindController = '[GObject.Object.Object]

-- | Cast to t'FindController', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toFindController :: (MIO.MonadIO m, IsFindController o) => o -> m FindController
toFindController = MIO.liftIO . B.ManagedPtr.unsafeCastTo FindController

-- | Convert t'FindController' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe FindController) where
    gvalueGType_ = c_webkit_find_controller_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr FindController)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr FindController)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject FindController ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveFindControllerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFindControllerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFindControllerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFindControllerMethod "countMatches" o = FindControllerCountMatchesMethodInfo
    ResolveFindControllerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFindControllerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFindControllerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFindControllerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFindControllerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFindControllerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFindControllerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFindControllerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFindControllerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFindControllerMethod "search" o = FindControllerSearchMethodInfo
    ResolveFindControllerMethod "searchFinish" o = FindControllerSearchFinishMethodInfo
    ResolveFindControllerMethod "searchNext" o = FindControllerSearchNextMethodInfo
    ResolveFindControllerMethod "searchPrevious" o = FindControllerSearchPreviousMethodInfo
    ResolveFindControllerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFindControllerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFindControllerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFindControllerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFindControllerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFindControllerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFindControllerMethod "getMaxMatchCount" o = FindControllerGetMaxMatchCountMethodInfo
    ResolveFindControllerMethod "getOptions" o = FindControllerGetOptionsMethodInfo
    ResolveFindControllerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFindControllerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFindControllerMethod "getSearchText" o = FindControllerGetSearchTextMethodInfo
    ResolveFindControllerMethod "getWebView" o = FindControllerGetWebViewMethodInfo
    ResolveFindControllerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFindControllerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFindControllerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFindControllerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFindControllerMethod t FindController, O.OverloadedMethod info FindController p) => OL.IsLabel t (FindController -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFindControllerMethod t FindController, O.OverloadedMethod info FindController p, R.HasField t FindController p) => R.HasField t FindController p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFindControllerMethod t FindController, O.OverloadedMethodInfo info FindController) => OL.IsLabel t (O.MethodProxy info FindController) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal FindController::counted-matches
-- | This signal is emitted when the t'GI.WebKit2.Objects.FindController.FindController' has
-- counted the number of matches for a given text after a call
-- to 'GI.WebKit2.Objects.FindController.findControllerCountMatches'.
type FindControllerCountedMatchesCallback =
    Word32
    -- ^ /@matchCount@/: the number of matches of the search text
    -> IO ()

type C_FindControllerCountedMatchesCallback =
    Ptr FindController ->                   -- object
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FindControllerCountedMatchesCallback`.
foreign import ccall "wrapper"
    mk_FindControllerCountedMatchesCallback :: C_FindControllerCountedMatchesCallback -> IO (FunPtr C_FindControllerCountedMatchesCallback)

wrap_FindControllerCountedMatchesCallback :: 
    GObject a => (a -> FindControllerCountedMatchesCallback) ->
    C_FindControllerCountedMatchesCallback
wrap_FindControllerCountedMatchesCallback gi'cb gi'selfPtr matchCount _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  matchCount


-- | Connect a signal handler for the [countedMatches](#signal:countedMatches) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' findController #countedMatches callback
-- @
-- 
-- 
onFindControllerCountedMatches :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerCountedMatchesCallback) -> m SignalHandlerId
onFindControllerCountedMatches obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerCountedMatchesCallback wrapped
    wrapped'' <- mk_FindControllerCountedMatchesCallback wrapped'
    connectSignalFunPtr obj "counted-matches" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [countedMatches](#signal:countedMatches) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' findController #countedMatches callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterFindControllerCountedMatches :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerCountedMatchesCallback) -> m SignalHandlerId
afterFindControllerCountedMatches obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerCountedMatchesCallback wrapped
    wrapped'' <- mk_FindControllerCountedMatchesCallback wrapped'
    connectSignalFunPtr obj "counted-matches" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FindControllerCountedMatchesSignalInfo
instance SignalInfo FindControllerCountedMatchesSignalInfo where
    type HaskellCallbackType FindControllerCountedMatchesSignalInfo = FindControllerCountedMatchesCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FindControllerCountedMatchesCallback cb
        cb'' <- mk_FindControllerCountedMatchesCallback cb'
        connectSignalFunPtr obj "counted-matches" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController::counted-matches"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:signal:countedMatches"})

#endif

-- signal FindController::failed-to-find-text
-- | This signal is emitted when a search operation does not find
-- any result for the given text. It will be issued if the text
-- is not found asynchronously after a call to
-- 'GI.WebKit2.Objects.FindController.findControllerSearch', 'GI.WebKit2.Objects.FindController.findControllerSearchNext'
-- or 'GI.WebKit2.Objects.FindController.findControllerSearchPrevious'.
type FindControllerFailedToFindTextCallback =
    IO ()

type C_FindControllerFailedToFindTextCallback =
    Ptr FindController ->                   -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FindControllerFailedToFindTextCallback`.
foreign import ccall "wrapper"
    mk_FindControllerFailedToFindTextCallback :: C_FindControllerFailedToFindTextCallback -> IO (FunPtr C_FindControllerFailedToFindTextCallback)

wrap_FindControllerFailedToFindTextCallback :: 
    GObject a => (a -> FindControllerFailedToFindTextCallback) ->
    C_FindControllerFailedToFindTextCallback
wrap_FindControllerFailedToFindTextCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [failedToFindText](#signal:failedToFindText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' findController #failedToFindText callback
-- @
-- 
-- 
onFindControllerFailedToFindText :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerFailedToFindTextCallback) -> m SignalHandlerId
onFindControllerFailedToFindText obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerFailedToFindTextCallback wrapped
    wrapped'' <- mk_FindControllerFailedToFindTextCallback wrapped'
    connectSignalFunPtr obj "failed-to-find-text" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [failedToFindText](#signal:failedToFindText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' findController #failedToFindText callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterFindControllerFailedToFindText :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerFailedToFindTextCallback) -> m SignalHandlerId
afterFindControllerFailedToFindText obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerFailedToFindTextCallback wrapped
    wrapped'' <- mk_FindControllerFailedToFindTextCallback wrapped'
    connectSignalFunPtr obj "failed-to-find-text" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FindControllerFailedToFindTextSignalInfo
instance SignalInfo FindControllerFailedToFindTextSignalInfo where
    type HaskellCallbackType FindControllerFailedToFindTextSignalInfo = FindControllerFailedToFindTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FindControllerFailedToFindTextCallback cb
        cb'' <- mk_FindControllerFailedToFindTextCallback cb'
        connectSignalFunPtr obj "failed-to-find-text" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController::failed-to-find-text"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:signal:failedToFindText"})

#endif

-- signal FindController::found-text
-- | This signal is emitted when a given text is found in the web
-- page text. It will be issued if the text is found
-- asynchronously after a call to 'GI.WebKit2.Objects.FindController.findControllerSearch',
-- 'GI.WebKit2.Objects.FindController.findControllerSearchNext' or
-- 'GI.WebKit2.Objects.FindController.findControllerSearchPrevious'.
type FindControllerFoundTextCallback =
    Word32
    -- ^ /@matchCount@/: the number of matches found of the search text
    -> IO ()

type C_FindControllerFoundTextCallback =
    Ptr FindController ->                   -- object
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FindControllerFoundTextCallback`.
foreign import ccall "wrapper"
    mk_FindControllerFoundTextCallback :: C_FindControllerFoundTextCallback -> IO (FunPtr C_FindControllerFoundTextCallback)

wrap_FindControllerFoundTextCallback :: 
    GObject a => (a -> FindControllerFoundTextCallback) ->
    C_FindControllerFoundTextCallback
wrap_FindControllerFoundTextCallback gi'cb gi'selfPtr matchCount _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  matchCount


-- | Connect a signal handler for the [foundText](#signal:foundText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' findController #foundText callback
-- @
-- 
-- 
onFindControllerFoundText :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerFoundTextCallback) -> m SignalHandlerId
onFindControllerFoundText obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerFoundTextCallback wrapped
    wrapped'' <- mk_FindControllerFoundTextCallback wrapped'
    connectSignalFunPtr obj "found-text" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [foundText](#signal:foundText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' findController #foundText callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterFindControllerFoundText :: (IsFindController a, MonadIO m) => a -> ((?self :: a) => FindControllerFoundTextCallback) -> m SignalHandlerId
afterFindControllerFoundText obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FindControllerFoundTextCallback wrapped
    wrapped'' <- mk_FindControllerFoundTextCallback wrapped'
    connectSignalFunPtr obj "found-text" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FindControllerFoundTextSignalInfo
instance SignalInfo FindControllerFoundTextSignalInfo where
    type HaskellCallbackType FindControllerFoundTextSignalInfo = FindControllerFoundTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FindControllerFoundTextCallback cb
        cb'' <- mk_FindControllerFoundTextCallback cb'
        connectSignalFunPtr obj "found-text" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController::found-text"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:signal:foundText"})

#endif

-- VVV Prop "max-match-count"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@max-match-count@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' findController #maxMatchCount
-- @
getFindControllerMaxMatchCount :: (MonadIO m, IsFindController o) => o -> m Word32
getFindControllerMaxMatchCount obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "max-match-count"

#if defined(ENABLE_OVERLOADING)
data FindControllerMaxMatchCountPropertyInfo
instance AttrInfo FindControllerMaxMatchCountPropertyInfo where
    type AttrAllowedOps FindControllerMaxMatchCountPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint FindControllerMaxMatchCountPropertyInfo = IsFindController
    type AttrSetTypeConstraint FindControllerMaxMatchCountPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FindControllerMaxMatchCountPropertyInfo = (~) ()
    type AttrTransferType FindControllerMaxMatchCountPropertyInfo = ()
    type AttrGetType FindControllerMaxMatchCountPropertyInfo = Word32
    type AttrLabel FindControllerMaxMatchCountPropertyInfo = "max-match-count"
    type AttrOrigin FindControllerMaxMatchCountPropertyInfo = FindController
    attrGet = getFindControllerMaxMatchCount
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.maxMatchCount"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:attr:maxMatchCount"
        })
#endif

-- VVV Prop "options"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "FindOptions"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@options@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' findController #options
-- @
getFindControllerOptions :: (MonadIO m, IsFindController o) => o -> m [WebKit2.Flags.FindOptions]
getFindControllerOptions obj = MIO.liftIO $ B.Properties.getObjectPropertyFlags obj "options"

#if defined(ENABLE_OVERLOADING)
data FindControllerOptionsPropertyInfo
instance AttrInfo FindControllerOptionsPropertyInfo where
    type AttrAllowedOps FindControllerOptionsPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint FindControllerOptionsPropertyInfo = IsFindController
    type AttrSetTypeConstraint FindControllerOptionsPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FindControllerOptionsPropertyInfo = (~) ()
    type AttrTransferType FindControllerOptionsPropertyInfo = ()
    type AttrGetType FindControllerOptionsPropertyInfo = [WebKit2.Flags.FindOptions]
    type AttrLabel FindControllerOptionsPropertyInfo = "options"
    type AttrOrigin FindControllerOptionsPropertyInfo = FindController
    attrGet = getFindControllerOptions
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.options"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:attr:options"
        })
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' findController #text
-- @
getFindControllerText :: (MonadIO m, IsFindController o) => o -> m (Maybe T.Text)
getFindControllerText obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "text"

#if defined(ENABLE_OVERLOADING)
data FindControllerTextPropertyInfo
instance AttrInfo FindControllerTextPropertyInfo where
    type AttrAllowedOps FindControllerTextPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FindControllerTextPropertyInfo = IsFindController
    type AttrSetTypeConstraint FindControllerTextPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FindControllerTextPropertyInfo = (~) ()
    type AttrTransferType FindControllerTextPropertyInfo = ()
    type AttrGetType FindControllerTextPropertyInfo = (Maybe T.Text)
    type AttrLabel FindControllerTextPropertyInfo = "text"
    type AttrOrigin FindControllerTextPropertyInfo = FindController
    attrGet = getFindControllerText
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.text"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:attr:text"
        })
#endif

-- VVV Prop "web-view"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebView"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@web-view@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' findController #webView
-- @
getFindControllerWebView :: (MonadIO m, IsFindController o) => o -> m WebKit2.WebView.WebView
getFindControllerWebView obj = MIO.liftIO $ checkUnexpectedNothing "getFindControllerWebView" $ B.Properties.getObjectPropertyObject obj "web-view" WebKit2.WebView.WebView

-- | Construct a t'GValueConstruct' with valid value for the “@web-view@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFindControllerWebView :: (IsFindController o, MIO.MonadIO m, WebKit2.WebView.IsWebView a) => a -> m (GValueConstruct o)
constructFindControllerWebView val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "web-view" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data FindControllerWebViewPropertyInfo
instance AttrInfo FindControllerWebViewPropertyInfo where
    type AttrAllowedOps FindControllerWebViewPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FindControllerWebViewPropertyInfo = IsFindController
    type AttrSetTypeConstraint FindControllerWebViewPropertyInfo = WebKit2.WebView.IsWebView
    type AttrTransferTypeConstraint FindControllerWebViewPropertyInfo = WebKit2.WebView.IsWebView
    type AttrTransferType FindControllerWebViewPropertyInfo = WebKit2.WebView.WebView
    type AttrGetType FindControllerWebViewPropertyInfo = WebKit2.WebView.WebView
    type AttrLabel FindControllerWebViewPropertyInfo = "web-view"
    type AttrOrigin FindControllerWebViewPropertyInfo = FindController
    attrGet = getFindControllerWebView
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.WebView.WebView v
    attrConstruct = constructFindControllerWebView
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.webView"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#g:attr:webView"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FindController
type instance O.AttributeList FindController = FindControllerAttributeList
type FindControllerAttributeList = ('[ '("maxMatchCount", FindControllerMaxMatchCountPropertyInfo), '("options", FindControllerOptionsPropertyInfo), '("text", FindControllerTextPropertyInfo), '("webView", FindControllerWebViewPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
findControllerMaxMatchCount :: AttrLabelProxy "maxMatchCount"
findControllerMaxMatchCount = AttrLabelProxy

findControllerOptions :: AttrLabelProxy "options"
findControllerOptions = AttrLabelProxy

findControllerText :: AttrLabelProxy "text"
findControllerText = AttrLabelProxy

findControllerWebView :: AttrLabelProxy "webView"
findControllerWebView = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FindController = FindControllerSignalList
type FindControllerSignalList = ('[ '("countedMatches", FindControllerCountedMatchesSignalInfo), '("failedToFindText", FindControllerFailedToFindTextSignalInfo), '("foundText", FindControllerFoundTextSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method FindController::count_matches
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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
--           { argCName = "search_text"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to look for"
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
--           { argCName = "find_options"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a bitmask with the #WebKitFindOptions used in the search"
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
--           { argCName = "max_match_count"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the maximum number of matches allowed in the search"
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

foreign import ccall "webkit_find_controller_count_matches" webkit_find_controller_count_matches :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    CString ->                              -- search_text : TBasicType TUTF8
    Word32 ->                               -- find_options : TBasicType TUInt32
    Word32 ->                               -- max_match_count : TBasicType TUInt
    IO ()

-- | Counts the number of matches for /@searchText@/.
-- 
-- Counts the number of matches for /@searchText@/ found in the
-- t'GI.WebKit2.Objects.WebView.WebView' with the provided /@findOptions@/. The number of
-- matches will be provided by the
-- [FindController::countedMatches]("GI.WebKit2.Objects.FindController#g:signal:countedMatches") signal.
findControllerCountMatches ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> T.Text
    -- ^ /@searchText@/: the text to look for
    -> Word32
    -- ^ /@findOptions@/: a bitmask with the t'GI.WebKit2.Flags.FindOptions' used in the search
    -> Word32
    -- ^ /@maxMatchCount@/: the maximum number of matches allowed in the search
    -> m ()
findControllerCountMatches findController searchText findOptions maxMatchCount = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    searchText' <- textToCString searchText
    webkit_find_controller_count_matches findController' searchText' findOptions maxMatchCount
    touchManagedPtr findController
    freeMem searchText'
    return ()

#if defined(ENABLE_OVERLOADING)
data FindControllerCountMatchesMethodInfo
instance (signature ~ (T.Text -> Word32 -> Word32 -> m ()), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerCountMatchesMethodInfo a signature where
    overloadedMethod = findControllerCountMatches

instance O.OverloadedMethodInfo FindControllerCountMatchesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerCountMatches",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerCountMatches"
        })


#endif

-- method FindController::get_max_match_count
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_get_max_match_count" webkit_find_controller_get_max_match_count :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO Word32

-- | Gets the maximum number of matches to report.
-- 
-- Gets the maximum number of matches to report during a text
-- lookup. This number is passed as the last argument of
-- 'GI.WebKit2.Objects.FindController.findControllerSearch' or
-- 'GI.WebKit2.Objects.FindController.findControllerCountMatches'.
findControllerGetMaxMatchCount ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m Word32
    -- ^ __Returns:__ the maximum number of matches to report.
findControllerGetMaxMatchCount findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    result <- webkit_find_controller_get_max_match_count findController'
    touchManagedPtr findController
    return result

#if defined(ENABLE_OVERLOADING)
data FindControllerGetMaxMatchCountMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerGetMaxMatchCountMethodInfo a signature where
    overloadedMethod = findControllerGetMaxMatchCount

instance O.OverloadedMethodInfo FindControllerGetMaxMatchCountMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerGetMaxMatchCount",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerGetMaxMatchCount"
        })


#endif

-- method FindController::get_options
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_get_options" webkit_find_controller_get_options :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO Word32

-- | Gets the t'GI.WebKit2.Flags.FindOptions' for the current search.
-- 
-- Gets a bitmask containing the t'GI.WebKit2.Flags.FindOptions' associated with
-- the current search.
findControllerGetOptions ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m Word32
    -- ^ __Returns:__ a bitmask containing the t'GI.WebKit2.Flags.FindOptions' associated
    -- with the current search.
findControllerGetOptions findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    result <- webkit_find_controller_get_options findController'
    touchManagedPtr findController
    return result

#if defined(ENABLE_OVERLOADING)
data FindControllerGetOptionsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerGetOptionsMethodInfo a signature where
    overloadedMethod = findControllerGetOptions

instance O.OverloadedMethodInfo FindControllerGetOptionsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerGetOptions",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerGetOptions"
        })


#endif

-- method FindController::get_search_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_get_search_text" webkit_find_controller_get_search_text :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO CString

-- | Gets the text that /@findController@/ is searching for.
-- 
-- Gets the text that /@findController@/ is currently searching
-- for. This text is passed to either
-- 'GI.WebKit2.Objects.FindController.findControllerSearch' or
-- 'GI.WebKit2.Objects.FindController.findControllerCountMatches'.
findControllerGetSearchText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m T.Text
    -- ^ __Returns:__ the text to look for in the t'GI.WebKit2.Objects.WebView.WebView'.
findControllerGetSearchText findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    result <- webkit_find_controller_get_search_text findController'
    checkUnexpectedReturnNULL "findControllerGetSearchText" result
    result' <- cstringToText result
    touchManagedPtr findController
    return result'

#if defined(ENABLE_OVERLOADING)
data FindControllerGetSearchTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerGetSearchTextMethodInfo a signature where
    overloadedMethod = findControllerGetSearchText

instance O.OverloadedMethodInfo FindControllerGetSearchTextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerGetSearchText",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerGetSearchText"
        })


#endif

-- method FindController::get_web_view
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_get_web_view" webkit_find_controller_get_web_view :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO (Ptr WebKit2.WebView.WebView)

-- | Gets the t'GI.WebKit2.Objects.WebView.WebView' this find controller is associated to.
-- 
-- Do
-- not dereference the returned instance as it belongs to the
-- t'GI.WebKit2.Objects.FindController.FindController'.
findControllerGetWebView ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m WebKit2.WebView.WebView
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebView.WebView'.
findControllerGetWebView findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    result <- webkit_find_controller_get_web_view findController'
    checkUnexpectedReturnNULL "findControllerGetWebView" result
    result' <- (newObject WebKit2.WebView.WebView) result
    touchManagedPtr findController
    return result'

#if defined(ENABLE_OVERLOADING)
data FindControllerGetWebViewMethodInfo
instance (signature ~ (m WebKit2.WebView.WebView), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerGetWebViewMethodInfo a signature where
    overloadedMethod = findControllerGetWebView

instance O.OverloadedMethodInfo FindControllerGetWebViewMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerGetWebView",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerGetWebView"
        })


#endif

-- method FindController::search
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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
--           { argCName = "search_text"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to look for"
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
--           { argCName = "find_options"
--           , argType = TBasicType TUInt32
--           , argCType = Just "guint32"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a bitmask with the #WebKitFindOptions used in the search"
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
--           { argCName = "max_match_count"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the maximum number of matches allowed in the search"
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

foreign import ccall "webkit_find_controller_search" webkit_find_controller_search :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    CString ->                              -- search_text : TBasicType TUTF8
    Word32 ->                               -- find_options : TBasicType TUInt32
    Word32 ->                               -- max_match_count : TBasicType TUInt
    IO ()

-- | Looks for /@searchText@/ associated with /@findController@/.
-- 
-- Looks for /@searchText@/ in the t'GI.WebKit2.Objects.WebView.WebView' associated with
-- /@findController@/ since the beginning of the document highlighting
-- up to /@maxMatchCount@/ matches. The outcome of the search will be
-- asynchronously provided by the [FindController::foundText]("GI.WebKit2.Objects.FindController#g:signal:foundText")
-- and [FindController::failedToFindText]("GI.WebKit2.Objects.FindController#g:signal:failedToFindText") signals.
-- 
-- To look for the next or previous occurrences of the same text
-- with the same find options use 'GI.WebKit2.Objects.FindController.findControllerSearchNext'
-- and\/or 'GI.WebKit2.Objects.FindController.findControllerSearchPrevious'. The
-- t'GI.WebKit2.Objects.FindController.FindController' will use the same text and options for the
-- following searches unless they are modified by another call to this
-- method.
-- 
-- Note that if the number of matches is higher than /@maxMatchCount@/
-- then [FindController::foundText]("GI.WebKit2.Objects.FindController#g:signal:foundText") will report @/G_MAXUINT/@ matches
-- instead of the actual number.
-- 
-- Callers should call 'GI.WebKit2.Objects.FindController.findControllerSearchFinish' to
-- finish the current search operation.
findControllerSearch ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> T.Text
    -- ^ /@searchText@/: the text to look for
    -> Word32
    -- ^ /@findOptions@/: a bitmask with the t'GI.WebKit2.Flags.FindOptions' used in the search
    -> Word32
    -- ^ /@maxMatchCount@/: the maximum number of matches allowed in the search
    -> m ()
findControllerSearch findController searchText findOptions maxMatchCount = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    searchText' <- textToCString searchText
    webkit_find_controller_search findController' searchText' findOptions maxMatchCount
    touchManagedPtr findController
    freeMem searchText'
    return ()

#if defined(ENABLE_OVERLOADING)
data FindControllerSearchMethodInfo
instance (signature ~ (T.Text -> Word32 -> Word32 -> m ()), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerSearchMethodInfo a signature where
    overloadedMethod = findControllerSearch

instance O.OverloadedMethodInfo FindControllerSearchMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerSearch",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerSearch"
        })


#endif

-- method FindController::search_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFindController"
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

foreign import ccall "webkit_find_controller_search_finish" webkit_find_controller_search_finish :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO ()

-- | Finishes a find operation.
-- 
-- Finishes a find operation started by
-- 'GI.WebKit2.Objects.FindController.findControllerSearch'. It will basically unhighlight
-- every text match found.
-- 
-- This method will be typically called when the search UI is
-- closed\/hidden by the client application.
findControllerSearchFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: a t'GI.WebKit2.Objects.FindController.FindController'
    -> m ()
findControllerSearchFinish findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    webkit_find_controller_search_finish findController'
    touchManagedPtr findController
    return ()

#if defined(ENABLE_OVERLOADING)
data FindControllerSearchFinishMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerSearchFinishMethodInfo a signature where
    overloadedMethod = findControllerSearchFinish

instance O.OverloadedMethodInfo FindControllerSearchFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerSearchFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerSearchFinish"
        })


#endif

-- method FindController::search_next
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_search_next" webkit_find_controller_search_next :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO ()

-- | Looks for the next occurrence of the search text.
-- 
-- Calling this method before 'GI.WebKit2.Objects.FindController.findControllerSearch' or
-- 'GI.WebKit2.Objects.FindController.findControllerCountMatches' is a programming error.
findControllerSearchNext ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m ()
findControllerSearchNext findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    webkit_find_controller_search_next findController'
    touchManagedPtr findController
    return ()

#if defined(ENABLE_OVERLOADING)
data FindControllerSearchNextMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerSearchNextMethodInfo a signature where
    overloadedMethod = findControllerSearchNext

instance O.OverloadedMethodInfo FindControllerSearchNextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerSearchNext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerSearchNext"
        })


#endif

-- method FindController::search_previous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "find_controller"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FindController" }
--           , argCType = Just "WebKitFindController*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitFindController"
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

foreign import ccall "webkit_find_controller_search_previous" webkit_find_controller_search_previous :: 
    Ptr FindController ->                   -- find_controller : TInterface (Name {namespace = "WebKit2", name = "FindController"})
    IO ()

-- | Looks for the previous occurrence of the search text.
-- 
-- Calling this method before 'GI.WebKit2.Objects.FindController.findControllerSearch' or
-- 'GI.WebKit2.Objects.FindController.findControllerCountMatches' is a programming error.
findControllerSearchPrevious ::
    (B.CallStack.HasCallStack, MonadIO m, IsFindController a) =>
    a
    -- ^ /@findController@/: the t'GI.WebKit2.Objects.FindController.FindController'
    -> m ()
findControllerSearchPrevious findController = liftIO $ do
    findController' <- unsafeManagedPtrCastPtr findController
    webkit_find_controller_search_previous findController'
    touchManagedPtr findController
    return ()

#if defined(ENABLE_OVERLOADING)
data FindControllerSearchPreviousMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFindController a) => O.OverloadedMethod FindControllerSearchPreviousMethodInfo a signature where
    overloadedMethod = findControllerSearchPrevious

instance O.OverloadedMethodInfo FindControllerSearchPreviousMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FindController.findControllerSearchPrevious",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FindController.html#v:findControllerSearchPrevious"
        })


#endif


