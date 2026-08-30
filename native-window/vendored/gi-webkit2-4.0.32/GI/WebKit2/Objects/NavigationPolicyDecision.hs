{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A policy decision for navigation actions.
-- 
-- WebKitNavigationPolicyDecision represents a policy decision for events associated with
-- navigations. If the value of [NavigationPolicyDecision:mouseButton]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:mouseButton") is not 0, then
-- the navigation was triggered by a mouse event.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.NavigationPolicyDecision
    ( 

-- * Exported types
    NavigationPolicyDecision(..)            ,
    IsNavigationPolicyDecision              ,
    toNavigationPolicyDecision              ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [download]("GI.WebKit2.Objects.PolicyDecision#g:method:download"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [ignore]("GI.WebKit2.Objects.PolicyDecision#g:method:ignore"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [use]("GI.WebKit2.Objects.PolicyDecision#g:method:use"), [useWithPolicies]("GI.WebKit2.Objects.PolicyDecision#g:method:useWithPolicies"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getFrameName]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getFrameName"), [getModifiers]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getModifiers"), [getMouseButton]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getMouseButton"), [getNavigationAction]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getNavigationAction"), [getNavigationType]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getNavigationType"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRequest]("GI.WebKit2.Objects.NavigationPolicyDecision#g:method:getRequest").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveNavigationPolicyDecisionMethod   ,
#endif

-- ** getFrameName #method:getFrameName#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetFrameNameMethodInfo,
#endif
    navigationPolicyDecisionGetFrameName    ,


-- ** getModifiers #method:getModifiers#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetModifiersMethodInfo,
#endif
    navigationPolicyDecisionGetModifiers    ,


-- ** getMouseButton #method:getMouseButton#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetMouseButtonMethodInfo,
#endif
    navigationPolicyDecisionGetMouseButton  ,


-- ** getNavigationAction #method:getNavigationAction#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetNavigationActionMethodInfo,
#endif
    navigationPolicyDecisionGetNavigationAction,


-- ** getNavigationType #method:getNavigationType#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetNavigationTypeMethodInfo,
#endif
    navigationPolicyDecisionGetNavigationType,


-- ** getRequest #method:getRequest#

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionGetRequestMethodInfo,
#endif
    navigationPolicyDecisionGetRequest      ,




 -- * Properties


-- ** frameName #attr:frameName#
-- | If this navigation request targets a new frame, this property contains
-- the name of that frame. For example if the decision was triggered by clicking a
-- link with a target attribute equal to \"_blank\", this property will contain the
-- value of that attribute. In all other cases, this value will be 'P.Nothing'.

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionFrameNamePropertyInfo,
#endif
    getNavigationPolicyDecisionFrameName    ,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionFrameName       ,
#endif


-- ** modifiers #attr:modifiers#
-- | If the navigation associated with this policy decision was originally
-- triggered by a mouse event, this property contains a bitmask of various
-- t'GI.Gdk.Flags.ModifierType' values describing the modifiers used for that click.
-- If the navigation was not triggered by a mouse event or no modifiers
-- were active, the value of this property will be zero.

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionModifiersPropertyInfo,
#endif
    getNavigationPolicyDecisionModifiers    ,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionModifiers       ,
#endif


-- ** mouseButton #attr:mouseButton#
-- | If the navigation associated with this policy decision was originally
-- triggered by a mouse event, this property contains non-zero button number
-- of the button triggering that event. The button numbers match those from GDK.
-- If the navigation was not triggered by a mouse event, the value of this
-- property will be 0.

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionMouseButtonPropertyInfo,
#endif
    getNavigationPolicyDecisionMouseButton  ,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionMouseButton     ,
#endif


-- ** navigationAction #attr:navigationAction#
-- | The t'GI.WebKit2.Structs.NavigationAction.NavigationAction' that triggered this policy decision.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionNavigationActionPropertyInfo,
#endif
    getNavigationPolicyDecisionNavigationAction,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionNavigationAction,
#endif


-- ** navigationType #attr:navigationType#
-- | The type of navigation that triggered this policy decision. This is
-- useful for enacting different policies depending on what type of user
-- action caused the navigation.

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionNavigationTypePropertyInfo,
#endif
    getNavigationPolicyDecisionNavigationType,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionNavigationType  ,
#endif


-- ** request #attr:request#
-- | This property contains the t'GI.WebKit2.Objects.URIRequest.URIRequest' associated with this
-- navigation.

#if defined(ENABLE_OVERLOADING)
    NavigationPolicyDecisionRequestPropertyInfo,
#endif
    getNavigationPolicyDecisionRequest      ,
#if defined(ENABLE_OVERLOADING)
    navigationPolicyDecisionRequest         ,
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
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NavigationAction as WebKit2.NavigationAction

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NavigationAction as WebKit2.NavigationAction

#endif

-- | Memory-managed wrapper type.
newtype NavigationPolicyDecision = NavigationPolicyDecision (SP.ManagedPtr NavigationPolicyDecision)
    deriving (Eq)

instance SP.ManagedPtrNewtype NavigationPolicyDecision where
    toManagedPtr (NavigationPolicyDecision p) = p

foreign import ccall "webkit_navigation_policy_decision_get_type"
    c_webkit_navigation_policy_decision_get_type :: IO B.Types.GType

instance B.Types.TypedObject NavigationPolicyDecision where
    glibType = c_webkit_navigation_policy_decision_get_type

instance B.Types.GObject NavigationPolicyDecision

-- | Type class for types which can be safely cast to t'NavigationPolicyDecision', for instance with `toNavigationPolicyDecision`.
class (SP.GObject o, O.IsDescendantOf NavigationPolicyDecision o) => IsNavigationPolicyDecision o
instance (SP.GObject o, O.IsDescendantOf NavigationPolicyDecision o) => IsNavigationPolicyDecision o

instance O.HasParentTypes NavigationPolicyDecision
type instance O.ParentTypes NavigationPolicyDecision = '[WebKit2.PolicyDecision.PolicyDecision, GObject.Object.Object]

-- | Cast to t'NavigationPolicyDecision', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toNavigationPolicyDecision :: (MIO.MonadIO m, IsNavigationPolicyDecision o) => o -> m NavigationPolicyDecision
toNavigationPolicyDecision = MIO.liftIO . B.ManagedPtr.unsafeCastTo NavigationPolicyDecision

-- | Convert t'NavigationPolicyDecision' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe NavigationPolicyDecision) where
    gvalueGType_ = c_webkit_navigation_policy_decision_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr NavigationPolicyDecision)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr NavigationPolicyDecision)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject NavigationPolicyDecision ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveNavigationPolicyDecisionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveNavigationPolicyDecisionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNavigationPolicyDecisionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNavigationPolicyDecisionMethod "download" o = WebKit2.PolicyDecision.PolicyDecisionDownloadMethodInfo
    ResolveNavigationPolicyDecisionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNavigationPolicyDecisionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNavigationPolicyDecisionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNavigationPolicyDecisionMethod "ignore" o = WebKit2.PolicyDecision.PolicyDecisionIgnoreMethodInfo
    ResolveNavigationPolicyDecisionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNavigationPolicyDecisionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNavigationPolicyDecisionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNavigationPolicyDecisionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNavigationPolicyDecisionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNavigationPolicyDecisionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNavigationPolicyDecisionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNavigationPolicyDecisionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNavigationPolicyDecisionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNavigationPolicyDecisionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNavigationPolicyDecisionMethod "use" o = WebKit2.PolicyDecision.PolicyDecisionUseMethodInfo
    ResolveNavigationPolicyDecisionMethod "useWithPolicies" o = WebKit2.PolicyDecision.PolicyDecisionUseWithPoliciesMethodInfo
    ResolveNavigationPolicyDecisionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNavigationPolicyDecisionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNavigationPolicyDecisionMethod "getFrameName" o = NavigationPolicyDecisionGetFrameNameMethodInfo
    ResolveNavigationPolicyDecisionMethod "getModifiers" o = NavigationPolicyDecisionGetModifiersMethodInfo
    ResolveNavigationPolicyDecisionMethod "getMouseButton" o = NavigationPolicyDecisionGetMouseButtonMethodInfo
    ResolveNavigationPolicyDecisionMethod "getNavigationAction" o = NavigationPolicyDecisionGetNavigationActionMethodInfo
    ResolveNavigationPolicyDecisionMethod "getNavigationType" o = NavigationPolicyDecisionGetNavigationTypeMethodInfo
    ResolveNavigationPolicyDecisionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNavigationPolicyDecisionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNavigationPolicyDecisionMethod "getRequest" o = NavigationPolicyDecisionGetRequestMethodInfo
    ResolveNavigationPolicyDecisionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNavigationPolicyDecisionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNavigationPolicyDecisionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNavigationPolicyDecisionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNavigationPolicyDecisionMethod t NavigationPolicyDecision, O.OverloadedMethod info NavigationPolicyDecision p) => OL.IsLabel t (NavigationPolicyDecision -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveNavigationPolicyDecisionMethod t NavigationPolicyDecision, O.OverloadedMethod info NavigationPolicyDecision p, R.HasField t NavigationPolicyDecision p) => R.HasField t NavigationPolicyDecision p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveNavigationPolicyDecisionMethod t NavigationPolicyDecision, O.OverloadedMethodInfo info NavigationPolicyDecision) => OL.IsLabel t (O.MethodProxy info NavigationPolicyDecision) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "frame-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@frame-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #frameName
