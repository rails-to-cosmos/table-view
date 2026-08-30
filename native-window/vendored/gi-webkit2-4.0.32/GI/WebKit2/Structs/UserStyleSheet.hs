{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A CSS style sheet which can be injected in loaded pages.
-- 
-- /Since: 2.6/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.UserStyleSheet
    ( 

-- * Exported types
    UserStyleSheet(..)                      ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.UserStyleSheet#g:method:ref"), [unref]("GI.WebKit2.Structs.UserStyleSheet#g:method:unref").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveUserStyleSheetMethod             ,
#endif

-- ** new #method:new#

    userStyleSheetNew                       ,


-- ** newForWorld #method:newForWorld#

    userStyleSheetNewForWorld               ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    UserStyleSheetRefMethodInfo             ,
#endif
    userStyleSheetRef                       ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    UserStyleSheetUnrefMethodInfo           ,
#endif
    userStyleSheetUnref                     ,




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
newtype UserStyleSheet = UserStyleSheet (SP.ManagedPtr UserStyleSheet)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserStyleSheet where
    toManagedPtr (UserStyleSheet p) = p

foreign import ccall "webkit_user_style_sheet_get_type" c_webkit_user_style_sheet_get_type :: 
    IO GType

type instance O.ParentTypes UserStyleSheet = '[]
instance O.HasParentTypes UserStyleSheet

instance B.Types.TypedObject UserStyleSheet where
    glibType = c_webkit_user_style_sheet_get_type

instance B.Types.GBoxed UserStyleSheet

-- | Convert t'UserStyleSheet' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserStyleSheet) where
    gvalueGType_ = c_webkit_user_style_sheet_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr UserStyleSheet)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr UserStyleSheet)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed UserStyleSheet ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserStyleSheet
type instance O.AttributeList UserStyleSheet = UserStyleSheetAttributeList
type UserStyleSheetAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method UserStyleSheet::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "source"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Source code of the user style sheet."
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
--           { argCName = "injected_frames"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentInjectedFrames" }
--           , argCType = Just "WebKitUserContentInjectedFrames"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentInjectedFrames value"
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
--           { argCName = "level"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleLevel" }
--           , argCType = Just "WebKitUserStyleLevel"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserStyleLevel"
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
--           { argCName = "allow_list"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An allow_list of URI patterns or %NULL"
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
--           { argCName = "block_list"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A block_list of URI patterns or %NULL"
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
--                  Name { namespace = "WebKit2" , name = "UserStyleSheet" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_style_sheet_new" webkit_user_style_sheet_new :: 
    CString ->                              -- source : TBasicType TUTF8
    CUInt ->                                -- injected_frames : TInterface (Name {namespace = "WebKit2", name = "UserContentInjectedFrames"})
    CUInt ->                                -- level : TInterface (Name {namespace = "WebKit2", name = "UserStyleLevel"})
    Ptr CString ->                          -- allow_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    Ptr CString ->                          -- block_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr UserStyleSheet)

-- | Creates a new user style sheet.
-- 
-- Style sheets can be applied to some URIs
-- only by passing non-null values for /@allowList@/ or /@blockList@/. Passing a
-- 'P.Nothing' allow_list implies that all URIs are on the allow_list. The style
-- sheet is applied if an URI matches the allow_list and not the block_list.
-- URI patterns must be of the form @[protocol]:\/\/[host]\/[path]@, where the
-- *host* and *path* components can contain the wildcard character (@*@) to
-- represent zero or more other characters.
-- 
-- /Since: 2.6/
userStyleSheetNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@source@/: Source code of the user style sheet.
    -> WebKit2.Enums.UserContentInjectedFrames
    -- ^ /@injectedFrames@/: A t'GI.WebKit2.Enums.UserContentInjectedFrames' value
    -> WebKit2.Enums.UserStyleLevel
    -- ^ /@level@/: A t'GI.WebKit2.Enums.UserStyleLevel'
    -> Maybe ([T.Text])
    -- ^ /@allowList@/: An allow_list of URI patterns or 'P.Nothing'
    -> Maybe ([T.Text])
    -- ^ /@blockList@/: A block_list of URI patterns or 'P.Nothing'
    -> m UserStyleSheet
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
userStyleSheetNew source injectedFrames level allowList blockList = liftIO $ do
    source' <- textToCString source
    let injectedFrames' = (fromIntegral . fromEnum) injectedFrames
    let level' = (fromIntegral . fromEnum) level
    maybeAllowList <- case allowList of
        Nothing -> return FP.nullPtr
        Just jAllowList -> do
            jAllowList' <- packZeroTerminatedUTF8CArray jAllowList
            return jAllowList'
    maybeBlockList <- case blockList of
        Nothing -> return FP.nullPtr
        Just jBlockList -> do
            jBlockList' <- packZeroTerminatedUTF8CArray jBlockList
            return jBlockList'
    result <- webkit_user_style_sheet_new source' injectedFrames' level' maybeAllowList maybeBlockList
    checkUnexpectedReturnNULL "userStyleSheetNew" result
    result' <- (wrapBoxed UserStyleSheet) result
    freeMem source'
    mapZeroTerminatedCArray freeMem maybeAllowList
    freeMem maybeAllowList
    mapZeroTerminatedCArray freeMem maybeBlockList
    freeMem maybeBlockList
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserStyleSheet::new_for_world
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "source"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Source code of the user style sheet."
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
--           { argCName = "injected_frames"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentInjectedFrames" }
--           , argCType = Just "WebKitUserContentInjectedFrames"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentInjectedFrames value"
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
--           { argCName = "level"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleLevel" }
--           , argCType = Just "WebKitUserStyleLevel"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserStyleLevel"
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
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a #WebKitScriptWorld"
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
--           { argCName = "allow_list"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An allow_list of URI patterns or %NULL"
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
--           { argCName = "block_list"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A block_list of URI patterns or %NULL"
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
--                  Name { namespace = "WebKit2" , name = "UserStyleSheet" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_style_sheet_new_for_world" webkit_user_style_sheet_new_for_world :: 
    CString ->                              -- source : TBasicType TUTF8
    CUInt ->                                -- injected_frames : TInterface (Name {namespace = "WebKit2", name = "UserContentInjectedFrames"})
    CUInt ->                                -- level : TInterface (Name {namespace = "WebKit2", name = "UserStyleLevel"})
    CString ->                              -- world_name : TBasicType TUTF8
    Ptr CString ->                          -- allow_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    Ptr CString ->                          -- block_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr UserStyleSheet)

-- | Creates a new user style sheet for script world.
-- 
-- Creates a new user style sheet for script world with name /@worldName@/.
-- See 'GI.WebKit2.Structs.UserStyleSheet.userStyleSheetNew' for a full description.
-- 
-- /Since: 2.22/
userStyleSheetNewForWorld ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@source@/: Source code of the user style sheet.
    -> WebKit2.Enums.UserContentInjectedFrames
    -- ^ /@injectedFrames@/: A t'GI.WebKit2.Enums.UserContentInjectedFrames' value
    -> WebKit2.Enums.UserStyleLevel
    -- ^ /@level@/: A t'GI.WebKit2.Enums.UserStyleLevel'
    -> T.Text
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> Maybe ([T.Text])
    -- ^ /@allowList@/: An allow_list of URI patterns or 'P.Nothing'
    -> Maybe ([T.Text])
    -- ^ /@blockList@/: A block_list of URI patterns or 'P.Nothing'
    -> m UserStyleSheet
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
userStyleSheetNewForWorld source injectedFrames level worldName allowList blockList = liftIO $ do
    source' <- textToCString source
    let injectedFrames' = (fromIntegral . fromEnum) injectedFrames
    let level' = (fromIntegral . fromEnum) level
    worldName' <- textToCString worldName
    maybeAllowList <- case allowList of
        Nothing -> return FP.nullPtr
        Just jAllowList -> do
            jAllowList' <- packZeroTerminatedUTF8CArray jAllowList
            return jAllowList'
    maybeBlockList <- case blockList of
        Nothing -> return FP.nullPtr
        Just jBlockList -> do
            jBlockList' <- packZeroTerminatedUTF8CArray jBlockList
            return jBlockList'
    result <- webkit_user_style_sheet_new_for_world source' injectedFrames' level' worldName' maybeAllowList maybeBlockList
    checkUnexpectedReturnNULL "userStyleSheetNewForWorld" result
    result' <- (wrapBoxed UserStyleSheet) result
    freeMem source'
    freeMem worldName'
    mapZeroTerminatedCArray freeMem maybeAllowList
    freeMem maybeAllowList
    mapZeroTerminatedCArray freeMem maybeBlockList
    freeMem maybeBlockList
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserStyleSheet::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_style_sheet"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleSheet" }
--           , argCType = Just "WebKitUserStyleSheet*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserStyleSheet"
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
--                  Name { namespace = "WebKit2" , name = "UserStyleSheet" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_style_sheet_ref" webkit_user_style_sheet_ref :: 
    Ptr UserStyleSheet ->                   -- user_style_sheet : TInterface (Name {namespace = "WebKit2", name = "UserStyleSheet"})
    IO (Ptr UserStyleSheet)

-- | Atomically increments the reference count of /@userStyleSheet@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.6/
userStyleSheetRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserStyleSheet
    -- ^ /@userStyleSheet@/: a t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
    -> m UserStyleSheet
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
userStyleSheetRef userStyleSheet = liftIO $ do
    userStyleSheet' <- unsafeManagedPtrGetPtr userStyleSheet
    result <- webkit_user_style_sheet_ref userStyleSheet'
    checkUnexpectedReturnNULL "userStyleSheetRef" result
    result' <- (wrapBoxed UserStyleSheet) result
    touchManagedPtr userStyleSheet
    return result'

#if defined(ENABLE_OVERLOADING)
data UserStyleSheetRefMethodInfo
instance (signature ~ (m UserStyleSheet), MonadIO m) => O.OverloadedMethod UserStyleSheetRefMethodInfo UserStyleSheet signature where
    overloadedMethod = userStyleSheetRef

instance O.OverloadedMethodInfo UserStyleSheetRefMethodInfo UserStyleSheet where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserStyleSheet.userStyleSheetRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserStyleSheet.html#v:userStyleSheetRef"
        })


#endif

-- method UserStyleSheet::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_style_sheet"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleSheet" }
--           , argCType = Just "WebKitUserStyleSheet*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserStyleSheet"
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

foreign import ccall "webkit_user_style_sheet_unref" webkit_user_style_sheet_unref :: 
    Ptr UserStyleSheet ->                   -- user_style_sheet : TInterface (Name {namespace = "WebKit2", name = "UserStyleSheet"})
    IO ()

-- | Atomically decrements the reference count of /@userStyleSheet@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet' is released. This function is MT-safe and may be
-- called from any thread.
-- 
-- /Since: 2.6/
userStyleSheetUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserStyleSheet
    -- ^ /@userStyleSheet@/: a t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
    -> m ()
userStyleSheetUnref userStyleSheet = liftIO $ do
    userStyleSheet' <- unsafeManagedPtrGetPtr userStyleSheet
    webkit_user_style_sheet_unref userStyleSheet'
    touchManagedPtr userStyleSheet
    return ()

#if defined(ENABLE_OVERLOADING)
data UserStyleSheetUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod UserStyleSheetUnrefMethodInfo UserStyleSheet signature where
    overloadedMethod = userStyleSheetUnref

instance O.OverloadedMethodInfo UserStyleSheetUnrefMethodInfo UserStyleSheet where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserStyleSheet.userStyleSheetUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserStyleSheet.html#v:userStyleSheetUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveUserStyleSheetMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserStyleSheetMethod "ref" o = UserStyleSheetRefMethodInfo
    ResolveUserStyleSheetMethod "unref" o = UserStyleSheetUnrefMethodInfo
    ResolveUserStyleSheetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserStyleSheetMethod t UserStyleSheet, O.OverloadedMethod info UserStyleSheet p) => OL.IsLabel t (UserStyleSheet -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserStyleSheetMethod t UserStyleSheet, O.OverloadedMethod info UserStyleSheet p, R.HasField t UserStyleSheet p) => R.HasField t UserStyleSheet p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserStyleSheetMethod t UserStyleSheet, O.OverloadedMethodInfo info UserStyleSheet) => OL.IsLabel t (O.MethodProxy info UserStyleSheet) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


