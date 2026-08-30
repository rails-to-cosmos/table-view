{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- An opaque struct to provide position updates to a t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager'.
-- 
-- WebKitGeolocationPosition is an opaque struct used to provide position updates to a
-- t'GI.WebKit2.Objects.GeolocationManager.GeolocationManager' using 'GI.WebKit2.Objects.GeolocationManager.geolocationManagerUpdatePosition'.
-- 
-- /Since: 2.26/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.GeolocationPosition
    ( 

-- * Exported types
    GeolocationPosition(..)                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.GeolocationPosition#g:method:copy"), [free]("GI.WebKit2.Structs.GeolocationPosition#g:method:free").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- [setAltitude]("GI.WebKit2.Structs.GeolocationPosition#g:method:setAltitude"), [setAltitudeAccuracy]("GI.WebKit2.Structs.GeolocationPosition#g:method:setAltitudeAccuracy"), [setHeading]("GI.WebKit2.Structs.GeolocationPosition#g:method:setHeading"), [setSpeed]("GI.WebKit2.Structs.GeolocationPosition#g:method:setSpeed"), [setTimestamp]("GI.WebKit2.Structs.GeolocationPosition#g:method:setTimestamp").

#if defined(ENABLE_OVERLOADING)
    ResolveGeolocationPositionMethod        ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionCopyMethodInfo       ,
#endif
    geolocationPositionCopy                 ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionFreeMethodInfo       ,
#endif
    geolocationPositionFree                 ,


-- ** new #method:new#

    geolocationPositionNew                  ,


-- ** setAltitude #method:setAltitude#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionSetAltitudeMethodInfo,
#endif
    geolocationPositionSetAltitude          ,


-- ** setAltitudeAccuracy #method:setAltitudeAccuracy#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionSetAltitudeAccuracyMethodInfo,
#endif
    geolocationPositionSetAltitudeAccuracy  ,


-- ** setHeading #method:setHeading#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionSetHeadingMethodInfo ,
#endif
    geolocationPositionSetHeading           ,


-- ** setSpeed #method:setSpeed#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionSetSpeedMethodInfo   ,
#endif
    geolocationPositionSetSpeed             ,


-- ** setTimestamp #method:setTimestamp#

#if defined(ENABLE_OVERLOADING)
    GeolocationPositionSetTimestampMethodInfo,
#endif
    geolocationPositionSetTimestamp         ,




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

#else

#endif

-- | Memory-managed wrapper type.
newtype GeolocationPosition = GeolocationPosition (SP.ManagedPtr GeolocationPosition)
    deriving (Eq)

instance SP.ManagedPtrNewtype GeolocationPosition where
    toManagedPtr (GeolocationPosition p) = p

foreign import ccall "webkit_geolocation_position_get_type" c_webkit_geolocation_position_get_type :: 
    IO GType

type instance O.ParentTypes GeolocationPosition = '[]
instance O.HasParentTypes GeolocationPosition

instance B.Types.TypedObject GeolocationPosition where
    glibType = c_webkit_geolocation_position_get_type

instance B.Types.GBoxed GeolocationPosition

-- | Convert t'GeolocationPosition' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe GeolocationPosition) where
    gvalueGType_ = c_webkit_geolocation_position_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr GeolocationPosition)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr GeolocationPosition)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed GeolocationPosition ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GeolocationPosition
type instance O.AttributeList GeolocationPosition = GeolocationPositionAttributeList
type GeolocationPositionAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method GeolocationPosition::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "latitude"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid latitude in degrees"
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
--           { argCName = "longitude"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid longitude in degrees"
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
--           { argCName = "accuracy"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "accuracy of location in meters"
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
--                  Name { namespace = "WebKit2" , name = "GeolocationPosition" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_geolocation_position_new" webkit_geolocation_position_new :: 
    CDouble ->                              -- latitude : TBasicType TDouble
    CDouble ->                              -- longitude : TBasicType TDouble
    CDouble ->                              -- accuracy : TBasicType TDouble
    IO (Ptr GeolocationPosition)

-- | Create a new t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'.
-- 
-- /Since: 2.26/
geolocationPositionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@latitude@/: a valid latitude in degrees
    -> Double
    -- ^ /@longitude@/: a valid longitude in degrees
    -> Double
    -- ^ /@accuracy@/: accuracy of location in meters
    -> m GeolocationPosition
    -- ^ __Returns:__ a newly created t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
geolocationPositionNew latitude longitude accuracy = liftIO $ do
    let latitude' = realToFrac latitude
    let longitude' = realToFrac longitude
    let accuracy' = realToFrac accuracy
    result <- webkit_geolocation_position_new latitude' longitude' accuracy'
    checkUnexpectedReturnNULL "geolocationPositionNew" result
    result' <- (wrapBoxed GeolocationPosition) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GeolocationPosition::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "GeolocationPosition" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_geolocation_position_copy" webkit_geolocation_position_copy :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    IO (Ptr GeolocationPosition)

-- | Make a copy of the t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'.
-- 
-- /Since: 2.26/
geolocationPositionCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> m GeolocationPosition
    -- ^ __Returns:__ a copy of /@position@/
geolocationPositionCopy position = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    result <- webkit_geolocation_position_copy position'
    checkUnexpectedReturnNULL "geolocationPositionCopy" result
    result' <- (wrapBoxed GeolocationPosition) result
    touchManagedPtr position
    return result'

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionCopyMethodInfo
instance (signature ~ (m GeolocationPosition), MonadIO m) => O.OverloadedMethod GeolocationPositionCopyMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionCopy

instance O.OverloadedMethodInfo GeolocationPositionCopyMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionCopy"
        })


#endif

-- method GeolocationPosition::free
-- method type : OrdinaryMethod
-- Args: [ Arg
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

foreign import ccall "webkit_geolocation_position_free" webkit_geolocation_position_free :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
-- 
-- /Since: 2.26/
geolocationPositionFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> m ()
geolocationPositionFree position = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    webkit_geolocation_position_free position'
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionFreeMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionFree

instance O.OverloadedMethodInfo GeolocationPositionFreeMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionFree"
        })


#endif

-- method GeolocationPosition::set_altitude
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "altitude"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "altitude in meters" , sinceVersion = Nothing }
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

foreign import ccall "webkit_geolocation_position_set_altitude" webkit_geolocation_position_set_altitude :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    CDouble ->                              -- altitude : TBasicType TDouble
    IO ()

-- | Set the /@position@/ altitude.
-- 
-- /Since: 2.26/
geolocationPositionSetAltitude ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> Double
    -- ^ /@altitude@/: altitude in meters
    -> m ()
geolocationPositionSetAltitude position altitude = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    let altitude' = realToFrac altitude
    webkit_geolocation_position_set_altitude position' altitude'
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionSetAltitudeMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionSetAltitudeMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionSetAltitude

instance O.OverloadedMethodInfo GeolocationPositionSetAltitudeMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionSetAltitude",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionSetAltitude"
        })


#endif

-- method GeolocationPosition::set_altitude_accuracy
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "altitude_accuracy"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "accuracy of position altitude in meters"
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

foreign import ccall "webkit_geolocation_position_set_altitude_accuracy" webkit_geolocation_position_set_altitude_accuracy :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    CDouble ->                              -- altitude_accuracy : TBasicType TDouble
    IO ()

-- | Set the accuracy of /@position@/ altitude.
-- 
-- /Since: 2.26/
geolocationPositionSetAltitudeAccuracy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> Double
    -- ^ /@altitudeAccuracy@/: accuracy of position altitude in meters
    -> m ()
geolocationPositionSetAltitudeAccuracy position altitudeAccuracy = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    let altitudeAccuracy' = realToFrac altitudeAccuracy
    webkit_geolocation_position_set_altitude_accuracy position' altitudeAccuracy'
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionSetAltitudeAccuracyMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionSetAltitudeAccuracyMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionSetAltitudeAccuracy

instance O.OverloadedMethodInfo GeolocationPositionSetAltitudeAccuracyMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionSetAltitudeAccuracy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionSetAltitudeAccuracy"
        })


#endif

-- method GeolocationPosition::set_heading
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "heading"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "heading in degrees" , sinceVersion = Nothing }
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

foreign import ccall "webkit_geolocation_position_set_heading" webkit_geolocation_position_set_heading :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    CDouble ->                              -- heading : TBasicType TDouble
    IO ()

-- | Set the /@position@/ heading.
-- 
-- Set the /@position@/ heading, as a positive angle between the direction of movement and the North
-- direction, in clockwise direction.
-- 
-- /Since: 2.26/
geolocationPositionSetHeading ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> Double
    -- ^ /@heading@/: heading in degrees
    -> m ()
