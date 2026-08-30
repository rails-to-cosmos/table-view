{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for reading clipboard contents.
-- 
-- WebKitClipboardPermissionRequest represents a request for
-- permission to decide whether WebKit can access the clipboard to read
-- its contents through the Async Clipboard API.
-- 
-- When a WebKitClipboardPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- /Since: 2.42/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.ClipboardPermissionRequest
    ( 

-- * Exported types
    ClipboardPermissionRequest(..)          ,
    IsClipboardPermissionRequest            ,
    toClipboardPermissionRequest            ,


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
    ResolveClipboardPermissionRequestMethod ,
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
newtype ClipboardPermissionRequest = ClipboardPermissionRequest (SP.ManagedPtr ClipboardPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype ClipboardPermissionRequest where
    toManagedPtr (ClipboardPermissionRequest p) = p

foreign import ccall "webkit_clipboard_permission_request_get_type"
    c_webkit_clipboard_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject ClipboardPermissionRequest where
    glibType = c_webkit_clipboard_permission_request_get_type

instance B.Types.GObject ClipboardPermissionRequest

-- | Type class for types which can be safely cast to t'ClipboardPermissionRequest', for instance with `toClipboardPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf ClipboardPermissionRequest o) => IsClipboardPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf ClipboardPermissionRequest o) => IsClipboardPermissionRequest o

instance O.HasParentTypes ClipboardPermissionRequest
type instance O.ParentTypes ClipboardPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'ClipboardPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toClipboardPermissionRequest :: (MIO.MonadIO m, IsClipboardPermissionRequest o) => o -> m ClipboardPermissionRequest
toClipboardPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo ClipboardPermissionRequest

-- | Convert t'ClipboardPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ClipboardPermissionRequest) where
    gvalueGType_ = c_webkit_clipboard_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr ClipboardPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr ClipboardPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject ClipboardPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveClipboardPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveClipboardPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveClipboardPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveClipboardPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveClipboardPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveClipboardPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveClipboardPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveClipboardPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveClipboardPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveClipboardPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveClipboardPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveClipboardPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveClipboardPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveClipboardPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveClipboardPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveClipboardPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveClipboardPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveClipboardPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveClipboardPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveClipboardPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveClipboardPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveClipboardPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveClipboardPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveClipboardPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveClipboardPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveClipboardPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveClipboardPermissionRequestMethod t ClipboardPermissionRequest, O.OverloadedMethod info ClipboardPermissionRequest p) => OL.IsLabel t (ClipboardPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveClipboardPermissionRequestMethod t ClipboardPermissionRequest, O.OverloadedMethod info ClipboardPermissionRequest p, R.HasField t ClipboardPermissionRequest p) => R.HasField t ClipboardPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveClipboardPermissionRequestMethod t ClipboardPermissionRequest, O.OverloadedMethodInfo info ClipboardPermissionRequest) => OL.IsLabel t (O.MethodProxy info ClipboardPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ClipboardPermissionRequest
type instance O.AttributeList ClipboardPermissionRequest = ClipboardPermissionRequestAttributeList
type ClipboardPermissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ClipboardPermissionRequest = ClipboardPermissionRequestSignalList
type ClipboardPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