-- @
getNavigationPolicyDecisionFrameName :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m (Maybe T.Text)
getNavigationPolicyDecisionFrameName obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "frame-name"

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionFrameNamePropertyInfo
instance AttrInfo NavigationPolicyDecisionFrameNamePropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionFrameNamePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NavigationPolicyDecisionFrameNamePropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionFrameNamePropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionFrameNamePropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionFrameNamePropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionFrameNamePropertyInfo = (Maybe T.Text)
    type AttrLabel NavigationPolicyDecisionFrameNamePropertyInfo = "frame-name"
    type AttrOrigin NavigationPolicyDecisionFrameNamePropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionFrameName
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.frameName"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:frameName"
        })
#endif

-- VVV Prop "modifiers"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@modifiers@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #modifiers
-- @
getNavigationPolicyDecisionModifiers :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m Word32
getNavigationPolicyDecisionModifiers obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "modifiers"

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionModifiersPropertyInfo
instance AttrInfo NavigationPolicyDecisionModifiersPropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionModifiersPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint NavigationPolicyDecisionModifiersPropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionModifiersPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionModifiersPropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionModifiersPropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionModifiersPropertyInfo = Word32
    type AttrLabel NavigationPolicyDecisionModifiersPropertyInfo = "modifiers"
    type AttrOrigin NavigationPolicyDecisionModifiersPropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionModifiers
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.modifiers"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:modifiers"
        })
