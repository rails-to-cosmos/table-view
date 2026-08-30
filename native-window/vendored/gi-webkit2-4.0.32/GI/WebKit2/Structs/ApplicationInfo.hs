{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Information about an application running in automation mode.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.ApplicationInfo
    ( 

-- * Exported types
    ApplicationInfo(..)                     ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.ApplicationInfo#g:method:ref"), [unref]("GI.WebKit2.Structs.ApplicationInfo#g:method:unref").
-- 
-- ==== Getters
-- [getName]("GI.WebKit2.Structs.ApplicationInfo#g:method:getName"), [getVersion]("GI.WebKit2.Structs.ApplicationInfo#g:method:getVersion").
-- 
-- ==== Setters
-- [setName]("GI.WebKit2.Structs.ApplicationInfo#g:method:setName"), [setVersion]("GI.WebKit2.Structs.ApplicationInfo#g:method:setVersion").

#if defined(ENABLE_OVERLOADING)
    ResolveApplicationInfoMethod            ,
#endif

-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoGetNameMethodInfo        ,
#endif
    applicationInfoGetName                  ,


-- ** getVersion #method:getVersion#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoGetVersionMethodInfo     ,
#endif
    applicationInfoGetVersion               ,


-- ** new #method:new#

    applicationInfoNew                      ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoRefMethodInfo            ,
#endif
    applicationInfoRef                      ,


-- ** setName #method:setName#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoSetNameMethodInfo        ,
#endif
    applicationInfoSetName                  ,


-- ** setVersion #method:setVersion#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoSetVersionMethodInfo     ,
#endif
    applicationInfoSetVersion               ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    ApplicationInfoUnrefMethodInfo          ,
#endif
    applicationInfoUnref                    ,




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
newtype ApplicationInfo = ApplicationInfo (SP.ManagedPtr ApplicationInfo)
    deriving (Eq)

instance SP.ManagedPtrNewtype ApplicationInfo where
    toManagedPtr (ApplicationInfo p) = p

foreign import ccall "webkit_application_info_get_type" c_webkit_application_info_get_type :: 
    IO GType

type instance O.ParentTypes ApplicationInfo = '[]
instance O.HasParentTypes ApplicationInfo

instance B.Types.TypedObject ApplicationInfo where
    glibType = c_webkit_application_info_get_type

instance B.Types.GBoxed ApplicationInfo

-- | Convert t'ApplicationInfo' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ApplicationInfo) where
    gvalueGType_ = c_webkit_application_info_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr ApplicationInfo)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr ApplicationInfo)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed ApplicationInfo ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ApplicationInfo
type instance O.AttributeList ApplicationInfo = ApplicationInfoAttributeList
type ApplicationInfoAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method ApplicationInfo::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "ApplicationInfo" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_application_info_new" webkit_application_info_new :: 
    IO (Ptr ApplicationInfo)

-- | Creates a new t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
-- 
-- /Since: 2.18/
applicationInfoNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ApplicationInfo
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'.
applicationInfoNew  = liftIO $ do
    result <- webkit_application_info_new
    checkUnexpectedReturnNULL "applicationInfoNew" result
    result' <- (wrapBoxed ApplicationInfo) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ApplicationInfo::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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

foreign import ccall "webkit_application_info_get_name" webkit_application_info_get_name :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    IO CString

-- | Get the name of the application.
-- 
-- If 'GI.WebKit2.Structs.ApplicationInfo.applicationInfoSetName' hasn\'t been
-- called with a valid name, this returns 'GI.GLib.Functions.getPrgname'.
-- 
-- /Since: 2.18/
applicationInfoGetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> m T.Text
    -- ^ __Returns:__ the application name
applicationInfoGetName info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_application_info_get_name info'
    checkUnexpectedReturnNULL "applicationInfoGetName" result
    result' <- cstringToText result
    touchManagedPtr info
    return result'

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod ApplicationInfoGetNameMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoGetName

instance O.OverloadedMethodInfo ApplicationInfoGetNameMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoGetName"
        })


#endif

-- method ApplicationInfo::get_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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
--           { argCName = "major"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the major version number"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "minor"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the minor version number"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "micro"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the micro version number"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_application_info_get_version" webkit_application_info_get_version :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    Ptr Word64 ->                           -- major : TBasicType TUInt64
    Ptr Word64 ->                           -- minor : TBasicType TUInt64
    Ptr Word64 ->                           -- micro : TBasicType TUInt64
    IO ()

-- | Get the application version previously set with 'GI.WebKit2.Structs.ApplicationInfo.applicationInfoSetVersion'.
-- 
-- /Since: 2.18/
applicationInfoGetVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> m ((Word64, Word64, Word64))
applicationInfoGetVersion info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    major <- allocMem :: IO (Ptr Word64)
    minor <- allocMem :: IO (Ptr Word64)
    micro <- allocMem :: IO (Ptr Word64)
    webkit_application_info_get_version info' major minor micro
    major' <- peek major
    minor' <- peek minor
    micro' <- peek micro
    touchManagedPtr info
    freeMem major
    freeMem minor
    freeMem micro
    return (major', minor', micro')

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoGetVersionMethodInfo
instance (signature ~ (m ((Word64, Word64, Word64))), MonadIO m) => O.OverloadedMethod ApplicationInfoGetVersionMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoGetVersion

instance O.OverloadedMethodInfo ApplicationInfoGetVersionMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoGetVersion",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoGetVersion"
        })


#endif

