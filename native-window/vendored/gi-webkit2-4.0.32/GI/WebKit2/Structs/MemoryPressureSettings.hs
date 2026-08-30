{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A boxed type representing the settings for the memory pressure handler
-- 
-- t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' is a boxed type that can be used to provide some custom settings
-- to control how the memory pressure situations are handled by the different processes.
-- 
-- The memory pressure system implemented inside the different process will try to keep the memory usage
-- under the defined memory limit. In order to do that, it will check the used memory with a user defined
-- frequency and decide whether it should try to release memory. The thresholds passed will define how urgent
-- is to release that memory.
-- 
-- Take into account that badly defined parameters can greatly reduce the performance of the engine. For
-- example, setting memory limit too low with a fast poll interval can cause the process to constantly
-- be trying to release memory.
-- 
-- A t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' can be passed to a t'GI.WebKit2.Objects.WebContext.WebContext' constructor, and the settings will
-- be applied to all the web processes created by that context.
-- 
-- A t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' can be passed to 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetMemoryPressureSettings',
-- and the settings will be applied to all the network processes created after that call by any instance of
-- t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
-- 
-- /Since: 2.34/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.MemoryPressureSettings
    ( 

-- * Exported types
    MemoryPressureSettings(..)              ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:copy"), [free]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:free").
-- 
-- ==== Getters
-- [getConservativeThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:getConservativeThreshold"), [getKillThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:getKillThreshold"), [getMemoryLimit]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:getMemoryLimit"), [getPollInterval]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:getPollInterval"), [getStrictThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:getStrictThreshold").
-- 
-- ==== Setters
-- [setConservativeThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:setConservativeThreshold"), [setKillThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:setKillThreshold"), [setMemoryLimit]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:setMemoryLimit"), [setPollInterval]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:setPollInterval"), [setStrictThreshold]("GI.WebKit2.Structs.MemoryPressureSettings#g:method:setStrictThreshold").

#if defined(ENABLE_OVERLOADING)
    ResolveMemoryPressureSettingsMethod     ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsCopyMethodInfo    ,
#endif
    memoryPressureSettingsCopy              ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsFreeMethodInfo    ,
#endif
    memoryPressureSettingsFree              ,


-- ** getConservativeThreshold #method:getConservativeThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsGetConservativeThresholdMethodInfo,
#endif
    memoryPressureSettingsGetConservativeThreshold,


-- ** getKillThreshold #method:getKillThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsGetKillThresholdMethodInfo,
#endif
    memoryPressureSettingsGetKillThreshold  ,


-- ** getMemoryLimit #method:getMemoryLimit#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsGetMemoryLimitMethodInfo,
#endif
    memoryPressureSettingsGetMemoryLimit    ,


-- ** getPollInterval #method:getPollInterval#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsGetPollIntervalMethodInfo,
#endif
    memoryPressureSettingsGetPollInterval   ,


-- ** getStrictThreshold #method:getStrictThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsGetStrictThresholdMethodInfo,
#endif
    memoryPressureSettingsGetStrictThreshold,


-- ** new #method:new#

    memoryPressureSettingsNew               ,


-- ** setConservativeThreshold #method:setConservativeThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsSetConservativeThresholdMethodInfo,
#endif
    memoryPressureSettingsSetConservativeThreshold,


-- ** setKillThreshold #method:setKillThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsSetKillThresholdMethodInfo,
#endif
    memoryPressureSettingsSetKillThreshold  ,


-- ** setMemoryLimit #method:setMemoryLimit#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsSetMemoryLimitMethodInfo,
#endif
    memoryPressureSettingsSetMemoryLimit    ,


-- ** setPollInterval #method:setPollInterval#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsSetPollIntervalMethodInfo,
#endif
    memoryPressureSettingsSetPollInterval   ,


-- ** setStrictThreshold #method:setStrictThreshold#

#if defined(ENABLE_OVERLOADING)
    MemoryPressureSettingsSetStrictThresholdMethodInfo,
#endif
    memoryPressureSettingsSetStrictThreshold,




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
newtype MemoryPressureSettings = MemoryPressureSettings (SP.ManagedPtr MemoryPressureSettings)
    deriving (Eq)

instance SP.ManagedPtrNewtype MemoryPressureSettings where
    toManagedPtr (MemoryPressureSettings p) = p

foreign import ccall "webkit_memory_pressure_settings_get_type" c_webkit_memory_pressure_settings_get_type :: 
    IO GType

type instance O.ParentTypes MemoryPressureSettings = '[]
instance O.HasParentTypes MemoryPressureSettings

instance B.Types.TypedObject MemoryPressureSettings where
    glibType = c_webkit_memory_pressure_settings_get_type

instance B.Types.GBoxed MemoryPressureSettings