#endif

-- VVV Prop "mouse-button"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@mouse-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #mouseButton
-- @
getNavigationPolicyDecisionMouseButton :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m Word32
getNavigationPolicyDecisionMouseButton obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "mouse-button"

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionMouseButtonPropertyInfo
instance AttrInfo NavigationPolicyDecisionMouseButtonPropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionMouseButtonPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint NavigationPolicyDecisionMouseButtonPropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionMouseButtonPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionMouseButtonPropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionMouseButtonPropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionMouseButtonPropertyInfo = Word32
    type AttrLabel NavigationPolicyDecisionMouseButtonPropertyInfo = "mouse-button"
    type AttrOrigin NavigationPolicyDecisionMouseButtonPropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionMouseButton
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.mouseButton"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:mouseButton"
        })
#endif

-- VVV Prop "navigation-action"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@navigation-action@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #navigationAction
-- @
getNavigationPolicyDecisionNavigationAction :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m WebKit2.NavigationAction.NavigationAction
getNavigationPolicyDecisionNavigationAction obj = MIO.liftIO $ checkUnexpectedNothing "getNavigationPolicyDecisionNavigationAction" $ B.Properties.getObjectPropertyBoxed obj "navigation-action" WebKit2.NavigationAction.NavigationAction

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionNavigationActionPropertyInfo
instance AttrInfo NavigationPolicyDecisionNavigationActionPropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionNavigationActionPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NavigationPolicyDecisionNavigationActionPropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionNavigationActionPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionNavigationActionPropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionNavigationActionPropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionNavigationActionPropertyInfo = WebKit2.NavigationAction.NavigationAction
    type AttrLabel NavigationPolicyDecisionNavigationActionPropertyInfo = "navigation-action"
    type AttrOrigin NavigationPolicyDecisionNavigationActionPropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionNavigationAction
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationAction"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:navigationAction"
        })
