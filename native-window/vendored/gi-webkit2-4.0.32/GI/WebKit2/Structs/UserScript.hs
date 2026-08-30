{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A JavaScript snippet which can be injected in loaded pages.
-- 
-- /Since: 2.6/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.UserScript
    ( 

-- * Exported types
    UserScript(..)                          ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.UserScript#g:method:ref"), [unref]("GI.WebKit2.Structs.UserScript#g:method:unref").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveUserScriptMethod                 ,
#endif

-- ** new #method:new#

    userScriptNew                           ,


-- ** newForWorld #method:newForWorld#

    userScriptNewForWorld                   ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    UserScriptRefMethodInfo                 ,
#endif
    userScriptRef                           ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    UserScriptUnrefMethodInfo               ,
#endif
    userScriptUnref                         ,




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
newtype UserScript = UserScript (SP.ManagedPtr UserScript)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserScript where
    toManagedPtr (UserScript p) = p

foreign import ccall "webkit_user_script_get_type" c_webkit_user_script_get_type :: 
    IO GType

type instance O.ParentTypes UserScript = '[]
instance O.HasParentTypes UserScript

instance B.Types.TypedObject UserScript where
    glibType = c_webkit_user_script_get_type

instance B.Types.GBoxed UserScript

-- | Convert t'UserScript' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserScript) where
    gvalueGType_ = c_webkit_user_script_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr UserScript)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr UserScript)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed UserScript ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserScript
