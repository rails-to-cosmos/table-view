{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Access to the WebKit inspector.
-- 
-- The WebKit Inspector is a graphical tool to inspect and change the
-- content of a t'GI.WebKit2.Objects.WebView.WebView'. It also includes an interactive
-- JavaScript debugger. Using this class one can get a t'GI.Gtk.Objects.Widget.Widget'
-- which can be embedded into an application to show the inspector.
-- 
-- The inspector is available when the t'GI.WebKit2.Objects.Settings.Settings' of the
-- t'GI.WebKit2.Objects.WebView.WebView' has set the [Settings:enableDeveloperExtras]("GI.WebKit2.Objects.Settings#g:attr:enableDeveloperExtras")
-- to true, otherwise no inspector is available.
-- 
-- 
-- === /c code/
-- >// Enable the developer extras
-- >WebKitSettings *settings = webkit_web_view_get_settings (WEBKIT_WEB_VIEW(my_webview));
-- >g_object_set (G_OBJECT(settings), "enable-developer-extras", TRUE, NULL);
-- >
-- >// Load some data or reload to be able to inspect the page
-- >webkit_web_view_load_uri (WEBKIT_WEB_VIEW(my_webview), "http://www.gnome.org");
-- >
-- >// Show the inspector
-- >WebKitWebInspector *inspector = webkit_web_view_get_inspector (WEBKIT_WEB_VIEW(my_webview));
-- >webkit_web_inspector_show (WEBKIT_WEB_INSPECTOR(inspector));
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebInspector
    ( 

-- * Exported types
    WebInspector(..)                        ,
    IsWebInspector                          ,
    toWebInspector                          ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [attach]("GI.WebKit2.Objects.WebInspector#g:method:attach"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [close]("GI.WebKit2.Objects.WebInspector#g:method:close"), [detach]("GI.WebKit2.Objects.WebInspector#g:method:detach"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isAttached]("GI.WebKit2.Objects.WebInspector#g:method:isAttached"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [show]("GI.WebKit2.Objects.WebInspector#g:method:show"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAttachedHeight]("GI.WebKit2.Objects.WebInspector#g:method:getAttachedHeight"), [getCanAttach]("GI.WebKit2.Objects.WebInspector#g:method:getCanAttach"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getInspectedUri]("GI.WebKit2.Objects.WebInspector#g:method:getInspectedUri"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getWebView]("GI.WebKit2.Objects.WebInspector#g:method:getWebView").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWebInspectorMethod               ,
#endif

-- ** attach #method:attach#

#if defined(ENABLE_OVERLOADING)
    WebInspectorAttachMethodInfo            ,
#endif
    webInspectorAttach                      ,


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    WebInspectorCloseMethodInfo             ,
#endif
    webInspectorClose                       ,


-- ** detach #method:detach#

#if defined(ENABLE_OVERLOADING)
    WebInspectorDetachMethodInfo            ,
#endif
    webInspectorDetach                      ,


-- ** getAttachedHeight #method:getAttachedHeight#

#if defined(ENABLE_OVERLOADING)
    WebInspectorGetAttachedHeightMethodInfo ,
#endif
    webInspectorGetAttachedHeight           ,


-- ** getCanAttach #method:getCanAttach#

#if defined(ENABLE_OVERLOADING)
    WebInspectorGetCanAttachMethodInfo      ,
#endif
    webInspectorGetCanAttach                ,


-- ** getInspectedUri #method:getInspectedUri#

#if defined(ENABLE_OVERLOADING)
    WebInspectorGetInspectedUriMethodInfo   ,
#endif
    webInspectorGetInspectedUri             ,


-- ** getWebView #method:getWebView#

#if defined(ENABLE_OVERLOADING)
    WebInspectorGetWebViewMethodInfo        ,
#endif
    webInspectorGetWebView                  ,


-- ** isAttached #method:isAttached#

#if defined(ENABLE_OVERLOADING)
    WebInspectorIsAttachedMethodInfo        ,
#endif
    webInspectorIsAttached                  ,


-- ** show #method:show#

#if defined(ENABLE_OVERLOADING)
    WebInspectorShowMethodInfo              ,
#endif
    webInspectorShow                        ,




 -- * Properties


-- ** attachedHeight #attr:attachedHeight#
-- | The height that the inspector view should have when it is attached.

#if defined(ENABLE_OVERLOADING)
    WebInspectorAttachedHeightPropertyInfo  ,
#endif
    getWebInspectorAttachedHeight           ,
#if defined(ENABLE_OVERLOADING)
    webInspectorAttachedHeight              ,
#endif


-- ** canAttach #attr:canAttach#
-- | Whether the /@inspector@/ can be attached to the same window that contains
-- the inspected view.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    WebInspectorCanAttachPropertyInfo       ,
#endif
    getWebInspectorCanAttach                ,
#if defined(ENABLE_OVERLOADING)
    webInspectorCanAttach                   ,
#endif


-- ** inspectedUri #attr:inspectedUri#
-- | The URI that is currently being inspected.

#if defined(ENABLE_OVERLOADING)
    WebInspectorInspectedUriPropertyInfo    ,
#endif
    getWebInspectorInspectedUri             ,
#if defined(ENABLE_OVERLOADING)
    webInspectorInspectedUri                ,
#endif




 -- * Signals


-- ** attach #signal:attach#

    WebInspectorAttachCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebInspectorAttachSignalInfo            ,
#endif
    afterWebInspectorAttach                 ,
    onWebInspectorAttach                    ,


-- ** bringToFront #signal:bringToFront#

    WebInspectorBringToFrontCallback        ,
#if defined(ENABLE_OVERLOADING)
    WebInspectorBringToFrontSignalInfo      ,
#endif
    afterWebInspectorBringToFront           ,
    onWebInspectorBringToFront              ,


-- ** closed #signal:closed#

    WebInspectorClosedCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebInspectorClosedSignalInfo            ,
#endif
    afterWebInspectorClosed                 ,
    onWebInspectorClosed                    ,


-- ** detach #signal:detach#

    WebInspectorDetachCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebInspectorDetachSignalInfo            ,
#endif
    afterWebInspectorDetach                 ,
    onWebInspectorDetach                    ,


-- ** openWindow #signal:openWindow#

    WebInspectorOpenWindowCallback          ,
#if defined(ENABLE_OVERLOADING)
    WebInspectorOpenWindowSignalInfo        ,
#endif
    afterWebInspectorOpenWindow             ,
    onWebInspectorOpenWindow                ,




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
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebViewBase as WebKit2.WebViewBase

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebViewBase as WebKit2.WebViewBase

#endif

-- | Memory-managed wrapper type.
newtype WebInspector = WebInspector (SP.ManagedPtr WebInspector)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebInspector where
    toManagedPtr (WebInspector p) = p

foreign import ccall "webkit_web_inspector_get_type"
    c_webkit_web_inspector_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebInspector where
    glibType = c_webkit_web_inspector_get_type

instance B.Types.GObject WebInspector

-- | Type class for types which can be safely cast to t'WebInspector', for instance with `toWebInspector`.
class (SP.GObject o, O.IsDescendantOf WebInspector o) => IsWebInspector o
instance (SP.GObject o, O.IsDescendantOf WebInspector o) => IsWebInspector o

instance O.HasParentTypes WebInspector
type instance O.ParentTypes WebInspector = '[GObject.Object.Object]

-- | Cast to t'WebInspector', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebInspector :: (MIO.MonadIO m, IsWebInspector o) => o -> m WebInspector
toWebInspector = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebInspector

-- | Convert t'WebInspector' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebInspector) where
    gvalueGType_ = c_webkit_web_inspector_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebInspector)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebInspector)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebInspector ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebInspectorMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebInspectorMethod "attach" o = WebInspectorAttachMethodInfo
    ResolveWebInspectorMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebInspectorMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebInspectorMethod "close" o = WebInspectorCloseMethodInfo
    ResolveWebInspectorMethod "detach" o = WebInspectorDetachMethodInfo
    ResolveWebInspectorMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebInspectorMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebInspectorMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebInspectorMethod "isAttached" o = WebInspectorIsAttachedMethodInfo
    ResolveWebInspectorMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebInspectorMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebInspectorMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebInspectorMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebInspectorMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebInspectorMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebInspectorMethod "show" o = WebInspectorShowMethodInfo
    ResolveWebInspectorMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebInspectorMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebInspectorMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebInspectorMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebInspectorMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebInspectorMethod "getAttachedHeight" o = WebInspectorGetAttachedHeightMethodInfo
    ResolveWebInspectorMethod "getCanAttach" o = WebInspectorGetCanAttachMethodInfo
    ResolveWebInspectorMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebInspectorMethod "getInspectedUri" o = WebInspectorGetInspectedUriMethodInfo
    ResolveWebInspectorMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebInspectorMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebInspectorMethod "getWebView" o = WebInspectorGetWebViewMethodInfo
    ResolveWebInspectorMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebInspectorMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebInspectorMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebInspectorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebInspectorMethod t WebInspector, O.OverloadedMethod info WebInspector p) => OL.IsLabel t (WebInspector -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebInspectorMethod t WebInspector, O.OverloadedMethod info WebInspector p, R.HasField t WebInspector p) => R.HasField t WebInspector p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebInspectorMethod t WebInspector, O.OverloadedMethodInfo info WebInspector) => OL.IsLabel t (O.MethodProxy info WebInspector) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal WebInspector::attach
