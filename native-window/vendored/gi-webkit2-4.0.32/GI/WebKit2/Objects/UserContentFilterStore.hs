{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Handles storage of user content filters on disk.
-- 
-- The WebKitUserContentFilterStore provides the means to import and save
-- <https://webkit.org/blog/3476/content-blockers-first-look/ JSON rule sets>,
-- which can be loaded later in an efficient manner. Once filters are stored,
-- the t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter' objects which represent them can be added to
-- a t'GI.WebKit2.Objects.UserContentManager.UserContentManager' with 'GI.WebKit2.Objects.UserContentManager.userContentManagerAddFilter'.
-- 
-- JSON rule sets are imported using 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSave' and stored
-- on disk in an implementation defined format. The contents of a filter store must be
-- managed using the t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore': a list of all the stored filters
-- can be obtained with 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreFetchIdentifiers',
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoad' can be used to retrieve a previously saved
-- filter, and removed from the store with 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemove'.
-- 
-- /Since: 2.24/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.UserContentFilterStore
    ( 

-- * Exported types
    UserContentFilterStore(..)              ,
    IsUserContentFilterStore                ,
    toUserContentFilterStore                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [fetchIdentifiers]("GI.WebKit2.Objects.UserContentFilterStore#g:method:fetchIdentifiers"), [fetchIdentifiersFinish]("GI.WebKit2.Objects.UserContentFilterStore#g:method:fetchIdentifiersFinish"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [load]("GI.WebKit2.Objects.UserContentFilterStore#g:method:load"), [loadFinish]("GI.WebKit2.Objects.UserContentFilterStore#g:method:loadFinish"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [remove]("GI.WebKit2.Objects.UserContentFilterStore#g:method:remove"), [removeFinish]("GI.WebKit2.Objects.UserContentFilterStore#g:method:removeFinish"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [save]("GI.WebKit2.Objects.UserContentFilterStore#g:method:save"), [saveFinish]("GI.WebKit2.Objects.UserContentFilterStore#g:method:saveFinish"), [saveFromFile]("GI.WebKit2.Objects.UserContentFilterStore#g:method:saveFromFile"), [saveFromFileFinish]("GI.WebKit2.Objects.UserContentFilterStore#g:method:saveFromFileFinish"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getPath]("GI.WebKit2.Objects.UserContentFilterStore#g:method:getPath"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveUserContentFilterStoreMethod     ,
#endif

-- ** fetchIdentifiers #method:fetchIdentifiers#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreFetchIdentifiersMethodInfo,
#endif
    userContentFilterStoreFetchIdentifiers  ,


-- ** fetchIdentifiersFinish #method:fetchIdentifiersFinish#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreFetchIdentifiersFinishMethodInfo,
#endif
    userContentFilterStoreFetchIdentifiersFinish,


-- ** getPath #method:getPath#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreGetPathMethodInfo ,
#endif
    userContentFilterStoreGetPath           ,


-- ** load #method:load#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreLoadMethodInfo    ,
#endif
    userContentFilterStoreLoad              ,


-- ** loadFinish #method:loadFinish#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreLoadFinishMethodInfo,
#endif
    userContentFilterStoreLoadFinish        ,


-- ** new #method:new#

    userContentFilterStoreNew               ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreRemoveMethodInfo  ,
#endif
    userContentFilterStoreRemove            ,


-- ** removeFinish #method:removeFinish#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreRemoveFinishMethodInfo,
#endif
    userContentFilterStoreRemoveFinish      ,


-- ** save #method:save#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreSaveMethodInfo    ,
#endif
    userContentFilterStoreSave              ,


-- ** saveFinish #method:saveFinish#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreSaveFinishMethodInfo,
#endif
    userContentFilterStoreSaveFinish        ,


-- ** saveFromFile #method:saveFromFile#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreSaveFromFileMethodInfo,
#endif
    userContentFilterStoreSaveFromFile      ,


-- ** saveFromFileFinish #method:saveFromFileFinish#

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStoreSaveFromFileFinishMethodInfo,
#endif
    userContentFilterStoreSaveFromFileFinish,




 -- * Properties


-- ** path #attr:path#
-- | The directory used for filter storage. This path is used as the base
-- directory where user content filters are stored on disk.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    UserContentFilterStorePathPropertyInfo  ,
#endif
    constructUserContentFilterStorePath     ,
    getUserContentFilterStorePath           ,
#if defined(ENABLE_OVERLOADING)
    userContentFilterStorePath              ,
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
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter

#else
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter

#endif

-- | Memory-managed wrapper type.
newtype UserContentFilterStore = UserContentFilterStore (SP.ManagedPtr UserContentFilterStore)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserContentFilterStore where
    toManagedPtr (UserContentFilterStore p) = p

foreign import ccall "webkit_user_content_filter_store_get_type"
    c_webkit_user_content_filter_store_get_type :: IO B.Types.GType

instance B.Types.TypedObject UserContentFilterStore where
    glibType = c_webkit_user_content_filter_store_get_type

instance B.Types.GObject UserContentFilterStore

-- | Type class for types which can be safely cast to t'UserContentFilterStore', for instance with `toUserContentFilterStore`.
class (SP.GObject o, O.IsDescendantOf UserContentFilterStore o) => IsUserContentFilterStore o
instance (SP.GObject o, O.IsDescendantOf UserContentFilterStore o) => IsUserContentFilterStore o

instance O.HasParentTypes UserContentFilterStore
type instance O.ParentTypes UserContentFilterStore = '[GObject.Object.Object]

-- | Cast to t'UserContentFilterStore', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toUserContentFilterStore :: (MIO.MonadIO m, IsUserContentFilterStore o) => o -> m UserContentFilterStore
toUserContentFilterStore = MIO.liftIO . B.ManagedPtr.unsafeCastTo UserContentFilterStore

-- | Convert t'UserContentFilterStore' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserContentFilterStore) where
    gvalueGType_ = c_webkit_user_content_filter_store_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr UserContentFilterStore)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr UserContentFilterStore)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject UserContentFilterStore ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveUserContentFilterStoreMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserContentFilterStoreMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUserContentFilterStoreMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUserContentFilterStoreMethod "fetchIdentifiers" o = UserContentFilterStoreFetchIdentifiersMethodInfo
    ResolveUserContentFilterStoreMethod "fetchIdentifiersFinish" o = UserContentFilterStoreFetchIdentifiersFinishMethodInfo
    ResolveUserContentFilterStoreMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUserContentFilterStoreMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUserContentFilterStoreMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUserContentFilterStoreMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUserContentFilterStoreMethod "load" o = UserContentFilterStoreLoadMethodInfo
    ResolveUserContentFilterStoreMethod "loadFinish" o = UserContentFilterStoreLoadFinishMethodInfo
    ResolveUserContentFilterStoreMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUserContentFilterStoreMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUserContentFilterStoreMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUserContentFilterStoreMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUserContentFilterStoreMethod "remove" o = UserContentFilterStoreRemoveMethodInfo
    ResolveUserContentFilterStoreMethod "removeFinish" o = UserContentFilterStoreRemoveFinishMethodInfo
    ResolveUserContentFilterStoreMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUserContentFilterStoreMethod "save" o = UserContentFilterStoreSaveMethodInfo
    ResolveUserContentFilterStoreMethod "saveFinish" o = UserContentFilterStoreSaveFinishMethodInfo
    ResolveUserContentFilterStoreMethod "saveFromFile" o = UserContentFilterStoreSaveFromFileMethodInfo
    ResolveUserContentFilterStoreMethod "saveFromFileFinish" o = UserContentFilterStoreSaveFromFileFinishMethodInfo
    ResolveUserContentFilterStoreMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUserContentFilterStoreMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUserContentFilterStoreMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUserContentFilterStoreMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUserContentFilterStoreMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUserContentFilterStoreMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUserContentFilterStoreMethod "getPath" o = UserContentFilterStoreGetPathMethodInfo
    ResolveUserContentFilterStoreMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUserContentFilterStoreMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUserContentFilterStoreMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUserContentFilterStoreMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUserContentFilterStoreMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUserContentFilterStoreMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserContentFilterStoreMethod t UserContentFilterStore, O.OverloadedMethod info UserContentFilterStore p) => OL.IsLabel t (UserContentFilterStore -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserContentFilterStoreMethod t UserContentFilterStore, O.OverloadedMethod info UserContentFilterStore p, R.HasField t UserContentFilterStore p) => R.HasField t UserContentFilterStore p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserContentFilterStoreMethod t UserContentFilterStore, O.OverloadedMethodInfo info UserContentFilterStore) => OL.IsLabel t (O.MethodProxy info UserContentFilterStore) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "path"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@path@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userContentFilterStore #path
-- @
getUserContentFilterStorePath :: (MonadIO m, IsUserContentFilterStore o) => o -> m T.Text
getUserContentFilterStorePath obj = MIO.liftIO $ checkUnexpectedNothing "getUserContentFilterStorePath" $ B.Properties.getObjectPropertyString obj "path"

-- | Construct a t'GValueConstruct' with valid value for the “@path@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructUserContentFilterStorePath :: (IsUserContentFilterStore o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructUserContentFilterStorePath val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "path" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStorePathPropertyInfo
instance AttrInfo UserContentFilterStorePathPropertyInfo where
    type AttrAllowedOps UserContentFilterStorePathPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint UserContentFilterStorePathPropertyInfo = IsUserContentFilterStore
    type AttrSetTypeConstraint UserContentFilterStorePathPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint UserContentFilterStorePathPropertyInfo = (~) T.Text
    type AttrTransferType UserContentFilterStorePathPropertyInfo = T.Text
    type AttrGetType UserContentFilterStorePathPropertyInfo = T.Text
    type AttrLabel UserContentFilterStorePathPropertyInfo = "path"
    type AttrOrigin UserContentFilterStorePathPropertyInfo = UserContentFilterStore
    attrGet = getUserContentFilterStorePath
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructUserContentFilterStorePath
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.path"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#g:attr:path"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserContentFilterStore
type instance O.AttributeList UserContentFilterStore = UserContentFilterStoreAttributeList
type UserContentFilterStoreAttributeList = ('[ '("path", UserContentFilterStorePathPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
userContentFilterStorePath :: AttrLabelProxy "path"
userContentFilterStorePath = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UserContentFilterStore = UserContentFilterStoreSignalList
type UserContentFilterStoreSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method UserContentFilterStore::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "storage_path"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "path where data for filters will be stored on disk"
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
--                  Name { namespace = "WebKit2" , name = "UserContentFilterStore" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_new" webkit_user_content_filter_store_new :: 
    CString ->                              -- storage_path : TBasicType TUTF8
    IO (Ptr UserContentFilterStore)

-- | Create a new t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore' to manipulate filters stored at /@storagePath@/.
-- 
-- The path must point to a local filesystem, and will be created if needed.
-- 
-- /Since: 2.24/
userContentFilterStoreNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@storagePath@/: path where data for filters will be stored on disk
    -> m UserContentFilterStore
    -- ^ __Returns:__ a newly created t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
userContentFilterStoreNew storagePath = liftIO $ do
    storagePath' <- textToCString storagePath
    result <- webkit_user_content_filter_store_new storagePath'
    checkUnexpectedReturnNULL "userContentFilterStoreNew" result
    result' <- (wrapObject UserContentFilterStore) result
    freeMem storagePath'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserContentFilterStore::fetch_identifiers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the removal is completed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 3
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to the callback function"
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

foreign import ccall "webkit_user_content_filter_store_fetch_identifiers" webkit_user_content_filter_store_fetch_identifiers :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously retrieve a list of the identifiers for all the stored filters.
-- 
-- When the operation is finished, /@callback@/ will be invoked, which then can use
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreFetchIdentifiersFinish' to obtain the list of
-- filter identifiers.
-- 
-- /Since: 2.24/
userContentFilterStoreFetchIdentifiers ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the removal is completed
    -> m ()
userContentFilterStoreFetchIdentifiers store cancellable callback = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_user_content_filter_store_fetch_identifiers store' maybeCancellable maybeCallback userData
    touchManagedPtr store
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreFetchIdentifiersMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod UserContentFilterStoreFetchIdentifiersMethodInfo a signature where
    overloadedMethod = userContentFilterStoreFetchIdentifiers

instance O.OverloadedMethodInfo UserContentFilterStoreFetchIdentifiersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreFetchIdentifiers",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreFetchIdentifiers"
        })


#endif

-- method UserContentFilterStore::fetch_identifiers_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_fetch_identifiers_finish" webkit_user_content_filter_store_fetch_identifiers_finish :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    IO (Ptr CString)

-- | Finishes an asynchronous fetch of the list of stored filters.
-- 
-- Finishes an asynchronous fetch of the list of identifiers for the stored filters previously
-- started with 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreFetchIdentifiers'.
-- 
-- /Since: 2.24/
userContentFilterStoreFetchIdentifiersFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [T.Text]
    -- ^ __Returns:__ a 'P.Nothing'-terminated list of filter identifiers.
userContentFilterStoreFetchIdentifiersFinish store result_ = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result_' <- unsafeManagedPtrCastPtr result_
    result <- webkit_user_content_filter_store_fetch_identifiers_finish store' result_'
    checkUnexpectedReturnNULL "userContentFilterStoreFetchIdentifiersFinish" result
    result' <- unpackZeroTerminatedUTF8CArray result
    mapZeroTerminatedCArray freeMem result
    freeMem result
    touchManagedPtr store
    touchManagedPtr result_
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreFetchIdentifiersFinishMethodInfo
instance (signature ~ (b -> m [T.Text]), MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod UserContentFilterStoreFetchIdentifiersFinishMethodInfo a signature where
    overloadedMethod = userContentFilterStoreFetchIdentifiersFinish

instance O.OverloadedMethodInfo UserContentFilterStoreFetchIdentifiersFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreFetchIdentifiersFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreFetchIdentifiersFinish"
        })


#endif

-- method UserContentFilterStore::get_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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

foreign import ccall "webkit_user_content_filter_store_get_path" webkit_user_content_filter_store_get_path :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    IO CString

-- | Gets the storage path for user content filters.
-- 
-- /Since: 2.24/
userContentFilterStoreGetPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> m T.Text
    -- ^ __Returns:__ path, as a string.
userContentFilterStoreGetPath store = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result <- webkit_user_content_filter_store_get_path store'
    checkUnexpectedReturnNULL "userContentFilterStoreGetPath" result
    result' <- cstringToText result
    touchManagedPtr store
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreGetPathMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsUserContentFilterStore a) => O.OverloadedMethod UserContentFilterStoreGetPathMethodInfo a signature where
    overloadedMethod = userContentFilterStoreGetPath

instance O.OverloadedMethodInfo UserContentFilterStoreGetPathMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreGetPath",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreGetPath"
        })


