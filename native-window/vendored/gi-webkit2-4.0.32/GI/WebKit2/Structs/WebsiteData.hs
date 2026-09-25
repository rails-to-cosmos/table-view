{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Data stored locally by a web site.
-- 
-- WebKitWebsiteData represents data stored in the client by a particular website.
-- A website is normally a set of URLs grouped by domain name. You can get the website name,
-- which is usually the domain, with 'GI.WebKit2.Structs.WebsiteData.websiteDataGetName'.
-- Documents loaded from the file system, like file:\/\/ URIs, are all grouped in the same WebKitWebsiteData
-- with the name \"Local files\".
-- 
-- A website can store different types of data in the client side. t'GI.WebKit2.Flags.WebsiteDataTypes' is an enum containing
-- all the possible data types; use 'GI.WebKit2.Structs.WebsiteData.websiteDataGetTypes' to get the bitmask of data types.
-- It\'s also possible to know the size of the data stored for some of the t'GI.WebKit2.Flags.WebsiteDataTypes' by using
-- 'GI.WebKit2.Structs.WebsiteData.websiteDataGetSize'.
-- 
-- A list of WebKitWebsiteData can be retrieved with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetch'. See t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
-- for more information.
-- 
-- /Since: 2.16/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.WebsiteData
    ( 

-- * Exported types
    WebsiteData(..)                         ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.WebsiteData#g:method:ref"), [unref]("GI.WebKit2.Structs.WebsiteData#g:method:unref").
-- 
-- ==== Getters
-- [getName]("GI.WebKit2.Structs.WebsiteData#g:method:getName"), [getSize]("GI.WebKit2.Structs.WebsiteData#g:method:getSize"), [getTypes]("GI.WebKit2.Structs.WebsiteData#g:method:getTypes").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveWebsiteDataMethod                ,
#endif

-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataGetNameMethodInfo            ,
#endif
    websiteDataGetName                      ,


-- ** getSize #method:getSize#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataGetSizeMethodInfo            ,
#endif
    websiteDataGetSize                      ,


-- ** getTypes #method:getTypes#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataGetTypesMethodInfo           ,
#endif
    websiteDataGetTypes                     ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataRefMethodInfo                ,
#endif
    websiteDataRef                          ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    WebsiteDataUnrefMethodInfo              ,
#endif
    websiteDataUnref                        ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags

#else
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags

#endif

-- | Memory-managed wrapper type.
newtype WebsiteData = WebsiteData (SP.ManagedPtr WebsiteData)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebsiteData where
    toManagedPtr (WebsiteData p) = p

foreign import ccall "webkit_website_data_get_type" c_webkit_website_data_get_type :: 
    IO GType

type instance O.ParentTypes WebsiteData = '[]
instance O.HasParentTypes WebsiteData

instance B.Types.TypedObject WebsiteData where
    glibType = c_webkit_website_data_get_type

instance B.Types.GBoxed WebsiteData

-- | Convert t'WebsiteData' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebsiteData) where
    gvalueGType_ = c_webkit_website_data_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr WebsiteData)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr WebsiteData)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed WebsiteData ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebsiteData
type instance O.AttributeList WebsiteData = WebsiteDataAttributeList
type WebsiteDataAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method WebsiteData::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "website_data"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }
--           , argCType = Just "WebKitWebsiteData*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteData"
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

foreign import ccall "webkit_website_data_get_name" webkit_website_data_get_name :: 
    Ptr WebsiteData ->                      -- website_data : TInterface (Name {namespace = "WebKit2", name = "WebsiteData"})
    IO CString

-- | Gets the name of t'GI.WebKit2.Structs.WebsiteData.WebsiteData'.
-- 
-- This is the website name, normally represented by
-- a domain or host name. All local documents are grouped in the same t'GI.WebKit2.Structs.WebsiteData.WebsiteData' using
-- the name \"Local files\".
-- 
-- /Since: 2.16/
websiteDataGetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebsiteData
    -- ^ /@websiteData@/: a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> m T.Text
    -- ^ __Returns:__ the website name of /@websiteData@/.
