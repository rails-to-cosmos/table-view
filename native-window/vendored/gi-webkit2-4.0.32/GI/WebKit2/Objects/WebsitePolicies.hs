{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- View specific website policies.
-- 
-- WebKitWebsitePolicies allows you to configure per-page policies,
-- currently only autoplay policies are supported.
-- 
-- /Since: 2.30/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebsitePolicies
    ( 

-- * Exported types
    WebsitePolicies(..)                     ,
    IsWebsitePolicies                       ,
    toWebsitePolicies                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAutoplayPolicy]("GI.WebKit2.Objects.WebsitePolicies#g:method:getAutoplayPolicy"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWebsitePoliciesMethod            ,
#endif

-- ** getAutoplayPolicy #method:getAutoplayPolicy#

#if defined(ENABLE_OVERLOADING)
    WebsitePoliciesGetAutoplayPolicyMethodInfo,
#endif
    websitePoliciesGetAutoplayPolicy        ,


-- ** new #method:new#

    websitePoliciesNew                      ,




 -- * Properties


-- ** autoplay #attr:autoplay#
-- | The t'GI.WebKit2.Enums.AutoplayPolicy' of t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebsitePoliciesAutoplayPropertyInfo     ,
#endif
    constructWebsitePoliciesAutoplay        ,
    getWebsitePoliciesAutoplay              ,
#if defined(ENABLE_OVERLOADING)
    websitePoliciesAutoplay                 ,
#endif




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

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#endif

-- | Memory-managed wrapper type.
newtype WebsitePolicies = WebsitePolicies (SP.ManagedPtr WebsitePolicies)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebsitePolicies where
    toManagedPtr (WebsitePolicies p) = p

foreign import ccall "webkit_website_policies_get_type"
    c_webkit_website_policies_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebsitePolicies where
    glibType = c_webkit_website_policies_get_type

instance B.Types.GObject WebsitePolicies

-- | Type class for types which can be safely cast to t'WebsitePolicies', for instance with `toWebsitePolicies`.
class (SP.GObject o, O.IsDescendantOf WebsitePolicies o) => IsWebsitePolicies o
instance (SP.GObject o, O.IsDescendantOf WebsitePolicies o) => IsWebsitePolicies o

instance O.HasParentTypes WebsitePolicies
type instance O.ParentTypes WebsitePolicies = '[GObject.Object.Object]

-- | Cast to t'WebsitePolicies', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebsitePolicies :: (MIO.MonadIO m, IsWebsitePolicies o) => o -> m WebsitePolicies
toWebsitePolicies = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebsitePolicies

-- | Convert t'WebsitePolicies' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebsitePolicies) where
    gvalueGType_ = c_webkit_website_policies_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebsitePolicies)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebsitePolicies)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebsitePolicies ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebsitePoliciesMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebsitePoliciesMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebsitePoliciesMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebsitePoliciesMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebsitePoliciesMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebsitePoliciesMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebsitePoliciesMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebsitePoliciesMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebsitePoliciesMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebsitePoliciesMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebsitePoliciesMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebsitePoliciesMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebsitePoliciesMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebsitePoliciesMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebsitePoliciesMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebsitePoliciesMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebsitePoliciesMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebsitePoliciesMethod "getAutoplayPolicy" o = WebsitePoliciesGetAutoplayPolicyMethodInfo
    ResolveWebsitePoliciesMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebsitePoliciesMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebsitePoliciesMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebsitePoliciesMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebsitePoliciesMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebsitePoliciesMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebsitePoliciesMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebsitePoliciesMethod t WebsitePolicies, O.OverloadedMethod info WebsitePolicies p) => OL.IsLabel t (WebsitePolicies -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebsitePoliciesMethod t WebsitePolicies, O.OverloadedMethod info WebsitePolicies p, R.HasField t WebsitePolicies p) => R.HasField t WebsitePolicies p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebsitePoliciesMethod t WebsitePolicies, O.OverloadedMethodInfo info WebsitePolicies) => OL.IsLabel t (O.MethodProxy info WebsitePolicies) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "autoplay"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "AutoplayPolicy"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@autoplay@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' websitePolicies #autoplay