#endif

-- VVV Prop "navigation-type"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "NavigationType"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@navigation-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #navigationType
-- @
getNavigationPolicyDecisionNavigationType :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m WebKit2.Enums.NavigationType
getNavigationPolicyDecisionNavigationType obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "navigation-type"

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionNavigationTypePropertyInfo
instance AttrInfo NavigationPolicyDecisionNavigationTypePropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionNavigationTypePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint NavigationPolicyDecisionNavigationTypePropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionNavigationTypePropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionNavigationTypePropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionNavigationTypePropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionNavigationTypePropertyInfo = WebKit2.Enums.NavigationType
    type AttrLabel NavigationPolicyDecisionNavigationTypePropertyInfo = "navigation-type"
    type AttrOrigin NavigationPolicyDecisionNavigationTypePropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionNavigationType
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationType"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:navigationType"
        })
#endif

-- VVV Prop "request"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@request@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' navigationPolicyDecision #request
-- @
getNavigationPolicyDecisionRequest :: (MonadIO m, IsNavigationPolicyDecision o) => o -> m WebKit2.URIRequest.URIRequest
getNavigationPolicyDecisionRequest obj = MIO.liftIO $ checkUnexpectedNothing "getNavigationPolicyDecisionRequest" $ B.Properties.getObjectPropertyObject obj "request" WebKit2.URIRequest.URIRequest

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionRequestPropertyInfo
instance AttrInfo NavigationPolicyDecisionRequestPropertyInfo where
    type AttrAllowedOps NavigationPolicyDecisionRequestPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NavigationPolicyDecisionRequestPropertyInfo = IsNavigationPolicyDecision
    type AttrSetTypeConstraint NavigationPolicyDecisionRequestPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NavigationPolicyDecisionRequestPropertyInfo = (~) ()
    type AttrTransferType NavigationPolicyDecisionRequestPropertyInfo = ()
    type AttrGetType NavigationPolicyDecisionRequestPropertyInfo = WebKit2.URIRequest.URIRequest
    type AttrLabel NavigationPolicyDecisionRequestPropertyInfo = "request"
    type AttrOrigin NavigationPolicyDecisionRequestPropertyInfo = NavigationPolicyDecision
    attrGet = getNavigationPolicyDecisionRequest
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.request"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#g:attr:request"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NavigationPolicyDecision
type instance O.AttributeList NavigationPolicyDecision = NavigationPolicyDecisionAttributeList
type NavigationPolicyDecisionAttributeList = ('[ '("frameName", NavigationPolicyDecisionFrameNamePropertyInfo), '("modifiers", NavigationPolicyDecisionModifiersPropertyInfo), '("mouseButton", NavigationPolicyDecisionMouseButtonPropertyInfo), '("navigationAction", NavigationPolicyDecisionNavigationActionPropertyInfo), '("navigationType", NavigationPolicyDecisionNavigationTypePropertyInfo), '("request", NavigationPolicyDecisionRequestPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
navigationPolicyDecisionFrameName :: AttrLabelProxy "frameName"
navigationPolicyDecisionFrameName = AttrLabelProxy

navigationPolicyDecisionModifiers :: AttrLabelProxy "modifiers"
navigationPolicyDecisionModifiers = AttrLabelProxy

navigationPolicyDecisionMouseButton :: AttrLabelProxy "mouseButton"
navigationPolicyDecisionMouseButton = AttrLabelProxy

navigationPolicyDecisionNavigationAction :: AttrLabelProxy "navigationAction"
navigationPolicyDecisionNavigationAction = AttrLabelProxy

navigationPolicyDecisionNavigationType :: AttrLabelProxy "navigationType"
navigationPolicyDecisionNavigationType = AttrLabelProxy

navigationPolicyDecisionRequest :: AttrLabelProxy "request"
navigationPolicyDecisionRequest = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NavigationPolicyDecision = NavigationPolicyDecisionSignalList
type NavigationPolicyDecisionSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method NavigationPolicyDecision::get_frame_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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

foreign import ccall "webkit_navigation_policy_decision_get_frame_name" webkit_navigation_policy_decision_get_frame_name :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO CString

{-# DEPRECATED navigationPolicyDecisionGetFrameName ["(Since version 2.40)","Use 'GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction' instead."] #-}
-- | Gets the value of the [NavigationPolicyDecision:frameName]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:frameName") property.
navigationPolicyDecisionGetFrameName ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The name of the new frame this navigation action targets or 'P.Nothing'
navigationPolicyDecisionGetFrameName decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_frame_name decision'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr decision
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetFrameNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetFrameNameMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetFrameName

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetFrameNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetFrameName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetFrameName"
        })