websiteDataGetName websiteData = liftIO $ do
    websiteData' <- unsafeManagedPtrGetPtr websiteData
    result <- webkit_website_data_get_name websiteData'
    checkUnexpectedReturnNULL "websiteDataGetName" result
    result' <- cstringToText result
    touchManagedPtr websiteData
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod WebsiteDataGetNameMethodInfo WebsiteData signature where
    overloadedMethod = websiteDataGetName

instance O.OverloadedMethodInfo WebsiteDataGetNameMethodInfo WebsiteData where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebsiteData.websiteDataGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebsiteData.html#v:websiteDataGetName"
        })


#endif

-- method WebsiteData::get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "website_data"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }
--           , argCType = Just "WebKitWebsiteData*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteData"
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
--           { argCName = "types"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsiteDataTypes" }
--           , argCType = Just "WebKitWebsiteDataTypes"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a bitmask  of #WebKitWebsiteDataTypes"
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_get_size" webkit_website_data_get_size :: 
    Ptr WebsiteData ->                      -- website_data : TInterface (Name {namespace = "WebKit2", name = "WebsiteData"})
    CUInt ->                                -- types : TInterface (Name {namespace = "WebKit2", name = "WebsiteDataTypes"})
    IO Word64

-- | Gets the size of the data of types /@types@/ in a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'.
-- 
-- Note that currently the data size is only known for the 'GI.WebKit2.Flags.WebsiteDataTypesDiskCache',
-- 'GI.WebKit2.Flags.WebsiteDataTypesLocalStorage', 'GI.WebKit2.Flags.WebsiteDataTypesIndexeddbDatabases' and
-- 'GI.WebKit2.Flags.WebsiteDataTypesDomCache' data types, so for all other types 0 will be returned.
-- 
-- /Since: 2.16/
websiteDataGetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebsiteData
    -- ^ /@websiteData@/: a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> [WebKit2.Flags.WebsiteDataTypes]
    -- ^ /@types@/: a bitmask  of t'GI.WebKit2.Flags.WebsiteDataTypes'
    -> m Word64
    -- ^ __Returns:__ the size of /@websiteData@/ for the given /@types@/.
websiteDataGetSize websiteData types = liftIO $ do
    websiteData' <- unsafeManagedPtrGetPtr websiteData
    let types' = gflagsToWord types
    result <- webkit_website_data_get_size websiteData' types'
    touchManagedPtr websiteData
    return result

#if defined(ENABLE_OVERLOADING)
data WebsiteDataGetSizeMethodInfo
instance (signature ~ ([WebKit2.Flags.WebsiteDataTypes] -> m Word64), MonadIO m) => O.OverloadedMethod WebsiteDataGetSizeMethodInfo WebsiteData signature where
    overloadedMethod = websiteDataGetSize

instance O.OverloadedMethodInfo WebsiteDataGetSizeMethodInfo WebsiteData where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebsiteData.websiteDataGetSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebsiteData.html#v:websiteDataGetSize"
        })


#endif

-- method WebsiteData::get_types
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "website_data"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }
--           , argCType = Just "WebKitWebsiteData*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteData"
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
--                  Name { namespace = "WebKit2" , name = "WebsiteDataTypes" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_get_types" webkit_website_data_get_types :: 
    Ptr WebsiteData ->                      -- website_data : TInterface (Name {namespace = "WebKit2", name = "WebsiteData"})
    IO CUInt

-- | Gets the types of data stored in the client for a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'.
-- 
-- These are the
-- types actually present, not the types queried with 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetch'.
-- 
-- /Since: 2.16/
websiteDataGetTypes ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebsiteData
    -- ^ /@websiteData@/: a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> m [WebKit2.Flags.WebsiteDataTypes]
    -- ^ __Returns:__ a bitmask of t'GI.WebKit2.Flags.WebsiteDataTypes' in /@websiteData@/
websiteDataGetTypes websiteData = liftIO $ do
    websiteData' <- unsafeManagedPtrGetPtr websiteData
    result <- webkit_website_data_get_types websiteData'
    let result' = wordToGFlags result
    touchManagedPtr websiteData
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataGetTypesMethodInfo
instance (signature ~ (m [WebKit2.Flags.WebsiteDataTypes]), MonadIO m) => O.OverloadedMethod WebsiteDataGetTypesMethodInfo WebsiteData signature where
    overloadedMethod = websiteDataGetTypes

instance O.OverloadedMethodInfo WebsiteDataGetTypesMethodInfo WebsiteData where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebsiteData.websiteDataGetTypes",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebsiteData.html#v:websiteDataGetTypes"
        })


