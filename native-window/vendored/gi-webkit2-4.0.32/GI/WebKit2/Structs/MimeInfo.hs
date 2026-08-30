{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Information about a MIME type.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.MimeInfo
    ( 

-- * Exported types
    MimeInfo(..)                            ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.MimeInfo#g:method:ref"), [unref]("GI.WebKit2.Structs.MimeInfo#g:method:unref").
-- 
-- ==== Getters
-- [getDescription]("GI.WebKit2.Structs.MimeInfo#g:method:getDescription"), [getExtensions]("GI.WebKit2.Structs.MimeInfo#g:method:getExtensions"), [getMimeType]("GI.WebKit2.Structs.MimeInfo#g:method:getMimeType").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveMimeInfoMethod                   ,
#endif

-- ** getDescription #method:getDescription#

#if defined(ENABLE_OVERLOADING)
    MimeInfoGetDescriptionMethodInfo        ,
#endif
    mimeInfoGetDescription                  ,


-- ** getExtensions #method:getExtensions#

#if defined(ENABLE_OVERLOADING)
    MimeInfoGetExtensionsMethodInfo         ,
#endif
    mimeInfoGetExtensions                   ,


-- ** getMimeType #method:getMimeType#

#if defined(ENABLE_OVERLOADING)
    MimeInfoGetMimeTypeMethodInfo           ,
#endif
    mimeInfoGetMimeType                     ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    MimeInfoRefMethodInfo                   ,
#endif
    mimeInfoRef                             ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    MimeInfoUnrefMethodInfo                 ,
#endif
    mimeInfoUnref                           ,




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
newtype MimeInfo = MimeInfo (SP.ManagedPtr MimeInfo)
    deriving (Eq)

instance SP.ManagedPtrNewtype MimeInfo where
    toManagedPtr (MimeInfo p) = p

foreign import ccall "webkit_mime_info_get_type" c_webkit_mime_info_get_type :: 
    IO GType

type instance O.ParentTypes MimeInfo = '[]
instance O.HasParentTypes MimeInfo

instance B.Types.TypedObject MimeInfo where
    glibType = c_webkit_mime_info_get_type

instance B.Types.GBoxed MimeInfo

-- | Convert t'MimeInfo' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe MimeInfo) where
    gvalueGType_ = c_webkit_mime_info_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr MimeInfo)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr MimeInfo)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed MimeInfo ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MimeInfo
type instance O.AttributeList MimeInfo = MimeInfoAttributeList
type MimeInfoAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method MimeInfo::get_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }
--           , argCType = Just "WebKitMimeInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMimeInfo" , sinceVersion = Nothing }
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

foreign import ccall "webkit_mime_info_get_description" webkit_mime_info_get_description :: 
    Ptr MimeInfo ->                         -- info : TInterface (Name {namespace = "WebKit2", name = "MimeInfo"})
    IO CString

{-# DEPRECATED mimeInfoGetDescription ["(Since version 2.32)"] #-}
-- | Gets the description of the MIME type.
mimeInfoGetDescription ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MimeInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ description, as a string.
mimeInfoGetDescription info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_mime_info_get_description info'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr info
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data MimeInfoGetDescriptionMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod MimeInfoGetDescriptionMethodInfo MimeInfo signature where
    overloadedMethod = mimeInfoGetDescription

instance O.OverloadedMethodInfo MimeInfoGetDescriptionMethodInfo MimeInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MimeInfo.mimeInfoGetDescription",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MimeInfo.html#v:mimeInfoGetDescription"
        })


#endif

-- method MimeInfo::get_extensions
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }
--           , argCType = Just "WebKitMimeInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMimeInfo" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_mime_info_get_extensions" webkit_mime_info_get_extensions :: 
    Ptr MimeInfo ->                         -- info : TInterface (Name {namespace = "WebKit2", name = "MimeInfo"})
    IO (Ptr CString)

{-# DEPRECATED mimeInfoGetExtensions ["(Since version 2.32)"] #-}
-- | Get the list of file extensions associated to the MIME type.
mimeInfoGetExtensions ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MimeInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
    -> m [T.Text]
    -- ^ __Returns:__ a
    --     'P.Nothing'-terminated array of strings
mimeInfoGetExtensions info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_mime_info_get_extensions info'
    checkUnexpectedReturnNULL "mimeInfoGetExtensions" result
    result' <- unpackZeroTerminatedUTF8CArray result
    touchManagedPtr info
    return result'

#if defined(ENABLE_OVERLOADING)
data MimeInfoGetExtensionsMethodInfo
instance (signature ~ (m [T.Text]), MonadIO m) => O.OverloadedMethod MimeInfoGetExtensionsMethodInfo MimeInfo signature where
    overloadedMethod = mimeInfoGetExtensions

instance O.OverloadedMethodInfo MimeInfoGetExtensionsMethodInfo MimeInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MimeInfo.mimeInfoGetExtensions",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MimeInfo.html#v:mimeInfoGetExtensions"
        })


#endif