-- @
getWebsitePoliciesAutoplay :: (MonadIO m, IsWebsitePolicies o) => o -> m WebKit2.Enums.AutoplayPolicy
getWebsitePoliciesAutoplay obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "autoplay"

-- | Construct a t'GValueConstruct' with valid value for the “@autoplay@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebsitePoliciesAutoplay :: (IsWebsitePolicies o, MIO.MonadIO m) => WebKit2.Enums.AutoplayPolicy -> m (GValueConstruct o)
constructWebsitePoliciesAutoplay val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "autoplay" val

#if defined(ENABLE_OVERLOADING)
data WebsitePoliciesAutoplayPropertyInfo
instance AttrInfo WebsitePoliciesAutoplayPropertyInfo where
    type AttrAllowedOps WebsitePoliciesAutoplayPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebsitePoliciesAutoplayPropertyInfo = IsWebsitePolicies
    type AttrSetTypeConstraint WebsitePoliciesAutoplayPropertyInfo = (~) WebKit2.Enums.AutoplayPolicy
    type AttrTransferTypeConstraint WebsitePoliciesAutoplayPropertyInfo = (~) WebKit2.Enums.AutoplayPolicy
    type AttrTransferType WebsitePoliciesAutoplayPropertyInfo = WebKit2.Enums.AutoplayPolicy
    type AttrGetType WebsitePoliciesAutoplayPropertyInfo = WebKit2.Enums.AutoplayPolicy
    type AttrLabel WebsitePoliciesAutoplayPropertyInfo = "autoplay"
    type AttrOrigin WebsitePoliciesAutoplayPropertyInfo = WebsitePolicies
    attrGet = getWebsitePoliciesAutoplay
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebsitePoliciesAutoplay
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsitePolicies.autoplay"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsitePolicies.html#g:attr:autoplay"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebsitePolicies
type instance O.AttributeList WebsitePolicies = WebsitePoliciesAttributeList
type WebsitePoliciesAttributeList = ('[ '("autoplay", WebsitePoliciesAutoplayPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
websitePoliciesAutoplay :: AttrLabelProxy "autoplay"
websitePoliciesAutoplay = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebsitePolicies = WebsitePoliciesSignalList
type WebsitePoliciesSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebsitePolicies::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebsitePolicies" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_policies_new" webkit_website_policies_new :: 
    IO (Ptr WebsitePolicies)

-- | Create a new t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'.
-- 
-- /Since: 2.30/
websitePoliciesNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebsitePolicies
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'
websitePoliciesNew  = liftIO $ do
    result <- webkit_website_policies_new
    checkUnexpectedReturnNULL "websitePoliciesNew" result
    result' <- (wrapObject WebsitePolicies) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebsitePolicies::get_autoplay_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "AutoplayPolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_website_policies_get_autoplay_policy" webkit_website_policies_get_autoplay_policy :: 
    Ptr WebsitePolicies ->                  -- policies : TInterface (Name {namespace = "WebKit2", name = "WebsitePolicies"})
    IO CUInt

-- | Get the [WebsitePolicies:autoplay]("GI.WebKit2.Objects.WebsitePolicies#g:attr:autoplay") property.
-- 
-- /Since: 2.30/
websitePoliciesGetAutoplayPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebsitePolicies a) =>
    a
    -- ^ /@policies@/: a t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'
    -> m WebKit2.Enums.AutoplayPolicy
    -- ^ __Returns:__ t'GI.WebKit2.Enums.AutoplayPolicy'
websitePoliciesGetAutoplayPolicy policies = liftIO $ do
    policies' <- unsafeManagedPtrCastPtr policies
    result <- webkit_website_policies_get_autoplay_policy policies'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr policies
    return result'

#if defined(ENABLE_OVERLOADING)
data WebsitePoliciesGetAutoplayPolicyMethodInfo
instance (signature ~ (m WebKit2.Enums.AutoplayPolicy), MonadIO m, IsWebsitePolicies a) => O.OverloadedMethod WebsitePoliciesGetAutoplayPolicyMethodInfo a signature where
    overloadedMethod = websitePoliciesGetAutoplayPolicy

instance O.OverloadedMethodInfo WebsitePoliciesGetAutoplayPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebsitePolicies.websitePoliciesGetAutoplayPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebsitePolicies.html#v:websitePoliciesGetAutoplayPolicy"
        })


#endif