#endif

-- method NavigationPolicyDecision::get_modifiers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_policy_decision_get_modifiers" webkit_navigation_policy_decision_get_modifiers :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO Word32

{-# DEPRECATED navigationPolicyDecisionGetModifiers ["(Since version 2.6)","Use 'GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction' instead."] #-}
-- | Gets the value of the [NavigationPolicyDecision:modifiers]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:modifiers") property.
navigationPolicyDecisionGetModifiers ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m Word32
    -- ^ __Returns:__ The modifiers active if this decision was triggered by a mouse event
navigationPolicyDecisionGetModifiers decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_modifiers decision'
    touchManagedPtr decision
    return result

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetModifiersMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetModifiersMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetModifiers

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetModifiersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetModifiers",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetModifiers"
        })


#endif

-- method NavigationPolicyDecision::get_mouse_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_policy_decision_get_mouse_button" webkit_navigation_policy_decision_get_mouse_button :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO Word32

{-# DEPRECATED navigationPolicyDecisionGetMouseButton ["(Since version 2.6)","Use 'GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction' instead."] #-}
-- | Gets the value of the [NavigationPolicyDecision:mouseButton]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:mouseButton") property.
navigationPolicyDecisionGetMouseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m Word32
    -- ^ __Returns:__ The mouse button used if this decision was triggered by a mouse event or 0 otherwise
navigationPolicyDecisionGetMouseButton decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_mouse_button decision'
    touchManagedPtr decision
    return result

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetMouseButtonMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetMouseButtonMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetMouseButton

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetMouseButtonMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetMouseButton",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetMouseButton"
        })


#endif

