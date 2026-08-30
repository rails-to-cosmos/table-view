{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A permission request for accessing user\'s audio\/video devices.
-- 
-- WebKitUserMediaPermissionRequest represents a request for
-- permission to decide whether WebKit should be allowed to access the user\'s
-- audio and video source devices when requested through the getUserMedia API.
-- 
-- When a WebKitUserMediaPermissionRequest is not handled by the user,
-- it is denied by default.
-- 
-- /Since: 2.8/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.UserMediaPermissionRequest
    ( 

-- * Exported types
    UserMediaPermissionRequest(..)          ,
    IsUserMediaPermissionRequest            ,
    toUserMediaPermissionRequest            ,


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
    ResolveUserMediaPermissionRequestMethod ,
#endif



 -- * Properties


-- ** isForAudioDevice #attr:isForAudioDevice#
-- | Whether the media device to which the permission was requested has a microphone or not.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    UserMediaPermissionRequestIsForAudioDevicePropertyInfo,
#endif
    getUserMediaPermissionRequestIsForAudioDevice,
#if defined(ENABLE_OVERLOADING)
    userMediaPermissionRequestIsForAudioDevice,
#endif


-- ** isForVideoDevice #attr:isForVideoDevice#
-- | Whether the media device to which the permission was requested has a video capture capability or not.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    UserMediaPermissionRequestIsForVideoDevicePropertyInfo,
#endif
    getUserMediaPermissionRequestIsForVideoDevice,
#if defined(ENABLE_OVERLOADING)
    userMediaPermissionRequestIsForVideoDevice,
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
newtype UserMediaPermissionRequest = UserMediaPermissionRequest (SP.ManagedPtr UserMediaPermissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserMediaPermissionRequest where
    toManagedPtr (UserMediaPermissionRequest p) = p

foreign import ccall "webkit_user_media_permission_request_get_type"
    c_webkit_user_media_permission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject UserMediaPermissionRequest where
    glibType = c_webkit_user_media_permission_request_get_type

instance B.Types.GObject UserMediaPermissionRequest

-- | Type class for types which can be safely cast to t'UserMediaPermissionRequest', for instance with `toUserMediaPermissionRequest`.
class (SP.GObject o, O.IsDescendantOf UserMediaPermissionRequest o) => IsUserMediaPermissionRequest o
instance (SP.GObject o, O.IsDescendantOf UserMediaPermissionRequest o) => IsUserMediaPermissionRequest o

instance O.HasParentTypes UserMediaPermissionRequest
type instance O.ParentTypes UserMediaPermissionRequest = '[GObject.Object.Object, WebKit2.PermissionRequest.PermissionRequest]

-- | Cast to t'UserMediaPermissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toUserMediaPermissionRequest :: (MIO.MonadIO m, IsUserMediaPermissionRequest o) => o -> m UserMediaPermissionRequest
toUserMediaPermissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo UserMediaPermissionRequest

-- | Convert t'UserMediaPermissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserMediaPermissionRequest) where
    gvalueGType_ = c_webkit_user_media_permission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr UserMediaPermissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr UserMediaPermissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject UserMediaPermissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveUserMediaPermissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserMediaPermissionRequestMethod "allow" o = WebKit2.PermissionRequest.PermissionRequestAllowMethodInfo
    ResolveUserMediaPermissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUserMediaPermissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUserMediaPermissionRequestMethod "deny" o = WebKit2.PermissionRequest.PermissionRequestDenyMethodInfo
    ResolveUserMediaPermissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUserMediaPermissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUserMediaPermissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUserMediaPermissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUserMediaPermissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUserMediaPermissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUserMediaPermissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUserMediaPermissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUserMediaPermissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUserMediaPermissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUserMediaPermissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUserMediaPermissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUserMediaPermissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUserMediaPermissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUserMediaPermissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUserMediaPermissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUserMediaPermissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUserMediaPermissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUserMediaPermissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUserMediaPermissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUserMediaPermissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserMediaPermissionRequestMethod t UserMediaPermissionRequest, O.OverloadedMethod info UserMediaPermissionRequest p) => OL.IsLabel t (UserMediaPermissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserMediaPermissionRequestMethod t UserMediaPermissionRequest, O.OverloadedMethod info UserMediaPermissionRequest p, R.HasField t UserMediaPermissionRequest p) => R.HasField t UserMediaPermissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserMediaPermissionRequestMethod t UserMediaPermissionRequest, O.OverloadedMethodInfo info UserMediaPermissionRequest) => OL.IsLabel t (O.MethodProxy info UserMediaPermissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "is-for-audio-device"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-for-audio-device@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userMediaPermissionRequest #isForAudioDevice
-- @
getUserMediaPermissionRequestIsForAudioDevice :: (MonadIO m, IsUserMediaPermissionRequest o) => o -> m Bool
getUserMediaPermissionRequestIsForAudioDevice obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-for-audio-device"

#if defined(ENABLE_OVERLOADING)
data UserMediaPermissionRequestIsForAudioDevicePropertyInfo
instance AttrInfo UserMediaPermissionRequestIsForAudioDevicePropertyInfo where
    type AttrAllowedOps UserMediaPermissionRequestIsForAudioDevicePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint UserMediaPermissionRequestIsForAudioDevicePropertyInfo = IsUserMediaPermissionRequest
    type AttrSetTypeConstraint UserMediaPermissionRequestIsForAudioDevicePropertyInfo = (~) ()
    type AttrTransferTypeConstraint UserMediaPermissionRequestIsForAudioDevicePropertyInfo = (~) ()
    type AttrTransferType UserMediaPermissionRequestIsForAudioDevicePropertyInfo = ()
    type AttrGetType UserMediaPermissionRequestIsForAudioDevicePropertyInfo = Bool
    type AttrLabel UserMediaPermissionRequestIsForAudioDevicePropertyInfo = "is-for-audio-device"
    type AttrOrigin UserMediaPermissionRequestIsForAudioDevicePropertyInfo = UserMediaPermissionRequest
    attrGet = getUserMediaPermissionRequestIsForAudioDevice
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMediaPermissionRequest.isForAudioDevice"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMediaPermissionRequest.html#g:attr:isForAudioDevice"
        })
