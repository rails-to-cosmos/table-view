{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A reply for a script message received.
-- If no reply has been sent by the user, an automatically generated reply with
-- undefined value with be sent.
-- 
-- /Since: 2.40/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.ScriptMessageReply
    ( 

-- * Exported types
    ScriptMessageReply(..)                  ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.ScriptMessageReply#g:method:ref"), [returnErrorMessage]("GI.WebKit2.Structs.ScriptMessageReply#g:method:returnErrorMessage"), [returnValue]("GI.WebKit2.Structs.ScriptMessageReply#g:method:returnValue"), [unref]("GI.WebKit2.Structs.ScriptMessageReply#g:method:unref").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveScriptMessageReplyMethod         ,
#endif

-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    ScriptMessageReplyRefMethodInfo         ,
#endif
    scriptMessageReplyRef                   ,


-- ** returnErrorMessage #method:returnErrorMessage#

#if defined(ENABLE_OVERLOADING)
    ScriptMessageReplyReturnErrorMessageMethodInfo,
#endif
    scriptMessageReplyReturnErrorMessage    ,


-- ** returnValue #method:returnValue#

#if defined(ENABLE_OVERLOADING)
    ScriptMessageReplyReturnValueMethodInfo ,
#endif
    scriptMessageReplyReturnValue           ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    ScriptMessageReplyUnrefMethodInfo       ,
#endif
    scriptMessageReplyUnref                 ,




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
newtype ScriptMessageReply = ScriptMessageReply (SP.ManagedPtr ScriptMessageReply)
    deriving (Eq)

instance SP.ManagedPtrNewtype ScriptMessageReply where
    toManagedPtr (ScriptMessageReply p) = p

foreign import ccall "webkit_script_message_reply_get_type" c_webkit_script_message_reply_get_type :: 
    IO GType

type instance O.ParentTypes ScriptMessageReply = '[]
instance O.HasParentTypes ScriptMessageReply

instance B.Types.TypedObject ScriptMessageReply where
    glibType = c_webkit_script_message_reply_get_type

instance B.Types.GBoxed ScriptMessageReply

-- | Convert t'ScriptMessageReply' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ScriptMessageReply) where
    gvalueGType_ = c_webkit_script_message_reply_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr ScriptMessageReply)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr ScriptMessageReply)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed ScriptMessageReply ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScriptMessageReply
type instance O.AttributeList ScriptMessageReply = ScriptMessageReplyAttributeList
type ScriptMessageReplyAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method ScriptMessageReply::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "script_message_reply"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ScriptMessageReply" }
--           , argCType = Just "WebKitScriptMessageReply*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitScriptMessageReply"
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
--                  Name { namespace = "WebKit2" , name = "ScriptMessageReply" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_script_message_reply_ref" webkit_script_message_reply_ref :: 
    Ptr ScriptMessageReply ->               -- script_message_reply : TInterface (Name {namespace = "WebKit2", name = "ScriptMessageReply"})
    IO (Ptr ScriptMessageReply)

-- | Atomically increments the reference count of /@scriptMessageReply@/ by one.
-- 
-- /Since: 2.40/
scriptMessageReplyRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptMessageReply
    -- ^ /@scriptMessageReply@/: A t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply'
    -> m ScriptMessageReply
    -- ^ __Returns:__ the /@scriptMessageReply@/ passed in.
scriptMessageReplyRef scriptMessageReply = liftIO $ do
    scriptMessageReply' <- unsafeManagedPtrGetPtr scriptMessageReply
    result <- webkit_script_message_reply_ref scriptMessageReply'
    checkUnexpectedReturnNULL "scriptMessageReplyRef" result
    result' <- (wrapBoxed ScriptMessageReply) result
    touchManagedPtr scriptMessageReply
    return result'

#if defined(ENABLE_OVERLOADING)
data ScriptMessageReplyRefMethodInfo
instance (signature ~ (m ScriptMessageReply), MonadIO m) => O.OverloadedMethod ScriptMessageReplyRefMethodInfo ScriptMessageReply signature where
    overloadedMethod = scriptMessageReplyRef

instance O.OverloadedMethodInfo ScriptMessageReplyRefMethodInfo ScriptMessageReply where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptMessageReply.html#v:scriptMessageReplyRef"
        })


#endif

-- method ScriptMessageReply::return_error_message
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "script_message_reply"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ScriptMessageReply" }
--           , argCType = Just "WebKitScriptMessageReply*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitScriptMessageReply"
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
--           { argCName = "error_message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "An error message to return as specified by the user's script message"
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

foreign import ccall "webkit_script_message_reply_return_error_message" webkit_script_message_reply_return_error_message :: 
    Ptr ScriptMessageReply ->               -- script_message_reply : TInterface (Name {namespace = "WebKit2", name = "ScriptMessageReply"})
    CString ->                              -- error_message : TBasicType TUTF8
    IO ()

-- | Reply to a script message with an error message.
-- 
-- /Since: 2.40/
scriptMessageReplyReturnErrorMessage ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptMessageReply
    -- ^ /@scriptMessageReply@/: A t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply'
    -> T.Text
    -- ^ /@errorMessage@/: An error message to return as specified by the user\'s script message
    -> m ()
scriptMessageReplyReturnErrorMessage scriptMessageReply errorMessage = liftIO $ do
    scriptMessageReply' <- unsafeManagedPtrGetPtr scriptMessageReply
    errorMessage' <- textToCString errorMessage
    webkit_script_message_reply_return_error_message scriptMessageReply' errorMessage'
    touchManagedPtr scriptMessageReply
    freeMem errorMessage'
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptMessageReplyReturnErrorMessageMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m) => O.OverloadedMethod ScriptMessageReplyReturnErrorMessageMethodInfo ScriptMessageReply signature where
    overloadedMethod = scriptMessageReplyReturnErrorMessage

