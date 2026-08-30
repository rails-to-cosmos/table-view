{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Describes a web engine feature that may be toggled at runtime.
-- 
-- The WebKit web engine includes a set of features which may be toggled
-- programmatically, each one represented by a t'GI.WebKit2.Structs.Feature.Feature' that provides
-- information about it:
-- 
-- * A unique “identifier”: [method/@feature@/.get_identifier].
-- * A “default value”, which indicates whether the option is enabled
--   automatically: [method/@feature@/.get_default_value].
-- * Its “status”, which determines whether it should be considered
--   user-settable and its development stage (see [enum/@featureStatus@/]
--   for details): [method/@feature@/.get_status].
-- * A category, which may be used to group features together:
--   [method/@feature@/.get_category].
-- * An optional short “name” which can be presented to an user:
--   [method/@feature@/.get_name].
-- * An optional longer “detailed” description:
--   [method/@feature@/.get_details].
-- 
-- 
-- The lists of available features can be obtained with
-- @/Settings.get_all_features/@, @/Settings.get_experimental_features/@,
-- and @/Settings.get_development_features/@). As a rule of thumb,
-- applications which may want to allow users (i.e. web developers) to test
-- WebKit features should use the list of experimental features. Additionally,
-- applications might want to expose development features *when targeting
-- technically inclined users* for early testing of in-development features
-- (i.e. in “technology preview” or “canary” builds).
-- 
-- Applications __must not__ expose the list of all features to end users
-- because they often lack descriptions and control parts of the web engine
-- which are either intended to be used during development of WebKit itself,
-- or in specific scenarios to tweak how WebKit integrates with the
-- application.
-- 
-- /Since: 2.42/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.Feature
    ( 

-- * Exported types
    Feature(..)                             ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.Feature#g:method:ref"), [unref]("GI.WebKit2.Structs.Feature#g:method:unref").
-- 
-- ==== Getters
-- [getCategory]("GI.WebKit2.Structs.Feature#g:method:getCategory"), [getDefaultValue]("GI.WebKit2.Structs.Feature#g:method:getDefaultValue"), [getDetails]("GI.WebKit2.Structs.Feature#g:method:getDetails"), [getIdentifier]("GI.WebKit2.Structs.Feature#g:method:getIdentifier"), [getName]("GI.WebKit2.Structs.Feature#g:method:getName"), [getStatus]("GI.WebKit2.Structs.Feature#g:method:getStatus").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveFeatureMethod                    ,
#endif

-- ** getCategory #method:getCategory#

#if defined(ENABLE_OVERLOADING)
    FeatureGetCategoryMethodInfo            ,
#endif
    featureGetCategory                      ,


-- ** getDefaultValue #method:getDefaultValue#

#if defined(ENABLE_OVERLOADING)
    FeatureGetDefaultValueMethodInfo        ,
#endif
    featureGetDefaultValue                  ,


-- ** getDetails #method:getDetails#

#if defined(ENABLE_OVERLOADING)
    FeatureGetDetailsMethodInfo             ,
#endif
    featureGetDetails                       ,


-- ** getIdentifier #method:getIdentifier#

#if defined(ENABLE_OVERLOADING)
    FeatureGetIdentifierMethodInfo          ,
#endif
    featureGetIdentifier                    ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    FeatureGetNameMethodInfo                ,
#endif
    featureGetName                          ,


-- ** getStatus #method:getStatus#

#if defined(ENABLE_OVERLOADING)
    FeatureGetStatusMethodInfo              ,
#endif
    featureGetStatus                        ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    FeatureRefMethodInfo                    ,
#endif
    featureRef                              ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    FeatureUnrefMethodInfo                  ,
#endif
    featureUnref                            ,




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

#else
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#endif

-- | Memory-managed wrapper type.
newtype Feature = Feature (SP.ManagedPtr Feature)
    deriving (Eq)

instance SP.ManagedPtrNewtype Feature where
    toManagedPtr (Feature p) = p

foreign import ccall "webkit_feature_get_type" c_webkit_feature_get_type :: 
    IO GType

type instance O.ParentTypes Feature = '[]
instance O.HasParentTypes Feature

instance B.Types.TypedObject Feature where
    glibType = c_webkit_feature_get_type

instance B.Types.GBoxed Feature

-- | Convert t'Feature' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Feature) where
    gvalueGType_ = c_webkit_feature_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr Feature)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr Feature)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed Feature ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Feature
type instance O.AttributeList Feature = FeatureAttributeList
type FeatureAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method Feature::get_category
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_get_category" webkit_feature_get_category :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CString

-- | Gets the category of the feature.
-- 
-- Applications which include user interface to toggle features may want
-- to use the category to group related features together.
-- 
-- /Since: 2.42/
featureGetCategory ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m T.Text
    -- ^ __Returns:__ Feature category.
featureGetCategory feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_category feature'
    checkUnexpectedReturnNULL "featureGetCategory" result
    result' <- cstringToText result
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureGetCategoryMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod FeatureGetCategoryMethodInfo Feature signature where
    overloadedMethod = featureGetCategory

instance O.OverloadedMethodInfo FeatureGetCategoryMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetCategory",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetCategory"
        })


#endif

-- method Feature::get_default_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_get_default_value" webkit_feature_get_default_value :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CInt

-- | Gets whether the feature is enabled by default.
-- 
-- The default value may be used by applications which include user interface
-- to toggle features to restore its settings to their defaults. Note that
-- whether a feature is actually enabled must be checked with
-- [method/@settings@/.get_feature_enabled].
-- 
-- /Since: 2.42/
featureGetDefaultValue ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m Bool
    -- ^ __Returns:__ Whether the feature is enabled by default.
featureGetDefaultValue feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_default_value feature'
    let result' = (/= 0) result
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureGetDefaultValueMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod FeatureGetDefaultValueMethodInfo Feature signature where
    overloadedMethod = featureGetDefaultValue

instance O.OverloadedMethodInfo FeatureGetDefaultValueMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetDefaultValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetDefaultValue"
        })


#endif

-- method Feature::get_details
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_get_details" webkit_feature_get_details :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CString

-- | Gets a description for the /@feature@/.
-- 
-- The detailed description should be considered an additional clarification
-- on the purpose of the feature, to be used as complementary aid to be
-- displayed along the feature name returned by [method/@feature@/.get_name].
-- The returned string is suitable to be displayed to end users, but it
-- should not be relied upon being localized.
-- 
-- Note that some *features may not* have a detailed description, and /@nULL@/
-- is returned in this case.
-- 
-- /Since: 2.42/
featureGetDetails ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ Feature description.
featureGetDetails feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_details feature'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr feature
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FeatureGetDetailsMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod FeatureGetDetailsMethodInfo Feature signature where
    overloadedMethod = featureGetDetails

instance O.OverloadedMethodInfo FeatureGetDetailsMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetDetails",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetDetails"
        })


#endif

-- method Feature::get_identifier
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_get_identifier" webkit_feature_get_identifier :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CString

-- | Gets a string that uniquely identifies the /@feature@/.
-- 
-- /Since: 2.42/
featureGetIdentifier ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m T.Text
    -- ^ __Returns:__ The identifier string for the feature.
featureGetIdentifier feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_identifier feature'
    checkUnexpectedReturnNULL "featureGetIdentifier" result
    result' <- cstringToText result
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureGetIdentifierMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod FeatureGetIdentifierMethodInfo Feature signature where
    overloadedMethod = featureGetIdentifier

instance O.OverloadedMethodInfo FeatureGetIdentifierMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetIdentifier",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetIdentifier"
        })


#endif

-- method Feature::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_get_name" webkit_feature_get_name :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CString

-- | Gets a short name for the /@feature@/.
-- 
-- The returned string is suitable to be displayed to end users, but it
-- should not be relied upon being localized.
-- 
-- Note that some *features may not* have a short name, and /@nULL@/
-- is returned in this case.
-- 
-- /Since: 2.42/
featureGetName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ Short feature name.
featureGetName feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_name feature'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr feature
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FeatureGetNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod FeatureGetNameMethodInfo Feature signature where
    overloadedMethod = featureGetName