#endif

-- method UserContentFilterStore::load
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "identifier"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a filter identifier"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the load is completed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to the callback function"
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

foreign import ccall "webkit_user_content_filter_store_load" webkit_user_content_filter_store_load :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    CString ->                              -- identifier : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously load a content filter given its /@identifier@/.
-- 
-- The filter must have been
-- previously stored using 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSave'.
-- 
-- When the operation is finished, /@callback@/ will be invoked, which then can use
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoadFinish' to obtain the resulting filter.
-- 
-- /Since: 2.24/
userContentFilterStoreLoad ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> T.Text
    -- ^ /@identifier@/: a filter identifier
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the load is completed
    -> m ()
userContentFilterStoreLoad store identifier cancellable callback = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    identifier' <- textToCString identifier
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_user_content_filter_store_load store' identifier' maybeCancellable maybeCallback userData
    touchManagedPtr store
    whenJust cancellable touchManagedPtr
    freeMem identifier'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreLoadMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod UserContentFilterStoreLoadMethodInfo a signature where
    overloadedMethod = userContentFilterStoreLoad

instance O.OverloadedMethodInfo UserContentFilterStoreLoadMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoad",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreLoad"
        })


#endif

-- method UserContentFilterStore::load_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "UserContentFilter" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_load_finish" webkit_user_content_filter_store_load_finish :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.UserContentFilter.UserContentFilter)

