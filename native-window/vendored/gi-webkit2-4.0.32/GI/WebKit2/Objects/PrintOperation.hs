{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Controls a print operation.
-- 
-- A t'GI.WebKit2.Objects.PrintOperation.PrintOperation' controls a print operation in WebKit. With
-- a similar API to t'GI.Gtk.Objects.PrintOperation.PrintOperation', it lets you set the print
-- settings with 'GI.WebKit2.Objects.PrintOperation.printOperationSetPrintSettings' or
-- display the print dialog with 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.PrintOperation
    ( 

-- * Exported types
    PrintOperation(..)                      ,
    IsPrintOperation                        ,
    toPrintOperation                        ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [print]("GI.WebKit2.Objects.PrintOperation#g:method:print"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDialog]("GI.WebKit2.Objects.PrintOperation#g:method:runDialog"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getPageSetup]("GI.WebKit2.Objects.PrintOperation#g:method:getPageSetup"), [getPrintSettings]("GI.WebKit2.Objects.PrintOperation#g:method:getPrintSettings"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setPageSetup]("GI.WebKit2.Objects.PrintOperation#g:method:setPageSetup"), [setPrintSettings]("GI.WebKit2.Objects.PrintOperation#g:method:setPrintSettings"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolvePrintOperationMethod             ,
#endif

-- ** getPageSetup #method:getPageSetup#

#if defined(ENABLE_OVERLOADING)
    PrintOperationGetPageSetupMethodInfo    ,
#endif
    printOperationGetPageSetup              ,


-- ** getPrintSettings #method:getPrintSettings#

#if defined(ENABLE_OVERLOADING)
    PrintOperationGetPrintSettingsMethodInfo,
#endif
    printOperationGetPrintSettings          ,


-- ** new #method:new#

    printOperationNew                       ,


-- ** print #method:print#

#if defined(ENABLE_OVERLOADING)
    PrintOperationPrintMethodInfo           ,
#endif
    printOperationPrint                     ,


-- ** runDialog #method:runDialog#

#if defined(ENABLE_OVERLOADING)
    PrintOperationRunDialogMethodInfo       ,
#endif
    printOperationRunDialog                 ,


-- ** setPageSetup #method:setPageSetup#

#if defined(ENABLE_OVERLOADING)
    PrintOperationSetPageSetupMethodInfo    ,
#endif
    printOperationSetPageSetup              ,


-- ** setPrintSettings #method:setPrintSettings#

#if defined(ENABLE_OVERLOADING)
    PrintOperationSetPrintSettingsMethodInfo,
#endif
    printOperationSetPrintSettings          ,




 -- * Properties


-- ** pageSetup #attr:pageSetup#
-- | The initial t'GI.Gtk.Objects.PageSetup.PageSetup' for the print operation.

#if defined(ENABLE_OVERLOADING)
    PrintOperationPageSetupPropertyInfo     ,
#endif
    constructPrintOperationPageSetup        ,
    getPrintOperationPageSetup              ,
#if defined(ENABLE_OVERLOADING)
    printOperationPageSetup                 ,
#endif
    setPrintOperationPageSetup              ,


-- ** printSettings #attr:printSettings#
-- | The initial t'GI.Gtk.Objects.PrintSettings.PrintSettings' for the print operation.

#if defined(ENABLE_OVERLOADING)
    PrintOperationPrintSettingsPropertyInfo ,
#endif
    constructPrintOperationPrintSettings    ,
    getPrintOperationPrintSettings          ,
#if defined(ENABLE_OVERLOADING)
    printOperationPrintSettings             ,
#endif
    setPrintOperationPrintSettings          ,


-- ** webView #attr:webView#
-- | The t'GI.WebKit2.Objects.WebView.WebView' that will be printed.

#if defined(ENABLE_OVERLOADING)
    PrintOperationWebViewPropertyInfo       ,
#endif
    constructPrintOperationWebView          ,
    getPrintOperationWebView                ,
#if defined(ENABLE_OVERLOADING)
    printOperationWebView                   ,
#endif




 -- * Signals


-- ** createCustomWidget #signal:createCustomWidget#

    PrintOperationCreateCustomWidgetCallback,
#if defined(ENABLE_OVERLOADING)
    PrintOperationCreateCustomWidgetSignalInfo,
#endif
    afterPrintOperationCreateCustomWidget   ,
    onPrintOperationCreateCustomWidget      ,


-- ** failed #signal:failed#

    PrintOperationFailedCallback            ,
#if defined(ENABLE_OVERLOADING)
    PrintOperationFailedSignalInfo          ,
#endif
    afterPrintOperationFailed               ,
    onPrintOperationFailed                  ,


-- ** finished #signal:finished#

    PrintOperationFinishedCallback          ,
#if defined(ENABLE_OVERLOADING)
    PrintOperationFinishedSignalInfo        ,
#endif
    afterPrintOperationFinished             ,
    onPrintOperationFinished                ,




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
import qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import qualified GI.Gtk.Objects.PrintSettings as Gtk.PrintSettings
import qualified GI.Gtk.Objects.Window as Gtk.Window
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintCustomWidget as WebKit2.PrintCustomWidget
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebView as WebKit2.WebView

#endif

-- | Memory-managed wrapper type.
newtype PrintOperation = PrintOperation (SP.ManagedPtr PrintOperation)
    deriving (Eq)

instance SP.ManagedPtrNewtype PrintOperation where
    toManagedPtr (PrintOperation p) = p

foreign import ccall "webkit_print_operation_get_type"
    c_webkit_print_operation_get_type :: IO B.Types.GType

instance B.Types.TypedObject PrintOperation where
    glibType = c_webkit_print_operation_get_type

instance B.Types.GObject PrintOperation

-- | Type class for types which can be safely cast to t'PrintOperation', for instance with `toPrintOperation`.
class (SP.GObject o, O.IsDescendantOf PrintOperation o) => IsPrintOperation o
instance (SP.GObject o, O.IsDescendantOf PrintOperation o) => IsPrintOperation o

instance O.HasParentTypes PrintOperation
type instance O.ParentTypes PrintOperation = '[GObject.Object.Object]

-- | Cast to t'PrintOperation', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPrintOperation :: (MIO.MonadIO m, IsPrintOperation o) => o -> m PrintOperation
toPrintOperation = MIO.liftIO . B.ManagedPtr.unsafeCastTo PrintOperation

-- | Convert t'PrintOperation' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PrintOperation) where
    gvalueGType_ = c_webkit_print_operation_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr PrintOperation)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr PrintOperation)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject PrintOperation ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolvePrintOperationMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePrintOperationMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePrintOperationMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePrintOperationMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePrintOperationMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePrintOperationMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePrintOperationMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePrintOperationMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePrintOperationMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePrintOperationMethod "print" o = PrintOperationPrintMethodInfo
    ResolvePrintOperationMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePrintOperationMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePrintOperationMethod "runDialog" o = PrintOperationRunDialogMethodInfo
    ResolvePrintOperationMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePrintOperationMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePrintOperationMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePrintOperationMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePrintOperationMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePrintOperationMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePrintOperationMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePrintOperationMethod "getPageSetup" o = PrintOperationGetPageSetupMethodInfo
    ResolvePrintOperationMethod "getPrintSettings" o = PrintOperationGetPrintSettingsMethodInfo
    ResolvePrintOperationMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePrintOperationMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePrintOperationMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePrintOperationMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePrintOperationMethod "setPageSetup" o = PrintOperationSetPageSetupMethodInfo
    ResolvePrintOperationMethod "setPrintSettings" o = PrintOperationSetPrintSettingsMethodInfo
    ResolvePrintOperationMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePrintOperationMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePrintOperationMethod t PrintOperation, O.OverloadedMethod info PrintOperation p) => OL.IsLabel t (PrintOperation -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePrintOperationMethod t PrintOperation, O.OverloadedMethod info PrintOperation p, R.HasField t PrintOperation p) => R.HasField t PrintOperation p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePrintOperationMethod t PrintOperation, O.OverloadedMethodInfo info PrintOperation) => OL.IsLabel t (O.MethodProxy info PrintOperation) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal PrintOperation::create-custom-widget
{-# DEPRECATED PrintOperationCreateCustomWidgetCallback ["(Since version 2.40)"] #-}
-- | Emitted when displaying the print dialog with 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog'.
-- The returned t'GI.WebKit2.Objects.PrintCustomWidget.PrintCustomWidget' will be added to the print dialog and
-- it will be owned by the /@printOperation@/. However, the object is guaranteed
-- to be alive until the [PrintCustomWidget::apply]("GI.WebKit2.Objects.PrintCustomWidget#g:signal:apply") is emitted.
-- 
-- /Since: 2.16/
type PrintOperationCreateCustomWidgetCallback =
    IO WebKit2.PrintCustomWidget.PrintCustomWidget
    -- ^ __Returns:__ A t'GI.WebKit2.Objects.PrintCustomWidget.PrintCustomWidget' that will be embedded in the dialog.

type C_PrintOperationCreateCustomWidgetCallback =
    Ptr PrintOperation ->                   -- object
    Ptr () ->                               -- user_data
    IO (Ptr WebKit2.PrintCustomWidget.PrintCustomWidget)

-- | Generate a function pointer callable from C code, from a `C_PrintOperationCreateCustomWidgetCallback`.
foreign import ccall "wrapper"
    mk_PrintOperationCreateCustomWidgetCallback :: C_PrintOperationCreateCustomWidgetCallback -> IO (FunPtr C_PrintOperationCreateCustomWidgetCallback)

wrap_PrintOperationCreateCustomWidgetCallback :: 
    GObject a => (a -> PrintOperationCreateCustomWidgetCallback) ->
    C_PrintOperationCreateCustomWidgetCallback
wrap_PrintOperationCreateCustomWidgetCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    result' <- B.ManagedPtr.disownObject result
    return result'


-- | Connect a signal handler for the [createCustomWidget](#signal:createCustomWidget) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printOperation #createCustomWidget callback
-- @
-- 
-- 
onPrintOperationCreateCustomWidget :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationCreateCustomWidgetCallback) -> m SignalHandlerId
onPrintOperationCreateCustomWidget obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationCreateCustomWidgetCallback wrapped
    wrapped'' <- mk_PrintOperationCreateCustomWidgetCallback wrapped'
    connectSignalFunPtr obj "create-custom-widget" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [createCustomWidget](#signal:createCustomWidget) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printOperation #createCustomWidget callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterPrintOperationCreateCustomWidget :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationCreateCustomWidgetCallback) -> m SignalHandlerId
afterPrintOperationCreateCustomWidget obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationCreateCustomWidgetCallback wrapped
    wrapped'' <- mk_PrintOperationCreateCustomWidgetCallback wrapped'
    connectSignalFunPtr obj "create-custom-widget" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintOperationCreateCustomWidgetSignalInfo
instance SignalInfo PrintOperationCreateCustomWidgetSignalInfo where
    type HaskellCallbackType PrintOperationCreateCustomWidgetSignalInfo = PrintOperationCreateCustomWidgetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintOperationCreateCustomWidgetCallback cb
        cb'' <- mk_PrintOperationCreateCustomWidgetCallback cb'
        connectSignalFunPtr obj "create-custom-widget" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation::create-custom-widget"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:signal:createCustomWidget"})