#endif

-- method WebsiteData::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "website_data"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }
--           , argCType = Just "WebKitWebsiteData*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsiteData"
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
--               (TInterface Name { namespace = "WebKit2" , name = "WebsiteData" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_data_ref" webkit_website_data_ref :: 
    Ptr WebsiteData ->                      -- website_data : TInterface (Name {namespace = "WebKit2", name = "WebsiteData"})
    IO (Ptr WebsiteData)

-- | Atomically increments the reference count of /@websiteData@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.16/
websiteDataRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebsiteData
    -- ^ /@websiteData@/: a t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> m WebsiteData
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
websiteDataRef websiteData = liftIO $ do
    websiteData' <- unsafeManagedPtrGetPtr websiteData
    result <- webkit_website_data_ref websiteData'
    checkUnexpectedReturnNULL "websiteDataRef" result
    result' <- (wrapBoxed WebsiteData) result
    touchManagedPtr websiteData
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsiteDataRefMethodInfo
instance (signature ~ (m WebsiteData), MonadIO m) => O.OverloadedMethod WebsiteDataRefMethodInfo WebsiteData signature where
    overloadedMethod = websiteDataRef

instance O.OverloadedMethodInfo WebsiteDataRefMethodInfo WebsiteData where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebsiteData.websiteDataRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebsiteData.html#v:websiteDataRef"
        })


#endif

-- method WebsiteData::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "website_data"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebsiteData" }
--           , argCType = Just "WebKitWebsiteData*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitWebsiteData"
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

foreign import ccall "webkit_website_data_unref" webkit_website_data_unref :: 
    Ptr WebsiteData ->                      -- website_data : TInterface (Name {namespace = "WebKit2", name = "WebsiteData"})
    IO ()

-- | Atomically decrements the reference count of /@websiteData@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.WebsiteData.WebsiteData' is released. This function is MT-safe and may be
-- called from any thread.
-- 
-- /Since: 2.16/
websiteDataUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebsiteData
    -- ^ /@websiteData@/: A t'GI.WebKit2.Structs.WebsiteData.WebsiteData'
    -> m ()
websiteDataUnref websiteData = liftIO $ do
    websiteData' <- unsafeManagedPtrGetPtr websiteData
    webkit_website_data_unref websiteData'
    touchManagedPtr websiteData
    return ()

#if defined(ENABLE_OVERLOADING)
data WebsiteDataUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod WebsiteDataUnrefMethodInfo WebsiteData signature where
    overloadedMethod = websiteDataUnref

instance O.OverloadedMethodInfo WebsiteDataUnrefMethodInfo WebsiteData where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebsiteData.websiteDataUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebsiteData.html#v:websiteDataUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveWebsiteDataMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebsiteDataMethod "ref" o = WebsiteDataRefMethodInfo
    ResolveWebsiteDataMethod "unref" o = WebsiteDataUnrefMethodInfo
    ResolveWebsiteDataMethod "getName" o = WebsiteDataGetNameMethodInfo
    ResolveWebsiteDataMethod "getSize" o = WebsiteDataGetSizeMethodInfo
    ResolveWebsiteDataMethod "getTypes" o = WebsiteDataGetTypesMethodInfo
    ResolveWebsiteDataMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebsiteDataMethod t WebsiteData, O.OverloadedMethod info WebsiteData p) => OL.IsLabel t (WebsiteData -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebsiteDataMethod t WebsiteData, O.OverloadedMethod info WebsiteData p, R.HasField t WebsiteData p) => R.HasField t WebsiteData p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebsiteDataMethod t WebsiteData, O.OverloadedMethodInfo info WebsiteData) => OL.IsLabel t (O.MethodProxy info WebsiteData) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