#endif

-- VVV Prop "is-for-video-device"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-for-video-device@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userMediaPermissionRequest #isForVideoDevice
-- @
getUserMediaPermissionRequestIsForVideoDevice :: (MonadIO m, IsUserMediaPermissionRequest o) => o -> m Bool
getUserMediaPermissionRequestIsForVideoDevice obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-for-video-device"

#if defined(ENABLE_OVERLOADING)
data UserMediaPermissionRequestIsForVideoDevicePropertyInfo
instance AttrInfo UserMediaPermissionRequestIsForVideoDevicePropertyInfo where
    type AttrAllowedOps UserMediaPermissionRequestIsForVideoDevicePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint UserMediaPermissionRequestIsForVideoDevicePropertyInfo = IsUserMediaPermissionRequest
    type AttrSetTypeConstraint UserMediaPermissionRequestIsForVideoDevicePropertyInfo = (~) ()
    type AttrTransferTypeConstraint UserMediaPermissionRequestIsForVideoDevicePropertyInfo = (~) ()
    type AttrTransferType UserMediaPermissionRequestIsForVideoDevicePropertyInfo = ()
    type AttrGetType UserMediaPermissionRequestIsForVideoDevicePropertyInfo = Bool
    type AttrLabel UserMediaPermissionRequestIsForVideoDevicePropertyInfo = "is-for-video-device"
    type AttrOrigin UserMediaPermissionRequestIsForVideoDevicePropertyInfo = UserMediaPermissionRequest
    attrGet = getUserMediaPermissionRequestIsForVideoDevice
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMediaPermissionRequest.isForVideoDevice"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMediaPermissionRequest.html#g:attr:isForVideoDevice"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserMediaPermissionRequest
type instance O.AttributeList UserMediaPermissionRequest = UserMediaPermissionRequestAttributeList
type UserMediaPermissionRequestAttributeList = ('[ '("isForAudioDevice", UserMediaPermissionRequestIsForAudioDevicePropertyInfo), '("isForVideoDevice", UserMediaPermissionRequestIsForVideoDevicePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
userMediaPermissionRequestIsForAudioDevice :: AttrLabelProxy "isForAudioDevice"
userMediaPermissionRequestIsForAudioDevice = AttrLabelProxy

userMediaPermissionRequestIsForVideoDevice :: AttrLabelProxy "isForVideoDevice"
userMediaPermissionRequestIsForVideoDevice = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UserMediaPermissionRequest = UserMediaPermissionRequestSignalList
type UserMediaPermissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif


