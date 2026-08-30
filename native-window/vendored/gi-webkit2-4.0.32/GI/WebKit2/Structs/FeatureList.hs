{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Contains a set of toggle-able web engine features.
-- 
-- The list supports passing around a set of [struct/@feature@/] objects and
-- iterating over them:
-- 
-- 
-- === /c code/
-- >g_autoptr(WebKitFeatureList) list = webkit_settings_get_experimental_features();
-- >for (gsize i = 0; i < webkit_feature_list_get_length(list): i++) {
-- >    WebKitFeature *feature = webkit_feature_list_get(list, i);
-- >    // Do something with "feature".
-- >}
-- 
-- 
-- Lists of features can be obtained with
-- @/Settings.get_experimental_features/@,
-- @/Settings.get_development_features/@, and
-- @/Settings.get_all_features/@.
-- 
-- /Since: 2.42/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.FeatureList
    ( 

-- * Exported types
    FeatureList(..)                         ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [get]("GI.WebKit2.Structs.FeatureList#g:method:get"), [ref]("GI.WebKit2.Structs.FeatureList#g:method:ref"), [unref]("GI.WebKit2.Structs.FeatureList#g:method:unref").
-- 
-- ==== Getters
-- [getLength]("GI.WebKit2.Structs.FeatureList#g:method:getLength").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveFeatureListMethod                ,
#endif

-- ** get #method:get#

#if defined(ENABLE_OVERLOADING)
    FeatureListGetMethodInfo                ,
#endif
    featureListGet                          ,


-- ** getLength #method:getLength#

#if defined(ENABLE_OVERLOADING)
    FeatureListGetLengthMethodInfo          ,
#endif
    featureListGetLength                    ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    FeatureListRefMethodInfo                ,
#endif
    featureListRef                          ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    FeatureListUnrefMethodInfo              ,
#endif
    featureListUnref                        ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature

#else
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature

#endif

-- | Memory-managed wrapper type.
newtype FeatureList = FeatureList (SP.ManagedPtr FeatureList)
    deriving (Eq)

instance SP.ManagedPtrNewtype FeatureList where
    toManagedPtr (FeatureList p) = p

foreign import ccall "webkit_feature_list_get_type" c_webkit_feature_list_get_type :: 
    IO GType

type instance O.ParentTypes FeatureList = '[]
instance O.HasParentTypes FeatureList

instance B.Types.TypedObject FeatureList where
    glibType = c_webkit_feature_list_get_type

instance B.Types.GBoxed FeatureList

-- | Convert t'FeatureList' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe FeatureList) where
    gvalueGType_ = c_webkit_feature_list_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr FeatureList)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr FeatureList)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed FeatureList ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FeatureList
type instance O.AttributeList FeatureList = FeatureListAttributeList
type FeatureListAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method FeatureList::get
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature_list"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FeatureList" }
--           , argCType = Just "WebKitFeatureList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeatureList"
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
--           { argCName = "index"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "index of the feature"
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
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "Feature" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_feature_list_get" webkit_feature_list_get :: 
    Ptr FeatureList ->                      -- feature_list : TInterface (Name {namespace = "WebKit2", name = "FeatureList"})
    FCT.CSize ->                            -- index : TBasicType TSize
    IO (Ptr WebKit2.Feature.Feature)

-- | Gets a feature given its index.
-- 
-- /Since: 2.42/
featureListGet ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    FeatureList
    -- ^ /@featureList@/: a t'GI.WebKit2.Structs.FeatureList.FeatureList'
    -> FCT.CSize
    -- ^ /@index@/: index of the feature
    -> m WebKit2.Feature.Feature
    -- ^ __Returns:__ The feature at /@index@/.
featureListGet featureList index = liftIO $ do
    featureList' <- unsafeManagedPtrGetPtr featureList
    result <- webkit_feature_list_get featureList' index
    checkUnexpectedReturnNULL "featureListGet" result
    result' <- (newBoxed WebKit2.Feature.Feature) result
    touchManagedPtr featureList
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureListGetMethodInfo
instance (signature ~ (FCT.CSize -> m WebKit2.Feature.Feature), MonadIO m) => O.OverloadedMethod FeatureListGetMethodInfo FeatureList signature where
    overloadedMethod = featureListGet

instance O.OverloadedMethodInfo FeatureListGetMethodInfo FeatureList where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.FeatureList.featureListGet",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-FeatureList.html#v:featureListGet"
        })


#endif

-- method FeatureList::get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature_list"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FeatureList" }
--           , argCType = Just "WebKitFeatureList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeatureList"
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
-- returnType: Just (TBasicType TSize)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_feature_list_get_length" webkit_feature_list_get_length :: 
    Ptr FeatureList ->                      -- feature_list : TInterface (Name {namespace = "WebKit2", name = "FeatureList"})
    IO FCT.CSize

