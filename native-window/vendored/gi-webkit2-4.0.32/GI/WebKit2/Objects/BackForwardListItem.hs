{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- One item of the t'GI.WebKit2.Objects.BackForwardList.BackForwardList'.
-- 
-- A history item is part of the t'GI.WebKit2.Objects.BackForwardList.BackForwardList' and consists
-- out of a title and a URI.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.BackForwardListItem
    ( 

-- * Exported types
    BackForwardListItem(..)                 ,
    IsBackForwardListItem                   ,
    toBackForwardListItem                   ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getOriginalUri]("GI.WebKit2.Objects.BackForwardListItem#g:method:getOriginalUri"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getTitle]("GI.WebKit2.Objects.BackForwardListItem#g:method:getTitle"), [getUri]("GI.WebKit2.Objects.BackForwardListItem#g:method:getUri").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveBackForwardListItemMethod        ,
#endif

-- ** getOriginalUri #method:getOriginalUri#

#if defined(ENABLE_OVERLOADING)
    BackForwardListItemGetOriginalUriMethodInfo,
#endif
    backForwardListItemGetOriginalUri       ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    BackForwardListItemGetTitleMethodInfo   ,
#endif
    backForwardListItemGetTitle             ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    BackForwardListItemGetUriMethodInfo     ,
#endif
    backForwardListItemGetUri               ,




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

#else
import qualified GI.GObject.Objects.Object as GObject.Object

#endif

-- | Memory-managed wrapper type.
newtype BackForwardListItem = BackForwardListItem (SP.ManagedPtr BackForwardListItem)
    deriving (Eq)

instance SP.ManagedPtrNewtype BackForwardListItem where
    toManagedPtr (BackForwardListItem p) = p

foreign import ccall "webkit_back_forward_list_item_get_type"
    c_webkit_back_forward_list_item_get_type :: IO B.Types.GType

instance B.Types.TypedObject BackForwardListItem where
    glibType = c_webkit_back_forward_list_item_get_type

instance B.Types.GObject BackForwardListItem

-- | Type class for types which can be safely cast to t'BackForwardListItem', for instance with `toBackForwardListItem`.
class (SP.GObject o, O.IsDescendantOf BackForwardListItem o) => IsBackForwardListItem o
instance (SP.GObject o, O.IsDescendantOf BackForwardListItem o) => IsBackForwardListItem o

instance O.HasParentTypes BackForwardListItem
type instance O.ParentTypes BackForwardListItem = '[GObject.Object.Object]

-- | Cast to t'BackForwardListItem', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toBackForwardListItem :: (MIO.MonadIO m, IsBackForwardListItem o) => o -> m BackForwardListItem
toBackForwardListItem = MIO.liftIO . B.ManagedPtr.unsafeCastTo BackForwardListItem

-- | Convert t'BackForwardListItem' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe BackForwardListItem) where
    gvalueGType_ = c_webkit_back_forward_list_item_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr BackForwardListItem)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr BackForwardListItem)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject BackForwardListItem ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveBackForwardListItemMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveBackForwardListItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBackForwardListItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBackForwardListItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBackForwardListItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBackForwardListItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBackForwardListItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBackForwardListItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBackForwardListItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBackForwardListItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBackForwardListItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBackForwardListItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBackForwardListItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBackForwardListItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBackForwardListItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBackForwardListItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBackForwardListItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBackForwardListItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBackForwardListItemMethod "getOriginalUri" o = BackForwardListItemGetOriginalUriMethodInfo
    ResolveBackForwardListItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBackForwardListItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBackForwardListItemMethod "getTitle" o = BackForwardListItemGetTitleMethodInfo
    ResolveBackForwardListItemMethod "getUri" o = BackForwardListItemGetUriMethodInfo
    ResolveBackForwardListItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBackForwardListItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBackForwardListItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBackForwardListItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBackForwardListItemMethod t BackForwardListItem, O.OverloadedMethod info BackForwardListItem p) => OL.IsLabel t (BackForwardListItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveBackForwardListItemMethod t BackForwardListItem, O.OverloadedMethod info BackForwardListItem p, R.HasField t BackForwardListItem p) => R.HasField t BackForwardListItem p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveBackForwardListItemMethod t BackForwardListItem, O.OverloadedMethodInfo info BackForwardListItem) => OL.IsLabel t (O.MethodProxy info BackForwardListItem) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList BackForwardListItem
