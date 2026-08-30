{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Describes a first party origin.
-- 
-- /Since: 2.30/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.ITPFirstParty
    ( 

-- * Exported types
    ITPFirstParty(..)                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [ref]("GI.WebKit2.Structs.ITPFirstParty#g:method:ref"), [unref]("GI.WebKit2.Structs.ITPFirstParty#g:method:unref").
-- 
-- ==== Getters
-- [getDomain]("GI.WebKit2.Structs.ITPFirstParty#g:method:getDomain"), [getLastUpdateTime]("GI.WebKit2.Structs.ITPFirstParty#g:method:getLastUpdateTime"), [getWebsiteDataAccessAllowed]("GI.WebKit2.Structs.ITPFirstParty#g:method:getWebsiteDataAccessAllowed").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveITPFirstPartyMethod              ,
#endif

-- ** getDomain #method:getDomain#

#if defined(ENABLE_OVERLOADING)
    ITPFirstPartyGetDomainMethodInfo        ,
#endif
    iTPFirstPartyGetDomain                  ,


-- ** getLastUpdateTime #method:getLastUpdateTime#

#if defined(ENABLE_OVERLOADING)
    ITPFirstPartyGetLastUpdateTimeMethodInfo,
#endif
    iTPFirstPartyGetLastUpdateTime          ,


-- ** getWebsiteDataAccessAllowed #method:getWebsiteDataAccessAllowed#

#if defined(ENABLE_OVERLOADING)
    ITPFirstPartyGetWebsiteDataAccessAllowedMethodInfo,
#endif
    iTPFirstPartyGetWebsiteDataAccessAllowed,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    ITPFirstPartyRefMethodInfo              ,
#endif
    iTPFirstPartyRef                        ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    ITPFirstPartyUnrefMethodInfo            ,
#endif
    iTPFirstPartyUnref                      ,




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

#else
import qualified GI.GLib.Structs.DateTime as GLib.DateTime

#endif

-- | Memory-managed wrapper type.
newtype ITPFirstParty = ITPFirstParty (SP.ManagedPtr ITPFirstParty)
    deriving (Eq)

instance SP.ManagedPtrNewtype ITPFirstParty where
    toManagedPtr (ITPFirstParty p) = p

foreign import ccall "webkit_itp_first_party_get_type" c_webkit_itp_first_party_get_type :: 
    IO GType

type instance O.ParentTypes ITPFirstParty = '[]
instance O.HasParentTypes ITPFirstParty

instance B.Types.TypedObject ITPFirstParty where
    glibType = c_webkit_itp_first_party_get_type

instance B.Types.GBoxed ITPFirstParty

-- | Convert t'ITPFirstParty' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ITPFirstParty) where
    gvalueGType_ = c_webkit_itp_first_party_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr ITPFirstParty)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr ITPFirstParty)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed ITPFirstParty ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ITPFirstParty
type instance O.AttributeList ITPFirstParty = ITPFirstPartyAttributeList
type ITPFirstPartyAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method ITPFirstParty::get_domain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_first_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPFirstParty" }
--           , argCType = Just "WebKitITPFirstParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPFirstParty"
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

foreign import ccall "webkit_itp_first_party_get_domain" webkit_itp_first_party_get_domain :: 
    Ptr ITPFirstParty ->                    -- itp_first_party : TInterface (Name {namespace = "WebKit2", name = "ITPFirstParty"})
    IO CString

-- | Get the domain name of /@itpFirstParty@/.
-- 
-- /Since: 2.30/
iTPFirstPartyGetDomain ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPFirstParty
    -- ^ /@itpFirstParty@/: a t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
    -> m T.Text
    -- ^ __Returns:__ the domain name
iTPFirstPartyGetDomain itpFirstParty = liftIO $ do
    itpFirstParty' <- unsafeManagedPtrGetPtr itpFirstParty
    result <- webkit_itp_first_party_get_domain itpFirstParty'
    checkUnexpectedReturnNULL "iTPFirstPartyGetDomain" result
    result' <- cstringToText result
    touchManagedPtr itpFirstParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPFirstPartyGetDomainMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod ITPFirstPartyGetDomainMethodInfo ITPFirstParty signature where
    overloadedMethod = iTPFirstPartyGetDomain

instance O.OverloadedMethodInfo ITPFirstPartyGetDomainMethodInfo ITPFirstParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPFirstParty.iTPFirstPartyGetDomain",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPFirstParty.html#v:iTPFirstPartyGetDomain"
        })