-- | Convert t'MemoryPressureSettings' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe MemoryPressureSettings) where
    gvalueGType_ = c_webkit_memory_pressure_settings_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr MemoryPressureSettings)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr MemoryPressureSettings)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed MemoryPressureSettings ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MemoryPressureSettings
type instance O.AttributeList MemoryPressureSettings = MemoryPressureSettingsAttributeList
type MemoryPressureSettingsAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method MemoryPressureSettings::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "MemoryPressureSettings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_new" webkit_memory_pressure_settings_new :: 
    IO (Ptr MemoryPressureSettings)

-- | Create a new t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' with the default values.
-- 
-- /Since: 2.34/
memoryPressureSettingsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m MemoryPressureSettings
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings' instance filled with the default values.
memoryPressureSettingsNew  = liftIO $ do
    result <- webkit_memory_pressure_settings_new
    checkUnexpectedReturnNULL "memoryPressureSettingsNew" result
    result' <- (wrapBoxed MemoryPressureSettings) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MemoryPressureSettings::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--                  Name { namespace = "WebKit2" , name = "MemoryPressureSettings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_copy" webkit_memory_pressure_settings_copy :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO (Ptr MemoryPressureSettings)

-- | Make a copy of /@settings@/.
-- 
-- /Since: 2.34/
memoryPressureSettingsCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m MemoryPressureSettings
    -- ^ __Returns:__ A copy of of the passed t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'.
memoryPressureSettingsCopy settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_copy settings'
    checkUnexpectedReturnNULL "memoryPressureSettingsCopy" result
    result' <- (wrapBoxed MemoryPressureSettings) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsCopyMethodInfo
instance (signature ~ (m MemoryPressureSettings), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsCopyMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsCopy

instance O.OverloadedMethodInfo MemoryPressureSettingsCopyMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsCopy"
        })


#endif

-- method MemoryPressureSettings::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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

foreign import ccall "webkit_memory_pressure_settings_free" webkit_memory_pressure_settings_free :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'.
-- 
-- /Since: 2.34/
memoryPressureSettingsFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m ()
memoryPressureSettingsFree settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    webkit_memory_pressure_settings_free settings'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsFreeMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsFree

instance O.OverloadedMethodInfo MemoryPressureSettingsFreeMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsFree"
        })


#endif

-- method MemoryPressureSettings::get_conservative_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_get_conservative_threshold" webkit_memory_pressure_settings_get_conservative_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO CDouble

-- | Gets the conservative memory usage threshold.
-- 
-- /Since: 2.34/
memoryPressureSettingsGetConservativeThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m Double
    -- ^ __Returns:__ value in the @(0, 1)@ range.
memoryPressureSettingsGetConservativeThreshold settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_get_conservative_threshold settings'
    let result' = realToFrac result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsGetConservativeThresholdMethodInfo
instance (signature ~ (m Double), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsGetConservativeThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsGetConservativeThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsGetConservativeThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsGetConservativeThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsGetConservativeThreshold"
        })


#endif

-- method MemoryPressureSettings::get_kill_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_get_kill_threshold" webkit_memory_pressure_settings_get_kill_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO CDouble

-- | Gets the kill memory usage threshold.
-- 
-- /Since: 2.34/
memoryPressureSettingsGetKillThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m Double
    -- ^ __Returns:__ positive value, can be zero.
memoryPressureSettingsGetKillThreshold settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_get_kill_threshold settings'
    let result' = realToFrac result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsGetKillThresholdMethodInfo
instance (signature ~ (m Double), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsGetKillThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsGetKillThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsGetKillThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsGetKillThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsGetKillThreshold"
        })


#endif

-- method MemoryPressureSettings::get_memory_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_get_memory_limit" webkit_memory_pressure_settings_get_memory_limit :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO Word32

-- | Gets the memory usage limit.
-- 
-- /Since: 2.34/
memoryPressureSettingsGetMemoryLimit ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m Word32
    -- ^ __Returns:__ current value, in megabytes.
memoryPressureSettingsGetMemoryLimit settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_get_memory_limit settings'
    touchManagedPtr settings
    return result

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsGetMemoryLimitMethodInfo
instance (signature ~ (m Word32), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsGetMemoryLimitMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsGetMemoryLimit

instance O.OverloadedMethodInfo MemoryPressureSettingsGetMemoryLimitMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsGetMemoryLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsGetMemoryLimit"
        })


#endif

-- method MemoryPressureSettings::get_poll_interval
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_get_poll_interval" webkit_memory_pressure_settings_get_poll_interval :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO CDouble

-- | Gets the interval at which memory usage is checked.
-- 
-- /Since: 2.34/
memoryPressureSettingsGetPollInterval ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m Double
    -- ^ __Returns:__ current interval value, in seconds.
memoryPressureSettingsGetPollInterval settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_get_poll_interval settings'
    let result' = realToFrac result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsGetPollIntervalMethodInfo
instance (signature ~ (m Double), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsGetPollIntervalMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsGetPollInterval

instance O.OverloadedMethodInfo MemoryPressureSettingsGetPollIntervalMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsGetPollInterval",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsGetPollInterval"
        })


#endif

-- method MemoryPressureSettings::get_strict_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_memory_pressure_settings_get_strict_threshold" webkit_memory_pressure_settings_get_strict_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    IO CDouble

-- | Gets the strict memory usage threshold.
-- 
-- /Since: 2.34/
memoryPressureSettingsGetStrictThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> m Double
    -- ^ __Returns:__ value in the @(0, 1)@ range.
memoryPressureSettingsGetStrictThreshold settings = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    result <- webkit_memory_pressure_settings_get_strict_threshold settings'
    let result' = realToFrac result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsGetStrictThresholdMethodInfo
instance (signature ~ (m Double), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsGetStrictThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsGetStrictThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsGetStrictThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsGetStrictThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsGetStrictThreshold"
        })


#endif

-- method MemoryPressureSettings::set_conservative_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "fraction of the memory limit where the conservative policy starts working."
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

foreign import ccall "webkit_memory_pressure_settings_set_conservative_threshold" webkit_memory_pressure_settings_set_conservative_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets the memory limit for the conservative policy to start working.
-- 
-- Sets /@value@/ as the fraction of the defined memory limit where the conservative
-- policy starts working. This policy will try to reduce the memory footprint by
-- releasing non critical memory.
-- 
-- The threshold must be bigger than 0 and smaller than 1, and it must be smaller
-- than the strict threshold defined in /@settings@/. The default value is 0.33.
-- 
-- /Since: 2.34/
memoryPressureSettingsSetConservativeThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> Double
    -- ^ /@value@/: fraction of the memory limit where the conservative policy starts working.
    -> m ()
memoryPressureSettingsSetConservativeThreshold settings value = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    let value' = realToFrac value
    webkit_memory_pressure_settings_set_conservative_threshold settings' value'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsSetConservativeThresholdMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsSetConservativeThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsSetConservativeThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsSetConservativeThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsSetConservativeThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsSetConservativeThreshold"
        })


#endif

-- method MemoryPressureSettings::set_kill_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "fraction of the memory limit where the process will be killed because\n  of excessive memory usage."
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

foreign import ccall "webkit_memory_pressure_settings_set_kill_threshold" webkit_memory_pressure_settings_set_kill_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets /@value@/ as the fraction of the defined memory limit where the process will be
-- killed.
-- 
-- The threshold must be a value bigger or equal to 0. A value of 0 means that the process
-- is never killed. If the threshold is not 0, then it must be bigger than the strict threshold
-- defined in /@settings@/. The threshold can also have values bigger than 1. The default value is 0.
-- 
-- /Since: 2.34/
memoryPressureSettingsSetKillThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> Double
    -- ^ /@value@/: fraction of the memory limit where the process will be killed because
    --   of excessive memory usage.
    -> m ()
memoryPressureSettingsSetKillThreshold settings value = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    let value' = realToFrac value
    webkit_memory_pressure_settings_set_kill_threshold settings' value'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsSetKillThresholdMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsSetKillThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsSetKillThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsSetKillThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsSetKillThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsSetKillThreshold"
        })


#endif

-- method MemoryPressureSettings::set_memory_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--           { argCName = "memory_limit"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "amount of memory (in MB) that the process is allowed to use."
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

foreign import ccall "webkit_memory_pressure_settings_set_memory_limit" webkit_memory_pressure_settings_set_memory_limit :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    Word32 ->                               -- memory_limit : TBasicType TUInt
    IO ()

-- | Sets /@memoryLimit@/ the memory limit value to /@settings@/.
-- 
-- The default value is the system\'s RAM size with a maximum of 3GB.
-- 
-- /Since: 2.34/
memoryPressureSettingsSetMemoryLimit ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> Word32
    -- ^ /@memoryLimit@/: amount of memory (in MB) that the process is allowed to use.
    -> m ()
memoryPressureSettingsSetMemoryLimit settings memoryLimit = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    webkit_memory_pressure_settings_set_memory_limit settings' memoryLimit
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsSetMemoryLimitMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsSetMemoryLimitMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsSetMemoryLimit

instance O.OverloadedMethodInfo MemoryPressureSettingsSetMemoryLimitMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsSetMemoryLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsSetMemoryLimit"
        })


#endif

-- method MemoryPressureSettings::set_poll_interval
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "period (in seconds) between memory usage measurements."
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