#endif

-- signal PrintOperation::failed
-- | Emitted when an error occurs while printing. The given /@error@/, of the domain
-- @/WEBKIT_PRINT_ERROR/@, contains further details of the failure.
-- The [PrintOperation::finished]("GI.WebKit2.Objects.PrintOperation#g:signal:finished") signal is emitted after this one.
type PrintOperationFailedCallback =
    GError
    -- ^ /@error@/: the t'GError' that was triggered
    -> IO ()

type C_PrintOperationFailedCallback =
    Ptr PrintOperation ->                   -- object
    Ptr GError ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintOperationFailedCallback`.
foreign import ccall "wrapper"
    mk_PrintOperationFailedCallback :: C_PrintOperationFailedCallback -> IO (FunPtr C_PrintOperationFailedCallback)

wrap_PrintOperationFailedCallback :: 
    GObject a => (a -> PrintOperationFailedCallback) ->
    C_PrintOperationFailedCallback
wrap_PrintOperationFailedCallback gi'cb gi'selfPtr error_ _ = do
    error_' <- (newBoxed GError) error_
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  error_'


-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printOperation #failed callback
-- @
-- 
-- 
onPrintOperationFailed :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationFailedCallback) -> m SignalHandlerId
onPrintOperationFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationFailedCallback wrapped
    wrapped'' <- mk_PrintOperationFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [failed](#signal:failed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printOperation #failed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterPrintOperationFailed :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationFailedCallback) -> m SignalHandlerId
afterPrintOperationFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationFailedCallback wrapped
    wrapped'' <- mk_PrintOperationFailedCallback wrapped'
    connectSignalFunPtr obj "failed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintOperationFailedSignalInfo
instance SignalInfo PrintOperationFailedSignalInfo where
    type HaskellCallbackType PrintOperationFailedSignalInfo = PrintOperationFailedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintOperationFailedCallback cb
        cb'' <- mk_PrintOperationFailedCallback cb'
        connectSignalFunPtr obj "failed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation::failed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:signal:failed"})

#endif

-- signal PrintOperation::finished
-- | Emitted when the print operation has finished doing everything
-- required for printing.
type PrintOperationFinishedCallback =
    IO ()

type C_PrintOperationFinishedCallback =
    Ptr PrintOperation ->                   -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintOperationFinishedCallback`.