instance O.OverloadedMethodInfo ScriptMessageReplyReturnErrorMessageMethodInfo ScriptMessageReply where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyReturnErrorMessage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptMessageReply.html#v:scriptMessageReplyReturnErrorMessage"
        })


#endif

-- method ScriptMessageReply::return_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "script_message_reply"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ScriptMessageReply" }
--           , argCType = Just "WebKitScriptMessageReply*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitScriptMessageReply"
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
--           { argCName = "reply_value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Reply value of the provided script message"
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

foreign import ccall "webkit_script_message_reply_return_value" webkit_script_message_reply_return_value :: 
    Ptr ScriptMessageReply ->               -- script_message_reply : TInterface (Name {namespace = "WebKit2", name = "ScriptMessageReply"})
    Ptr JavaScriptCore.Value.Value ->       -- reply_value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO ()

-- | Reply to a script message with a value.
-- 
-- This function can be called twice for passing the reply value in.
-- 
-- /Since: 2.40/
scriptMessageReplyReturnValue ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Value.IsValue a) =>
    ScriptMessageReply
    -- ^ /@scriptMessageReply@/: A t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply'
    -> a
    -- ^ /@replyValue@/: Reply value of the provided script message
    -> m ()
scriptMessageReplyReturnValue scriptMessageReply replyValue = liftIO $ do
    scriptMessageReply' <- unsafeManagedPtrGetPtr scriptMessageReply
    replyValue' <- unsafeManagedPtrCastPtr replyValue
    webkit_script_message_reply_return_value scriptMessageReply' replyValue'
    touchManagedPtr scriptMessageReply
    touchManagedPtr replyValue
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptMessageReplyReturnValueMethodInfo
instance (signature ~ (a -> m ()), MonadIO m, JavaScriptCore.Value.IsValue a) => O.OverloadedMethod ScriptMessageReplyReturnValueMethodInfo ScriptMessageReply signature where
    overloadedMethod = scriptMessageReplyReturnValue

instance O.OverloadedMethodInfo ScriptMessageReplyReturnValueMethodInfo ScriptMessageReply where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyReturnValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptMessageReply.html#v:scriptMessageReplyReturnValue"
        })


#endif

-- method ScriptMessageReply::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "script_message_reply"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ScriptMessageReply" }
--           , argCType = Just "WebKitScriptMessageReply*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitScriptMessageReply"
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

foreign import ccall "webkit_script_message_reply_unref" webkit_script_message_reply_unref :: 
    Ptr ScriptMessageReply ->               -- script_message_reply : TInterface (Name {namespace = "WebKit2", name = "ScriptMessageReply"})
    IO ()

-- | Atomically decrements the reference count of /@scriptMessageReply@/ by one.
-- 
-- If the reference count drops to 0, all the memory allocated by the
-- t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply' is released. This function is MT-safe and may
-- be called from any thread.
-- 
-- /Since: 2.40/
scriptMessageReplyUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptMessageReply
    -- ^ /@scriptMessageReply@/: A t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply'
    -> m ()
scriptMessageReplyUnref scriptMessageReply = liftIO $ do
    scriptMessageReply' <- unsafeManagedPtrGetPtr scriptMessageReply
    webkit_script_message_reply_unref scriptMessageReply'
    touchManagedPtr scriptMessageReply
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptMessageReplyUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ScriptMessageReplyUnrefMethodInfo ScriptMessageReply signature where
    overloadedMethod = scriptMessageReplyUnref

instance O.OverloadedMethodInfo ScriptMessageReplyUnrefMethodInfo ScriptMessageReply where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptMessageReply.html#v:scriptMessageReplyUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveScriptMessageReplyMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveScriptMessageReplyMethod "ref" o = ScriptMessageReplyRefMethodInfo
    ResolveScriptMessageReplyMethod "returnErrorMessage" o = ScriptMessageReplyReturnErrorMessageMethodInfo
    ResolveScriptMessageReplyMethod "returnValue" o = ScriptMessageReplyReturnValueMethodInfo
    ResolveScriptMessageReplyMethod "unref" o = ScriptMessageReplyUnrefMethodInfo
    ResolveScriptMessageReplyMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScriptMessageReplyMethod t ScriptMessageReply, O.OverloadedMethod info ScriptMessageReply p) => OL.IsLabel t (ScriptMessageReply -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveScriptMessageReplyMethod t ScriptMessageReply, O.OverloadedMethod info ScriptMessageReply p, R.HasField t ScriptMessageReply p) => R.HasField t ScriptMessageReply p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveScriptMessageReplyMethod t ScriptMessageReply, O.OverloadedMethodInfo info ScriptMessageReply) => OL.IsLabel t (O.MethodProxy info ScriptMessageReply) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


