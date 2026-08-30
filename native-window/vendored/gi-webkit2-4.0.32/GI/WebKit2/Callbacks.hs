

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Callbacks
    ( 

 -- * Signals


-- ** URISchemeRequestCallback #signal:URISchemeRequestCallback#

    C_URISchemeRequestCallback              ,
    URISchemeRequestCallback                ,
    URISchemeRequestCallback_WithClosures   ,
    drop_closures_URISchemeRequestCallback  ,
    dynamic_URISchemeRequestCallback        ,
    genClosure_URISchemeRequestCallback     ,
    mk_URISchemeRequestCallback             ,
    noURISchemeRequestCallback              ,
    noURISchemeRequestCallback_WithClosures ,
    wrap_URISchemeRequestCallback           ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URISchemeRequest as WebKit2.URISchemeRequest
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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URISchemeRequest as WebKit2.URISchemeRequest

#endif

-- callback URISchemeRequestCallback
{- Callable
  { returnType = Nothing
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation { rawDocText = Nothing , sinceVersion = Nothing }
  , args =
      [ Arg
          { argCName = "request"
          , argType =
              TInterface
                Name { namespace = "WebKit2" , name = "URISchemeRequest" }
          , argCType = Just "WebKitURISchemeRequest*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the #WebKitURISchemeRequest"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "user_data"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "user data passed to the callback"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = True
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "Type definition for a function that will be called back when an URI request is\nmade for a user registered URI scheme."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_URISchemeRequestCallback =
    Ptr WebKit2.URISchemeRequest.URISchemeRequest ->
    Ptr () ->
    IO ()

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
--                 { rawDocText = Just "the #WebKitURISchemeRequest"
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
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data passed to the callback"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_URISchemeRequestCallback :: FunPtr C_URISchemeRequestCallback -> C_URISchemeRequestCallback

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_URISchemeRequestCallback ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.URISchemeRequest.IsURISchemeRequest a) =>
    FunPtr C_URISchemeRequestCallback
    -> a
    -- ^ /@request@/: the t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> Ptr ()
    -- ^ /@userData@/: user data passed to the callback
    -> m ()
dynamic_URISchemeRequestCallback __funPtr request userData = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    (__dynamic_C_URISchemeRequestCallback __funPtr) request' userData
    touchManagedPtr request
    return ()

-- | Generate a function pointer callable from C code, from a `C_URISchemeRequestCallback`.
foreign import ccall "wrapper"
    mk_URISchemeRequestCallback :: C_URISchemeRequestCallback -> IO (FunPtr C_URISchemeRequestCallback)

-- | Type definition for a function that will be called back when an URI request is
-- made for a user registered URI scheme.
type URISchemeRequestCallback =
    WebKit2.URISchemeRequest.URISchemeRequest
    -- ^ /@request@/: the t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `URISchemeRequestCallback`@.
noURISchemeRequestCallback :: Maybe URISchemeRequestCallback
noURISchemeRequestCallback = Nothing

-- | Type definition for a function that will be called back when an URI request is
-- made for a user registered URI scheme.
type URISchemeRequestCallback_WithClosures =
    WebKit2.URISchemeRequest.URISchemeRequest
    -- ^ /@request@/: the t'GI.WebKit2.Objects.URISchemeRequest.URISchemeRequest'
    -> Ptr ()
    -- ^ /@userData@/: user data passed to the callback
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `URISchemeRequestCallback_WithClosures`@.
noURISchemeRequestCallback_WithClosures :: Maybe URISchemeRequestCallback_WithClosures
noURISchemeRequestCallback_WithClosures = Nothing

-- | A simple wrapper that ignores the closure arguments.
drop_closures_URISchemeRequestCallback :: URISchemeRequestCallback -> URISchemeRequestCallback_WithClosures
drop_closures_URISchemeRequestCallback _f request _ = _f request

-- | Wrap the callback into a `GClosure`.
genClosure_URISchemeRequestCallback :: MonadIO m => URISchemeRequestCallback -> m (GClosure C_URISchemeRequestCallback)
genClosure_URISchemeRequestCallback cb = liftIO $ do
    let cb' = drop_closures_URISchemeRequestCallback cb
    let cb'' = wrap_URISchemeRequestCallback Nothing cb'
    mk_URISchemeRequestCallback cb'' >>= B.GClosure.newGClosure


-- | Wrap a `URISchemeRequestCallback` into a `C_URISchemeRequestCallback`.
wrap_URISchemeRequestCallback :: 
    Maybe (Ptr (FunPtr C_URISchemeRequestCallback)) ->
    URISchemeRequestCallback_WithClosures ->
    C_URISchemeRequestCallback
wrap_URISchemeRequestCallback gi'funptrptr gi'cb request userData = do
    request' <- (newObject WebKit2.URISchemeRequest.URISchemeRequest) request
    gi'cb  request' userData
    maybeReleaseFunPtr gi'funptrptr



