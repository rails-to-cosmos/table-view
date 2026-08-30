{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A compiled set of rules which applied to resource loads.
-- 
-- /Since: 2.24/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.UserContentFilter
    ( 

-- * Exported types
    UserContentFilter(..)                   ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.UserContentFilter#g:method:ref"), [unref]("GI.WebKit2.Structs.UserContentFilter#g:method:unref").
-- 
-- ==== Getters
-- [getIdentifier]("GI.WebKit2.Structs.UserContentFilter#g:method:getIdentifier").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveUserContentFilterMethod          ,
#endif

-- ** getIdentifier #method:getIdentifier#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterGetIdentifierMethodInfo,
#endif
    userContentFilterGetIdentifier          ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterRefMethodInfo          ,
#endif
    userContentFilterRef                    ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterUnrefMethodInfo        ,
#endif
    userContentFilterUnref                  ,




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
newtype UserContentFilter = UserContentFilter (SP.ManagedPtr UserContentFilter)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserContentFilter where
    toManagedPtr (UserContentFilter p) = p

foreign import ccall "webkit_user_content_filter_get_type" c_webkit_user_content_filter_get_type :: 
    IO GType

type instance O.ParentTypes UserContentFilter = '[]
instance O.HasParentTypes UserContentFilter

instance B.Types.TypedObject UserContentFilter where
    glibType = c_webkit_user_content_filter_get_type

instance B.Types.GBoxed UserContentFilter

-- | Convert t'UserContentFilter' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserContentFilter) where
    gvalueGType_ = c_webkit_user_content_filter_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr UserContentFilter)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr UserContentFilter)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed UserContentFilter ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserContentFilter
type instance O.AttributeList UserContentFilter = UserContentFilterAttributeList
type UserContentFilterAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method UserContentFilter::get_identifier
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_content_filter"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilter" }
--           , argCType = Just "WebKitUserContentFilter*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentFilter"
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

foreign import ccall "webkit_user_content_filter_get_identifier" webkit_user_content_filter_get_identifier :: 
    Ptr UserContentFilter ->                -- user_content_filter : TInterface (Name {namespace = "WebKit2", name = "UserContentFilter"})
    IO CString

-- | Obtain the identifier previously used to save the /@userContentFilter@/.
-- 
-- Obtain the identifier previously used to save the /@userContentFilter@/ in the
-- t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'.
-- 
-- /Since: 2.24/
userContentFilterGetIdentifier ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserContentFilter
    -- ^ /@userContentFilter@/: A t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter'
    -> m T.Text
    -- ^ __Returns:__ the identifier for the filter
userContentFilterGetIdentifier userContentFilter = liftIO $ do
    userContentFilter' <- unsafeManagedPtrGetPtr userContentFilter
    result <- webkit_user_content_filter_get_identifier userContentFilter'
    checkUnexpectedReturnNULL "userContentFilterGetIdentifier" result
    result' <- cstringToText result
    touchManagedPtr userContentFilter
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentFilterGetIdentifierMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod UserContentFilterGetIdentifierMethodInfo UserContentFilter signature where
    overloadedMethod = userContentFilterGetIdentifier

instance O.OverloadedMethodInfo UserContentFilterGetIdentifierMethodInfo UserContentFilter where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserContentFilter.userContentFilterGetIdentifier",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserContentFilter.html#v:userContentFilterGetIdentifier"
        })


#endif

-- method UserContentFilter::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_content_filter"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilter" }
--           , argCType = Just "WebKitUserContentFilter*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentFilter"
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
--                  Name { namespace = "WebKit2" , name = "UserContentFilter" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_content_filter_ref" webkit_user_content_filter_ref :: 
    Ptr UserContentFilter ->                -- user_content_filter : TInterface (Name {namespace = "WebKit2", name = "UserContentFilter"})
    IO (Ptr UserContentFilter)

-- | Atomically increments the reference count of /@userContentFilter@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.24/
userContentFilterRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserContentFilter
    -- ^ /@userContentFilter@/: A t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter'
    -> m UserContentFilter
    -- ^ __Returns:__ the /@userContentFilter@/ passed in.
userContentFilterRef userContentFilter = liftIO $ do
    userContentFilter' <- unsafeManagedPtrGetPtr userContentFilter
    result <- webkit_user_content_filter_ref userContentFilter'
    checkUnexpectedReturnNULL "userContentFilterRef" result
    result' <- (wrapBoxed UserContentFilter) result
    touchManagedPtr userContentFilter
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentFilterRefMethodInfo
instance (signature ~ (m UserContentFilter), MonadIO m) => O.OverloadedMethod UserContentFilterRefMethodInfo UserContentFilter signature where
    overloadedMethod = userContentFilterRef

instance O.OverloadedMethodInfo UserContentFilterRefMethodInfo UserContentFilter where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserContentFilter.userContentFilterRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserContentFilter.html#v:userContentFilterRef"
        })


#endif

-- method UserContentFilter::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_content_filter"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilter" }
--           , argCType = Just "WebKitUserContentFilter*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentFilter"
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

foreign import ccall "webkit_user_content_filter_unref" webkit_user_content_filter_unref :: 
    Ptr UserContentFilter ->                -- user_content_filter : TInterface (Name {namespace = "WebKit2", name = "UserContentFilter"})
    IO ()

-- | Atomically decrements the reference count of /@userContentFilter@/ by one.
-- 
-- If the reference count drops to 0, all the memory allocated by the
-- t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter' is released. This function is MT-safe and may
-- be called from any thread.
-- 
-- /Since: 2.24/
userContentFilterUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserContentFilter
    -- ^ /@userContentFilter@/: A t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter'
    -> m ()
userContentFilterUnref userContentFilter = liftIO $ do
    userContentFilter' <- unsafeManagedPtrGetPtr userContentFilter
    webkit_user_content_filter_unref userContentFilter'
    touchManagedPtr userContentFilter
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod UserContentFilterUnrefMethodInfo UserContentFilter signature where
    overloadedMethod = userContentFilterUnref

instance O.OverloadedMethodInfo UserContentFilterUnrefMethodInfo UserContentFilter where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserContentFilter.userContentFilterUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserContentFilter.html#v:userContentFilterUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveUserContentFilterMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserContentFilterMethod "ref" o = UserContentFilterRefMethodInfo
    ResolveUserContentFilterMethod "unref" o = UserContentFilterUnrefMethodInfo
    ResolveUserContentFilterMethod "getIdentifier" o = UserContentFilterGetIdentifierMethodInfo
    ResolveUserContentFilterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserContentFilterMethod t UserContentFilter, O.OverloadedMethod info UserContentFilter p) => OL.IsLabel t (UserContentFilter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserContentFilterMethod t UserContentFilter, O.OverloadedMethod info UserContentFilter p, R.HasField t UserContentFilter p) => R.HasField t UserContentFilter p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserContentFilterMethod t UserContentFilter, O.OverloadedMethodInfo info UserContentFilter) => OL.IsLabel t (O.MethodProxy info UserContentFilter) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


