{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for displaying web notifications.
-- 
-- WebKitNotificationPermissionRequest represents a request for
-- permission to decide whether WebKit should provide the user with
-- notifications through the Web Notification API.
-- 
-- When a WebKitNotificationPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- /Since: 2.8/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.NotificationPermissionRequest
    ( 

-- * Exported types
    NotificationPermissionRequest(..)       ,
    IsNotificationPermissionRequest         ,
    toNotificationPermissionRequest         ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [allow]("GI.WebKit2.Interfaces.PermissionRequest#g:method:allow"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deny]("GI.WebKit2.Interfaces.PermissionRequest#g:method:deny"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveNotificationPermissionRequestMethod,
#endif



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
newtype NotificationPermissionRequest = NotificationPermissionRequest (SP.ManagedPtr NotificationPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype NotificationPermissionRequest where
    toManagedPtr (NotificationPermissionRequest p) = p

foreign import ccall "webkit_notification_permission_request_get_type"
    c_webkit_notification_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject NotificationPermissionRequest where
    glibType = c_webkit_notification_permission_request_get_type

instance B.Types.GObject NotificationPermissionRequest

-- | Type class for types which can be safely cast to t'NotificationPermissionRequest', for instance with `toNotificationPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf NotificationPermissionRequest o) => IsNotificationPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf NotificationPermissionRequest o) => IsNotificationPermissionRequest o

instance O.HasParentTypes NotificationPermissionRequest
type instance O.ParentTypes NotificationPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'NotificationPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toNotificationPermissionRequest :: (MIO.MonadIO m, IsNotificationPermissionRequest o) => o -> m NotificationPermissionRequest
toNotificationPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo NotificationPermissionRequest

-- | Convert t'NotificationPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe NotificationPermissionRequest) where
    gvalueGType_ = c_webkit_notification_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr NotificationPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr NotificationPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject NotificationPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveNotificationPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveNotificationPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveNotificationPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNotificationPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNotificationPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveNotificationPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNotificationPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNotificationPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNotificationPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNotificationPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNotificationPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNotificationPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNotificationPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNotificationPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNotificationPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNotificationPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNotificationPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNotificationPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNotificationPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNotificationPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNotificationPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNotificationPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNotificationPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNotificationPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNotificationPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNotificationPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNotificationPermissionRequestMethod t NotificationPermissionRequest, O.OverloadedMethod info NotificationPermissionRequest p) => OL.IsLabel t (NotificationPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveNotificationPermissionRequestMethod t NotificationPermissionRequest, O.OverloadedMethod info NotificationPermissionRequest p, R.HasField t NotificationPermissionRequest p) => R.HasField t NotificationPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveNotificationPermissionRequestMethod t NotificationPermissionRequest, O.OverloadedMethodInfo info NotificationPermissionRequest) => OL.IsLabel t (O.MethodProxy info NotificationPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NotificationPermissionRequest
type instance O.AttributeList NotificationPermissionRequest = NotificationPermissionRequestAttributeList
type NotificationPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NotificationPermissionRequest = NotificationPermissionRequestSignalList
type NotificationPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


