{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Describes a third party origin.
-- 
-- /Since: 2.30/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.ITPThirdParty
    ( 

-- * Exported types
    ITPThirdParty(..)                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.ITPThirdParty#g:method:ref"), [unref]("GI.WebKit2.Structs.ITPThirdParty#g:method:unref").
-- 
-- ==== Getters
-- [getDomain]("GI.WebKit2.Structs.ITPThirdParty#g:method:getDomain"), [getFirstParties]("GI.WebKit2.Structs.ITPThirdParty#g:method:getFirstParties").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveITPThirdPartyMethod              ,
#endif

-- ** getDomain #method:getDomain#

#if defined(ENABLE_OVERLOADING)
    ITPThirdPartyGetDomainMethodInfo        ,
#endif
    iTPThirdPartyGetDomain                  ,


-- ** getFirstParties #method:getFirstParties#

#if defined(ENABLE_OVERLOADING)
    ITPThirdPartyGetFirstPartiesMethodInfo  ,
#endif
    iTPThirdPartyGetFirstParties            ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    ITPThirdPartyRefMethodInfo              ,
#endif
    iTPThirdPartyRef                        ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    ITPThirdPartyUnrefMethodInfo            ,
#endif
    iTPThirdPartyUnref                      ,




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
import qualified GI.GLib.Structs.DateTime as GLib.DateTime
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPFirstParty as WebKit2.ITPFirstParty

#else
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPFirstParty as WebKit2.ITPFirstParty

#endif

-- | Memory-managed wrapper type.
newtype ITPThirdParty = ITPThirdParty (SP.ManagedPtr ITPThirdParty)
    deriving (Eq)

instance SP.ManagedPtrNewtype ITPThirdParty where
    toManagedPtr (ITPThirdParty p) = p

foreign import ccall "webkit_itp_third_party_get_type" c_webkit_itp_third_party_get_type :: 
    IO GType

type instance O.ParentTypes ITPThirdParty = '[]
instance O.HasParentTypes ITPThirdParty

instance B.Types.TypedObject ITPThirdParty where
    glibType = c_webkit_itp_third_party_get_type

instance B.Types.GBoxed ITPThirdParty

-- | Convert t'ITPThirdParty' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ITPThirdParty) where
    gvalueGType_ = c_webkit_itp_third_party_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr ITPThirdParty)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr ITPThirdParty)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed ITPThirdParty ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ITPThirdParty
type instance O.AttributeList ITPThirdParty = ITPThirdPartyAttributeList
type ITPThirdPartyAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method ITPThirdParty::get_domain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_third_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPThirdParty" }
--           , argCType = Just "WebKitITPThirdParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPThirdParty"
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

foreign import ccall "webkit_itp_third_party_get_domain" webkit_itp_third_party_get_domain :: 
    Ptr ITPThirdParty ->                    -- itp_third_party : TInterface (Name {namespace = "WebKit2", name = "ITPThirdParty"})
    IO CString

-- | Get the domain name of /@itpThirdParty@/.
-- 
-- /Since: 2.30/
iTPThirdPartyGetDomain ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPThirdParty
    -- ^ /@itpThirdParty@/: a t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
    -> m T.Text
    -- ^ __Returns:__ the domain name
iTPThirdPartyGetDomain itpThirdParty = liftIO $ do
    itpThirdParty' <- unsafeManagedPtrGetPtr itpThirdParty
    result <- webkit_itp_third_party_get_domain itpThirdParty'
    checkUnexpectedReturnNULL "iTPThirdPartyGetDomain" result
    result' <- cstringToText result
    touchManagedPtr itpThirdParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPThirdPartyGetDomainMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod ITPThirdPartyGetDomainMethodInfo ITPThirdParty signature where
    overloadedMethod = iTPThirdPartyGetDomain

instance O.OverloadedMethodInfo ITPThirdPartyGetDomainMethodInfo ITPThirdParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyGetDomain",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPThirdParty.html#v:iTPThirdPartyGetDomain"
        })


#endif

