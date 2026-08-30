{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Previously, a permission request for installing missing media plugins.
-- 
-- WebKitInstallMissingMediaPluginsPermissionRequest will no longer ever be created, so
-- you can remove any code that attempts to handle it.
-- 
-- /Since: 2.10/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest
    ( 

-- * Exported types
    InstallMissingMediaPluginsPermissionRequest(..),
    IsInstallMissingMediaPluginsPermissionRequest,
    toInstallMissingMediaPluginsPermissionRequest,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [allow]("GI.WebKit2.Interfaces.PermissionRequest#g:method:allow"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deny]("GI.WebKit2.Interfaces.PermissionRequest#g:method:deny"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDescription]("GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest#g:method:getDescription"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveInstallMissingMediaPluginsPermissionRequestMethod,
#endif

-- ** getDescription #method:getDescription#

#if defined(ENABLE_OVERLOADING)
    InstallMissingMediaPluginsPermissionRequestGetDescriptionMethodInfo,
#endif
    installMissingMediaPluginsPermissionRequestGetDescription,




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
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest

#endif

-- | Memory-managed wrapper type.
newtype InstallMissingMediaPluginsPermissionRequest = InstallMissingMediaPluginsPermissionRequest (SP.ManagedPtr InstallMissingMediaPluginsPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype InstallMissingMediaPluginsPermissionRequest where
    toManagedPtr (InstallMissingMediaPluginsPermissionRequest p) = p

foreign import ccall "webkit_install_missing_media_plugins_permission_request_get_type"
    c_webkit_install_missing_media_plugins_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject InstallMissingMediaPluginsPermissionRequest where
    glibType = c_webkit_install_missing_media_plugins_permission_request_get_type

instance B.Types.GObject InstallMissingMediaPluginsPermissionRequest

-- | Type class for types which can be safely cast to t'InstallMissingMediaPluginsPermissionRequest', for instance with `toInstallMissingMediaPluginsPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf InstallMissingMediaPluginsPermissionRequest o) => IsInstallMissingMediaPluginsPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf InstallMissingMediaPluginsPermissionRequest o) => IsInstallMissingMediaPluginsPermissionRequest o

instance O.HasParentTypes InstallMissingMediaPluginsPermissionRequest
type instance O.ParentTypes InstallMissingMediaPluginsPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'InstallMissingMediaPluginsPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toInstallMissingMediaPluginsPermissionRequest :: (MIO.MonadIO m, IsInstallMissingMediaPluginsPermissionRequest o) => o -> m InstallMissingMediaPluginsPermissionRequest
toInstallMissingMediaPluginsPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo InstallMissingMediaPluginsPermissionRequest

-- | Convert t'InstallMissingMediaPluginsPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe InstallMissingMediaPluginsPermissionRequest) where
    gvalueGType_ = c_webkit_install_missing_media_plugins_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr InstallMissingMediaPluginsPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr InstallMissingMediaPluginsPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject InstallMissingMediaPluginsPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveInstallMissingMediaPluginsPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "getDescription" o = InstallMissingMediaPluginsPermissionRequestGetDescriptionMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInstallMissingMediaPluginsPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInstallMissingMediaPluginsPermissionRequestMethod t InstallMissingMediaPluginsPermissionRequest, O.OverloadedMethod info InstallMissingMediaPluginsPermissionRequest p) => OL.IsLabel t (InstallMissingMediaPluginsPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveInstallMissingMediaPluginsPermissionRequestMethod t InstallMissingMediaPluginsPermissionRequest, O.OverloadedMethod info InstallMissingMediaPluginsPermissionRequest p, R.HasField t InstallMissingMediaPluginsPermissionRequest p) => R.HasField t InstallMissingMediaPluginsPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveInstallMissingMediaPluginsPermissionRequestMethod t InstallMissingMediaPluginsPermissionRequest, O.OverloadedMethodInfo info InstallMissingMediaPluginsPermissionRequest) => OL.IsLabel t (O.MethodProxy info InstallMissingMediaPluginsPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList InstallMissingMediaPluginsPermissionRequest
type instance O.AttributeList InstallMissingMediaPluginsPermissionRequest = InstallMissingMediaPluginsPermissionRequestAttributeList
type InstallMissingMediaPluginsPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList InstallMissingMediaPluginsPermissionRequest = InstallMissingMediaPluginsPermissionRequestSignalList
type InstallMissingMediaPluginsPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method InstallMissingMediaPluginsPermissionRequest::get_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2"
--                   , name = "InstallMissingMediaPluginsPermissionRequest"
--                   }
--           , argCType =
--               Just "WebKitInstallMissingMediaPluginsPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #WebKitInstallMissingMediaPluginsPermissionRequest"
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

foreign import ccall "webkit_install_missing_media_plugins_permission_request_get_description" webkit_install_missing_media_plugins_permission_request_get_description :: 
    Ptr InstallMissingMediaPluginsPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "InstallMissingMediaPluginsPermissionRequest"})
    IO CString

{-# DEPRECATED installMissingMediaPluginsPermissionRequestGetDescription ["(Since version 2.40)"] #-}
-- | This function returns an empty string.
-- 
-- /Since: 2.10/
installMissingMediaPluginsPermissionRequestGetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsInstallMissingMediaPluginsPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest.InstallMissingMediaPluginsPermissionRequest'
    -> m T.Text
    -- ^ __Returns:__ an empty string
installMissingMediaPluginsPermissionRequestGetDescription request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_install_missing_media_plugins_permission_request_get_description request'
    checkUnexpectedReturnNULL "installMissingMediaPluginsPermissionRequestGetDescription" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data InstallMissingMediaPluginsPermissionRequestGetDescriptionMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsInstallMissingMediaPluginsPermissionRequest a) => O.OverloadedMethod InstallMissingMediaPluginsPermissionRequestGetDescriptionMethodInfo a signature where
    overloadedMethod = installMissingMediaPluginsPermissionRequestGetDescription

instance O.OverloadedMethodInfo InstallMissingMediaPluginsPermissionRequestGetDescriptionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InstallMissingMediaPluginsPermissionRequest.installMissingMediaPluginsPermissionRequestGetDescription",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InstallMissingMediaPluginsPermissionRequest.html#v:installMissingMediaPluginsPermissionRequestGetDescription"
        })


#endif