-- | Gets the number of elements in the feature list.
featureListGetLength ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    FeatureList
    -- ^ /@featureList@/: a t'GI.WebKit2.Structs.FeatureList.FeatureList'
    -> m FCT.CSize
    -- ^ __Returns:__ number of elements.
    -- 
    -- Since 2.42
featureListGetLength featureList = liftIO $ do
    featureList' <- unsafeManagedPtrGetPtr featureList
    result <- webkit_feature_list_get_length featureList'
    touchManagedPtr featureList
    return result

#if defined(ENABLE_OVERLOADING)
data FeatureListGetLengthMethodInfo
instance (signature ~ (m FCT.CSize), MonadIO m) => O.OverloadedMethod FeatureListGetLengthMethodInfo FeatureList signature where
    overloadedMethod = featureListGetLength

instance O.OverloadedMethodInfo FeatureListGetLengthMethodInfo FeatureList where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.FeatureList.featureListGetLength",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-FeatureList.html#v:featureListGetLength"
        })


#endif

-- method FeatureList::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature_list"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FeatureList" }
--           , argCType = Just "WebKitFeatureList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeatureList"
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
--               (TInterface Name { namespace = "WebKit2" , name = "FeatureList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_feature_list_ref" webkit_feature_list_ref :: 
    Ptr FeatureList ->                      -- feature_list : TInterface (Name {namespace = "WebKit2", name = "FeatureList"})
    IO (Ptr FeatureList)

-- | Atomically acquires a reference on the given /@featureList@/.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.42/
featureListRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    FeatureList
    -- ^ /@featureList@/: a t'GI.WebKit2.Structs.FeatureList.FeatureList'
    -> m FeatureList
    -- ^ __Returns:__ The same /@featureList@/ with an additional reference.
featureListRef featureList = liftIO $ do
    featureList' <- unsafeManagedPtrGetPtr featureList
    result <- webkit_feature_list_ref featureList'
    checkUnexpectedReturnNULL "featureListRef" result
    result' <- (wrapBoxed FeatureList) result
    touchManagedPtr featureList
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureListRefMethodInfo
instance (signature ~ (m FeatureList), MonadIO m) => O.OverloadedMethod FeatureListRefMethodInfo FeatureList signature where
    overloadedMethod = featureListRef

instance O.OverloadedMethodInfo FeatureListRefMethodInfo FeatureList where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.FeatureList.featureListRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-FeatureList.html#v:featureListRef"
        })


#endif

-- method FeatureList::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature_list"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "FeatureList" }
--           , argCType = Just "WebKitFeatureList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeatureList"
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

foreign import ccall "webkit_feature_list_unref" webkit_feature_list_unref :: 
    Ptr FeatureList ->                      -- feature_list : TInterface (Name {namespace = "WebKit2", name = "FeatureList"})
    IO ()

-- | Atomically releases a reference on the given /@featureList@/.
-- 
-- If the reference was the last, the resources associated to the
-- /@featureList@/ are freed. This function is MT-safe and may be called
-- from any thread.
-- 
-- /Since: 2.42/
featureListUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    FeatureList
    -- ^ /@featureList@/: a t'GI.WebKit2.Structs.FeatureList.FeatureList'
    -> m ()
featureListUnref featureList = liftIO $ do
    featureList' <- unsafeManagedPtrGetPtr featureList
    webkit_feature_list_unref featureList'
    touchManagedPtr featureList
    return ()

#if defined(ENABLE_OVERLOADING)
data FeatureListUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod FeatureListUnrefMethodInfo FeatureList signature where
    overloadedMethod = featureListUnref

instance O.OverloadedMethodInfo FeatureListUnrefMethodInfo FeatureList where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.FeatureList.featureListUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-FeatureList.html#v:featureListUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveFeatureListMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFeatureListMethod "get" o = FeatureListGetMethodInfo
    ResolveFeatureListMethod "ref" o = FeatureListRefMethodInfo
    ResolveFeatureListMethod "unref" o = FeatureListUnrefMethodInfo
    ResolveFeatureListMethod "getLength" o = FeatureListGetLengthMethodInfo
    ResolveFeatureListMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatureListMethod t FeatureList, O.OverloadedMethod info FeatureList p) => OL.IsLabel t (FeatureList -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFeatureListMethod t FeatureList, O.OverloadedMethod info FeatureList p, R.HasField t FeatureList p) => R.HasField t FeatureList p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFeatureListMethod t FeatureList, O.OverloadedMethodInfo info FeatureList) => OL.IsLabel t (O.MethodProxy info FeatureList) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