-- | Emitted when the inspector is requested to be attached to the window
-- where the inspected web view is.
-- If this signal is not handled the inspector view will be automatically
-- attached to the inspected view, so you only need to handle this signal
-- if you want to attach the inspector view yourself (for example, to add
-- the inspector view to a browser tab).
-- 
-- To prevent the inspector view from being attached you can connect to this
-- signal and simply return 'P.True'.
type WebInspectorAttachCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebInspectorAttachCallback =
    Ptr WebInspector ->                     -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebInspectorAttachCallback`.
foreign import ccall "wrapper"
    mk_WebInspectorAttachCallback :: C_WebInspectorAttachCallback -> IO (FunPtr C_WebInspectorAttachCallback)

wrap_WebInspectorAttachCallback :: 
    GObject a => (a -> WebInspectorAttachCallback) ->
    C_WebInspectorAttachCallback
wrap_WebInspectorAttachCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [attach](#signal:attach) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webInspector #attach callback
-- @
-- 
-- 
onWebInspectorAttach :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorAttachCallback) -> m SignalHandlerId
onWebInspectorAttach obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorAttachCallback wrapped
    wrapped'' <- mk_WebInspectorAttachCallback wrapped'
    connectSignalFunPtr obj "attach" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [attach](#signal:attach) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webInspector #attach callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebInspectorAttach :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorAttachCallback) -> m SignalHandlerId
afterWebInspectorAttach obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorAttachCallback wrapped
    wrapped'' <- mk_WebInspectorAttachCallback wrapped'
    connectSignalFunPtr obj "attach" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebInspectorAttachSignalInfo
instance SignalInfo WebInspectorAttachSignalInfo where
    type HaskellCallbackType WebInspectorAttachSignalInfo = WebInspectorAttachCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebInspectorAttachCallback cb
        cb'' <- mk_WebInspectorAttachCallback cb'
        connectSignalFunPtr obj "attach" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector::attach"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:signal:attach"})

#endif

-- signal WebInspector::bring-to-front
-- | Emitted when the inspector should be shown.
-- 
-- If the inspector is not attached the inspector window should be shown
-- on top of any other windows.
-- If the inspector is attached the inspector view should be made visible.
-- For example, if the inspector view is attached using a tab in a browser
-- window, the browser window should be raised and the tab containing the
-- inspector view should be the active one.
-- In both cases, if this signal is not handled, the default implementation
-- calls 'GI.Gtk.Objects.Window.windowPresent' on the current toplevel t'GI.Gtk.Objects.Window.Window' of the
-- inspector view.
type WebInspectorBringToFrontCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebInspectorBringToFrontCallback =
    Ptr WebInspector ->                     -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebInspectorBringToFrontCallback`.
foreign import ccall "wrapper"
    mk_WebInspectorBringToFrontCallback :: C_WebInspectorBringToFrontCallback -> IO (FunPtr C_WebInspectorBringToFrontCallback)

wrap_WebInspectorBringToFrontCallback :: 
    GObject a => (a -> WebInspectorBringToFrontCallback) ->
    C_WebInspectorBringToFrontCallback
wrap_WebInspectorBringToFrontCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [bringToFront](#signal:bringToFront) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webInspector #bringToFront callback
-- @
-- 
-- 
onWebInspectorBringToFront :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorBringToFrontCallback) -> m SignalHandlerId
onWebInspectorBringToFront obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorBringToFrontCallback wrapped
    wrapped'' <- mk_WebInspectorBringToFrontCallback wrapped'
    connectSignalFunPtr obj "bring-to-front" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [bringToFront](#signal:bringToFront) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webInspector #bringToFront callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebInspectorBringToFront :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorBringToFrontCallback) -> m SignalHandlerId
afterWebInspectorBringToFront obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorBringToFrontCallback wrapped
    wrapped'' <- mk_WebInspectorBringToFrontCallback wrapped'
    connectSignalFunPtr obj "bring-to-front" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebInspectorBringToFrontSignalInfo
instance SignalInfo WebInspectorBringToFrontSignalInfo where
    type HaskellCallbackType WebInspectorBringToFrontSignalInfo = WebInspectorBringToFrontCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebInspectorBringToFrontCallback cb
        cb'' <- mk_WebInspectorBringToFrontCallback cb'
        connectSignalFunPtr obj "bring-to-front" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector::bring-to-front"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:signal:bringToFront"})

