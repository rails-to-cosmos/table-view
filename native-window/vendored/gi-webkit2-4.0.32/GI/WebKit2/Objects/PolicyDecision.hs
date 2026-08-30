{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A pending policy decision.
-- 
-- Often WebKit allows the client to decide the policy for certain
-- operations. For instance, a client may want to open a link in a new
-- tab, block a navigation entirely, query the user or trigger a download
-- instead of a navigation. In these cases WebKit will fire the
-- [WebView::decidePolicy]("GI.WebKit2.Objects.WebView#g:signal:decidePolicy") signal with a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
-- object. If the signal handler does nothing, WebKit will act as if
-- 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse' was called as soon as signal handling
-- completes. To make a policy decision asynchronously, simply increment
-- the reference count of the t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision' object.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.PolicyDecision
    ( 

-- * Exported types
    PolicyDecision(..)                      ,
    IsPolicyDecision                        ,
    toPolicyDecision                        ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [download]("GI.WebKit2.Objects.PolicyDecision#g:method:download"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [ignore]("GI.WebKit2.Objects.PolicyDecision#g:method:ignore"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [use]("GI.WebKit2.Objects.PolicyDecision#g:method:use"), [useWithPolicies]("GI.WebKit2.Objects.PolicyDecision#g:method:useWithPolicies"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolvePolicyDecisionMethod             ,
#endif

-- ** download #method:download#

#if defined(ENABLE_OVERLOADING)
    PolicyDecisionDownloadMethodInfo        ,
#endif
    policyDecisionDownload                  ,


-- ** ignore #method:ignore#

#if defined(ENABLE_OVERLOADING)
    PolicyDecisionIgnoreMethodInfo          ,
#endif
    policyDecisionIgnore                    ,


-- ** use #method:use#

#if defined(ENABLE_OVERLOADING)
    PolicyDecisionUseMethodInfo             ,
#endif
    policyDecisionUse                       ,


-- ** useWithPolicies #method:useWithPolicies#

#if defined(ENABLE_OVERLOADING)
    PolicyDecisionUseWithPoliciesMethodInfo ,
#endif
    policyDecisionUseWithPolicies           ,




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
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies

#endif

-- | Memory-managed wrapper type.
newtype PolicyDecision = PolicyDecision (SP.ManagedPtr PolicyDecision)
    deriving (Eq)

instance SP.ManagedPtrNewtype PolicyDecision where
    toManagedPtr (PolicyDecision p) = p

foreign import ccall "webkit_policy_decision_get_type"
    c_webkit_policy_decision_get_type :: IO B.Types.GType

instance B.Types.TypedObject PolicyDecision where
    glibType = c_webkit_policy_decision_get_type

instance B.Types.GObject PolicyDecision

-- | Type class for types which can be safely cast to t'PolicyDecision', for instance with `toPolicyDecision`.
class (SP.GObject o, O.IsDescendantOf PolicyDecision o) => IsPolicyDecision o
instance (SP.GObject o, O.IsDescendantOf PolicyDecision o) => IsPolicyDecision o

instance O.HasParentTypes PolicyDecision
type instance O.ParentTypes PolicyDecision = '[GObject.Object.Object]

-- | Cast to t'PolicyDecision', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPolicyDecision :: (MIO.MonadIO m, IsPolicyDecision o) => o -> m PolicyDecision
toPolicyDecision = MIO.liftIO . B.ManagedPtr.unsafeCastTo PolicyDecision

-- | Convert t'PolicyDecision' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PolicyDecision) where
    gvalueGType_ = c_webkit_policy_decision_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr PolicyDecision)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr PolicyDecision)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject PolicyDecision ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolvePolicyDecisionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePolicyDecisionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePolicyDecisionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePolicyDecisionMethod "download" o = PolicyDecisionDownloadMethodInfo
    ResolvePolicyDecisionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePolicyDecisionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePolicyDecisionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePolicyDecisionMethod "ignore" o = PolicyDecisionIgnoreMethodInfo
    ResolvePolicyDecisionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePolicyDecisionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePolicyDecisionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePolicyDecisionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePolicyDecisionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePolicyDecisionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePolicyDecisionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePolicyDecisionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePolicyDecisionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePolicyDecisionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePolicyDecisionMethod "use" o = PolicyDecisionUseMethodInfo
    ResolvePolicyDecisionMethod "useWithPolicies" o = PolicyDecisionUseWithPoliciesMethodInfo
    ResolvePolicyDecisionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePolicyDecisionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePolicyDecisionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePolicyDecisionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePolicyDecisionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePolicyDecisionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePolicyDecisionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePolicyDecisionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePolicyDecisionMethod t PolicyDecision, O.OverloadedMethod info PolicyDecision p) => OL.IsLabel t (PolicyDecision -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePolicyDecisionMethod t PolicyDecision, O.OverloadedMethod info PolicyDecision p, R.HasField t PolicyDecision p) => R.HasField t PolicyDecision p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePolicyDecisionMethod t PolicyDecision, O.OverloadedMethodInfo info PolicyDecision) => OL.IsLabel t (O.MethodProxy info PolicyDecision) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PolicyDecision
type instance O.AttributeList PolicyDecision = PolicyDecisionAttributeList
type PolicyDecisionAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PolicyDecision = PolicyDecisionSignalList
type PolicyDecisionSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method PolicyDecision::download
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PolicyDecision" }
--           , argCType = Just "WebKitPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPolicyDecision"
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

