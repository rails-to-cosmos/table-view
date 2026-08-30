{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for locking the pointer.
-- 
-- WebKitPointerLockPermissionRequest represents a request for
-- permission to decide whether WebKit can lock the pointer device when
-- requested by web content.
-- 
-- When a WebKitPointerLockPermissionRequest is not handled by the user,
-- it is allowed by default.
-- 
-- /Since: 2.28/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.PointerLockPermissionRequest
    ( 

-- * Exported types
    PointerLockPermissionRequest(..)        ,
    IsPointerLockPermissionRequest          ,
    toPointerLockPermissionRequest          ,


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
    ResolvePointerLockPermissionRequestMethod,
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
newtype PointerLockPermissionRequest = PointerLockPermissionRequest (SP.ManagedPtr PointerLockPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype PointerLockPermissionRequest where
    toManagedPtr (PointerLockPermissionRequest p) = p

foreign import ccall "webkit_pointer_lock_permission_request_get_type"
    c_webkit_pointer_lock_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject PointerLockPermissionRequest where
    glibType = c_webkit_pointer_lock_permission_request_get_type

instance B.Types.GObject PointerLockPermissionRequest

-- | Type class for types which can be safely cast to t'PointerLockPermissionRequest', for instance with `toPointerLockPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf PointerLockPermissionRequest o) => IsPointerLockPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf PointerLockPermissionRequest o) => IsPointerLockPermissionRequest o

instance O.HasParentTypes PointerLockPermissionRequest
type instance O.ParentTypes PointerLockPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'PointerLockPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPointerLockPermissionRequest :: (MIO.MonadIO m, IsPointerLockPermissionRequest o) => o -> m PointerLockPermissionRequest
toPointerLockPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo PointerLockPermissionRequest

-- | Convert t'PointerLockPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PointerLockPermissionRequest) where
    gvalueGType_ = c_webkit_pointer_lock_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr PointerLockPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr PointerLockPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject PointerLockPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolvePointerLockPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePointerLockPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolvePointerLockPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePointerLockPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePointerLockPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolvePointerLockPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePointerLockPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePointerLockPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePointerLockPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePointerLockPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePointerLockPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePointerLockPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePointerLockPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePointerLockPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePointerLockPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePointerLockPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePointerLockPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePointerLockPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePointerLockPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePointerLockPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePointerLockPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePointerLockPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePointerLockPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePointerLockPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePointerLockPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePointerLockPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePointerLockPermissionRequestMethod t PointerLockPermissionRequest, O.OverloadedMethod info PointerLockPermissionRequest p) => OL.IsLabel t (PointerLockPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePointerLockPermissionRequestMethod t PointerLockPermissionRequest, O.OverloadedMethod info PointerLockPermissionRequest p, R.HasField t PointerLockPermissionRequest p) => R.HasField t PointerLockPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePointerLockPermissionRequestMethod t PointerLockPermissionRequest, O.OverloadedMethodInfo info PointerLockPermissionRequest) => OL.IsLabel t (O.MethodProxy info PointerLockPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PointerLockPermissionRequest
type instance O.AttributeList PointerLockPermissionRequest = PointerLockPermissionRequestAttributeList
type PointerLockPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PointerLockPermissionRequest = PointerLockPermissionRequestSignalList
type PointerLockPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