-- | Finishes an asynchronous filter load previously started with
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoad'.
-- 
-- /Since: 2.24/
userContentFilterStoreLoadFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.UserContentFilter.UserContentFilter
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter', or 'P.Nothing' if the load failed /(Can throw 'Data.GI.Base.GError.GError')/
userContentFilterStoreLoadFinish store result_ = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_user_content_filter_store_load_finish store' result_'
        checkUnexpectedReturnNULL "userContentFilterStoreLoadFinish" result
        result' <- (wrapBoxed WebKit2.UserContentFilter.UserContentFilter) result
        touchManagedPtr store
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreLoadFinishMethodInfo
instance (signature ~ (b -> m WebKit2.UserContentFilter.UserContentFilter), MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod UserContentFilterStoreLoadFinishMethodInfo a signature where
    overloadedMethod = userContentFilterStoreLoadFinish

instance O.OverloadedMethodInfo UserContentFilterStoreLoadFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoadFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreLoadFinish"
        })


#endif

-- method UserContentFilterStore::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "identifier"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a filter identifier"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the removal is completed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to the callback function"
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

foreign import ccall "webkit_user_content_filter_store_remove" webkit_user_content_filter_store_remove :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    CString ->                              -- identifier : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously remove a content filter given its /@identifier@/.
-- 
-- When the operation is finished, /@callback@/ will be invoked, which then can use
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemoveFinish' to check whether the removal was
-- successful.
-- 
-- /Since: 2.24/
userContentFilterStoreRemove ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> T.Text
    -- ^ /@identifier@/: a filter identifier
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the removal is completed
    -> m ()
