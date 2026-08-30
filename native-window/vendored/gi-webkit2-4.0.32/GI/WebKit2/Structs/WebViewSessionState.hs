{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Handles serialization of a web view\'s browsing state.
-- 
-- /Since: 2.12/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.WebViewSessionState
    ( 

-- * Exported types
    WebViewSessionState(..)                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.WebViewSessionState#g:method:ref"), [serialize]("GI.WebKit2.Structs.WebViewSessionState#g:method:serialize"), [unref]("GI.WebKit2.Structs.WebViewSessionState#g:method:unref").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveWebViewSessionStateMethod        ,
#endif

-- ** new #method:new#

    webViewSessionStateNew                  ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    WebViewSessionStateRefMethodInfo        ,
#endif
    webViewSessionStateRef                  ,


-- ** serialize #method:serialize#

#if defined(ENABLE_OVERLOADING)
    WebViewSessionStateSerializeMethodInfo  ,
#endif
    webViewSessionStateSerialize            ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    WebViewSessionStateUnrefMethodInfo      ,
#endif
    webViewSessionStateUnref                ,




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
import qualified GI.GLib.Structs.Bytes as GLib.Bytes

#else
import qualified GI.GLib.Structs.Bytes as GLib.Bytes

#endif

-- | Memory-managed wrapper type.
newtype WebViewSessionState = WebViewSessionState (SP.ManagedPtr WebViewSessionState)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebViewSessionState where
    toManagedPtr (WebViewSessionState p) = p

foreign import ccall "webkit_web_view_session_state_get_type" c_webkit_web_view_session_state_get_type :: 
    IO GType

type instance O.ParentTypes WebViewSessionState = '[]
instance O.HasParentTypes WebViewSessionState

instance B.Types.TypedObject WebViewSessionState where
    glibType = c_webkit_web_view_session_state_get_type

instance B.Types.GBoxed WebViewSessionState

-- | Convert t'WebViewSessionState' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebViewSessionState) where
    gvalueGType_ = c_webkit_web_view_session_state_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr WebViewSessionState)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr WebViewSessionState)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed WebViewSessionState ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebViewSessionState
type instance O.AttributeList WebViewSessionState = WebViewSessionStateAttributeList
type WebViewSessionStateAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method WebViewSessionState::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data"
--           , argType = TInterface Name { namespace = "GLib" , name = "Bytes" }
--           , argCType = Just "GBytes*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GBytes" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "WebViewSessionState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_session_state_new" webkit_web_view_session_state_new :: 
    Ptr GLib.Bytes.Bytes ->                 -- data : TInterface (Name {namespace = "GLib", name = "Bytes"})
    IO (Ptr WebViewSessionState)

-- | Creates a new t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState' from serialized data.
-- 
-- /Since: 2.12/
webViewSessionStateNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GLib.Bytes.Bytes
    -- ^ /@data@/: a t'GI.GLib.Structs.Bytes.Bytes'
    -> m WebViewSessionState
    -- ^ __Returns:__ a new t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState', or 'P.Nothing' if /@data@/ doesn\'t contain a
    --     valid serialized t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'.
webViewSessionStateNew data_ = liftIO $ do
    data_' <- unsafeManagedPtrGetPtr data_
    result <- webkit_web_view_session_state_new data_'
    checkUnexpectedReturnNULL "webViewSessionStateNew" result
    result' <- (wrapBoxed WebViewSessionState) result
    touchManagedPtr data_
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebViewSessionState::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebViewSessionState" }
--           , argCType = Just "WebKitWebViewSessionState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebViewSessionState"
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
--                  Name { namespace = "WebKit2" , name = "WebViewSessionState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_session_state_ref" webkit_web_view_session_state_ref :: 
    Ptr WebViewSessionState ->              -- state : TInterface (Name {namespace = "WebKit2", name = "WebViewSessionState"})
    IO (Ptr WebViewSessionState)

-- | Atomically increments the reference count of /@state@/ by one.
-- 
-- This
-- function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.12/
webViewSessionStateRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebViewSessionState
    -- ^ /@state@/: a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
    -> m WebViewSessionState
    -- ^ __Returns:__ The passed in t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
webViewSessionStateRef state = liftIO $ do
    state' <- unsafeManagedPtrGetPtr state
    result <- webkit_web_view_session_state_ref state'
    checkUnexpectedReturnNULL "webViewSessionStateRef" result
    result' <- (wrapBoxed WebViewSessionState) result
    touchManagedPtr state
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewSessionStateRefMethodInfo
instance (signature ~ (m WebViewSessionState), MonadIO m) => O.OverloadedMethod WebViewSessionStateRefMethodInfo WebViewSessionState signature where
    overloadedMethod = webViewSessionStateRef

instance O.OverloadedMethodInfo WebViewSessionStateRefMethodInfo WebViewSessionState where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebViewSessionState.webViewSessionStateRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebViewSessionState.html#v:webViewSessionStateRef"
        })


#endif

-- method WebViewSessionState::serialize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebViewSessionState" }
--           , argCType = Just "WebKitWebViewSessionState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebViewSessionState"
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
-- returnType: Just (TInterface Name { namespace = "GLib" , name = "Bytes" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_session_state_serialize" webkit_web_view_session_state_serialize :: 
    Ptr WebViewSessionState ->              -- state : TInterface (Name {namespace = "WebKit2", name = "WebViewSessionState"})
    IO (Ptr GLib.Bytes.Bytes)

-- | Serializes a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'.
-- 
-- /Since: 2.12/
webViewSessionStateSerialize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebViewSessionState
    -- ^ /@state@/: a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
    -> m GLib.Bytes.Bytes
    -- ^ __Returns:__ a t'GI.GLib.Structs.Bytes.Bytes' containing the /@state@/ serialized.
webViewSessionStateSerialize state = liftIO $ do
    state' <- unsafeManagedPtrGetPtr state
    result <- webkit_web_view_session_state_serialize state'
    checkUnexpectedReturnNULL "webViewSessionStateSerialize" result
    result' <- (wrapBoxed GLib.Bytes.Bytes) result
    touchManagedPtr state
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewSessionStateSerializeMethodInfo
instance (signature ~ (m GLib.Bytes.Bytes), MonadIO m) => O.OverloadedMethod WebViewSessionStateSerializeMethodInfo WebViewSessionState signature where
    overloadedMethod = webViewSessionStateSerialize

instance O.OverloadedMethodInfo WebViewSessionStateSerializeMethodInfo WebViewSessionState where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebViewSessionState.webViewSessionStateSerialize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebViewSessionState.html#v:webViewSessionStateSerialize"
        })


#endif

-- method WebViewSessionState::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebViewSessionState" }
--           , argCType = Just "WebKitWebViewSessionState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebViewSessionState"
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

foreign import ccall "webkit_web_view_session_state_unref" webkit_web_view_session_state_unref :: 
    Ptr WebViewSessionState ->              -- state : TInterface (Name {namespace = "WebKit2", name = "WebViewSessionState"})
    IO ()

-- | Atomically decrements the reference count of /@state@/ by one.
-- 
-- If the
-- reference count drops to 0, all memory allocated by the t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState' is
-- released. This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.12/
webViewSessionStateUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebViewSessionState
    -- ^ /@state@/: a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
    -> m ()
webViewSessionStateUnref state = liftIO $ do
    state' <- unsafeManagedPtrGetPtr state
    webkit_web_view_session_state_unref state'
    touchManagedPtr state
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSessionStateUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod WebViewSessionStateUnrefMethodInfo WebViewSessionState signature where
    overloadedMethod = webViewSessionStateUnref

instance O.OverloadedMethodInfo WebViewSessionStateUnrefMethodInfo WebViewSessionState where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.WebViewSessionState.webViewSessionStateUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-WebViewSessionState.html#v:webViewSessionStateUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveWebViewSessionStateMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebViewSessionStateMethod "ref" o = WebViewSessionStateRefMethodInfo
    ResolveWebViewSessionStateMethod "serialize" o = WebViewSessionStateSerializeMethodInfo
    ResolveWebViewSessionStateMethod "unref" o = WebViewSessionStateUnrefMethodInfo
    ResolveWebViewSessionStateMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebViewSessionStateMethod t WebViewSessionState, O.OverloadedMethod info WebViewSessionState p) => OL.IsLabel t (WebViewSessionState -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebViewSessionStateMethod t WebViewSessionState, O.OverloadedMethod info WebViewSessionState p, R.HasField t WebViewSessionState p) => R.HasField t WebViewSessionState p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebViewSessionStateMethod t WebViewSessionState, O.OverloadedMethodInfo info WebViewSessionState) => OL.IsLabel t (O.MethodProxy info WebViewSessionState) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


