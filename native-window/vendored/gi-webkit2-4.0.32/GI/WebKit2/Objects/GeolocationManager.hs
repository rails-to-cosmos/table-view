{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Geolocation manager.
-- 
-- WebKitGeolocationManager provides API to get the geographical position of the user.
-- Once a t'GI.WebKit2.Objects.GeolocationPermissionRequest.GeolocationPermissionRequest' is allowed, when WebKit needs to know the
-- user location [GeolocationManager::start]("GI.WebKit2.Objects.GeolocationManager#g:signal:start") signal is emitted. If the signal is handled
-- and returns 'P.True', the application is responsible for providing the position every time it\'s
-- updated by calling 'GI.WebKit2.Objects.GeolocationManager.geolocationManagerUpdatePosition'. The signal [GeolocationManager::stop]("GI.WebKit2.Objects.GeolocationManager#g:signal:stop")
-- will be emitted when location updates are no longer needed.
-- 
-- /Since: 2.26/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.GeolocationManager
    ( 

-- * Exported types
    GeolocationManager(..)                  ,
    IsGeolocationManager                    ,
    toGeolocationManager                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [failed]("GI.WebKit2.Objects.GeolocationManager#g:method:failed"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [updatePosition]("GI.WebKit2.Objects.GeolocationManager#g:method:updatePosition"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getEnableHighAccuracy]("GI.WebKit2.Objects.GeolocationManager#g:method:getEnableHighAccuracy"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveGeolocationManagerMethod         ,
#endif

-- ** failed #method:failed#

#if defined(ENABLE_OVERLOADING)
    GeolocationManagerFailedMethodInfo      ,
#endif
    geolocationManagerFailed                ,


-- ** getEnableHighAccuracy #method:getEnableHighAccuracy#

#if defined(ENABLE_OVERLOADING)
    GeolocationManagerGetEnableHighAccuracyMethodInfo,
#endif
    geolocationManagerGetEnableHighAccuracy ,


-- ** updatePosition #method:updatePosition#

#if defined(ENABLE_OVERLOADING)
    GeolocationManagerUpdatePositionMethodInfo,
#endif
    geolocationManagerUpdatePosition        ,




 -- * Properties


-- ** enableHighAccuracy #attr:enableHighAccuracy#
-- | Whether high accuracy is enabled. This is a read-only property that will be
-- set to 'P.True' when a t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager' needs to get accurate position updates.
-- You can connect to notify[enableHighAccuracy](#g:signal:enableHighAccuracy) signal to monitor it.
-- 
-- /Since: 2.26/

#if defined(ENABLE_OVERLOADING)
    GeolocationManagerEnableHighAccuracyPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    geolocationManagerEnableHighAccuracy    ,
#endif
    getGeolocationManagerEnableHighAccuracy ,




 -- * Signals


-- ** start #signal:start#

    GeolocationManagerStartCallback         ,
#if defined(ENABLE_OVERLOADING)
    GeolocationManagerStartSignalInfo       ,
#endif
    afterGeolocationManagerStart            ,
    onGeolocationManagerStart               ,


-- ** stop #signal:stop#

    GeolocationManagerStopCallback          ,
#if defined(ENABLE_OVERLOADING)
    GeolocationManagerStopSignalInfo        ,
#endif
    afterGeolocationManagerStop             ,
    onGeolocationManagerStop                ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Structs.GeolocationPosition as WebKit2.GeolocationPosition

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Structs.GeolocationPosition as WebKit2.GeolocationPosition

#endif

-- | Memory-managed wrapper type.
newtype GeolocationManager = GeolocationManager (SP.ManagedPtr GeolocationManager)
    deriving (Eq)

instance SP.ManagedPtrNewtype GeolocationManager where
    toManagedPtr (GeolocationManager p) = p

foreign import ccall "webkit_geolocation_manager_get_type"
    c_webkit_geolocation_manager_get_type :: IO B.Types.GType

instance B.Types.TypedObject GeolocationManager where
    glibType = c_webkit_geolocation_manager_get_type

instance B.Types.GObject GeolocationManager

-- | Type class for types which can be safely cast to t'GeolocationManager', for instance with `toGeolocationManager`.
class (SP.GObject o, O.IsDescendantOf GeolocationManager o) => IsGeolocationManager o
instance (SP.GObject o, O.IsDescendantOf GeolocationManager o) => IsGeolocationManager o

instance O.HasParentTypes GeolocationManager
type instance O.ParentTypes GeolocationManager = '[GObject.Object.Object]

-- | Cast to t'GeolocationManager', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toGeolocationManager :: (MIO.MonadIO m, IsGeolocationManager o) => o -> m GeolocationManager
toGeolocationManager = MIO.liftIO . B.ManagedPtr.unsafeCastTo GeolocationManager

-- | Convert t'GeolocationManager' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe GeolocationManager) where
    gvalueGType_ = c_webkit_geolocation_manager_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr GeolocationManager)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr GeolocationManager)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject GeolocationManager ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveGeolocationManagerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveGeolocationManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGeolocationManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGeolocationManagerMethod "failed" o = GeolocationManagerFailedMethodInfo
    ResolveGeolocationManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGeolocationManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGeolocationManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGeolocationManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGeolocationManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGeolocationManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGeolocationManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGeolocationManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGeolocationManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGeolocationManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGeolocationManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGeolocationManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGeolocationManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGeolocationManagerMethod "updatePosition" o = GeolocationManagerUpdatePositionMethodInfo
    ResolveGeolocationManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGeolocationManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGeolocationManagerMethod "getEnableHighAccuracy" o = GeolocationManagerGetEnableHighAccuracyMethodInfo
    ResolveGeolocationManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGeolocationManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGeolocationManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGeolocationManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGeolocationManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGeolocationManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGeolocationManagerMethod t GeolocationManager, O.OverloadedMethod info GeolocationManager p) => OL.IsLabel t (GeolocationManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveGeolocationManagerMethod t GeolocationManager, O.OverloadedMethod info GeolocationManager p, R.HasField t GeolocationManager p) => R.HasField t GeolocationManager p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveGeolocationManagerMethod t GeolocationManager, O.OverloadedMethodInfo info GeolocationManager) => OL.IsLabel t (O.MethodProxy info GeolocationManager) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal GeolocationManager::start