geolocationPositionSetHeading position heading = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    let heading' = realToFrac heading
    webkit_geolocation_position_set_heading position' heading'
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionSetHeadingMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionSetHeadingMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionSetHeading

instance O.OverloadedMethodInfo GeolocationPositionSetHeadingMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionSetHeading",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionSetHeading"
        })


#endif

-- method GeolocationPosition::set_speed
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "speed"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "speed in meters per second"
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

foreign import ccall "webkit_geolocation_position_set_speed" webkit_geolocation_position_set_speed :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    CDouble ->                              -- speed : TBasicType TDouble
    IO ()

-- | Set the /@position@/ speed.
-- 
-- /Since: 2.26/
geolocationPositionSetSpeed ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> Double
    -- ^ /@speed@/: speed in meters per second
    -> m ()
geolocationPositionSetSpeed position speed = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    let speed' = realToFrac speed
    webkit_geolocation_position_set_speed position' speed'
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionSetSpeedMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionSetSpeedMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionSetSpeed

instance O.OverloadedMethodInfo GeolocationPositionSetSpeedMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionSetSpeed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionSetSpeed"
        })


#endif

-- method GeolocationPosition::set_timestamp
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "timestamp"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "timestamp in seconds since the epoch, or 0 to use current time"
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

foreign import ccall "webkit_geolocation_position_set_timestamp" webkit_geolocation_position_set_timestamp :: 
    Ptr GeolocationPosition ->              -- position : TInterface (Name {namespace = "WebKit2", name = "GeolocationPosition"})
    Word64 ->                               -- timestamp : TBasicType TUInt64
    IO ()

-- | Set the /@position@/ timestamp.
-- 
-- By default it\'s the time when the /@position@/ was created.
-- 
-- /Since: 2.26/
geolocationPositionSetTimestamp ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GeolocationPosition
    -- ^ /@position@/: a t'GI.WebKit2.Structs.GeolocationPosition.GeolocationPosition'
    -> Word64
    -- ^ /@timestamp@/: timestamp in seconds since the epoch, or 0 to use current time
    -> m ()
geolocationPositionSetTimestamp position timestamp = liftIO $ do
    position' <- unsafeManagedPtrGetPtr position
    webkit_geolocation_position_set_timestamp position' timestamp
    touchManagedPtr position
    return ()

#if defined(ENABLE_OVERLOADING)
data GeolocationPositionSetTimestampMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m) => O.OverloadedMethod GeolocationPositionSetTimestampMethodInfo GeolocationPosition signature where
    overloadedMethod = geolocationPositionSetTimestamp

instance O.OverloadedMethodInfo GeolocationPositionSetTimestampMethodInfo GeolocationPosition where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.GeolocationPosition.geolocationPositionSetTimestamp",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-GeolocationPosition.html#v:geolocationPositionSetTimestamp"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveGeolocationPositionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveGeolocationPositionMethod "copy" o = GeolocationPositionCopyMethodInfo
    ResolveGeolocationPositionMethod "free" o = GeolocationPositionFreeMethodInfo
    ResolveGeolocationPositionMethod "setAltitude" o = GeolocationPositionSetAltitudeMethodInfo
    ResolveGeolocationPositionMethod "setAltitudeAccuracy" o = GeolocationPositionSetAltitudeAccuracyMethodInfo
    ResolveGeolocationPositionMethod "setHeading" o = GeolocationPositionSetHeadingMethodInfo
    ResolveGeolocationPositionMethod "setSpeed" o = GeolocationPositionSetSpeedMethodInfo
    ResolveGeolocationPositionMethod "setTimestamp" o = GeolocationPositionSetTimestampMethodInfo
    ResolveGeolocationPositionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGeolocationPositionMethod t GeolocationPosition, O.OverloadedMethod info GeolocationPosition p) => OL.IsLabel t (GeolocationPosition -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveGeolocationPositionMethod t GeolocationPosition, O.OverloadedMethod info GeolocationPosition p, R.HasField t GeolocationPosition p) => R.HasField t GeolocationPosition p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveGeolocationPositionMethod t GeolocationPosition, O.OverloadedMethodInfo info GeolocationPosition) => OL.IsLabel t (O.MethodProxy info GeolocationPosition) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