userContentFilterStoreRemove store identifier cancellable callback = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    identifier' <- textToCString identifier
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_user_content_filter_store_remove store' identifier' maybeCancellable maybeCallback userData
    touchManagedPtr store
    whenJust cancellable touchManagedPtr
    freeMem identifier'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreRemoveMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod UserContentFilterStoreRemoveMethodInfo a signature where
    overloadedMethod = userContentFilterStoreRemove

instance O.OverloadedMethodInfo UserContentFilterStoreRemoveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemove",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreRemove"
        })


#endif

-- method UserContentFilterStore::remove_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
-- throws : True
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_remove_finish" webkit_user_content_filter_store_remove_finish :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finishes an asynchronous filter removal previously started with
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemove'.
-- 
-- /Since: 2.24/
userContentFilterStoreRemoveFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
userContentFilterStoreRemoveFinish store result_ = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_user_content_filter_store_remove_finish store' result_'
        touchManagedPtr store
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreRemoveFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod UserContentFilterStoreRemoveFinishMethodInfo a signature where
    overloadedMethod = userContentFilterStoreRemoveFinish

instance O.OverloadedMethodInfo UserContentFilterStoreRemoveFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemoveFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreRemoveFinish"
        })


#endif

-- method UserContentFilterStore::save
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "identifier"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string used to identify the saved filter"
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
--           { argCName = "source"
--           , argType = TInterface Name { namespace = "GLib" , name = "Bytes" }
--           , argCType = Just "GBytes*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "#GBytes containing the rule set in JSON format"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when saving is completed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to the callback function"
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

foreign import ccall "webkit_user_content_filter_store_save" webkit_user_content_filter_store_save :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    CString ->                              -- identifier : TBasicType TUTF8
    Ptr GLib.Bytes.Bytes ->                 -- source : TInterface (Name {namespace = "GLib", name = "Bytes"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously save a content filter from a set source rule.
-- 
-- Asynchronously save a content filter from a source rule set in the
-- <https://webkit.org/blog/3476/content-blockers-first-look/ WebKit content extesions JSON format>.
-- 
-- The /@identifier@/ can be used afterwards to refer to the filter when using
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreRemove' and 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreLoad'.
-- When the /@identifier@/ has been used in the past, the new filter source will replace
-- the one saved beforehand for the same identifier.
-- 
-- When the operation is finished, /@callback@/ will be invoked, which then can use
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFinish' to obtain the resulting filter.
-- 
-- /Since: 2.24/
userContentFilterStoreSave ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> T.Text
    -- ^ /@identifier@/: a string used to identify the saved filter
    -> GLib.Bytes.Bytes
    -- ^ /@source@/: t'GI.GLib.Structs.Bytes.Bytes' containing the rule set in JSON format
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when saving is completed
    -> m ()
userContentFilterStoreSave store identifier source cancellable callback = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    identifier' <- textToCString identifier
    source' <- unsafeManagedPtrGetPtr source
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_user_content_filter_store_save store' identifier' source' maybeCancellable maybeCallback userData
    touchManagedPtr store
    touchManagedPtr source
    whenJust cancellable touchManagedPtr
    freeMem identifier'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreSaveMethodInfo
instance (signature ~ (T.Text -> GLib.Bytes.Bytes -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod UserContentFilterStoreSaveMethodInfo a signature where
    overloadedMethod = userContentFilterStoreSave

instance O.OverloadedMethodInfo UserContentFilterStoreSaveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSave",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreSave"
        })


#endif

-- method UserContentFilterStore::save_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "UserContentFilter" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_save_finish" webkit_user_content_filter_store_save_finish :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.UserContentFilter.UserContentFilter)

-- | Finishes an asynchronous filter save previously started with
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSave'.
-- 
-- /Since: 2.24/
userContentFilterStoreSaveFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.UserContentFilter.UserContentFilter
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter', or 'P.Nothing' if saving failed /(Can throw 'Data.GI.Base.GError.GError')/
userContentFilterStoreSaveFinish store result_ = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_user_content_filter_store_save_finish store' result_'
        checkUnexpectedReturnNULL "userContentFilterStoreSaveFinish" result
        result' <- (wrapBoxed WebKit2.UserContentFilter.UserContentFilter) result
        touchManagedPtr store
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreSaveFinishMethodInfo
instance (signature ~ (b -> m WebKit2.UserContentFilter.UserContentFilter), MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod UserContentFilterStoreSaveFinishMethodInfo a signature where
    overloadedMethod = userContentFilterStoreSaveFinish

instance O.OverloadedMethodInfo UserContentFilterStoreSaveFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreSaveFinish"
        })


#endif

-- method UserContentFilterStore::save_from_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "identifier"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string used to identify the saved filter"
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
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , argCType = Just "GFile*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GFile containing the rule set in JSON format"
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
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when saving is completed"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to the callback function"
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

foreign import ccall "webkit_user_content_filter_store_save_from_file" webkit_user_content_filter_store_save_from_file :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    CString ->                              -- identifier : TBasicType TUTF8
    Ptr Gio.File.File ->                    -- file : TInterface (Name {namespace = "Gio", name = "File"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously save a content filter from the contents of a file.
-- 
-- Asynchronously save a content filter from the contents of a file, which must be
-- native to the platform, as checked by 'GI.Gio.Interfaces.File.fileIsNative'. See
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSave' for more details.
-- 
-- When the operation is finished, /@callback@/ will be invoked, which then can use
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFinish' to obtain the resulting filter.
-- 
-- /Since: 2.24/
userContentFilterStoreSaveFromFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.File.IsFile b, Gio.Cancellable.IsCancellable c) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> T.Text
    -- ^ /@identifier@/: a string used to identify the saved filter
    -> b
    -- ^ /@file@/: a t'GI.Gio.Interfaces.File.File' containing the rule set in JSON format
    -> Maybe (c)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when saving is completed
    -> m ()
userContentFilterStoreSaveFromFile store identifier file cancellable callback = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    identifier' <- textToCString identifier
    file' <- unsafeManagedPtrCastPtr file
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_user_content_filter_store_save_from_file store' identifier' file' maybeCancellable maybeCallback userData
    touchManagedPtr store
    touchManagedPtr file
    whenJust cancellable touchManagedPtr
    freeMem identifier'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreSaveFromFileMethodInfo
instance (signature ~ (T.Text -> b -> Maybe (c) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsUserContentFilterStore a, Gio.File.IsFile b, Gio.Cancellable.IsCancellable c) => O.OverloadedMethod UserContentFilterStoreSaveFromFileMethodInfo a signature where
    overloadedMethod = userContentFilterStoreSaveFromFile

instance O.OverloadedMethodInfo UserContentFilterStoreSaveFromFileMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFromFile",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreSaveFromFile"
        })


#endif

-- method UserContentFilterStore::save_from_file_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "store"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilterStore" }
--           , argCType = Just "WebKitUserContentFilterStore*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentFilterStore"
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
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "UserContentFilter" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_user_content_filter_store_save_from_file_finish" webkit_user_content_filter_store_save_from_file_finish :: 
    Ptr UserContentFilterStore ->           -- store : TInterface (Name {namespace = "WebKit2", name = "UserContentFilterStore"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.UserContentFilter.UserContentFilter)

-- | Finishes and asynchronous filter save previously started with
-- 'GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFromFile'.
-- 
-- /Since: 2.24/
userContentFilterStoreSaveFromFileFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@store@/: a t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.UserContentFilter.UserContentFilter
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter', or 'P.Nothing' if saving failed. /(Can throw 'Data.GI.Base.GError.GError')/
userContentFilterStoreSaveFromFileFinish store result_ = liftIO $ do
    store' <- unsafeManagedPtrCastPtr store
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_user_content_filter_store_save_from_file_finish store' result_'
        checkUnexpectedReturnNULL "userContentFilterStoreSaveFromFileFinish" result
        result' <- (wrapBoxed WebKit2.UserContentFilter.UserContentFilter) result
        touchManagedPtr store
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UserContentFilterStoreSaveFromFileFinishMethodInfo
instance (signature ~ (b -> m WebKit2.UserContentFilter.UserContentFilter), MonadIO m, IsUserContentFilterStore a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod UserContentFilterStoreSaveFromFileFinishMethodInfo a signature where
    overloadedMethod = userContentFilterStoreSaveFromFileFinish

instance O.OverloadedMethodInfo UserContentFilterStoreSaveFromFileFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentFilterStore.userContentFilterStoreSaveFromFileFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentFilterStore.html#v:userContentFilterStoreSaveFromFileFinish"
        })


#endif