-- | The signal is emitted to notify that /@manager@/ needs to start receiving
-- position updates. After this signal is emitted the user should provide
-- the updates using 'GI.WebKit2.Objects.GeolocationManager.geolocationManagerUpdatePosition' every time
-- the position changes, or use 'GI.WebKit2.Objects.GeolocationManager.geolocationManagerFailed' in case
-- it isn\'t possible to determine the current position.
-- 
-- If the signal is not handled, WebKit will try to determine the position
-- using GeoClue if available.
-- 
-- /Since: 2.26/
type GeolocationManagerStartCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_GeolocationManagerStartCallback =
    Ptr GeolocationManager ->               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_GeolocationManagerStartCallback`.
foreign import ccall "wrapper"
    mk_GeolocationManagerStartCallback :: C_GeolocationManagerStartCallback -> IO (FunPtr C_GeolocationManagerStartCallback)

wrap_GeolocationManagerStartCallback :: 
    GObject a => (a -> GeolocationManagerStartCallback) ->
    C_GeolocationManagerStartCallback
wrap_GeolocationManagerStartCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [start](#signal:start) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' geolocationManager #start callback
-- @
-- 
-- 
onGeolocationManagerStart :: (IsGeolocationManager a, MonadIO m) => a -> ((?self :: a) => GeolocationManagerStartCallback) -> m SignalHandlerId
onGeolocationManagerStart obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_GeolocationManagerStartCallback wrapped
    wrapped'' <- mk_GeolocationManagerStartCallback wrapped'
    connectSignalFunPtr obj "start" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [start](#signal:start) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' geolocationManager #start callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterGeolocationManagerStart :: (IsGeolocationManager a, MonadIO m) => a -> ((?self :: a) => GeolocationManagerStartCallback) -> m SignalHandlerId
afterGeolocationManagerStart obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_GeolocationManagerStartCallback wrapped
    wrapped'' <- mk_GeolocationManagerStartCallback wrapped'
    connectSignalFunPtr obj "start" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GeolocationManagerStartSignalInfo
instance SignalInfo GeolocationManagerStartSignalInfo where
    type HaskellCallbackType GeolocationManagerStartSignalInfo = GeolocationManagerStartCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GeolocationManagerStartCallback cb
        cb'' <- mk_GeolocationManagerStartCallback cb'
        connectSignalFunPtr obj "start" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager::start"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#g:signal:start"})

#endif

-- signal GeolocationManager::stop
-- | The signal is emitted to notify that /@manager@/ doesn\'t need to receive
-- position updates anymore.
-- 
-- /Since: 2.26/
type GeolocationManagerStopCallback =
    IO ()

type C_GeolocationManagerStopCallback =
    Ptr GeolocationManager ->               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GeolocationManagerStopCallback`.
foreign import ccall "wrapper"
    mk_GeolocationManagerStopCallback :: C_GeolocationManagerStopCallback -> IO (FunPtr C_GeolocationManagerStopCallback)

wrap_GeolocationManagerStopCallback :: 
    GObject a => (a -> GeolocationManagerStopCallback) ->
    C_GeolocationManagerStopCallback
wrap_GeolocationManagerStopCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [stop](#signal:stop) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' geolocationManager #stop callback
-- @
-- 
-- 
onGeolocationManagerStop :: (IsGeolocationManager a, MonadIO m) => a -> ((?self :: a) => GeolocationManagerStopCallback) -> m SignalHandlerId
onGeolocationManagerStop obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_GeolocationManagerStopCallback wrapped
    wrapped'' <- mk_GeolocationManagerStopCallback wrapped'
    connectSignalFunPtr obj "stop" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [stop](#signal:stop) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' geolocationManager #stop callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterGeolocationManagerStop :: (IsGeolocationManager a, MonadIO m) => a -> ((?self :: a) => GeolocationManagerStopCallback) -> m SignalHandlerId
afterGeolocationManagerStop obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_GeolocationManagerStopCallback wrapped
    wrapped'' <- mk_GeolocationManagerStopCallback wrapped'
    connectSignalFunPtr obj "stop" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GeolocationManagerStopSignalInfo
instance SignalInfo GeolocationManagerStopSignalInfo where
    type HaskellCallbackType GeolocationManagerStopSignalInfo = GeolocationManagerStopCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GeolocationManagerStopCallback cb
        cb'' <- mk_GeolocationManagerStopCallback cb'
        connectSignalFunPtr obj "stop" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager::stop"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#g:signal:stop"})

#endif

-- VVV Prop "enable-high-accuracy"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@enable-high-accuracy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' geolocationManager #enableHighAccuracy
-- @
getGeolocationManagerEnableHighAccuracy :: (MonadIO m, IsGeolocationManager o) => o -> m Bool
getGeolocationManagerEnableHighAccuracy obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "enable-high-accuracy"

#if defined(ENABLE_OVERLOADING)
data GeolocationManagerEnableHighAccuracyPropertyInfo
instance AttrInfo GeolocationManagerEnableHighAccuracyPropertyInfo where
    type AttrAllowedOps GeolocationManagerEnableHighAccuracyPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint GeolocationManagerEnableHighAccuracyPropertyInfo = IsGeolocationManager
    type AttrSetTypeConstraint GeolocationManagerEnableHighAccuracyPropertyInfo = (~) ()
    type AttrTransferTypeConstraint GeolocationManagerEnableHighAccuracyPropertyInfo = (~) ()
    type AttrTransferType GeolocationManagerEnableHighAccuracyPropertyInfo = ()
    type AttrGetType GeolocationManagerEnableHighAccuracyPropertyInfo = Bool
    type AttrLabel GeolocationManagerEnableHighAccuracyPropertyInfo = "enable-high-accuracy"
    type AttrOrigin GeolocationManagerEnableHighAccuracyPropertyInfo = GeolocationManager
    attrGet = getGeolocationManagerEnableHighAccuracy
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager.enableHighAccuracy"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#g:attr:enableHighAccuracy"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GeolocationManager
type instance O.AttributeList GeolocationManager = GeolocationManagerAttributeList
type GeolocationManagerAttributeList = ('[ '("enableHighAccuracy", GeolocationManagerEnableHighAccuracyPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
geolocationManagerEnableHighAccuracy :: AttrLabelProxy "enableHighAccuracy"
geolocationManagerEnableHighAccuracy = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GeolocationManager = GeolocationManagerSignalList
type GeolocationManagerSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("start", GeolocationManagerStartSignalInfo), '("stop", GeolocationManagerStopSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method GeolocationManager::failed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "GeolocationManager" }
--           , argCType = Just "WebKitGeolocationManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitGeolocationManager"
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
--           { argCName = "error_message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the error message" , sinceVersion = Nothing }
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

foreign import ccall "webkit_geolocation_manager_failed" webkit_geolocation_manager_failed :: 
    Ptr GeolocationManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "GeolocationManager"})
    CString ->                              -- error_message : TBasicType TUTF8
    IO ()