#endif

-- method ITPFirstParty::get_last_update_time
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_first_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPFirstParty" }
--           , argCType = Just "WebKitITPFirstParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPFirstParty"
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
-- returnType: Just (TInterface Name { namespace = "GLib" , name = "DateTime" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_itp_first_party_get_last_update_time" webkit_itp_first_party_get_last_update_time :: 
    Ptr ITPFirstParty ->                    -- itp_first_party : TInterface (Name {namespace = "WebKit2", name = "ITPFirstParty"})
    IO (Ptr GLib.DateTime.DateTime)

-- | Get the last time a t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty' has been seen under /@itpFirstParty@/.
-- 
-- Each /@webKitITPFirstParty@/ is created by 'GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyGetFirstParties' and
-- therefore corresponds to exactly one t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'.
-- 
-- /Since: 2.30/
iTPFirstPartyGetLastUpdateTime ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPFirstParty
    -- ^ /@itpFirstParty@/: a t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
    -> m GLib.DateTime.DateTime
    -- ^ __Returns:__ the last update time as a t'GI.GLib.Structs.DateTime.DateTime'
iTPFirstPartyGetLastUpdateTime itpFirstParty = liftIO $ do
    itpFirstParty' <- unsafeManagedPtrGetPtr itpFirstParty
    result <- webkit_itp_first_party_get_last_update_time itpFirstParty'
    checkUnexpectedReturnNULL "iTPFirstPartyGetLastUpdateTime" result
    result' <- (newBoxed GLib.DateTime.DateTime) result
    touchManagedPtr itpFirstParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPFirstPartyGetLastUpdateTimeMethodInfo
instance (signature ~ (m GLib.DateTime.DateTime), MonadIO m) => O.OverloadedMethod ITPFirstPartyGetLastUpdateTimeMethodInfo ITPFirstParty signature where
    overloadedMethod = iTPFirstPartyGetLastUpdateTime

instance O.OverloadedMethodInfo ITPFirstPartyGetLastUpdateTimeMethodInfo ITPFirstParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPFirstParty.iTPFirstPartyGetLastUpdateTime",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPFirstParty.html#v:iTPFirstPartyGetLastUpdateTime"
        })


#endif

-- method ITPFirstParty::get_website_data_access_allowed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_first_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPFirstParty" }
--           , argCType = Just "WebKitITPFirstParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPFirstParty"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_itp_first_party_get_website_data_access_allowed" webkit_itp_first_party_get_website_data_access_allowed :: 
    Ptr ITPFirstParty ->                    -- itp_first_party : TInterface (Name {namespace = "WebKit2", name = "ITPFirstParty"})
    IO CInt

-- | Get whether /@itpFirstParty@/ has granted website data access to its t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'.
-- 
-- Each /@webKitITPFirstParty@/ is created by 'GI.WebKit2.Structs.ITPThirdParty.iTPThirdPartyGetFirstParties' and
-- therefore corresponds to exactly one t'GI.WebKit2.Structs.ITPThirdParty.ITPThirdParty'.
-- 
-- /Since: 2.30/
iTPFirstPartyGetWebsiteDataAccessAllowed ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPFirstParty
    -- ^ /@itpFirstParty@/: a t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if website data access has been granted, or 'P.False' otherwise
iTPFirstPartyGetWebsiteDataAccessAllowed itpFirstParty = liftIO $ do
    itpFirstParty' <- unsafeManagedPtrGetPtr itpFirstParty
    result <- webkit_itp_first_party_get_website_data_access_allowed itpFirstParty'
    let result' = (/= 0) result
    touchManagedPtr itpFirstParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPFirstPartyGetWebsiteDataAccessAllowedMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod ITPFirstPartyGetWebsiteDataAccessAllowedMethodInfo ITPFirstParty signature where
    overloadedMethod = iTPFirstPartyGetWebsiteDataAccessAllowed

instance O.OverloadedMethodInfo ITPFirstPartyGetWebsiteDataAccessAllowedMethodInfo ITPFirstParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPFirstParty.iTPFirstPartyGetWebsiteDataAccessAllowed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPFirstParty.html#v:iTPFirstPartyGetWebsiteDataAccessAllowed"
        })


#endif