foreign import ccall "wrapper"
    mk_PrintOperationFinishedCallback :: C_PrintOperationFinishedCallback -> IO (FunPtr C_PrintOperationFinishedCallback)

wrap_PrintOperationFinishedCallback :: 
    GObject a => (a -> PrintOperationFinishedCallback) ->
    C_PrintOperationFinishedCallback
wrap_PrintOperationFinishedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printOperation #finished callback
-- @
-- 
-- 
onPrintOperationFinished :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationFinishedCallback) -> m SignalHandlerId
onPrintOperationFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationFinishedCallback wrapped
    wrapped'' <- mk_PrintOperationFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [finished](#signal:finished) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printOperation #finished callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterPrintOperationFinished :: (IsPrintOperation a, MonadIO m) => a -> ((?self :: a) => PrintOperationFinishedCallback) -> m SignalHandlerId
afterPrintOperationFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintOperationFinishedCallback wrapped
    wrapped'' <- mk_PrintOperationFinishedCallback wrapped'
    connectSignalFunPtr obj "finished" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintOperationFinishedSignalInfo
instance SignalInfo PrintOperationFinishedSignalInfo where
    type HaskellCallbackType PrintOperationFinishedSignalInfo = PrintOperationFinishedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintOperationFinishedCallback cb
        cb'' <- mk_PrintOperationFinishedCallback cb'
        connectSignalFunPtr obj "finished" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation::finished"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:signal:finished"})