instance O.OverloadedMethodInfo FeatureGetNameMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetName"
        })


#endif

-- method Feature::get_status
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "FeatureStatus" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_feature_get_status" webkit_feature_get_status :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO CUInt

-- | Gets the status of the feature.
-- 
-- /Since: 2.42/
featureGetStatus ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m WebKit2.Enums.FeatureStatus
    -- ^ __Returns:__ Feature status.
featureGetStatus feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_get_status feature'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureGetStatusMethodInfo
instance (signature ~ (m WebKit2.Enums.FeatureStatus), MonadIO m) => O.OverloadedMethod FeatureGetStatusMethodInfo Feature signature where
    overloadedMethod = featureGetStatus

instance O.OverloadedMethodInfo FeatureGetStatusMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureGetStatus",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureGetStatus"
        })


#endif

-- method Feature::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_ref" webkit_feature_ref :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO (Ptr Feature)

-- | Atomically acquires a reference on the given /@feature@/.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.42/
featureRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m Feature
    -- ^ __Returns:__ The same /@feature@/ with an additional reference.
featureRef feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    result <- webkit_feature_ref feature'
    checkUnexpectedReturnNULL "featureRef" result
    result' <- (wrapBoxed Feature) result
    touchManagedPtr feature
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatureRefMethodInfo
instance (signature ~ (m Feature), MonadIO m) => O.OverloadedMethod FeatureRefMethodInfo Feature signature where
    overloadedMethod = featureRef

instance O.OverloadedMethodInfo FeatureRefMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureRef"
        })


#endif

-- method Feature::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "feature"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Feature" }
--           , argCType = Just "WebKitFeature*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFeature" , sinceVersion = Nothing }
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

foreign import ccall "webkit_feature_unref" webkit_feature_unref :: 
    Ptr Feature ->                          -- feature : TInterface (Name {namespace = "WebKit2", name = "Feature"})
    IO ()

-- | Atomically releases a reference on the given /@feature@/.
-- 
-- If the reference was the last, the resources associated to the
-- /@feature@/ are freed. This function is MT-safe and may be called from
-- any thread.
-- 
-- /Since: 2.42/
featureUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Feature
    -- ^ /@feature@/: a t'GI.WebKit2.Structs.Feature.Feature'
    -> m ()
featureUnref feature = liftIO $ do
    feature' <- unsafeManagedPtrGetPtr feature
    webkit_feature_unref feature'
    touchManagedPtr feature
    return ()

#if defined(ENABLE_OVERLOADING)
data FeatureUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod FeatureUnrefMethodInfo Feature signature where
    overloadedMethod = featureUnref

instance O.OverloadedMethodInfo FeatureUnrefMethodInfo Feature where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Feature.featureUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Feature.html#v:featureUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveFeatureMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFeatureMethod "ref" o = FeatureRefMethodInfo
    ResolveFeatureMethod "unref" o = FeatureUnrefMethodInfo
    ResolveFeatureMethod "getCategory" o = FeatureGetCategoryMethodInfo
    ResolveFeatureMethod "getDefaultValue" o = FeatureGetDefaultValueMethodInfo
    ResolveFeatureMethod "getDetails" o = FeatureGetDetailsMethodInfo
    ResolveFeatureMethod "getIdentifier" o = FeatureGetIdentifierMethodInfo
    ResolveFeatureMethod "getName" o = FeatureGetNameMethodInfo
    ResolveFeatureMethod "getStatus" o = FeatureGetStatusMethodInfo
    ResolveFeatureMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatureMethod t Feature, O.OverloadedMethod info Feature p) => OL.IsLabel t (Feature -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFeatureMethod t Feature, O.OverloadedMethod info Feature p, R.HasField t Feature p) => R.HasField t Feature p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFeatureMethod t Feature, O.OverloadedMethodInfo info Feature) => OL.IsLabel t (O.MethodProxy info Feature) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