-- method ITPFirstParty::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_first_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPFirstParty" }
--           , argCType = Just "WebKitITPFirstParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPFirstParty"
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
--                  Name { namespace = "WebKit2" , name = "ITPFirstParty" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_itp_first_party_ref" webkit_itp_first_party_ref :: 
    Ptr ITPFirstParty ->                    -- itp_first_party : TInterface (Name {namespace = "WebKit2", name = "ITPFirstParty"})
    IO (Ptr ITPFirstParty)

-- | Atomically increments the reference count of /@itpFirstParty@/ by one.
-- 
-- This function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.30/
iTPFirstPartyRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPFirstParty
    -- ^ /@itpFirstParty@/: a t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
    -> m ITPFirstParty
    -- ^ __Returns:__ The passed t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
iTPFirstPartyRef itpFirstParty = liftIO $ do
    itpFirstParty' <- unsafeManagedPtrGetPtr itpFirstParty
    result <- webkit_itp_first_party_ref itpFirstParty'
    checkUnexpectedReturnNULL "iTPFirstPartyRef" result
    result' <- (wrapBoxed ITPFirstParty) result
    touchManagedPtr itpFirstParty
    return result'

#if defined(ENABLE_OVERLOADING)
data ITPFirstPartyRefMethodInfo
instance (signature ~ (m ITPFirstParty), MonadIO m) => O.OverloadedMethod ITPFirstPartyRefMethodInfo ITPFirstParty signature where
    overloadedMethod = iTPFirstPartyRef

instance O.OverloadedMethodInfo ITPFirstPartyRefMethodInfo ITPFirstParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPFirstParty.iTPFirstPartyRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPFirstParty.html#v:iTPFirstPartyRef"
        })


#endif

-- method ITPFirstParty::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "itp_first_party"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ITPFirstParty" }
--           , argCType = Just "WebKitITPFirstParty*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitITPFirstParty"
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

foreign import ccall "webkit_itp_first_party_unref" webkit_itp_first_party_unref :: 
    Ptr ITPFirstParty ->                    -- itp_first_party : TInterface (Name {namespace = "WebKit2", name = "ITPFirstParty"})
    IO ()

-- | Atomically decrements the reference count of /@itpFirstParty@/ by one.
-- 
-- If the reference count drops to 0, all memory allocated by
-- t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty' is released. This function is MT-safe and may be
-- called from any thread.
-- 
-- /Since: 2.30/
iTPFirstPartyUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ITPFirstParty
    -- ^ /@itpFirstParty@/: a t'GI.WebKit2.Structs.ITPFirstParty.ITPFirstParty'
    -> m ()
iTPFirstPartyUnref itpFirstParty = liftIO $ do
    itpFirstParty' <- unsafeManagedPtrGetPtr itpFirstParty
    webkit_itp_first_party_unref itpFirstParty'
    touchManagedPtr itpFirstParty
    return ()

#if defined(ENABLE_OVERLOADING)
data ITPFirstPartyUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ITPFirstPartyUnrefMethodInfo ITPFirstParty signature where
    overloadedMethod = iTPFirstPartyUnref

instance O.OverloadedMethodInfo ITPFirstPartyUnrefMethodInfo ITPFirstParty where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ITPFirstParty.iTPFirstPartyUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ITPFirstParty.html#v:iTPFirstPartyUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveITPFirstPartyMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveITPFirstPartyMethod "ref" o = ITPFirstPartyRefMethodInfo
    ResolveITPFirstPartyMethod "unref" o = ITPFirstPartyUnrefMethodInfo
    ResolveITPFirstPartyMethod "getDomain" o = ITPFirstPartyGetDomainMethodInfo
    ResolveITPFirstPartyMethod "getLastUpdateTime" o = ITPFirstPartyGetLastUpdateTimeMethodInfo
    ResolveITPFirstPartyMethod "getWebsiteDataAccessAllowed" o = ITPFirstPartyGetWebsiteDataAccessAllowedMethodInfo
    ResolveITPFirstPartyMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveITPFirstPartyMethod t ITPFirstParty, O.OverloadedMethod info ITPFirstParty p) => OL.IsLabel t (ITPFirstParty -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveITPFirstPartyMethod t ITPFirstParty, O.OverloadedMethod info ITPFirstParty p, R.HasField t ITPFirstParty p) => R.HasField t ITPFirstParty p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveITPFirstPartyMethod t ITPFirstParty, O.OverloadedMethodInfo info ITPFirstParty) => OL.IsLabel t (O.MethodProxy info ITPFirstParty) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