#endif

-- VVV Prop "page-setup"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PageSetup"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@page-setup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' printOperation #pageSetup
-- @
getPrintOperationPageSetup :: (MonadIO m, IsPrintOperation o) => o -> m (Maybe Gtk.PageSetup.PageSetup)
getPrintOperationPageSetup obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "page-setup" Gtk.PageSetup.PageSetup

-- | Set the value of the “@page-setup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' printOperation [ #pageSetup 'Data.GI.Base.Attributes.:=' value ]
-- @
setPrintOperationPageSetup :: (MonadIO m, IsPrintOperation o, Gtk.PageSetup.IsPageSetup a) => o -> a -> m ()
setPrintOperationPageSetup obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyObject obj "page-setup" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@page-setup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPrintOperationPageSetup :: (IsPrintOperation o, MIO.MonadIO m, Gtk.PageSetup.IsPageSetup a) => a -> m (GValueConstruct o)
constructPrintOperationPageSetup val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "page-setup" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data PrintOperationPageSetupPropertyInfo
instance AttrInfo PrintOperationPageSetupPropertyInfo where
    type AttrAllowedOps PrintOperationPageSetupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PrintOperationPageSetupPropertyInfo = IsPrintOperation
    type AttrSetTypeConstraint PrintOperationPageSetupPropertyInfo = Gtk.PageSetup.IsPageSetup
    type AttrTransferTypeConstraint PrintOperationPageSetupPropertyInfo = Gtk.PageSetup.IsPageSetup
    type AttrTransferType PrintOperationPageSetupPropertyInfo = Gtk.PageSetup.PageSetup
    type AttrGetType PrintOperationPageSetupPropertyInfo = (Maybe Gtk.PageSetup.PageSetup)
    type AttrLabel PrintOperationPageSetupPropertyInfo = "page-setup"
    type AttrOrigin PrintOperationPageSetupPropertyInfo = PrintOperation
    attrGet = getPrintOperationPageSetup
    attrSet = setPrintOperationPageSetup
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.PageSetup.PageSetup v
    attrConstruct = constructPrintOperationPageSetup
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.pageSetup"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:attr:pageSetup"
        })
