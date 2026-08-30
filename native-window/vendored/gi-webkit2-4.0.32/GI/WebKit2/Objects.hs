

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects
    (     module GI.WebKit2.Objects.AuthenticationRequest,
    module GI.WebKit2.Objects.AutomationSession,
    module GI.WebKit2.Objects.BackForwardList,
    module GI.WebKit2.Objects.BackForwardListItem,
    module GI.WebKit2.Objects.ClipboardPermissionRequest,
    module GI.WebKit2.Objects.ColorChooserRequest,
    module GI.WebKit2.Objects.ContextMenu   ,
    module GI.WebKit2.Objects.ContextMenuItem,
    module GI.WebKit2.Objects.CookieManager ,
    module GI.WebKit2.Objects.DeviceInfoPermissionRequest,
    module GI.WebKit2.Objects.Download      ,
    module GI.WebKit2.Objects.EditorState   ,
    module GI.WebKit2.Objects.FaviconDatabase,
    module GI.WebKit2.Objects.FileChooserRequest,
    module GI.WebKit2.Objects.FindController,
    module GI.WebKit2.Objects.FormSubmissionRequest,
    module GI.WebKit2.Objects.GeolocationManager,
    module GI.WebKit2.Objects.GeolocationPermissionRequest,
    module GI.WebKit2.Objects.HitTestResult ,
    module GI.WebKit2.Objects.InputMethodContext,
    module GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest,
    module GI.WebKit2.Objects.MediaKeySystemPermissionRequest,
    module GI.WebKit2.Objects.NavigationPolicyDecision,
    module GI.WebKit2.Objects.Notification  ,
    module GI.WebKit2.Objects.NotificationPermissionRequest,
    module GI.WebKit2.Objects.OptionMenu    ,
    module GI.WebKit2.Objects.Plugin        ,
    module GI.WebKit2.Objects.PointerLockPermissionRequest,
    module GI.WebKit2.Objects.PolicyDecision,
    module GI.WebKit2.Objects.PrintCustomWidget,
    module GI.WebKit2.Objects.PrintOperation,
    module GI.WebKit2.Objects.ResponsePolicyDecision,
    module GI.WebKit2.Objects.SecurityManager,
    module GI.WebKit2.Objects.Settings      ,
    module GI.WebKit2.Objects.URIRequest    ,
    module GI.WebKit2.Objects.URIResponse   ,
    module GI.WebKit2.Objects.URISchemeRequest,
    module GI.WebKit2.Objects.URISchemeResponse,
    module GI.WebKit2.Objects.UserContentFilterStore,
    module GI.WebKit2.Objects.UserContentManager,
    module GI.WebKit2.Objects.UserMediaPermissionRequest,
    module GI.WebKit2.Objects.UserMessage   ,
    module GI.WebKit2.Objects.WebContext    ,
    module GI.WebKit2.Objects.WebInspector  ,
    module GI.WebKit2.Objects.WebResource   ,
    module GI.WebKit2.Objects.WebView       ,
    module GI.WebKit2.Objects.WebViewBase   ,
    module GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest,
    module GI.WebKit2.Objects.WebsiteDataManager,
    module GI.WebKit2.Objects.WebsitePolicies,
    module GI.WebKit2.Objects.WindowProperties,
    module GI.WebKit2.Objects.XRPermissionRequest,


    ) where

import GI.WebKit2.Objects.AuthenticationRequest
import GI.WebKit2.Objects.AutomationSession
import GI.WebKit2.Objects.BackForwardList
import GI.WebKit2.Objects.BackForwardListItem
import GI.WebKit2.Objects.ClipboardPermissionRequest
import GI.WebKit2.Objects.ColorChooserRequest
import GI.WebKit2.Objects.ContextMenu
import GI.WebKit2.Objects.ContextMenuItem
import GI.WebKit2.Objects.CookieManager
import GI.WebKit2.Objects.DeviceInfoPermissionRequest
import GI.WebKit2.Objects.Download
import GI.WebKit2.Objects.EditorState
import GI.WebKit2.Objects.FaviconDatabase
import GI.WebKit2.Objects.FileChooserRequest
import GI.WebKit2.Objects.FindController
import GI.WebKit2.Objects.FormSubmissionRequest
import GI.WebKit2.Objects.GeolocationManager
import GI.WebKit2.Objects.GeolocationPermissionRequest
import GI.WebKit2.Objects.HitTestResult
import GI.WebKit2.Objects.InputMethodContext
import GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest
import GI.WebKit2.Objects.MediaKeySystemPermissionRequest
import GI.WebKit2.Objects.NavigationPolicyDecision
import GI.WebKit2.Objects.Notification
import GI.WebKit2.Objects.NotificationPermissionRequest
import GI.WebKit2.Objects.OptionMenu
import GI.WebKit2.Objects.Plugin
import GI.WebKit2.Objects.PointerLockPermissionRequest
import GI.WebKit2.Objects.PolicyDecision
import GI.WebKit2.Objects.PrintCustomWidget
import GI.WebKit2.Objects.PrintOperation
import GI.WebKit2.Objects.ResponsePolicyDecision
import GI.WebKit2.Objects.SecurityManager
import GI.WebKit2.Objects.Settings
import GI.WebKit2.Objects.URIRequest
import GI.WebKit2.Objects.URIResponse
import GI.WebKit2.Objects.URISchemeRequest
import GI.WebKit2.Objects.URISchemeResponse
import GI.WebKit2.Objects.UserContentFilterStore
import GI.WebKit2.Objects.UserContentManager
import GI.WebKit2.Objects.UserMediaPermissionRequest
import GI.WebKit2.Objects.UserMessage
import GI.WebKit2.Objects.WebContext
import GI.WebKit2.Objects.WebInspector
import GI.WebKit2.Objects.WebResource
import GI.WebKit2.Objects.WebView
import GI.WebKit2.Objects.WebViewBase
import GI.WebKit2.Objects.WebsiteDataAccessPermissionRequest
import GI.WebKit2.Objects.WebsiteDataManager
import GI.WebKit2.Objects.WebsitePolicies
import GI.WebKit2.Objects.WindowProperties
import GI.WebKit2.Objects.XRPermissionRequest

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

#else

#endif