-- method ITPThirdParty::get_first_parties
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_third_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPThirdParty" }
--           , argCType = Just "WebKitITPThirdParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPThirdParty"
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
--               (TGList
--                  (TInterface
--                     Name { namespace = "WebKit2" , name = "ITPFirstParty" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_itp_third_party_get_first_parties" webkit_itp_third_party_get_first_parties :: 
    Ptr ITPThirdParty ->                    -- itp_third_party : TInterface (Name {namespace = "WebKit2", name = "ITPThirdParty"})
    IO (Ptr (GList (Ptr WebKit2.ITPFirstParty.ITPFirstParty)))

-- | Get the list of t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty' under which /@itpThirdParty@/ has been seen.
-- 
-- /Since: 2.30/
iTPThirdPartyGetFirstParties ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPThirdParty
    -- ^ /@itpThirdParty@/: a t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
    -> m [WebKit2.ITPFirstParty.ITPFirstParty]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
iTPThirdPartyGetFirstParties itpThirdParty = liftIO $ do
    itpThirdParty' <- unsafeManagedPtrGetPtr itpThirdParty
    result <- webkit_itp_third_party_get_first_parties itpThirdParty'
    result' <- unpackGList result
    result'' <- mapM (newBoxed WebKit2.ITPFirstParty.ITPFirstParty) result'
    touchManagedPtr itpThirdParty
    return result''

#if defined(ENABLE_OVERLOADING)
data ITPThirdPartyGetFirstPartiesMethodInfo
instance (signature ~ (m [WebKit2.ITPFirstParty.ITPFirstParty]), MonadIO m) => O.OverloadedMethod ITPThirdPartyGetFirstPartiesMethodInfo ITPThirdParty signature where
    overloadedMethod = iTPThirdPartyGetFirstParties

instance O.OverloadedMethodInfo ITPThirdPartyGetFirstPartiesMethodInfo ITPThirdParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyGetFirstParties",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPThirdParty.html#v:iTPThirdPartyGetFirstParties"
        })


#endif

-- method ITPThirdParty::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_third_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPThirdParty" }
--           , argCType = Just "WebKitITPThirdParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPThirdParty"
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
--                  Name { namespace = "WebKit2" , name = "ITPThirdParty" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_itp_third_party_ref" webkit_itp_third_party_ref :: 
    Ptr ITPThirdParty ->                    -- itp_third_party : TInterface (Name {namespace = "WebKit2", name = "ITPThirdParty"})
    IO (Ptr ITPThirdParty)

-- | Atomically increments the reference count of /@itpThirdParty@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.30/
iTPThirdPartyRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPThirdParty
    -- ^ /@itpThirdParty@/: a t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
    -> m ITPThirdParty
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
iTPThirdPartyRef itpThirdParty = liftIO $ do
    itpThirdParty' <- unsafeManagedPtrGetPtr itpThirdParty
    result <- webkit_itp_third_party_ref itpThirdParty'
    checkUnexpectedReturnNULL "iTPThirdPartyRef" result
    result' <- (wrapBoxed ITPThirdParty) result
    touchManagedPtr itpThirdParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPThirdPartyRefMethodInfo
instance (signature ~ (m ITPThirdParty), MonadIO m) => O.OverloadedMethod ITPThirdPartyRefMethodInfo ITPThirdParty signature where
    overloadedMethod = iTPThirdPartyRef

instance O.OverloadedMethodInfo ITPThirdPartyRefMethodInfo ITPThirdParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPThirdParty.html#v:iTPThirdPartyRef"
        })


#endif

-- method ITPThirdParty::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_third_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPThirdParty" }
--           , argCType = Just "WebKitITPThirdParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPThirdParty"
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

foreign import ccall "webkit_itp_third_party_unref" webkit_itp_third_party_unref :: 
    Ptr ITPThirdParty ->                    -- itp_third_party : TInterface (Name {namespace = "WebKit2", name = "ITPThirdParty"})
    IO ()

-- | Atomically decrements the reference count of /@itpThirdParty@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty' is released. This function is MT-safe and may be
-- called from any thread.
-- 
-- /Since: 2.30/
iTPThirdPartyUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPThirdParty
    -- ^ /@itpThirdParty@/: a t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'
    -> m ()
iTPThirdPartyUnref itpThirdParty = liftIO $ do
    itpThirdParty' <- unsafeManagedPtrGetPtr itpThirdParty
    webkit_itp_third_party_unref itpThirdParty'
    touchManagedPtr itpThirdParty
    return ()

#if defined(ENABLE_OVERLOADING)
data ITPThirdPartyUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ITPThirdPartyUnrefMethodInfo ITPThirdParty signature where
    overloadedMethod = iTPThirdPartyUnref

instance O.OverloadedMethodInfo ITPThirdPartyUnrefMethodInfo ITPThirdParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPThirdParty.html#v:iTPThirdPartyUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveITPThirdPartyMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveITPThirdPartyMethod "ref" o = ITPThirdPartyRefMethodInfo
    ResolveITPThirdPartyMethod "unref" o = ITPThirdPartyUnrefMethodInfo
    ResolveITPThirdPartyMethod "getDomain" o = ITPThirdPartyGetDomainMethodInfo
    ResolveITPThirdPartyMethod "getFirstParties" o = ITPThirdPartyGetFirstPartiesMethodInfo
    ResolveITPThirdPartyMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveITPThirdPartyMethod t ITPThirdParty, O.OverloadedMethod info ITPThirdParty p) => OL.IsLabel t (ITPThirdParty -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveITPThirdPartyMethod t ITPThirdParty, O.OverloadedMethod info ITPThirdParty p, R.HasField t ITPThirdParty p) => R.HasField t ITPThirdParty p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveITPThirdPartyMethod t ITPThirdParty, O.OverloadedMethodInfo info ITPThirdParty) => OL.IsLabel t (O.MethodProxy info ITPThirdParty) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


