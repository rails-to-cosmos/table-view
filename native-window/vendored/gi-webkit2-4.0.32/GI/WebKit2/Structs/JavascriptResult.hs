{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Result of JavaScript evaluation in a web view.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.JavascriptResult
    ( 

-- * Exported types
    JavascriptResult(..)                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.JavascriptResult#g:method:ref"), [unref]("GI.WebKit2.Structs.JavascriptResult#g:method:unref").
-- 
-- ==== Getters
-- [getJsValue]("GI.WebKit2.Structs.JavascriptResult#g:method:getJsValue").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveJavascriptResultMethod           ,
#endif

-- ** getJsValue #method:getJsValue#

#if defined(ENABLE_OVERLOADING)
    JavascriptResultGetJsValueMethodInfo    ,
#endif
    javascriptResultGetJsValue              ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    JavascriptResultRefMethodInfo           ,
#endif
    javascriptResultRef                     ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    JavascriptResultUnrefMethodInfo         ,
#endif
    javascriptResultUnref                   ,




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
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value

#else
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value

#endif

-- | Memory-managed wrapper type.
newtype JavascriptResult = JavascriptResult (SP.ManagedPtr JavascriptResult)
    deriving (Eq)

instance SP.ManagedPtrNewtype JavascriptResult where
    toManagedPtr (JavascriptResult p) = p

foreign import ccall "webkit_javascript_result_get_type" c_webkit_javascript_result_get_type :: 
    IO GType

type instance O.ParentTypes JavascriptResult = '[]
instance O.HasParentTypes JavascriptResult

instance B.Types.TypedObject JavascriptResult where
    glibType = c_webkit_javascript_result_get_type

instance B.Types.GBoxed JavascriptResult

-- | Convert t'JavascriptResult' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe JavascriptResult) where
    gvalueGType_ = c_webkit_javascript_result_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr JavascriptResult)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr JavascriptResult)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed JavascriptResult ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList JavascriptResult
type instance O.AttributeList JavascriptResult = JavascriptResultAttributeList
type JavascriptResultAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method JavascriptResult::get_js_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "js_result"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "JavascriptResult" }
--           , argCType = Just "WebKitJavascriptResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitJavascriptResult"
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_javascript_result_get_js_value" webkit_javascript_result_get_js_value :: 
    Ptr JavascriptResult ->                 -- js_result : TInterface (Name {namespace = "WebKit2", name = "JavascriptResult"})
    IO (Ptr JavaScriptCore.Value.Value)

-- | Get the t'GI.JavaScriptCore.Objects.Value.Value' of /@jsResult@/.
-- 
-- /Since: 2.22/
javascriptResultGetJsValue ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    JavascriptResult
    -- ^ /@jsResult@/: a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ the t'GI.JavaScriptCore.Objects.Value.Value' of the t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult'
javascriptResultGetJsValue jsResult = liftIO $ do
    jsResult' <- unsafeManagedPtrGetPtr jsResult
    result <- webkit_javascript_result_get_js_value jsResult'
    checkUnexpectedReturnNULL "javascriptResultGetJsValue" result
    result' <- (newObject JavaScriptCore.Value.Value) result
    touchManagedPtr jsResult
    return result'

#if defined(ENABLE_OVERLOADING)
data JavascriptResultGetJsValueMethodInfo
instance (signature ~ (m JavaScriptCore.Value.Value), MonadIO m) => O.OverloadedMethod JavascriptResultGetJsValueMethodInfo JavascriptResult signature where
    overloadedMethod = javascriptResultGetJsValue

instance O.OverloadedMethodInfo JavascriptResultGetJsValueMethodInfo JavascriptResult where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.JavascriptResult.javascriptResultGetJsValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-JavascriptResult.html#v:javascriptResultGetJsValue"
        })


#endif

-- method JavascriptResult::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "js_result"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "JavascriptResult" }
--           , argCType = Just "WebKitJavascriptResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitJavascriptResult"
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
--                  Name { namespace = "WebKit2" , name = "JavascriptResult" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_javascript_result_ref" webkit_javascript_result_ref :: 
    Ptr JavascriptResult ->                 -- js_result : TInterface (Name {namespace = "WebKit2", name = "JavascriptResult"})
    IO (Ptr JavascriptResult)

-- | Atomically increments the reference count of /@jsResult@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
javascriptResultRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    JavascriptResult
    -- ^ /@jsResult@/: a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult'
    -> m JavascriptResult
    -- ^ __Returns:__ The passed in t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult'
javascriptResultRef jsResult = liftIO $ do
    jsResult' <- unsafeManagedPtrGetPtr jsResult
    result <- webkit_javascript_result_ref jsResult'
    checkUnexpectedReturnNULL "javascriptResultRef" result
    result' <- (wrapBoxed JavascriptResult) result
    touchManagedPtr jsResult
    return result'

#if defined(ENABLE_OVERLOADING)
data JavascriptResultRefMethodInfo
instance (signature ~ (m JavascriptResult), MonadIO m) => O.OverloadedMethod JavascriptResultRefMethodInfo JavascriptResult signature where
    overloadedMethod = javascriptResultRef

instance O.OverloadedMethodInfo JavascriptResultRefMethodInfo JavascriptResult where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.JavascriptResult.javascriptResultRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-JavascriptResult.html#v:javascriptResultRef"
        })


#endif

-- method JavascriptResult::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "js_result"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "JavascriptResult" }
--           , argCType = Just "WebKitJavascriptResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitJavascriptResult"
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

foreign import ccall "webkit_javascript_result_unref" webkit_javascript_result_unref :: 
    Ptr JavascriptResult ->                 -- js_result : TInterface (Name {namespace = "WebKit2", name = "JavascriptResult"})
    IO ()

-- | Atomically decrements the reference count of /@jsResult@/ by one.
-- 
-- If the reference count drops to 0,
-- all memory allocated by the t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult' is
-- released. This function is MT-safe and may be called from any
-- thread.
javascriptResultUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    JavascriptResult
    -- ^ /@jsResult@/: a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult'
    -> m ()
javascriptResultUnref jsResult = liftIO $ do
    jsResult' <- unsafeManagedPtrGetPtr jsResult
    webkit_javascript_result_unref jsResult'
    touchManagedPtr jsResult
    return ()

#if defined(ENABLE_OVERLOADING)
data JavascriptResultUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod JavascriptResultUnrefMethodInfo JavascriptResult signature where
    overloadedMethod = javascriptResultUnref

instance O.OverloadedMethodInfo JavascriptResultUnrefMethodInfo JavascriptResult where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.JavascriptResult.javascriptResultUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-JavascriptResult.html#v:javascriptResultUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveJavascriptResultMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveJavascriptResultMethod "ref" o = JavascriptResultRefMethodInfo
    ResolveJavascriptResultMethod "unref" o = JavascriptResultUnrefMethodInfo
    ResolveJavascriptResultMethod "getJsValue" o = JavascriptResultGetJsValueMethodInfo
    ResolveJavascriptResultMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveJavascriptResultMethod t JavascriptResult, O.OverloadedMethod info JavascriptResult p) => OL.IsLabel t (JavascriptResult -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveJavascriptResultMethod t JavascriptResult, O.OverloadedMethod info JavascriptResult p, R.HasField t JavascriptResult p) => R.HasField t JavascriptResult p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveJavascriptResultMethod t JavascriptResult, O.OverloadedMethodInfo info JavascriptResult) => OL.IsLabel t (O.MethodProxy info JavascriptResult) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