-- method ApplicationInfo::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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
--                  Name { namespace = "WebKit2" , name = "ApplicationInfo" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_application_info_ref" webkit_application_info_ref :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    IO (Ptr ApplicationInfo)

-- | Atomically increments the reference count of /@info@/ by one.
-- 
-- This
-- function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.18/
applicationInfoRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> m ApplicationInfo
    -- ^ __Returns:__ The passed in t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
applicationInfoRef info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_application_info_ref info'
    checkUnexpectedReturnNULL "applicationInfoRef" result
    result' <- (wrapBoxed ApplicationInfo) result
    touchManagedPtr info
    return result'

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoRefMethodInfo
instance (signature ~ (m ApplicationInfo), MonadIO m) => O.OverloadedMethod ApplicationInfoRefMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoRef

instance O.OverloadedMethodInfo ApplicationInfoRefMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoRef"
        })


#endif

-- method ApplicationInfo::set_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the application name"
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

foreign import ccall "webkit_application_info_set_name" webkit_application_info_set_name :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    CString ->                              -- name : TBasicType TUTF8
    IO ()

-- | Set the name of the application.
-- 
-- If not provided, or 'P.Nothing' is passed,
-- 'GI.GLib.Functions.getPrgname' will be used.
-- 
-- /Since: 2.18/
applicationInfoSetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> T.Text
    -- ^ /@name@/: the application name
    -> m ()
applicationInfoSetName info name = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    name' <- textToCString name
    webkit_application_info_set_name info' name'
    touchManagedPtr info
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoSetNameMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m) => O.OverloadedMethod ApplicationInfoSetNameMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoSetName

instance O.OverloadedMethodInfo ApplicationInfoSetNameMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoSetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoSetName"
        })


#endif

-- method ApplicationInfo::set_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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
--           { argCName = "major"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the major version number"
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
--           { argCName = "minor"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the minor version number"
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
--           { argCName = "micro"
--           , argType = TBasicType TUInt64
--           , argCType = Just "guint64"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the micro version number"
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

foreign import ccall "webkit_application_info_set_version" webkit_application_info_set_version :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    Word64 ->                               -- major : TBasicType TUInt64
    Word64 ->                               -- minor : TBasicType TUInt64
    Word64 ->                               -- micro : TBasicType TUInt64
    IO ()

-- | Set the application version.
-- 
-- If the application doesn\'t use the format
-- major.minor.micro you can pass 0 as the micro to use major.minor, or pass
-- 0 as both micro and minor to use only major number. Any other format must
-- be converted to major.minor.micro so that it can be used in version comparisons.
-- 
-- /Since: 2.18/
applicationInfoSetVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> Word64
    -- ^ /@major@/: the major version number
    -> Word64
    -- ^ /@minor@/: the minor version number
    -> Word64
    -- ^ /@micro@/: the micro version number
    -> m ()
applicationInfoSetVersion info major minor micro = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    webkit_application_info_set_version info' major minor micro
    touchManagedPtr info
    return ()

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoSetVersionMethodInfo
instance (signature ~ (Word64 -> Word64 -> Word64 -> m ()), MonadIO m) => O.OverloadedMethod ApplicationInfoSetVersionMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoSetVersion

instance O.OverloadedMethodInfo ApplicationInfoSetVersionMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoSetVersion",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoSetVersion"
        })


#endif

-- method ApplicationInfo::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ApplicationInfo" }
--           , argCType = Just "WebKitApplicationInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitApplicationInfo"
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

foreign import ccall "webkit_application_info_unref" webkit_application_info_unref :: 
    Ptr ApplicationInfo ->                  -- info : TInterface (Name {namespace = "WebKit2", name = "ApplicationInfo"})
    IO ()

-- | Atomically decrements the reference count of /@info@/ by one.
-- 
-- If the
-- reference count drops to 0, all memory allocated by the t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo' is
-- released. This function is MT-safe and may be called from any
-- thread.
-- 
-- /Since: 2.18/
applicationInfoUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ApplicationInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.ApplicationInfo.ApplicationInfo'
    -> m ()
applicationInfoUnref info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    webkit_application_info_unref info'
    touchManagedPtr info
    return ()

#if defined(ENABLE_OVERLOADING)
data ApplicationInfoUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ApplicationInfoUnrefMethodInfo ApplicationInfo signature where
    overloadedMethod = applicationInfoUnref

instance O.OverloadedMethodInfo ApplicationInfoUnrefMethodInfo ApplicationInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ApplicationInfo.applicationInfoUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ApplicationInfo.html#v:applicationInfoUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveApplicationInfoMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveApplicationInfoMethod "ref" o = ApplicationInfoRefMethodInfo
    ResolveApplicationInfoMethod "unref" o = ApplicationInfoUnrefMethodInfo
    ResolveApplicationInfoMethod "getName" o = ApplicationInfoGetNameMethodInfo
    ResolveApplicationInfoMethod "getVersion" o = ApplicationInfoGetVersionMethodInfo
    ResolveApplicationInfoMethod "setName" o = ApplicationInfoSetNameMethodInfo
    ResolveApplicationInfoMethod "setVersion" o = ApplicationInfoSetVersionMethodInfo
    ResolveApplicationInfoMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveApplicationInfoMethod t ApplicationInfo, O.OverloadedMethod info ApplicationInfo p) => OL.IsLabel t (ApplicationInfo -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveApplicationInfoMethod t ApplicationInfo, O.OverloadedMethod info ApplicationInfo p, R.HasField t ApplicationInfo p) => R.HasField t ApplicationInfo p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveApplicationInfoMethod t ApplicationInfo, O.OverloadedMethodInfo info ApplicationInfo) => OL.IsLabel t (O.MethodProxy info ApplicationInfo) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