#endif

-- VVV Prop "print-settings"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PrintSettings"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@print-settings@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' printOperation #printSettings
-- @
getPrintOperationPrintSettings :: (MonadIO m, IsPrintOperation o) => o -> m (Maybe Gtk.PrintSettings.PrintSettings)
getPrintOperationPrintSettings obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "print-settings" Gtk.PrintSettings.PrintSettings

-- | Set the value of the “@print-settings@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' printOperation [ #printSettings 'Data.GI.Base.Attributes.:=' value ]
-- @
setPrintOperationPrintSettings :: (MonadIO m, IsPrintOperation o, Gtk.PrintSettings.IsPrintSettings a) => o -> a -> m ()
setPrintOperationPrintSettings obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyObject obj "print-settings" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@print-settings@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPrintOperationPrintSettings :: (IsPrintOperation o, MIO.MonadIO m, Gtk.PrintSettings.IsPrintSettings a) => a -> m (GValueConstruct o)
constructPrintOperationPrintSettings val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "print-settings" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data PrintOperationPrintSettingsPropertyInfo
instance AttrInfo PrintOperationPrintSettingsPropertyInfo where
    type AttrAllowedOps PrintOperationPrintSettingsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PrintOperationPrintSettingsPropertyInfo = IsPrintOperation
    type AttrSetTypeConstraint PrintOperationPrintSettingsPropertyInfo = Gtk.PrintSettings.IsPrintSettings
    type AttrTransferTypeConstraint PrintOperationPrintSettingsPropertyInfo = Gtk.PrintSettings.IsPrintSettings
    type AttrTransferType PrintOperationPrintSettingsPropertyInfo = Gtk.PrintSettings.PrintSettings
    type AttrGetType PrintOperationPrintSettingsPropertyInfo = (Maybe Gtk.PrintSettings.PrintSettings)
    type AttrLabel PrintOperationPrintSettingsPropertyInfo = "print-settings"
    type AttrOrigin PrintOperationPrintSettingsPropertyInfo = PrintOperation
    attrGet = getPrintOperationPrintSettings
    attrSet = setPrintOperationPrintSettings
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.PrintSettings.PrintSettings v
    attrConstruct = constructPrintOperationPrintSettings
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printSettings"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:attr:printSettings"
        })
#endif

-- VVV Prop "web-view"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebView"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@web-view@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' printOperation #webView
-- @
getPrintOperationWebView :: (MonadIO m, IsPrintOperation o) => o -> m (Maybe WebKit2.WebView.WebView)
getPrintOperationWebView obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "web-view" WebKit2.WebView.WebView