#endif

-- signal WebInspector::closed
-- | Emitted when the inspector page is closed. If you are using your own
-- inspector window, you should connect to this signal and destroy your
-- window.
type WebInspectorClosedCallback =
    IO ()

type C_WebInspectorClosedCallback =
    Ptr WebInspector ->                     -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebInspectorClosedCallback`.
foreign import ccall "wrapper"
    mk_WebInspectorClosedCallback :: C_WebInspectorClosedCallback -> IO (FunPtr C_WebInspectorClosedCallback)

wrap_WebInspectorClosedCallback :: 
    GObject a => (a -> WebInspectorClosedCallback) ->
    C_WebInspectorClosedCallback
wrap_WebInspectorClosedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webInspector #closed callback
-- @
-- 
-- 
onWebInspectorClosed :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorClosedCallback) -> m SignalHandlerId
onWebInspectorClosed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorClosedCallback wrapped
    wrapped'' <- mk_WebInspectorClosedCallback wrapped'
    connectSignalFunPtr obj "closed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webInspector #closed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebInspectorClosed :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorClosedCallback) -> m SignalHandlerId
afterWebInspectorClosed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorClosedCallback wrapped
    wrapped'' <- mk_WebInspectorClosedCallback wrapped'
    connectSignalFunPtr obj "closed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebInspectorClosedSignalInfo
instance SignalInfo WebInspectorClosedSignalInfo where
    type HaskellCallbackType WebInspectorClosedSignalInfo = WebInspectorClosedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebInspectorClosedCallback cb
        cb'' <- mk_WebInspectorClosedCallback cb'
        connectSignalFunPtr obj "closed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector::closed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:signal:closed"})

#endif

-- signal WebInspector::detach
-- | Emitted when the inspector is requested to be detached from the window
-- it is currently attached to. The inspector is detached when the inspector page
-- is about to be closed, and this signal is emitted right before
-- [WebInspector::closed]("GI.WebKit2.Objects.WebInspector#g:signal:closed"), or when the user clicks on the detach button
-- in the inspector view to show the inspector in a separate window. In this case
-- the signal [WebInspector::openWindow]("GI.WebKit2.Objects.WebInspector#g:signal:openWindow") is emitted after this one.
-- 
-- To prevent the inspector view from being detached you can connect to this
-- signal and simply return 'P.True'.
type WebInspectorDetachCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebInspectorDetachCallback =
    Ptr WebInspector ->                     -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebInspectorDetachCallback`.
