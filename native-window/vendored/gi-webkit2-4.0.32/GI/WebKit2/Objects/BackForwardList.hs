{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- List of visited pages.
-- 
-- WebKitBackForwardList maintains a list of visited pages used to
-- navigate to recent pages. Items are inserted in the list in the
-- order they are visited.
-- 
-- WebKitBackForwardList also maintains the notion of the current item
-- (which is always at index 0), the preceding item (which is at index -1),
-- and the following item (which is at index 1).
-- Methods 'GI.WebKit2.Objects.WebView.webViewGoBack' and 'GI.WebKit2.Objects.WebView.webViewGoForward' move
-- the current item backward or forward by one. Method
-- 'GI.WebKit2.Objects.WebView.webViewGoToBackForwardListItem' sets the current item to the
-- specified item. All other methods returning t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem's
-- do not change the value of the current item, they just return the requested
-- item or items.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.BackForwardList
    ( 

-- * Exported types
    BackForwardList(..)                     ,
    IsBackForwardList                       ,
    toBackForwardList                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getBackItem]("GI.WebKit2.Objects.BackForwardList#g:method:getBackItem"), [getBackList]("GI.WebKit2.Objects.BackForwardList#g:method:getBackList"), [getBackListWithLimit]("GI.WebKit2.Objects.BackForwardList#g:method:getBackListWithLimit"), [getCurrentItem]("GI.WebKit2.Objects.BackForwardList#g:method:getCurrentItem"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getForwardItem]("GI.WebKit2.Objects.BackForwardList#g:method:getForwardItem"), [getForwardList]("GI.WebKit2.Objects.BackForwardList#g:method:getForwardList"), [getForwardListWithLimit]("GI.WebKit2.Objects.BackForwardList#g:method:getForwardListWithLimit"), [getLength]("GI.WebKit2.Objects.BackForwardList#g:method:getLength"), [getNthItem]("GI.WebKit2.Objects.BackForwardList#g:method:getNthItem"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveBackForwardListMethod            ,
#endif

-- ** getBackItem #method:getBackItem#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetBackItemMethodInfo    ,
#endif
    backForwardListGetBackItem              ,


-- ** getBackList #method:getBackList#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetBackListMethodInfo    ,
#endif
    backForwardListGetBackList              ,


-- ** getBackListWithLimit #method:getBackListWithLimit#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetBackListWithLimitMethodInfo,
#endif
    backForwardListGetBackListWithLimit     ,


-- ** getCurrentItem #method:getCurrentItem#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetCurrentItemMethodInfo ,
#endif
    backForwardListGetCurrentItem           ,


-- ** getForwardItem #method:getForwardItem#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetForwardItemMethodInfo ,
#endif
    backForwardListGetForwardItem           ,


-- ** getForwardList #method:getForwardList#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetForwardListMethodInfo ,
#endif
    backForwardListGetForwardList           ,


-- ** getForwardListWithLimit #method:getForwardListWithLimit#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetForwardListWithLimitMethodInfo,
#endif
    backForwardListGetForwardListWithLimit  ,


-- ** getLength #method:getLength#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetLengthMethodInfo      ,
#endif
    backForwardListGetLength                ,


-- ** getNthItem #method:getNthItem#

#if defined(ENABLE_OVERLOADING)
    BackForwardListGetNthItemMethodInfo     ,
#endif
    backForwardListGetNthItem               ,




 -- * Signals


-- ** changed #signal:changed#

    BackForwardListChangedCallback          ,
#if defined(ENABLE_OVERLOADING)
    BackForwardListChangedSignalInfo        ,
#endif
    afterBackForwardListChanged             ,
    onBackForwardListChanged                ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardListItem as WebKit2.BackForwardListItem

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardListItem as WebKit2.BackForwardListItem

#endif

-- | Memory-managed wrapper type.
newtype BackForwardList = BackForwardList (SP.ManagedPtr BackForwardList)
    deriving (Eq)

instance SP.ManagedPtrNewtype BackForwardList where
    toManagedPtr (BackForwardList p) = p

foreign import ccall "webkit_back_forward_list_get_type"
    c_webkit_back_forward_list_get_type :: IO B.Types.GType

instance B.Types.TypedObject BackForwardList where
    glibType = c_webkit_back_forward_list_get_type

instance B.Types.GObject BackForwardList

-- | Type class for types which can be safely cast to t'BackForwardList', for instance with `toBackForwardList`.
class (SP.GObject o, O.IsDescendantOf BackForwardList o) => IsBackForwardList o
instance (SP.GObject o, O.IsDescendantOf BackForwardList o) => IsBackForwardList o

instance O.HasParentTypes BackForwardList
type instance O.ParentTypes BackForwardList = '[GObject.Object.Object]

-- | Cast to t'BackForwardList', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toBackForwardList :: (MIO.MonadIO m, IsBackForwardList o) => o -> m BackForwardList
toBackForwardList = MIO.liftIO . B.ManagedPtr.unsafeCastTo BackForwardList

-- | Convert t'BackForwardList' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe BackForwardList) where
    gvalueGType_ = c_webkit_back_forward_list_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr BackForwardList)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr BackForwardList)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject BackForwardList ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveBackForwardListMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveBackForwardListMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBackForwardListMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBackForwardListMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBackForwardListMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBackForwardListMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBackForwardListMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBackForwardListMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBackForwardListMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBackForwardListMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBackForwardListMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBackForwardListMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBackForwardListMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBackForwardListMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBackForwardListMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBackForwardListMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBackForwardListMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBackForwardListMethod "getBackItem" o = BackForwardListGetBackItemMethodInfo
    ResolveBackForwardListMethod "getBackList" o = BackForwardListGetBackListMethodInfo
    ResolveBackForwardListMethod "getBackListWithLimit" o = BackForwardListGetBackListWithLimitMethodInfo
    ResolveBackForwardListMethod "getCurrentItem" o = BackForwardListGetCurrentItemMethodInfo
    ResolveBackForwardListMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBackForwardListMethod "getForwardItem" o = BackForwardListGetForwardItemMethodInfo
    ResolveBackForwardListMethod "getForwardList" o = BackForwardListGetForwardListMethodInfo
    ResolveBackForwardListMethod "getForwardListWithLimit" o = BackForwardListGetForwardListWithLimitMethodInfo
    ResolveBackForwardListMethod "getLength" o = BackForwardListGetLengthMethodInfo
    ResolveBackForwardListMethod "getNthItem" o = BackForwardListGetNthItemMethodInfo
    ResolveBackForwardListMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBackForwardListMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBackForwardListMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBackForwardListMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBackForwardListMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBackForwardListMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBackForwardListMethod t BackForwardList, O.OverloadedMethod info BackForwardList p) => OL.IsLabel t (BackForwardList -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveBackForwardListMethod t BackForwardList, O.OverloadedMethod info BackForwardList p, R.HasField t BackForwardList p) => R.HasField t BackForwardList p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveBackForwardListMethod t BackForwardList, O.OverloadedMethodInfo info BackForwardList) => OL.IsLabel t (O.MethodProxy info BackForwardList) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal BackForwardList::changed