-- | Construct a t'GValueConstruct' with valid value for the “@web-view@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPrintOperationWebView :: (IsPrintOperation o, MIO.MonadIO m, WebKit2.WebView.IsWebView a) => a -> m (GValueConstruct o)
constructPrintOperationWebView val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "web-view" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data PrintOperationWebViewPropertyInfo
instance AttrInfo PrintOperationWebViewPropertyInfo where
    type AttrAllowedOps PrintOperationWebViewPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint PrintOperationWebViewPropertyInfo = IsPrintOperation
    type AttrSetTypeConstraint PrintOperationWebViewPropertyInfo = WebKit2.WebView.IsWebView
    type AttrTransferTypeConstraint PrintOperationWebViewPropertyInfo = WebKit2.WebView.IsWebView
    type AttrTransferType PrintOperationWebViewPropertyInfo = WebKit2.WebView.WebView
    type AttrGetType PrintOperationWebViewPropertyInfo = (Maybe WebKit2.WebView.WebView)
    type AttrLabel PrintOperationWebViewPropertyInfo = "web-view"
    type AttrOrigin PrintOperationWebViewPropertyInfo = PrintOperation
    attrGet = getPrintOperationWebView
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.WebView.WebView v
    attrConstruct = constructPrintOperationWebView
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.webView"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#g:attr:webView"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PrintOperation
type instance O.AttributeList PrintOperation = PrintOperationAttributeList
type PrintOperationAttributeList = ('[ '("pageSetup", PrintOperationPageSetupPropertyInfo), '("printSettings", PrintOperationPrintSettingsPropertyInfo), '("webView", PrintOperationWebViewPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
printOperationPageSetup :: AttrLabelProxy "pageSetup"
printOperationPageSetup = AttrLabelProxy

printOperationPrintSettings :: AttrLabelProxy "printSettings"
printOperationPrintSettings = AttrLabelProxy

printOperationWebView :: AttrLabelProxy "webView"
printOperationWebView = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PrintOperation = PrintOperationSignalList
type PrintOperationSignalList = ('[ '("createCustomWidget", PrintOperationCreateCustomWidgetSignalInfo), '("failed", PrintOperationFailedSignalInfo), '("finished", PrintOperationFinishedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method PrintOperation::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "PrintOperation" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_operation_new" webkit_print_operation_new :: 
    Ptr WebKit2.WebView.WebView ->          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr PrintOperation)

-- | Create a new t'GI.WebKit2.Objects.PrintOperation.PrintOperation' to print /@webView@/ contents.
printOperationNew ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.WebView.IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m PrintOperation
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.PrintOperation.PrintOperation'.
printOperationNew webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_print_operation_new webView'
    checkUnexpectedReturnNULL "printOperationNew" result
    result' <- (wrapObject PrintOperation) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PrintOperation::get_page_setup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "PageSetup" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_operation_get_page_setup" webkit_print_operation_get_page_setup :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    IO (Ptr Gtk.PageSetup.PageSetup)

-- | Return the current page setup of /@printOperation@/.
-- 
-- It returns 'P.Nothing' until
-- either 'GI.WebKit2.Objects.PrintOperation.printOperationSetPageSetup' or 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog'
-- have been called.
printOperationGetPageSetup ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> m (Maybe Gtk.PageSetup.PageSetup)
    -- ^ __Returns:__ the current t'GI.Gtk.Objects.PageSetup.PageSetup' of /@printOperation@/.
printOperationGetPageSetup printOperation = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    result <- webkit_print_operation_get_page_setup printOperation'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.PageSetup.PageSetup) result'
        return result''
    touchManagedPtr printOperation
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PrintOperationGetPageSetupMethodInfo
instance (signature ~ (m (Maybe Gtk.PageSetup.PageSetup)), MonadIO m, IsPrintOperation a) => O.OverloadedMethod PrintOperationGetPageSetupMethodInfo a signature where
    overloadedMethod = printOperationGetPageSetup

instance O.OverloadedMethodInfo PrintOperationGetPageSetupMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationGetPageSetup",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationGetPageSetup"
        })


#endif

-- method PrintOperation::get_print_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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
--               (TInterface Name { namespace = "Gtk" , name = "PrintSettings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_operation_get_print_settings" webkit_print_operation_get_print_settings :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    IO (Ptr Gtk.PrintSettings.PrintSettings)

-- | Return the current print settings of /@printOperation@/.
-- 
-- It returns 'P.Nothing' until
-- either 'GI.WebKit2.Objects.PrintOperation.printOperationSetPrintSettings' or 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog'
-- have been called.
printOperationGetPrintSettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> m (Maybe Gtk.PrintSettings.PrintSettings)
    -- ^ __Returns:__ the current t'GI.Gtk.Objects.PrintSettings.PrintSettings' of /@printOperation@/.
printOperationGetPrintSettings printOperation = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    result <- webkit_print_operation_get_print_settings printOperation'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.PrintSettings.PrintSettings) result'
        return result''
    touchManagedPtr printOperation
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PrintOperationGetPrintSettingsMethodInfo
instance (signature ~ (m (Maybe Gtk.PrintSettings.PrintSettings)), MonadIO m, IsPrintOperation a) => O.OverloadedMethod PrintOperationGetPrintSettingsMethodInfo a signature where
    overloadedMethod = printOperationGetPrintSettings

instance O.OverloadedMethodInfo PrintOperationGetPrintSettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationGetPrintSettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationGetPrintSettings"
        })


#endif

-- method PrintOperation::print
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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

foreign import ccall "webkit_print_operation_print" webkit_print_operation_print :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    IO ()

-- | Start a print operation using current print settings and page setup.
-- 
-- Start a print operation using current print settings and page setup
-- without showing the print dialog. If either print settings or page setup
-- are not set with 'GI.WebKit2.Objects.PrintOperation.printOperationSetPrintSettings' and
-- 'GI.WebKit2.Objects.PrintOperation.printOperationSetPageSetup', the default options will be used
-- and the print job will be sent to the default printer.
-- The [PrintOperation::finished]("GI.WebKit2.Objects.PrintOperation#g:signal:finished") signal is emitted when the printing
-- operation finishes. If an error occurs while printing the signal
-- [PrintOperation::failed]("GI.WebKit2.Objects.PrintOperation#g:signal:failed") is emitted before [PrintOperation::finished]("GI.WebKit2.Objects.PrintOperation#g:signal:finished").
-- 
-- If the app is running in a sandbox, this function only works if printing to
-- a file that is in a location accessible to the sandbox, usually acquired
-- through the File Chooser portal. This function will not work for physical
-- printers when running in a sandbox.
printOperationPrint ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> m ()
printOperationPrint printOperation = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    webkit_print_operation_print printOperation'
    touchManagedPtr printOperation
    return ()

#if defined(ENABLE_OVERLOADING)
data PrintOperationPrintMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPrintOperation a) => O.OverloadedMethod PrintOperationPrintMethodInfo a signature where
    overloadedMethod = printOperationPrint