foreign import ccall "wrapper"
    mk_WebInspectorDetachCallback :: C_WebInspectorDetachCallback -> IO (FunPtr C_WebInspectorDetachCallback)

wrap_WebInspectorDetachCallback :: 
    GObject a => (a -> WebInspectorDetachCallback) ->
    C_WebInspectorDetachCallback
wrap_WebInspectorDetachCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [detach](#signal:detach) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webInspector #detach callback
-- @
-- 
-- 
onWebInspectorDetach :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorDetachCallback) -> m SignalHandlerId
onWebInspectorDetach obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorDetachCallback wrapped
    wrapped'' <- mk_WebInspectorDetachCallback wrapped'
    connectSignalFunPtr obj "detach" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [detach](#signal:detach) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webInspector #detach callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebInspectorDetach :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorDetachCallback) -> m SignalHandlerId
afterWebInspectorDetach obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorDetachCallback wrapped
    wrapped'' <- mk_WebInspectorDetachCallback wrapped'
    connectSignalFunPtr obj "detach" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebInspectorDetachSignalInfo
instance SignalInfo WebInspectorDetachSignalInfo where
    type HaskellCallbackType WebInspectorDetachSignalInfo = WebInspectorDetachCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebInspectorDetachCallback cb
        cb'' <- mk_WebInspectorDetachCallback cb'
        connectSignalFunPtr obj "detach" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector::detach"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:signal:detach"})

#endif