foreign import ccall "webkit_memory_pressure_settings_set_poll_interval" webkit_memory_pressure_settings_set_poll_interval :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets /@value@/ as the poll interval used by /@settings@/.
-- 
-- The poll interval value must be bigger than 0. The default value is 30 seconds.
-- 
-- /Since: 2.34/
memoryPressureSettingsSetPollInterval ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> Double
    -- ^ /@value@/: period (in seconds) between memory usage measurements.
    -> m ()
memoryPressureSettingsSetPollInterval settings value = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    let value' = realToFrac value
    webkit_memory_pressure_settings_set_poll_interval settings' value'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsSetPollIntervalMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsSetPollIntervalMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsSetPollInterval

instance O.OverloadedMethodInfo MemoryPressureSettingsSetPollIntervalMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsSetPollInterval",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsSetPollInterval"
        })


#endif

-- method MemoryPressureSettings::set_strict_threshold
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MemoryPressureSettings" }
--           , argCType = Just "WebKitMemoryPressureSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMemoryPressureSettings"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "fraction of the memory limit where the strict policy starts working."
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

foreign import ccall "webkit_memory_pressure_settings_set_strict_threshold" webkit_memory_pressure_settings_set_strict_threshold :: 
    Ptr MemoryPressureSettings ->           -- settings : TInterface (Name {namespace = "WebKit2", name = "MemoryPressureSettings"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets the memory limit for the strict policy to start working.
-- 
-- Sets /@value@/ as the fraction of the defined memory limit where the strict
-- policy starts working. This policy will try to reduce the memory footprint by
-- releasing critical memory.
-- 
-- The threshold must be bigger than 0 and smaller than 1. Also, it must be bigger
-- than the conservative threshold defined in /@settings@/, and smaller than the kill
-- threshold if the latter is not 0. The default value is 0.5.
-- 
-- /Since: 2.34/
memoryPressureSettingsSetStrictThreshold ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MemoryPressureSettings
    -- ^ /@settings@/: a t'GI.WebKit2.Structs.MemoryPressureSettings.MemoryPressureSettings'
    -> Double
    -- ^ /@value@/: fraction of the memory limit where the strict policy starts working.
    -> m ()
memoryPressureSettingsSetStrictThreshold settings value = liftIO $ do
    settings' <- unsafeManagedPtrGetPtr settings
    let value' = realToFrac value
    webkit_memory_pressure_settings_set_strict_threshold settings' value'
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data MemoryPressureSettingsSetStrictThresholdMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m) => O.OverloadedMethod MemoryPressureSettingsSetStrictThresholdMethodInfo MemoryPressureSettings signature where
    overloadedMethod = memoryPressureSettingsSetStrictThreshold

instance O.OverloadedMethodInfo MemoryPressureSettingsSetStrictThresholdMethodInfo MemoryPressureSettings where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MemoryPressureSettings.memoryPressureSettingsSetStrictThreshold",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MemoryPressureSettings.html#v:memoryPressureSettingsSetStrictThreshold"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMemoryPressureSettingsMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveMemoryPressureSettingsMethod "copy" o = MemoryPressureSettingsCopyMethodInfo
    ResolveMemoryPressureSettingsMethod "free" o = MemoryPressureSettingsFreeMethodInfo
    ResolveMemoryPressureSettingsMethod "getConservativeThreshold" o = MemoryPressureSettingsGetConservativeThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod "getKillThreshold" o = MemoryPressureSettingsGetKillThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod "getMemoryLimit" o = MemoryPressureSettingsGetMemoryLimitMethodInfo
    ResolveMemoryPressureSettingsMethod "getPollInterval" o = MemoryPressureSettingsGetPollIntervalMethodInfo
    ResolveMemoryPressureSettingsMethod "getStrictThreshold" o = MemoryPressureSettingsGetStrictThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod "setConservativeThreshold" o = MemoryPressureSettingsSetConservativeThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod "setKillThreshold" o = MemoryPressureSettingsSetKillThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod "setMemoryLimit" o = MemoryPressureSettingsSetMemoryLimitMethodInfo
    ResolveMemoryPressureSettingsMethod "setPollInterval" o = MemoryPressureSettingsSetPollIntervalMethodInfo
    ResolveMemoryPressureSettingsMethod "setStrictThreshold" o = MemoryPressureSettingsSetStrictThresholdMethodInfo
    ResolveMemoryPressureSettingsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMemoryPressureSettingsMethod t MemoryPressureSettings, O.OverloadedMethod info MemoryPressureSettings p) => OL.IsLabel t (MemoryPressureSettings -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveMemoryPressureSettingsMethod t MemoryPressureSettings, O.OverloadedMethod info MemoryPressureSettings p, R.HasField t MemoryPressureSettings p) => R.HasField t MemoryPressureSettings p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveMemoryPressureSettingsMethod t MemoryPressureSettings, O.OverloadedMethodInfo info MemoryPressureSettings) => OL.IsLabel t (O.MethodProxy info MemoryPressureSettings) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