instance O.OverloadedMethodInfo PrintOperationPrintMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationPrint",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationPrint"
        })


#endif

-- method PrintOperation::run_dialog
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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
--           { argCName = "parent"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Window" }
--           , argCType = Just "GtkWindow*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "transient parent of the print dialog"
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
--                  Name { namespace = "WebKit2" , name = "PrintOperationResponse" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_operation_run_dialog" webkit_print_operation_run_dialog :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    IO CUInt

-- | Run the print dialog and start printing.
-- 
-- Run the print dialog and start printing using the options selected by
-- the user. This method returns when the print dialog is closed.
-- If the print dialog is cancelled 'GI.WebKit2.Enums.PrintOperationResponseCancel'
-- is returned. If the user clicks on the print button, 'GI.WebKit2.Enums.PrintOperationResponsePrint'
-- is returned and the print operation starts. In this case, the [PrintOperation::finished]("GI.WebKit2.Objects.PrintOperation#g:signal:finished")
-- signal is emitted when the operation finishes. If an error occurs while printing, the signal
-- [PrintOperation::failed]("GI.WebKit2.Objects.PrintOperation#g:signal:failed") is emitted before [PrintOperation::finished]("GI.WebKit2.Objects.PrintOperation#g:signal:finished").
-- If the print dialog is not cancelled current print settings and page setup of /@printOperation@/
-- are updated with options selected by the user when Print button is pressed in print dialog.
-- You can get the updated print settings and page setup by calling
-- 'GI.WebKit2.Objects.PrintOperation.printOperationGetPrintSettings' and 'GI.WebKit2.Objects.PrintOperation.printOperationGetPageSetup'
-- after this method.
printOperationRunDialog ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a, Gtk.Window.IsWindow b) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> Maybe (b)
    -- ^ /@parent@/: transient parent of the print dialog
    -> m WebKit2.Enums.PrintOperationResponse
    -- ^ __Returns:__ the t'GI.WebKit2.Enums.PrintOperationResponse' of the print dialog
printOperationRunDialog printOperation parent = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    maybeParent <- case parent of
        Nothing -> return FP.nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrCastPtr jParent
            return jParent'
    result <- webkit_print_operation_run_dialog printOperation' maybeParent
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr printOperation
    whenJust parent touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
data PrintOperationRunDialogMethodInfo
instance (signature ~ (Maybe (b) -> m WebKit2.Enums.PrintOperationResponse), MonadIO m, IsPrintOperation a, Gtk.Window.IsWindow b) => O.OverloadedMethod PrintOperationRunDialogMethodInfo a signature where
    overloadedMethod = printOperationRunDialog

instance O.OverloadedMethodInfo PrintOperationRunDialogMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationRunDialog",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationRunDialog"
        })