type instance O.AttributeList UserScript = UserScriptAttributeList
type UserScriptAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method UserScript::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "source"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Source code of the user script."
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
--           { argCName = "injection_time"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserScriptInjectionTime" }
--           , argCType = Just "WebKitUserScriptInjectionTime"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserScriptInjectionTime value"
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
--               (TInterface Name { namespace = "WebKit2" , name = "UserScript" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_script_new" webkit_user_script_new :: 
    CString ->                              -- source : TBasicType TUTF8
    CUInt ->                                -- injected_frames : TInterface (Name {namespace = "WebKit2", name = "UserContentInjectedFrames"})
    CUInt ->                                -- injection_time : TInterface (Name {namespace = "WebKit2", name = "UserScriptInjectionTime"})
    Ptr CString ->                          -- allow_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    Ptr CString ->                          -- block_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr UserScript)

-- | Creates a new user script.
-- 
-- Scripts can be applied to some URIs
-- only by passing non-null values for /@allowList@/ or /@blockList@/. Passing a
-- 'P.Nothing' allow_list implies that all URIs are on the allow_list. The script
-- is applied if an URI matches the allow_list and not the block_list.
-- URI patterns must be of the form @[protocol]:\/\/[host]\/[path]@, where the
-- *host* and *path* components can contain the wildcard character (@*@) to
-- represent zero or more other characters.
-- 
-- /Since: 2.6/
userScriptNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@source@/: Source code of the user script.
    -> WebKit2.Enums.UserContentInjectedFrames
    -- ^ /@injectedFrames@/: A t'GI.WebKit2.Enums.UserContentInjectedFrames' value
    -> WebKit2.Enums.UserScriptInjectionTime
    -- ^ /@injectionTime@/: A t'GI.WebKit2.Enums.UserScriptInjectionTime' value
    -> Maybe ([T.Text])
    -- ^ /@allowList@/: An allow_list of URI patterns or 'P.Nothing'
    -> Maybe ([T.Text])
    -- ^ /@blockList@/: A block_list of URI patterns or 'P.Nothing'
    -> m UserScript
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.UserScript.UserScript'
userScriptNew source injectedFrames injectionTime allowList blockList = liftIO $ do
    source' <- textToCString source
    let injectedFrames' = (fromIntegral . fromEnum) injectedFrames
    let injectionTime' = (fromIntegral . fromEnum) injectionTime
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
    result <- webkit_user_script_new source' injectedFrames' injectionTime' maybeAllowList maybeBlockList
    checkUnexpectedReturnNULL "userScriptNew" result
    result' <- (wrapBoxed UserScript) result
    freeMem source'
    mapZeroTerminatedCArray freeMem maybeAllowList
    freeMem maybeAllowList
    mapZeroTerminatedCArray freeMem maybeBlockList
    freeMem maybeBlockList
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserScript::new_for_world
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "source"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Source code of the user script."
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
--           { argCName = "injection_time"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserScriptInjectionTime" }
--           , argCType = Just "WebKitUserScriptInjectionTime"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserScriptInjectionTime value"
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
--               (TInterface Name { namespace = "WebKit2" , name = "UserScript" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_script_new_for_world" webkit_user_script_new_for_world :: 
    CString ->                              -- source : TBasicType TUTF8
    CUInt ->                                -- injected_frames : TInterface (Name {namespace = "WebKit2", name = "UserContentInjectedFrames"})
    CUInt ->                                -- injection_time : TInterface (Name {namespace = "WebKit2", name = "UserScriptInjectionTime"})
    CString ->                              -- world_name : TBasicType TUTF8
    Ptr CString ->                          -- allow_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    Ptr CString ->                          -- block_list : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr UserScript)

-- | Creates a new user script for script world with name /@worldName@/.
-- 
-- See 'GI.WebKit2.Structs.UserScript.userScriptNew' for a full description.
-- 
-- /Since: 2.22/
userScriptNewForWorld ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@source@/: Source code of the user script.
    -> WebKit2.Enums.UserContentInjectedFrames
    -- ^ /@injectedFrames@/: A t'GI.WebKit2.Enums.UserContentInjectedFrames' value
    -> WebKit2.Enums.UserScriptInjectionTime
    -- ^ /@injectionTime@/: A t'GI.WebKit2.Enums.UserScriptInjectionTime' value
    -> T.Text
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> Maybe ([T.Text])
    -- ^ /@allowList@/: An allow_list of URI patterns or 'P.Nothing'
    -> Maybe ([T.Text])
    -- ^ /@blockList@/: A block_list of URI patterns or 'P.Nothing'
    -> m UserScript
    -- ^ __Returns:__ A new t'GI.WebKit2.Structs.UserScript.UserScript'
userScriptNewForWorld source injectedFrames injectionTime worldName allowList blockList = liftIO $ do
    source' <- textToCString source
    let injectedFrames' = (fromIntegral . fromEnum) injectedFrames
    let injectionTime' = (fromIntegral . fromEnum) injectionTime
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
    result <- webkit_user_script_new_for_world source' injectedFrames' injectionTime' worldName' maybeAllowList maybeBlockList
    checkUnexpectedReturnNULL "userScriptNewForWorld" result
    result' <- (wrapBoxed UserScript) result
    freeMem source'
    freeMem worldName'
    mapZeroTerminatedCArray freeMem maybeAllowList
    freeMem maybeAllowList
    mapZeroTerminatedCArray freeMem maybeBlockList
    freeMem maybeBlockList
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserScript::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_script"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserScript" }
--           , argCType = Just "WebKitUserScript*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserScript"
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
--               (TInterface Name { namespace = "WebKit2" , name = "UserScript" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_script_ref" webkit_user_script_ref :: 
    Ptr UserScript ->                       -- user_script : TInterface (Name {namespace = "WebKit2", name = "UserScript"})
    IO (Ptr UserScript)

-- | Atomically increments the reference count of /@userScript@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.6/
userScriptRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserScript
    -- ^ /@userScript@/: a t'GI.WebKit2.Structs.UserScript.UserScript'
    -> m UserScript
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.UserScript.UserScript'
userScriptRef userScript = liftIO $ do
    userScript' <- unsafeManagedPtrGetPtr userScript
    result <- webkit_user_script_ref userScript'
    checkUnexpectedReturnNULL "userScriptRef" result
    result' <- (wrapBoxed UserScript) result
    touchManagedPtr userScript
    return result'

#if defined(ENABLE_OVERLOADING)
data UserScriptRefMethodInfo
instance (signature ~ (m UserScript), MonadIO m) => O.OverloadedMethod UserScriptRefMethodInfo UserScript signature where
    overloadedMethod = userScriptRef

instance O.OverloadedMethodInfo UserScriptRefMethodInfo UserScript where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserScript.userScriptRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserScript.html#v:userScriptRef"
        })


#endif

-- method UserScript::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "user_script"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserScript" }
--           , argCType = Just "WebKitUserScript*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserScript"
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

foreign import ccall "webkit_user_script_unref" webkit_user_script_unref :: 
    Ptr UserScript ->                       -- user_script : TInterface (Name {namespace = "WebKit2", name = "UserScript"})
    IO ()

-- | Atomically decrements the reference count of /@userScript@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.UserScript.UserScript' is released. This function is MT-safe and may be called
-- from any thread.
-- 
-- /Since: 2.6/
userScriptUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    UserScript
    -- ^ /@userScript@/: a t'GI.WebKit2.Structs.UserScript.UserScript'
    -> m ()
userScriptUnref userScript = liftIO $ do
    userScript' <- unsafeManagedPtrGetPtr userScript
    webkit_user_script_unref userScript'
    touchManagedPtr userScript
    return ()

#if defined(ENABLE_OVERLOADING)
data UserScriptUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod UserScriptUnrefMethodInfo UserScript signature where
    overloadedMethod = userScriptUnref

instance O.OverloadedMethodInfo UserScriptUnrefMethodInfo UserScript where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.UserScript.userScriptUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-UserScript.html#v:userScriptUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveUserScriptMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserScriptMethod "ref" o = UserScriptRefMethodInfo
    ResolveUserScriptMethod "unref" o = UserScriptUnrefMethodInfo
    ResolveUserScriptMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserScriptMethod t UserScript, O.OverloadedMethod info UserScript p) => OL.IsLabel t (UserScript -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserScriptMethod t UserScript, O.OverloadedMethod info UserScript p, R.HasField t UserScript p) => R.HasField t UserScript p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserScriptMethod t UserScript, O.OverloadedMethodInfo info UserScript) => OL.IsLabel t (O.MethodProxy info UserScript) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