foreign import ccall "webkit_policy_decision_download" webkit_policy_decision_download :: 
    Ptr PolicyDecision ->                   -- decision : TInterface (Name {namespace = "WebKit2", name = "PolicyDecision"})
    IO ()

-- | Spawn a download from this decision.
policyDecisionDownload ::
    (B.CallStack.HasCallStack, MonadIO m, IsPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
    -> m ()
policyDecisionDownload decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    webkit_policy_decision_download decision'
    touchManagedPtr decision
    return ()

#if defined(ENABLE_OVERLOADING)
data PolicyDecisionDownloadMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPolicyDecision a) => O.OverloadedMethod PolicyDecisionDownloadMethodInfo a signature where
    overloadedMethod = policyDecisionDownload

instance O.OverloadedMethodInfo PolicyDecisionDownloadMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PolicyDecision.policyDecisionDownload",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PolicyDecision.html#v:policyDecisionDownload"
        })


#endif

-- method PolicyDecision::ignore
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PolicyDecision" }
--           , argCType = Just "WebKitPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPolicyDecision"
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

foreign import ccall "webkit_policy_decision_ignore" webkit_policy_decision_ignore :: 
    Ptr PolicyDecision ->                   -- decision : TInterface (Name {namespace = "WebKit2", name = "PolicyDecision"})
    IO ()

-- | t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision', this would cancel the request.
-- 
-- Ignore the action which triggered this decision. For instance, for a
-- t'GI.WebKit2.Objects.ResponsePolicyDecision.ResponsePolicyDecision', this would cancel the request.
policyDecisionIgnore ::
    (B.CallStack.HasCallStack, MonadIO m, IsPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
    -> m ()
policyDecisionIgnore decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    webkit_policy_decision_ignore decision'
    touchManagedPtr decision
    return ()

#if defined(ENABLE_OVERLOADING)
data PolicyDecisionIgnoreMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPolicyDecision a) => O.OverloadedMethod PolicyDecisionIgnoreMethodInfo a signature where
    overloadedMethod = policyDecisionIgnore

instance O.OverloadedMethodInfo PolicyDecisionIgnoreMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PolicyDecision.policyDecisionIgnore",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PolicyDecision.html#v:policyDecisionIgnore"
        })


#endif

-- method PolicyDecision::use
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PolicyDecision" }
--           , argCType = Just "WebKitPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPolicyDecision"
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

foreign import ccall "webkit_policy_decision_use" webkit_policy_decision_use :: 
    Ptr PolicyDecision ->                   -- decision : TInterface (Name {namespace = "WebKit2", name = "PolicyDecision"})
    IO ()

-- | Accept the action which triggered this decision.
policyDecisionUse ::
    (B.CallStack.HasCallStack, MonadIO m, IsPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
    -> m ()
policyDecisionUse decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    webkit_policy_decision_use decision'
    touchManagedPtr decision
    return ()

#if defined(ENABLE_OVERLOADING)
data PolicyDecisionUseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPolicyDecision a) => O.OverloadedMethod PolicyDecisionUseMethodInfo a signature where
    overloadedMethod = policyDecisionUse

instance O.OverloadedMethodInfo PolicyDecisionUseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PolicyDecision.policyDecisionUse",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PolicyDecision.html#v:policyDecisionUse"
        })


#endif

-- method PolicyDecision::use_with_policies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "PolicyDecision" }
--           , argCType = Just "WebKitPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPolicyDecision"
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
--           { argCName = "policies"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebsitePolicies" }
--           , argCType = Just "WebKitWebsitePolicies*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebsitePolicies"
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

foreign import ccall "webkit_policy_decision_use_with_policies" webkit_policy_decision_use_with_policies :: 
    Ptr PolicyDecision ->                   -- decision : TInterface (Name {namespace = "WebKit2", name = "PolicyDecision"})
    Ptr WebKit2.WebsitePolicies.WebsitePolicies -> -- policies : TInterface (Name {namespace = "WebKit2", name = "WebsitePolicies"})
    IO ()

-- | Accept the navigation action and continue with provided /@policies@/.
-- 
-- Accept the navigation action which triggered this decision, and
-- continue with /@policies@/ affecting all subsequent loads of resources
-- in the origin associated with the accepted navigation action.
-- 
-- For example, a navigation decision to a video sharing website may
-- be accepted under the priviso no movies are allowed to autoplay. The
-- autoplay policy in this case would be set in the /@policies@/.
-- 
-- /Since: 2.30/
policyDecisionUseWithPolicies ::
    (B.CallStack.HasCallStack, MonadIO m, IsPolicyDecision a, WebKit2.WebsitePolicies.IsWebsitePolicies b) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
    -> b
    -- ^ /@policies@/: a t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'
    -> m ()
policyDecisionUseWithPolicies decision policies = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    policies' <- unsafeManagedPtrCastPtr policies
    webkit_policy_decision_use_with_policies decision' policies'
    touchManagedPtr decision
    touchManagedPtr policies
    return ()

#if defined(ENABLE_OVERLOADING)
data PolicyDecisionUseWithPoliciesMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPolicyDecision a, WebKit2.WebsitePolicies.IsWebsitePolicies b) => O.OverloadedMethod PolicyDecisionUseWithPoliciesMethodInfo a signature where
    overloadedMethod = policyDecisionUseWithPolicies

instance O.OverloadedMethodInfo PolicyDecisionUseWithPoliciesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PolicyDecision.policyDecisionUseWithPolicies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PolicyDecision.html#v:policyDecisionUseWithPolicies"
        })


#endif