-- method NavigationPolicyDecision::get_navigation_action
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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
--                  Name { namespace = "WebKit2" , name = "NavigationAction" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_policy_decision_get_navigation_action" webkit_navigation_policy_decision_get_navigation_action :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO (Ptr WebKit2.NavigationAction.NavigationAction)

-- | Gets the value of the [NavigationPolicyDecision:navigationAction]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:navigationAction") property.
-- 
-- /Since: 2.6/
navigationPolicyDecisionGetNavigationAction ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m WebKit2.NavigationAction.NavigationAction
    -- ^ __Returns:__ The t'GI.WebKit2.Structs.NavigationAction.NavigationAction' triggering this policy decision.
navigationPolicyDecisionGetNavigationAction decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_navigation_action decision'
    checkUnexpectedReturnNULL "navigationPolicyDecisionGetNavigationAction" result
    result' <- (newBoxed WebKit2.NavigationAction.NavigationAction) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetNavigationActionMethodInfo
instance (signature ~ (m WebKit2.NavigationAction.NavigationAction), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetNavigationActionMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetNavigationAction

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetNavigationActionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetNavigationAction"
        })


#endif

-- method NavigationPolicyDecision::get_navigation_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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
--                  Name { namespace = "WebKit2" , name = "NavigationType" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_policy_decision_get_navigation_type" webkit_navigation_policy_decision_get_navigation_type :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO CUInt

{-# DEPRECATED navigationPolicyDecisionGetNavigationType ["(Since version 2.6)","Use 'GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction' instead."] #-}
-- | Gets the value of the [NavigationPolicyDecision:navigationType]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:navigationType") property.
navigationPolicyDecisionGetNavigationType ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m WebKit2.Enums.NavigationType
    -- ^ __Returns:__ The type of navigation triggering this policy decision.
navigationPolicyDecisionGetNavigationType decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_navigation_type decision'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetNavigationTypeMethodInfo
instance (signature ~ (m WebKit2.Enums.NavigationType), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetNavigationTypeMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetNavigationType

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetNavigationTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetNavigationType"
        })


#endif

-- method NavigationPolicyDecision::get_request
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decision"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationPolicyDecision" }
--           , argCType = Just "WebKitNavigationPolicyDecision*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationPolicyDecision"
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIRequest" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_policy_decision_get_request" webkit_navigation_policy_decision_get_request :: 
    Ptr NavigationPolicyDecision ->         -- decision : TInterface (Name {namespace = "WebKit2", name = "NavigationPolicyDecision"})
    IO (Ptr WebKit2.URIRequest.URIRequest)

{-# DEPRECATED navigationPolicyDecisionGetRequest ["(Since version 2.6)","Use 'GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetNavigationAction' instead."] #-}
-- | Gets the value of the [NavigationPolicyDecision:request]("GI.WebKit2.Objects.NavigationPolicyDecision#g:attr:request") property.
navigationPolicyDecisionGetRequest ::
    (B.CallStack.HasCallStack, MonadIO m, IsNavigationPolicyDecision a) =>
    a
    -- ^ /@decision@/: a t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision'
    -> m WebKit2.URIRequest.URIRequest
    -- ^ __Returns:__ The URI request that is associated with this navigation
navigationPolicyDecisionGetRequest decision = liftIO $ do
    decision' <- unsafeManagedPtrCastPtr decision
    result <- webkit_navigation_policy_decision_get_request decision'
    checkUnexpectedReturnNULL "navigationPolicyDecisionGetRequest" result
    result' <- (newObject WebKit2.URIRequest.URIRequest) result
    touchManagedPtr decision
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationPolicyDecisionGetRequestMethodInfo
instance (signature ~ (m WebKit2.URIRequest.URIRequest), MonadIO m, IsNavigationPolicyDecision a) => O.OverloadedMethod NavigationPolicyDecisionGetRequestMethodInfo a signature where
    overloadedMethod = navigationPolicyDecisionGetRequest

instance O.OverloadedMethodInfo NavigationPolicyDecisionGetRequestMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.NavigationPolicyDecision.navigationPolicyDecisionGetRequest",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-NavigationPolicyDecision.html#v:navigationPolicyDecisionGetRequest"
        })


#endif