-- signal WebInspector::open-window
-- | Emitted when the inspector is requested to open in a separate window.
-- If this signal is not handled, a t'GI.Gtk.Objects.Window.Window' with the inspector will be
-- created and shown, so you only need to handle this signal if you want
-- to use your own window.
-- This signal is emitted after [WebInspector::detach]("GI.WebKit2.Objects.WebInspector#g:signal:detach") to show
-- the inspector in a separate window after being detached.
-- 
-- To prevent the inspector from being shown you can connect to this
-- signal and simply return 'P.True'
type WebInspectorOpenWindowCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebInspectorOpenWindowCallback =
    Ptr WebInspector ->                     -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebInspectorOpenWindowCallback`.
foreign import ccall "wrapper"
    mk_WebInspectorOpenWindowCallback :: C_WebInspectorOpenWindowCallback -> IO (FunPtr C_WebInspectorOpenWindowCallback)

wrap_WebInspectorOpenWindowCallback :: 
    GObject a => (a -> WebInspectorOpenWindowCallback) ->
    C_WebInspectorOpenWindowCallback
wrap_WebInspectorOpenWindowCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [openWindow](#signal:openWindow) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webInspector #openWindow callback
-- @
-- 
-- 
onWebInspectorOpenWindow :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorOpenWindowCallback) -> m SignalHandlerId
onWebInspectorOpenWindow obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorOpenWindowCallback wrapped
    wrapped'' <- mk_WebInspectorOpenWindowCallback wrapped'
    connectSignalFunPtr obj "open-window" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [openWindow](#signal:openWindow) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webInspector #openWindow callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebInspectorOpenWindow :: (IsWebInspector a, MonadIO m) => a -> ((?self :: a) => WebInspectorOpenWindowCallback) -> m SignalHandlerId
afterWebInspectorOpenWindow obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebInspectorOpenWindowCallback wrapped
    wrapped'' <- mk_WebInspectorOpenWindowCallback wrapped'
    connectSignalFunPtr obj "open-window" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebInspectorOpenWindowSignalInfo
instance SignalInfo WebInspectorOpenWindowSignalInfo where
    type HaskellCallbackType WebInspectorOpenWindowSignalInfo = WebInspectorOpenWindowCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebInspectorOpenWindowCallback cb
        cb'' <- mk_WebInspectorOpenWindowCallback cb'
        connectSignalFunPtr obj "open-window" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector::open-window"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:signal:openWindow"})

#endif

-- VVV Prop "attached-height"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@attached-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webInspector #attachedHeight
-- @
getWebInspectorAttachedHeight :: (MonadIO m, IsWebInspector o) => o -> m Word32
getWebInspectorAttachedHeight obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "attached-height"

#if defined(ENABLE_OVERLOADING)
data WebInspectorAttachedHeightPropertyInfo
instance AttrInfo WebInspectorAttachedHeightPropertyInfo where
    type AttrAllowedOps WebInspectorAttachedHeightPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebInspectorAttachedHeightPropertyInfo = IsWebInspector
    type AttrSetTypeConstraint WebInspectorAttachedHeightPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebInspectorAttachedHeightPropertyInfo = (~) ()
    type AttrTransferType WebInspectorAttachedHeightPropertyInfo = ()
    type AttrGetType WebInspectorAttachedHeightPropertyInfo = Word32
    type AttrLabel WebInspectorAttachedHeightPropertyInfo = "attached-height"
    type AttrOrigin WebInspectorAttachedHeightPropertyInfo = WebInspector
    attrGet = getWebInspectorAttachedHeight
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.attachedHeight"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:attr:attachedHeight"
        })
#endif

-- VVV Prop "can-attach"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@can-attach@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webInspector #canAttach
-- @
getWebInspectorCanAttach :: (MonadIO m, IsWebInspector o) => o -> m Bool
getWebInspectorCanAttach obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "can-attach"

#if defined(ENABLE_OVERLOADING)
data WebInspectorCanAttachPropertyInfo
instance AttrInfo WebInspectorCanAttachPropertyInfo where
    type AttrAllowedOps WebInspectorCanAttachPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebInspectorCanAttachPropertyInfo = IsWebInspector
    type AttrSetTypeConstraint WebInspectorCanAttachPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebInspectorCanAttachPropertyInfo = (~) ()
    type AttrTransferType WebInspectorCanAttachPropertyInfo = ()
    type AttrGetType WebInspectorCanAttachPropertyInfo = Bool
    type AttrLabel WebInspectorCanAttachPropertyInfo = "can-attach"
    type AttrOrigin WebInspectorCanAttachPropertyInfo = WebInspector
    attrGet = getWebInspectorCanAttach
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.canAttach"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:attr:canAttach"
        })
#endif

-- VVV Prop "inspected-uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@inspected-uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webInspector #inspectedUri
-- @
getWebInspectorInspectedUri :: (MonadIO m, IsWebInspector o) => o -> m (Maybe T.Text)
getWebInspectorInspectedUri obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "inspected-uri"

#if defined(ENABLE_OVERLOADING)
data WebInspectorInspectedUriPropertyInfo
instance AttrInfo WebInspectorInspectedUriPropertyInfo where
    type AttrAllowedOps WebInspectorInspectedUriPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebInspectorInspectedUriPropertyInfo = IsWebInspector
    type AttrSetTypeConstraint WebInspectorInspectedUriPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebInspectorInspectedUriPropertyInfo = (~) ()
    type AttrTransferType WebInspectorInspectedUriPropertyInfo = ()
    type AttrGetType WebInspectorInspectedUriPropertyInfo = (Maybe T.Text)
    type AttrLabel WebInspectorInspectedUriPropertyInfo = "inspected-uri"
    type AttrOrigin WebInspectorInspectedUriPropertyInfo = WebInspector
    attrGet = getWebInspectorInspectedUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.inspectedUri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#g:attr:inspectedUri"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebInspector
type instance O.AttributeList WebInspector = WebInspectorAttributeList
type WebInspectorAttributeList = ('[ '("attachedHeight", WebInspectorAttachedHeightPropertyInfo), '("canAttach", WebInspectorCanAttachPropertyInfo), '("inspectedUri", WebInspectorInspectedUriPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
webInspectorAttachedHeight :: AttrLabelProxy "attachedHeight"
webInspectorAttachedHeight = AttrLabelProxy

webInspectorCanAttach :: AttrLabelProxy "canAttach"
webInspectorCanAttach = AttrLabelProxy

webInspectorInspectedUri :: AttrLabelProxy "inspectedUri"
webInspectorInspectedUri = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebInspector = WebInspectorSignalList
type WebInspectorSignalList = ('[ '("attach", WebInspectorAttachSignalInfo), '("bringToFront", WebInspectorBringToFrontSignalInfo), '("closed", WebInspectorClosedSignalInfo), '("detach", WebInspectorDetachSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("openWindow", WebInspectorOpenWindowSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebInspector::attach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_attach" webkit_web_inspector_attach :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO ()

-- | Request /@inspector@/ to be attached.
-- 
-- The signal [WebInspector::attach]("GI.WebKit2.Objects.WebInspector#g:signal:attach")
-- will be emitted. If the inspector is already attached it does nothing.
webInspectorAttach ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m ()
webInspectorAttach inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    webkit_web_inspector_attach inspector'
    touchManagedPtr inspector
    return ()

#if defined(ENABLE_OVERLOADING)
data WebInspectorAttachMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorAttachMethodInfo a signature where
    overloadedMethod = webInspectorAttach

instance O.OverloadedMethodInfo WebInspectorAttachMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorAttach",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorAttach"
        })


#endif

-- method WebInspector::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_close" webkit_web_inspector_close :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO ()

-- | Request /@inspector@/ to be closed.
webInspectorClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m ()
webInspectorClose inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    webkit_web_inspector_close inspector'
    touchManagedPtr inspector
    return ()

#if defined(ENABLE_OVERLOADING)
data WebInspectorCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorCloseMethodInfo a signature where
    overloadedMethod = webInspectorClose

instance O.OverloadedMethodInfo WebInspectorCloseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorClose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorClose"
        })


#endif

-- method WebInspector::detach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_detach" webkit_web_inspector_detach :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO ()

-- | Request /@inspector@/ to be detached.
-- 
-- The signal [WebInspector::detach]("GI.WebKit2.Objects.WebInspector#g:signal:detach")
-- will be emitted. If the inspector is already detached it does nothing.
webInspectorDetach ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m ()
webInspectorDetach inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    webkit_web_inspector_detach inspector'
    touchManagedPtr inspector
    return ()

#if defined(ENABLE_OVERLOADING)
data WebInspectorDetachMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorDetachMethodInfo a signature where
    overloadedMethod = webInspectorDetach

instance O.OverloadedMethodInfo WebInspectorDetachMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorDetach",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorDetach"
        })


#endif

-- method WebInspector::get_attached_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_get_attached_height" webkit_web_inspector_get_attached_height :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO Word32

-- | Get the height that the inspector view when attached.
-- 
-- Get the height that the inspector view should have when
-- it\'s attached. If the inspector view is not attached this
-- returns 0.
webInspectorGetAttachedHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m Word32
    -- ^ __Returns:__ the height of the inspector view when attached
webInspectorGetAttachedHeight inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    result <- webkit_web_inspector_get_attached_height inspector'
    touchManagedPtr inspector
    return result

#if defined(ENABLE_OVERLOADING)
data WebInspectorGetAttachedHeightMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorGetAttachedHeightMethodInfo a signature where
    overloadedMethod = webInspectorGetAttachedHeight

instance O.OverloadedMethodInfo WebInspectorGetAttachedHeightMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorGetAttachedHeight",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorGetAttachedHeight"
        })


#endif

-- method WebInspector::get_can_attach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_get_can_attach" webkit_web_inspector_get_can_attach :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO CInt

-- | Whether the /@inspector@/ can be attached to the same window that contains
-- the inspected view.
-- 
-- /Since: 2.8/
webInspectorGetCanAttach ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there is enough room for the inspector view inside the
    --     window that contains the inspected view, or 'P.False' otherwise.
webInspectorGetCanAttach inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    result <- webkit_web_inspector_get_can_attach inspector'
    let result' = (/= 0) result
    touchManagedPtr inspector
    return result'

#if defined(ENABLE_OVERLOADING)
data WebInspectorGetCanAttachMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorGetCanAttachMethodInfo a signature where
    overloadedMethod = webInspectorGetCanAttach

instance O.OverloadedMethodInfo WebInspectorGetCanAttachMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorGetCanAttach",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorGetCanAttach"
        })


#endif

-- method WebInspector::get_inspected_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_get_inspected_uri" webkit_web_inspector_get_inspected_uri :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO CString

-- | Get the URI that is currently being inspected.
-- 
-- This can be 'P.Nothing' if
-- nothing has been loaded yet in the inspected view, if the inspector
-- has been closed or when inspected view was loaded from a HTML string
-- instead of a URI.
webInspectorGetInspectedUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the URI that is currently being inspected or 'P.Nothing'
webInspectorGetInspectedUri inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    result <- webkit_web_inspector_get_inspected_uri inspector'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr inspector
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebInspectorGetInspectedUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorGetInspectedUriMethodInfo a signature where
    overloadedMethod = webInspectorGetInspectedUri

instance O.OverloadedMethodInfo WebInspectorGetInspectedUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorGetInspectedUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorGetInspectedUri"
        })


#endif

-- method WebInspector::get_web_view
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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
--               (TInterface Name { namespace = "WebKit2" , name = "WebViewBase" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_inspector_get_web_view" webkit_web_inspector_get_web_view :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO (Ptr WebKit2.WebViewBase.WebViewBase)

-- | Get the t'GI.WebKit2.Objects.WebViewBase.WebViewBase' used to display the inspector.
-- 
-- This might be 'P.Nothing' if the inspector hasn\'t been loaded yet,
-- or it has been closed.
webInspectorGetWebView ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m (Maybe WebKit2.WebViewBase.WebViewBase)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebViewBase.WebViewBase' used to display the inspector or 'P.Nothing'
webInspectorGetWebView inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    result <- webkit_web_inspector_get_web_view inspector'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.WebViewBase.WebViewBase) result'
        return result''
    touchManagedPtr inspector
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebInspectorGetWebViewMethodInfo
instance (signature ~ (m (Maybe WebKit2.WebViewBase.WebViewBase)), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorGetWebViewMethodInfo a signature where
    overloadedMethod = webInspectorGetWebView

instance O.OverloadedMethodInfo WebInspectorGetWebViewMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorGetWebView",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorGetWebView"
        })


#endif

-- method WebInspector::is_attached
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_is_attached" webkit_web_inspector_is_attached :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO CInt

-- | Whether the /@inspector@/ view is currently attached to the same window that contains
-- the inspected view.
webInspectorIsAttached ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@inspector@/ is currently attached or 'P.False' otherwise
webInspectorIsAttached inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    result <- webkit_web_inspector_is_attached inspector'
    let result' = (/= 0) result
    touchManagedPtr inspector
    return result'

#if defined(ENABLE_OVERLOADING)
data WebInspectorIsAttachedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorIsAttachedMethodInfo a signature where
    overloadedMethod = webInspectorIsAttached

instance O.OverloadedMethodInfo WebInspectorIsAttachedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorIsAttached",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorIsAttached"
        })


#endif

-- method WebInspector::show
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "inspector"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebInspector" }
--           , argCType = Just "WebKitWebInspector*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebInspector"
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

foreign import ccall "webkit_web_inspector_show" webkit_web_inspector_show :: 
    Ptr WebInspector ->                     -- inspector : TInterface (Name {namespace = "WebKit2", name = "WebInspector"})
    IO ()

-- | Request /@inspector@/ to be shown.
webInspectorShow ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebInspector a) =>
    a
    -- ^ /@inspector@/: a t'GI.WebKit2.Objects.WebInspector.WebInspector'
    -> m ()
webInspectorShow inspector = liftIO $ do
    inspector' <- unsafeManagedPtrCastPtr inspector
    webkit_web_inspector_show inspector'
    touchManagedPtr inspector
    return ()

#if defined(ENABLE_OVERLOADING)
data WebInspectorShowMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebInspector a) => O.OverloadedMethod WebInspectorShowMethodInfo a signature where
    overloadedMethod = webInspectorShow

instance O.OverloadedMethodInfo WebInspectorShowMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebInspector.webInspectorShow",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebInspector.html#v:webInspectorShow"
        })


#endif