-- method MimeInfo::get_mime_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }
--           , argCType = Just "WebKitMimeInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMimeInfo" , sinceVersion = Nothing }
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

foreign import ccall "webkit_mime_info_get_mime_type" webkit_mime_info_get_mime_type :: 
    Ptr MimeInfo ->                         -- info : TInterface (Name {namespace = "WebKit2", name = "MimeInfo"})
    IO CString

{-# DEPRECATED mimeInfoGetMimeType ["(Since version 2.32)"] #-}
-- | Gets the MIME type.
mimeInfoGetMimeType ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MimeInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
    -> m T.Text
    -- ^ __Returns:__ MIME type, as a string.
mimeInfoGetMimeType info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_mime_info_get_mime_type info'
    checkUnexpectedReturnNULL "mimeInfoGetMimeType" result
    result' <- cstringToText result
    touchManagedPtr info
    return result'

#if defined(ENABLE_OVERLOADING)
data MimeInfoGetMimeTypeMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod MimeInfoGetMimeTypeMethodInfo MimeInfo signature where
    overloadedMethod = mimeInfoGetMimeType

instance O.OverloadedMethodInfo MimeInfoGetMimeTypeMethodInfo MimeInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MimeInfo.mimeInfoGetMimeType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MimeInfo.html#v:mimeInfoGetMimeType"
        })


#endif

-- method MimeInfo::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }
--           , argCType = Just "WebKitMimeInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMimeInfo" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "WebKit2" , name = "MimeInfo" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_mime_info_ref" webkit_mime_info_ref :: 
    Ptr MimeInfo ->                         -- info : TInterface (Name {namespace = "WebKit2", name = "MimeInfo"})
    IO (Ptr MimeInfo)

{-# DEPRECATED mimeInfoRef ["(Since version 2.32)"] #-}
-- | Atomically increments the reference count of /@info@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
mimeInfoRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MimeInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
    -> m MimeInfo
    -- ^ __Returns:__ The passed in t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
mimeInfoRef info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    result <- webkit_mime_info_ref info'
    checkUnexpectedReturnNULL "mimeInfoRef" result
    result' <- (wrapBoxed MimeInfo) result
    touchManagedPtr info
    return result'

#if defined(ENABLE_OVERLOADING)
data MimeInfoRefMethodInfo
instance (signature ~ (m MimeInfo), MonadIO m) => O.OverloadedMethod MimeInfoRefMethodInfo MimeInfo signature where
    overloadedMethod = mimeInfoRef

instance O.OverloadedMethodInfo MimeInfoRefMethodInfo MimeInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MimeInfo.mimeInfoRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MimeInfo.html#v:mimeInfoRef"
        })


#endif

-- method MimeInfo::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }
--           , argCType = Just "WebKitMimeInfo*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMimeInfo" , sinceVersion = Nothing }
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

foreign import ccall "webkit_mime_info_unref" webkit_mime_info_unref :: 
    Ptr MimeInfo ->                         -- info : TInterface (Name {namespace = "WebKit2", name = "MimeInfo"})
    IO ()

{-# DEPRECATED mimeInfoUnref ["(Since version 2.32)"] #-}
-- | Atomically decrements the reference count of /@info@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by the t'GI.WebKit2.Structs.MimeInfo.MimeInfo' is
-- released. This function is MT-safe and may be called from any
-- thread.
mimeInfoUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    MimeInfo
    -- ^ /@info@/: a t'GI.WebKit2.Structs.MimeInfo.MimeInfo'
    -> m ()
mimeInfoUnref info = liftIO $ do
    info' <- unsafeManagedPtrGetPtr info
    webkit_mime_info_unref info'
    touchManagedPtr info
    return ()

#if defined(ENABLE_OVERLOADING)
data MimeInfoUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod MimeInfoUnrefMethodInfo MimeInfo signature where
    overloadedMethod = mimeInfoUnref

instance O.OverloadedMethodInfo MimeInfoUnrefMethodInfo MimeInfo where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.MimeInfo.mimeInfoUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-MimeInfo.html#v:mimeInfoUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveMimeInfoMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveMimeInfoMethod "ref" o = MimeInfoRefMethodInfo
    ResolveMimeInfoMethod "unref" o = MimeInfoUnrefMethodInfo
    ResolveMimeInfoMethod "getDescription" o = MimeInfoGetDescriptionMethodInfo
    ResolveMimeInfoMethod "getExtensions" o = MimeInfoGetExtensionsMethodInfo
    ResolveMimeInfoMethod "getMimeType" o = MimeInfoGetMimeTypeMethodInfo
    ResolveMimeInfoMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMimeInfoMethod t MimeInfo, O.OverloadedMethod info MimeInfo p) => OL.IsLabel t (MimeInfo -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveMimeInfoMethod t MimeInfo, O.OverloadedMethod info MimeInfo p, R.HasField t MimeInfo p) => R.HasField t MimeInfo p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveMimeInfoMethod t MimeInfo, O.OverloadedMethodInfo info MimeInfo) => OL.IsLabel t (O.MethodProxy info MimeInfo) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