#endif

-- method PrintOperation::set_page_setup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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
--           { argCName = "page_setup"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PageSetup" }
--           , argCType = Just "GtkPageSetup*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPageSetup to set"
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

foreign import ccall "webkit_print_operation_set_page_setup" webkit_print_operation_set_page_setup :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    Ptr Gtk.PageSetup.PageSetup ->          -- page_setup : TInterface (Name {namespace = "Gtk", name = "PageSetup"})
    IO ()

-- | Set the current page setup of /@printOperation@/.
-- 
-- Current page setup is used for the
-- initial values of the print dialog when 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog' is called.
printOperationSetPageSetup ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a, Gtk.PageSetup.IsPageSetup b) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> b
    -- ^ /@pageSetup@/: a t'GI.Gtk.Objects.PageSetup.PageSetup' to set
    -> m ()
printOperationSetPageSetup printOperation pageSetup = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    pageSetup' <- unsafeManagedPtrCastPtr pageSetup
    webkit_print_operation_set_page_setup printOperation' pageSetup'
    touchManagedPtr printOperation
    touchManagedPtr pageSetup
    return ()

#if defined(ENABLE_OVERLOADING)
data PrintOperationSetPageSetupMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPrintOperation a, Gtk.PageSetup.IsPageSetup b) => O.OverloadedMethod PrintOperationSetPageSetupMethodInfo a signature where
    overloadedMethod = printOperationSetPageSetup

instance O.OverloadedMethodInfo PrintOperationSetPageSetupMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationSetPageSetup",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationSetPageSetup"
        })


#endif

-- method PrintOperation::set_print_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_operation"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PrintOperation" }
--           , argCType = Just "WebKitPrintOperation*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintOperation"
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
--           { argCName = "print_settings"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PrintSettings" }
--           , argCType = Just "GtkPrintSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPrintSettings to set"
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

foreign import ccall "webkit_print_operation_set_print_settings" webkit_print_operation_set_print_settings :: 
    Ptr PrintOperation ->                   -- print_operation : TInterface (Name {namespace = "WebKit2", name = "PrintOperation"})
    Ptr Gtk.PrintSettings.PrintSettings ->  -- print_settings : TInterface (Name {namespace = "Gtk", name = "PrintSettings"})
    IO ()

-- | Set the current print settings of /@printOperation@/.
-- 
-- Set the current print settings of /@printOperation@/. Current print settings are used for
-- the initial values of the print dialog when 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog' is called.
printOperationSetPrintSettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintOperation a, Gtk.PrintSettings.IsPrintSettings b) =>
    a
    -- ^ /@printOperation@/: a t'GI.WebKit2.Objects.PrintOperation.PrintOperation'
    -> b
    -- ^ /@printSettings@/: a t'GI.Gtk.Objects.PrintSettings.PrintSettings' to set
    -> m ()
printOperationSetPrintSettings printOperation printSettings = liftIO $ do
    printOperation' <- unsafeManagedPtrCastPtr printOperation
    printSettings' <- unsafeManagedPtrCastPtr printSettings
    webkit_print_operation_set_print_settings printOperation' printSettings'
    touchManagedPtr printOperation
    touchManagedPtr printSettings
    return ()

#if defined(ENABLE_OVERLOADING)
data PrintOperationSetPrintSettingsMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPrintOperation a, Gtk.PrintSettings.IsPrintSettings b) => O.OverloadedMethod PrintOperationSetPrintSettingsMethodInfo a signature where
    overloadedMethod = printOperationSetPrintSettings

instance O.OverloadedMethodInfo PrintOperationSetPrintSettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintOperation.printOperationSetPrintSettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintOperation.html#v:printOperationSetPrintSettings"
        })


#endif