-- | This signal is emitted when /@backForwardList@/ changes. This happens
-- when the current item is updated, a new item is added or one or more
-- items are removed. Note that both /@itemAdded@/ and /@itemsRemoved@/ can
-- 'P.Nothing' when only the current item is updated. Items are only removed
-- when the list is cleared or the maximum items limit is reached.
type BackForwardListChangedCallback =
    Maybe WebKit2.BackForwardListItem.BackForwardListItem
    -- ^ /@itemAdded@/: the t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem' added or 'P.Nothing'
    -> Ptr ()
    -- ^ /@itemsRemoved@/: a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem's
    -> IO ()

type C_BackForwardListChangedCallback =
    Ptr BackForwardList ->                  -- object
    Ptr WebKit2.BackForwardListItem.BackForwardListItem ->
    Ptr () ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_BackForwardListChangedCallback`.
foreign import ccall "wrapper"
    mk_BackForwardListChangedCallback :: C_BackForwardListChangedCallback -> IO (FunPtr C_BackForwardListChangedCallback)

wrap_BackForwardListChangedCallback :: 
    GObject a => (a -> BackForwardListChangedCallback) ->
    C_BackForwardListChangedCallback
wrap_BackForwardListChangedCallback gi'cb gi'selfPtr itemAdded itemsRemoved _ = do
    maybeItemAdded <-
        if itemAdded == FP.nullPtr
        then return Nothing
        else do
            itemAdded' <- (newObject WebKit2.BackForwardListItem.BackForwardListItem) itemAdded
            return $ Just itemAdded'
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  maybeItemAdded itemsRemoved


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' backForwardList #changed callback
-- @
-- 
-- 
onBackForwardListChanged :: (IsBackForwardList a, MonadIO m) => a -> ((?self :: a) => BackForwardListChangedCallback) -> m SignalHandlerId
onBackForwardListChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_BackForwardListChangedCallback wrapped
    wrapped'' <- mk_BackForwardListChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' backForwardList #changed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterBackForwardListChanged :: (IsBackForwardList a, MonadIO m) => a -> ((?self :: a) => BackForwardListChangedCallback) -> m SignalHandlerId
afterBackForwardListChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_BackForwardListChangedCallback wrapped
    wrapped'' <- mk_BackForwardListChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data BackForwardListChangedSignalInfo
instance SignalInfo BackForwardListChangedSignalInfo where
    type HaskellCallbackType BackForwardListChangedSignalInfo = BackForwardListChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_BackForwardListChangedCallback cb
        cb'' <- mk_BackForwardListChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList::changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#g:signal:changed"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList BackForwardList
type instance O.AttributeList BackForwardList = BackForwardListAttributeList
type BackForwardListAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList BackForwardList = BackForwardListSignalList
type BackForwardListSignalList = ('[ '("changed", BackForwardListChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method BackForwardList::get_back_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--                  Name { namespace = "WebKit2" , name = "BackForwardListItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_back_item" webkit_back_forward_list_get_back_item :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO (Ptr WebKit2.BackForwardListItem.BackForwardListItem)

-- | Returns the item that precedes the current item.
backForwardListGetBackItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    --    preceding the current item or 'P.Nothing'.
backForwardListGetBackItem backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_back_item backForwardList'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
        return result''
    touchManagedPtr backForwardList
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetBackItemMethodInfo
instance (signature ~ (m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetBackItemMethodInfo a signature where
    overloadedMethod = backForwardListGetBackItem

instance O.OverloadedMethodInfo BackForwardListGetBackItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetBackItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetBackItem"
        })


#endif

-- method BackForwardList::get_back_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--                     Name { namespace = "WebKit2" , name = "BackForwardListItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_back_list" webkit_back_forward_list_get_back_list :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO (Ptr (GList (Ptr WebKit2.BackForwardListItem.BackForwardListItem)))

-- | Obtain the list of items preceding the current one.
backForwardListGetBackList ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m [WebKit2.BackForwardListItem.BackForwardListItem]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of
    --    items preceding the current item.
backForwardListGetBackList backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_back_list backForwardList'
    result' <- unpackGList result
    result'' <- mapM (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
    g_list_free result
    touchManagedPtr backForwardList
    return result''

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetBackListMethodInfo
instance (signature ~ (m [WebKit2.BackForwardListItem.BackForwardListItem]), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetBackListMethodInfo a signature where
    overloadedMethod = backForwardListGetBackList

instance O.OverloadedMethodInfo BackForwardListGetBackListMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetBackList",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetBackList"
        })


#endif

-- method BackForwardList::get_back_list_with_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--           { argCName = "limit"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of items to retrieve"
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
--                     Name { namespace = "WebKit2" , name = "BackForwardListItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_back_list_with_limit" webkit_back_forward_list_get_back_list_with_limit :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    Word32 ->                               -- limit : TBasicType TUInt
    IO (Ptr (GList (Ptr WebKit2.BackForwardListItem.BackForwardListItem)))

-- | Obtain a list up to some number of items preceding the current one.
backForwardListGetBackListWithLimit ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> Word32
    -- ^ /@limit@/: the number of items to retrieve
    -> m [WebKit2.BackForwardListItem.BackForwardListItem]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of
    --    items preceding the current item limited by /@limit@/.
backForwardListGetBackListWithLimit backForwardList limit = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_back_list_with_limit backForwardList' limit
    result' <- unpackGList result
    result'' <- mapM (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
    g_list_free result
    touchManagedPtr backForwardList
    return result''

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetBackListWithLimitMethodInfo
instance (signature ~ (Word32 -> m [WebKit2.BackForwardListItem.BackForwardListItem]), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetBackListWithLimitMethodInfo a signature where
    overloadedMethod = backForwardListGetBackListWithLimit

instance O.OverloadedMethodInfo BackForwardListGetBackListWithLimitMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetBackListWithLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetBackListWithLimit"
        })


#endif

-- method BackForwardList::get_current_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--                  Name { namespace = "WebKit2" , name = "BackForwardListItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_current_item" webkit_back_forward_list_get_current_item :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO (Ptr WebKit2.BackForwardListItem.BackForwardListItem)

-- | Returns the current item in /@backForwardList@/.
backForwardListGetCurrentItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    --    or 'P.Nothing' if /@backForwardList@/ is empty.
backForwardListGetCurrentItem backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_current_item backForwardList'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
        return result''
    touchManagedPtr backForwardList
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetCurrentItemMethodInfo
instance (signature ~ (m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetCurrentItemMethodInfo a signature where
    overloadedMethod = backForwardListGetCurrentItem

instance O.OverloadedMethodInfo BackForwardListGetCurrentItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetCurrentItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetCurrentItem"
        })


#endif

-- method BackForwardList::get_forward_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--                  Name { namespace = "WebKit2" , name = "BackForwardListItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_forward_item" webkit_back_forward_list_get_forward_item :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO (Ptr WebKit2.BackForwardListItem.BackForwardListItem)

-- | Returns the item that follows the current item.
backForwardListGetForwardItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    --    following the current item or 'P.Nothing'.
backForwardListGetForwardItem backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_forward_item backForwardList'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
        return result''
    touchManagedPtr backForwardList
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetForwardItemMethodInfo
instance (signature ~ (m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetForwardItemMethodInfo a signature where
    overloadedMethod = backForwardListGetForwardItem

instance O.OverloadedMethodInfo BackForwardListGetForwardItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetForwardItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetForwardItem"
        })


#endif

-- method BackForwardList::get_forward_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--                     Name { namespace = "WebKit2" , name = "BackForwardListItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_forward_list" webkit_back_forward_list_get_forward_list :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO (Ptr (GList (Ptr WebKit2.BackForwardListItem.BackForwardListItem)))

-- | Obtain the list of items following the current one.
backForwardListGetForwardList ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m [WebKit2.BackForwardListItem.BackForwardListItem]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of
    --    items following the current item.
backForwardListGetForwardList backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_forward_list backForwardList'
    result' <- unpackGList result
    result'' <- mapM (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
    g_list_free result
    touchManagedPtr backForwardList
    return result''

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetForwardListMethodInfo
instance (signature ~ (m [WebKit2.BackForwardListItem.BackForwardListItem]), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetForwardListMethodInfo a signature where
    overloadedMethod = backForwardListGetForwardList

instance O.OverloadedMethodInfo BackForwardListGetForwardListMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetForwardList",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetForwardList"
        })


#endif

-- method BackForwardList::get_forward_list_with_limit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--           { argCName = "limit"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of items to retrieve"
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
--                     Name { namespace = "WebKit2" , name = "BackForwardListItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_forward_list_with_limit" webkit_back_forward_list_get_forward_list_with_limit :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    Word32 ->                               -- limit : TBasicType TUInt
    IO (Ptr (GList (Ptr WebKit2.BackForwardListItem.BackForwardListItem)))

-- | Obtain a list up to some number of items following the current one.
backForwardListGetForwardListWithLimit ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> Word32
    -- ^ /@limit@/: the number of items to retrieve
    -> m [WebKit2.BackForwardListItem.BackForwardListItem]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of
    --    items following the current item limited by /@limit@/.
backForwardListGetForwardListWithLimit backForwardList limit = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_forward_list_with_limit backForwardList' limit
    result' <- unpackGList result
    result'' <- mapM (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
    g_list_free result
    touchManagedPtr backForwardList
    return result''

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetForwardListWithLimitMethodInfo
instance (signature ~ (Word32 -> m [WebKit2.BackForwardListItem.BackForwardListItem]), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetForwardListWithLimitMethodInfo a signature where
    overloadedMethod = backForwardListGetForwardListWithLimit

instance O.OverloadedMethodInfo BackForwardListGetForwardListWithLimitMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetForwardListWithLimit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetForwardListWithLimit"
        })


#endif

-- method BackForwardList::get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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

foreign import ccall "webkit_back_forward_list_get_length" webkit_back_forward_list_get_length :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    IO Word32

-- | Obtain the amount of items in the list.
backForwardListGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> m Word32
    -- ^ __Returns:__ the length of /@backForwardList@/.
backForwardListGetLength backForwardList = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_length backForwardList'
    touchManagedPtr backForwardList
    return result

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetLengthMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetLengthMethodInfo a signature where
    overloadedMethod = backForwardListGetLength

instance O.OverloadedMethodInfo BackForwardListGetLengthMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetLength",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetLength"
        })


#endif

-- method BackForwardList::get_nth_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "back_forward_list"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardList" }
--           , argCType = Just "WebKitBackForwardList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardList"
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
--           { argCName = "index"
--           , argType = TBasicType TInt
--           , argCType = Just "gint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the index of the item"
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
--                  Name { namespace = "WebKit2" , name = "BackForwardListItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_back_forward_list_get_nth_item" webkit_back_forward_list_get_nth_item :: 
    Ptr BackForwardList ->                  -- back_forward_list : TInterface (Name {namespace = "WebKit2", name = "BackForwardList"})
    Int32 ->                                -- index : TBasicType TInt
    IO (Ptr WebKit2.BackForwardListItem.BackForwardListItem)

-- | Returns the item at a given index relative to the current item.
backForwardListGetNthItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsBackForwardList a) =>
    a
    -- ^ /@backForwardList@/: a t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
    -> Int32
    -- ^ /@index@/: the index of the item
    -> m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    --    located at the specified index relative to the current item or 'P.Nothing'.
backForwardListGetNthItem backForwardList index = liftIO $ do
    backForwardList' <- unsafeManagedPtrCastPtr backForwardList
    result <- webkit_back_forward_list_get_nth_item backForwardList' index
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.BackForwardListItem.BackForwardListItem) result'
        return result''
    touchManagedPtr backForwardList
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BackForwardListGetNthItemMethodInfo
instance (signature ~ (Int32 -> m (Maybe WebKit2.BackForwardListItem.BackForwardListItem)), MonadIO m, IsBackForwardList a) => O.OverloadedMethod BackForwardListGetNthItemMethodInfo a signature where
    overloadedMethod = backForwardListGetNthItem

instance O.OverloadedMethodInfo BackForwardListGetNthItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.BackForwardList.backForwardListGetNthItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-BackForwardList.html#v:backForwardListGetNthItem"
        })


#endif