type instance O.AttributeList BackForwardListItem = BackForwardListItemAttributeList
type BackForwardListItemAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList BackForwardListItem = BackForwardListItemSignalList
type BackForwardListItemSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method BackForwardListItem::get_original_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list_item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardListItem" }
--           , argCType = Just "WebKitBackForwardListItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardListItem"
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

foreign import ccall "webkit_back_forward_list_item_get_original_uri" webkit_back_forward_list_item_get_original_uri :: 
    Ptr BackForwardListItem ->              -- list_item : TInterface (Name {namespace = "WebKit2", name = "BackForwardListItem"})
    IO CString

-- | Obtain the original URI of the item.
-- 
-- See also 'GI.WebKit2.Objects.BackForwardListItem.backForwardListItemGetUri'.
backForwardListItemGetOriginalUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardListItem a) =>
    a
    -- ^ /@listItem@/: a t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the original URI of /@listItem@/ or 'P.Nothing'
    --    when the original URI is empty.
backForwardListItemGetOriginalUri listItem = liftIO $ do
    listItem' <- unsafeManagedPtrCastPtr listItem
    result <- webkit_back_forward_list_item_get_original_uri listItem'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr listItem
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListItemGetOriginalUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsBackForwardListItem a) => O.OverloadedMethod BackForwardListItemGetOriginalUriMethodInfo a signature where
    overloadedMethod = backForwardListItemGetOriginalUri

instance O.OverloadedMethodInfo BackForwardListItemGetOriginalUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardListItem.backForwardListItemGetOriginalUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardListItem.html#v:backForwardListItemGetOriginalUri"
        })


#endif

-- method BackForwardListItem::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list_item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardListItem" }
--           , argCType = Just "WebKitBackForwardListItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardListItem"
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

foreign import ccall "webkit_back_forward_list_item_get_title" webkit_back_forward_list_item_get_title :: 
    Ptr BackForwardListItem ->              -- list_item : TInterface (Name {namespace = "WebKit2", name = "BackForwardListItem"})
    IO CString

-- | Obtain the title of the item.
backForwardListItemGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardListItem a) =>
    a
    -- ^ /@listItem@/: a t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the page title of /@listItem@/ or 'P.Nothing'
    --    when the title is empty.
backForwardListItemGetTitle listItem = liftIO $ do
    listItem' <- unsafeManagedPtrCastPtr listItem
    result <- webkit_back_forward_list_item_get_title listItem'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr listItem
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListItemGetTitleMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsBackForwardListItem a) => O.OverloadedMethod BackForwardListItemGetTitleMethodInfo a signature where
    overloadedMethod = backForwardListItemGetTitle

instance O.OverloadedMethodInfo BackForwardListItemGetTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardListItem.backForwardListItemGetTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardListItem.html#v:backForwardListItemGetTitle"
        })


#endif

-- method BackForwardListItem::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list_item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardListItem" }
--           , argCType = Just "WebKitBackForwardListItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardListItem"
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

foreign import ccall "webkit_back_forward_list_item_get_uri" webkit_back_forward_list_item_get_uri :: 
    Ptr BackForwardListItem ->              -- list_item : TInterface (Name {namespace = "WebKit2", name = "BackForwardListItem"})
    IO CString

-- | Obtain the URI of the item.
-- 
-- This URI may differ from the original URI if the page was,
-- for example, redirected to a new location.
-- See also 'GI.WebKit2.Objects.BackForwardListItem.backForwardListItemGetOriginalUri'.
backForwardListItemGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardListItem a) =>
    a
    -- ^ /@listItem@/: a t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the URI of /@listItem@/ or 'P.Nothing'
    --    when the URI is empty.
backForwardListItemGetUri listItem = liftIO $ do
    listItem' <- unsafeManagedPtrCastPtr listItem
    result <- webkit_back_forward_list_item_get_uri listItem'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr listItem
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListItemGetUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsBackForwardListItem a) => O.OverloadedMethod BackForwardListItemGetUriMethodInfo a signature where
    overloadedMethod = backForwardListItemGetUri

instance O.OverloadedMethodInfo BackForwardListItemGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardListItem.backForwardListItemGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardListItem.html#v:backForwardListItemGetUri"
        })


#endif


