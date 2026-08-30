{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for sharing the user\'s location.
-- 
-- WebKitGeolocationPermissionRequest represents a request for
-- permission to decide whether WebKit should provide the user\'s
-- location to a website when requested through the Geolocation API.
-- 
-- When a WebKitGeolocationPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- When embedding web views in your application, you *must* configure an
-- application identifier to allow web content to use geolocation services.
-- The identifier *must* match the name of the @.desktop@ file which describes
-- the application, sans the suffix.
-- 
-- If your application uses t'GI.Gio.Objects.Application.Application' (or any subclass like
-- t'GI.Gtk.Objects.Application.Application'), WebKit will automatically use the identifier returned by
-- 'GI.Gio.Objects.Application.applicationGetApplicationId'. This is the recommended approach for
-- enabling geolocation in applications.
-- 
-- If an identifier cannot be obtained through t'GI.Gio.Objects.Application.Application', the value
-- returned by 'GI.GLib.Functions.getPrgname' will be used instead as a fallback. For
-- programs which cannot use t'GI.Gio.Objects.Application.Application', calling 'GI.GLib.Functions.setPrgname' early
-- during initialization is needed when the name of the executable on disk
-- does not match the name of a valid @.desktop@ file.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.GeolocationPermissionRequest
    ( 

-- * Exported types
    GeolocationPermissionRequest(..)        ,
    IsGeolocationPermissionRequest          ,
    toGeolocationPermissionRequest          ,


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
    ResolveGeolocationPermissionRequestMethod,
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
newtype GeolocationPermissionRequest = GeolocationPermissionRequest (SP.ManagedPtr GeolocationPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype GeolocationPermissionRequest where
    toManagedPtr (GeolocationPermissionRequest p) = p

foreign import ccall "webkit_geolocation_permission_request_get_type"
    c_webkit_geolocation_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject GeolocationPermissionRequest where
    glibType = c_webkit_geolocation_permission_request_get_type

instance B.Types.GObject GeolocationPermissionRequest

-- | Type class for types which can be safely cast to t'GeolocationPermissionRequest', for instance with `toGeolocationPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf GeolocationPermissionRequest o) => IsGeolocationPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf GeolocationPermissionRequest o) => IsGeolocationPermissionRequest o

instance O.HasParentTypes GeolocationPermissionRequest
type instance O.ParentTypes GeolocationPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'GeolocationPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toGeolocationPermissionRequest :: (MIO.MonadIO m, IsGeolocationPermissionRequest o) => o -> m GeolocationPermissionRequest
toGeolocationPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo GeolocationPermissionRequest

-- | Convert t'GeolocationPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe GeolocationPermissionRequest) where
    gvalueGType_ = c_webkit_geolocation_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr GeolocationPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr GeolocationPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject GeolocationPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveGeolocationPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveGeolocationPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveGeolocationPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGeolocationPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGeolocationPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveGeolocationPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGeolocationPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGeolocationPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGeolocationPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGeolocationPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGeolocationPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGeolocationPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGeolocationPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGeolocationPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGeolocationPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGeolocationPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGeolocationPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGeolocationPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGeolocationPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGeolocationPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGeolocationPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGeolocationPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGeolocationPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGeolocationPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGeolocationPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGeolocationPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGeolocationPermissionRequestMethod t GeolocationPermissionRequest, O.OverloadedMethod info GeolocationPermissionRequest p) => OL.IsLabel t (GeolocationPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveGeolocationPermissionRequestMethod t GeolocationPermissionRequest, O.OverloadedMethod info GeolocationPermissionRequest p, R.HasField t GeolocationPermissionRequest p) => R.HasField t GeolocationPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveGeolocationPermissionRequestMethod t GeolocationPermissionRequest, O.OverloadedMethodInfo info GeolocationPermissionRequest) => OL.IsLabel t (O.MethodProxy info GeolocationPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GeolocationPermissionRequest
type instance O.AttributeList GeolocationPermissionRequest = GeolocationPermissionRequestAttributeList
type GeolocationPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GeolocationPermissionRequest = GeolocationPermissionRequestSignalList
type GeolocationPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