-- | Notify /@manager@/ that determining the position failed.
-- 
-- /Since: 2.26/
geolocationManagerFailed ::
    (B.CallStack.HasCallStack, MonadIO m, IsGeolocationManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager'
    -> T.Text
    -- ^ /@errorMessage@/: the error message
    -> m ()
geolocationManagerFailed manager errorMessage = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    errorMessage' <- textToCString errorMessage
    webkit_geolocation_manager_failed manager' errorMessage'
    touchManagedPtr manager
    freeMem errorMessage'
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationManagerFailedMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsGeolocationManager a) => O.OverloadedMethod GeolocationManagerFailedMethodInfo a signature where
    overloadedMethod = geolocationManagerFailed

instance O.OverloadedMethodInfo GeolocationManagerFailedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager.geolocationManagerFailed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#v:geolocationManagerFailed"
        })


#endif

-- method GeolocationManager::get_enable_high_accuracy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "GeolocationManager" }
--           , argCType = Just "WebKitGeolocationManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitGeolocationManager"
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

foreign import ccall "webkit_geolocation_manager_get_enable_high_accuracy" webkit_geolocation_manager_get_enable_high_accuracy :: 
    Ptr GeolocationManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "GeolocationManager"})
    IO CInt

-- | Get whether high accuracy is enabled.
-- 
-- /Since: 2.26/
geolocationManagerGetEnableHighAccuracy ::
    (B.CallStack.HasCallStack, MonadIO m, IsGeolocationManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager'
    -> m Bool
    -- ^ __Returns:__ Whether the setting is enabled.
geolocationManagerGetEnableHighAccuracy manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- webkit_geolocation_manager_get_enable_high_accuracy manager'
    let result' = (/= 0) result
    touchManagedPtr manager
    return result'

#if defined(ENABLE_OVERLOADING)
data GeolocationManagerGetEnableHighAccuracyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGeolocationManager a) => O.OverloadedMethod GeolocationManagerGetEnableHighAccuracyMethodInfo a signature where
    overloadedMethod = geolocationManagerGetEnableHighAccuracy

instance O.OverloadedMethodInfo GeolocationManagerGetEnableHighAccuracyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager.geolocationManagerGetEnableHighAccuracy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#v:geolocationManagerGetEnableHighAccuracy"
        })


#endif

-- method GeolocationManager::update_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "GeolocationManager" }
--           , argCType = Just "WebKitGeolocationManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitGeolocationManager"
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
--           { argCName = "position"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "GeolocationPosition" }
--           , argCType = Just "WebKitGeolocationPosition*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitGeolocationPosition"
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

foreign import ccall "webkit_geolocation_manager_update_position" webkit_geolocation_manager_update_position :: 
    Ptr GeolocationManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "GeolocationManager"})
    Ptr WebKit2.GeolocationPosition.GeolocationPosition -> -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    IO ()

-- | Notify /@manager@/ that position has been updated to /@position@/.
-- 
-- /Since: 2.26/
geolocationManagerUpdatePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsGeolocationManager a) =>
    a
    -- ^ /@manager@/: a t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager'
    -> WebKit2.GeolocationPosition.GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> m ()
geolocationManagerUpdatePosition manager position = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    position' <- unsafeManagedPtrGetPtr position
    webkit_geolocation_manager_update_position manager' position'
    touchManagedPtr manager
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationManagerUpdatePositionMethodInfo
instance (signature ~ (WebKit2.GeolocationPosition.GeolocationPosition -> m ()), MonadIO m, IsGeolocationManager a) => O.OverloadedMethod GeolocationManagerUpdatePositionMethodInfo a signature where
    overloadedMethod = geolocationManagerUpdatePosition

instance O.OverloadedMethodInfo GeolocationManagerUpdatePositionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.GeolocationManager.geolocationManagerUpdatePosition",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-GeolocationManager.html#v:geolocationManagerUpdatePosition"
        })


#endif


