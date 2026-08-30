{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Provides access to the icons associated with web sites.
-- 
-- WebKit will automatically look for available icons in \<link>
-- elements on opened pages as well as an existing favicon.ico and
-- load the images found into a memory cache if possible. That cache
-- is frozen to an on-disk database for persistence.
-- 
-- If [Settings:enablePrivateBrowsing]("GI.WebKit2.Objects.Settings#g:attr:enablePrivateBrowsing") is 'P.True', new icons
-- won\'t be added to the on-disk database and no existing icons will
-- be deleted from it. Nevertheless, WebKit will still store them in
-- the in-memory cache during the current execution.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.FaviconDatabase
    ( 

-- * Exported types
    FaviconDatabase(..)                     ,
    IsFaviconDatabase                       ,
    toFaviconDatabase                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [clear]("GI.WebKit2.Objects.FaviconDatabase#g:method:clear"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getFavicon]("GI.WebKit2.Objects.FaviconDatabase#g:method:getFavicon"), [getFaviconFinish]("GI.WebKit2.Objects.FaviconDatabase#g:method:getFaviconFinish"), [getFaviconUri]("GI.WebKit2.Objects.FaviconDatabase#g:method:getFaviconUri"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveFaviconDatabaseMethod            ,
#endif

-- ** clear #method:clear#

#if defined(ENABLE_OVERLOADING)
    FaviconDatabaseClearMethodInfo          ,
#endif
    faviconDatabaseClear                    ,


-- ** getFavicon #method:getFavicon#

#if defined(ENABLE_OVERLOADING)
    FaviconDatabaseGetFaviconMethodInfo     ,
#endif
    faviconDatabaseGetFavicon               ,


-- ** getFaviconFinish #method:getFaviconFinish#

#if defined(ENABLE_OVERLOADING)
    FaviconDatabaseGetFaviconFinishMethodInfo,
#endif
    faviconDatabaseGetFaviconFinish         ,


-- ** getFaviconUri #method:getFaviconUri#

#if defined(ENABLE_OVERLOADING)
    FaviconDatabaseGetFaviconUriMethodInfo  ,
#endif
    faviconDatabaseGetFaviconUri            ,




 -- * Signals


-- ** faviconChanged #signal:faviconChanged#

    FaviconDatabaseFaviconChangedCallback   ,
#if defined(ENABLE_OVERLOADING)
    FaviconDatabaseFaviconChangedSignalInfo ,
#endif
    afterFaviconDatabaseFaviconChanged      ,
    onFaviconDatabaseFaviconChanged         ,




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
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable

#else
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable

#endif

-- | Memory-managed wrapper type.
newtype FaviconDatabase = FaviconDatabase (SP.ManagedPtr FaviconDatabase)
    deriving (Eq)

instance SP.ManagedPtrNewtype FaviconDatabase where
    toManagedPtr (FaviconDatabase p) = p

foreign import ccall "webkit_favicon_database_get_type"
    c_webkit_favicon_database_get_type :: IO B.Types.GType

instance B.Types.TypedObject FaviconDatabase where
    glibType = c_webkit_favicon_database_get_type

instance B.Types.GObject FaviconDatabase

-- | Type class for types which can be safely cast to t'FaviconDatabase', for instance with `toFaviconDatabase`.
class (SP.GObject o, O.IsDescendantOf FaviconDatabase o) => IsFaviconDatabase o
instance (SP.GObject o, O.IsDescendantOf FaviconDatabase o) => IsFaviconDatabase o

instance O.HasParentTypes FaviconDatabase
type instance O.ParentTypes FaviconDatabase = '[GObject.Object.Object]

-- | Cast to t'FaviconDatabase', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toFaviconDatabase :: (MIO.MonadIO m, IsFaviconDatabase o) => o -> m FaviconDatabase
toFaviconDatabase = MIO.liftIO . B.ManagedPtr.unsafeCastTo FaviconDatabase

-- | Convert t'FaviconDatabase' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe FaviconDatabase) where
    gvalueGType_ = c_webkit_favicon_database_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr FaviconDatabase)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr FaviconDatabase)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject FaviconDatabase ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveFaviconDatabaseMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFaviconDatabaseMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFaviconDatabaseMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFaviconDatabaseMethod "clear" o = FaviconDatabaseClearMethodInfo
    ResolveFaviconDatabaseMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFaviconDatabaseMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFaviconDatabaseMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFaviconDatabaseMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFaviconDatabaseMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFaviconDatabaseMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFaviconDatabaseMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFaviconDatabaseMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFaviconDatabaseMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFaviconDatabaseMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFaviconDatabaseMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFaviconDatabaseMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFaviconDatabaseMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFaviconDatabaseMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFaviconDatabaseMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFaviconDatabaseMethod "getFavicon" o = FaviconDatabaseGetFaviconMethodInfo
    ResolveFaviconDatabaseMethod "getFaviconFinish" o = FaviconDatabaseGetFaviconFinishMethodInfo
    ResolveFaviconDatabaseMethod "getFaviconUri" o = FaviconDatabaseGetFaviconUriMethodInfo
    ResolveFaviconDatabaseMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFaviconDatabaseMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFaviconDatabaseMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFaviconDatabaseMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFaviconDatabaseMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFaviconDatabaseMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFaviconDatabaseMethod t FaviconDatabase, O.OverloadedMethod info FaviconDatabase p) => OL.IsLabel t (FaviconDatabase -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFaviconDatabaseMethod t FaviconDatabase, O.OverloadedMethod info FaviconDatabase p, R.HasField t FaviconDatabase p) => R.HasField t FaviconDatabase p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFaviconDatabaseMethod t FaviconDatabase, O.OverloadedMethodInfo info FaviconDatabase) => OL.IsLabel t (O.MethodProxy info FaviconDatabase) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal FaviconDatabase::favicon-changed
-- | This signal is emitted when the favicon URI of /@pageUri@/ has
-- been changed to /@faviconUri@/ in the database. You can connect
-- to this signal and call 'GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFavicon'
-- to get the favicon. If you are interested in the favicon of a
-- t'GI.WebKit2.Objects.WebView.WebView' it\'s easier to use the [WebView:favicon]("GI.WebKit2.Objects.WebView#g:attr:favicon")
-- property. See 'GI.WebKit2.Objects.WebView.webViewGetFavicon' for more details.
type FaviconDatabaseFaviconChangedCallback =
    T.Text
    -- ^ /@pageUri@/: the URI of the Web page containing the icon
    -> T.Text
    -- ^ /@faviconUri@/: the URI of the favicon
    -> IO ()

type C_FaviconDatabaseFaviconChangedCallback =
    Ptr FaviconDatabase ->                  -- object
    CString ->
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FaviconDatabaseFaviconChangedCallback`.
foreign import ccall "wrapper"
    mk_FaviconDatabaseFaviconChangedCallback :: C_FaviconDatabaseFaviconChangedCallback -> IO (FunPtr C_FaviconDatabaseFaviconChangedCallback)

wrap_FaviconDatabaseFaviconChangedCallback :: 
    GObject a => (a -> FaviconDatabaseFaviconChangedCallback) ->
    C_FaviconDatabaseFaviconChangedCallback
wrap_FaviconDatabaseFaviconChangedCallback gi'cb gi'selfPtr pageUri faviconUri _ = do
    pageUri' <- cstringToText pageUri
    faviconUri' <- cstringToText faviconUri
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  pageUri' faviconUri'


-- | Connect a signal handler for the [faviconChanged](#signal:faviconChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' faviconDatabase #faviconChanged callback
-- @
-- 
-- 
onFaviconDatabaseFaviconChanged :: (IsFaviconDatabase a, MonadIO m) => a -> ((?self :: a) => FaviconDatabaseFaviconChangedCallback) -> m SignalHandlerId
onFaviconDatabaseFaviconChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FaviconDatabaseFaviconChangedCallback wrapped
    wrapped'' <- mk_FaviconDatabaseFaviconChangedCallback wrapped'
    connectSignalFunPtr obj "favicon-changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [faviconChanged](#signal:faviconChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' faviconDatabase #faviconChanged callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterFaviconDatabaseFaviconChanged :: (IsFaviconDatabase a, MonadIO m) => a -> ((?self :: a) => FaviconDatabaseFaviconChangedCallback) -> m SignalHandlerId
afterFaviconDatabaseFaviconChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_FaviconDatabaseFaviconChangedCallback wrapped
    wrapped'' <- mk_FaviconDatabaseFaviconChangedCallback wrapped'
    connectSignalFunPtr obj "favicon-changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FaviconDatabaseFaviconChangedSignalInfo
instance SignalInfo FaviconDatabaseFaviconChangedSignalInfo where
    type HaskellCallbackType FaviconDatabaseFaviconChangedSignalInfo = FaviconDatabaseFaviconChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FaviconDatabaseFaviconChangedCallback cb
        cb'' <- mk_FaviconDatabaseFaviconChangedCallback cb'
        connectSignalFunPtr obj "favicon-changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FaviconDatabase::favicon-changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FaviconDatabase.html#g:signal:faviconChanged"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FaviconDatabase
type instance O.AttributeList FaviconDatabase = FaviconDatabaseAttributeList
type FaviconDatabaseAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FaviconDatabase = FaviconDatabaseSignalList
type FaviconDatabaseSignalList = ('[ '("faviconChanged", FaviconDatabaseFaviconChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method FaviconDatabase::clear
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "database"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FaviconDatabase" }
--           , argCType = Just "WebKitFaviconDatabase*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFaviconDatabase"
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

foreign import ccall "webkit_favicon_database_clear" webkit_favicon_database_clear :: 
    Ptr FaviconDatabase ->                  -- database : TInterface (Name {namespace = "WebKit2", name = "FaviconDatabase"})
    IO ()

-- | Clears all icons from the database.
faviconDatabaseClear ::
    (B.CallStack.HasCallStack, MonadIO m, IsFaviconDatabase a) =>
    a
    -- ^ /@database@/: a t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase'
    -> m ()
faviconDatabaseClear database = liftIO $ do
    database' <- unsafeManagedPtrCastPtr database
    webkit_favicon_database_clear database'
    touchManagedPtr database
    return ()

#if defined(ENABLE_OVERLOADING)
data FaviconDatabaseClearMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFaviconDatabase a) => O.OverloadedMethod FaviconDatabaseClearMethodInfo a signature where
    overloadedMethod = faviconDatabaseClear

instance O.OverloadedMethodInfo FaviconDatabaseClearMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseClear",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FaviconDatabase.html#v:faviconDatabaseClear"
        })


#endif

-- method FaviconDatabase::get_favicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "database"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FaviconDatabase" }
--           , argCType = Just "WebKitFaviconDatabase*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFaviconDatabase"
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
--           { argCName = "page_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "URI of the page for which we want to retrieve the favicon"
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
--                 { rawDocText = Just "A #GCancellable or %NULL."
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
--                     Just
--                       "A #GAsyncReadyCallback to call when the request is\n           satisfied or %NULL if you don't care about the result."
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
--                 { rawDocText = Just "The data to pass to @callback."
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

foreign import ccall "webkit_favicon_database_get_favicon" webkit_favicon_database_get_favicon :: 
    Ptr FaviconDatabase ->                  -- database : TInterface (Name {namespace = "WebKit2", name = "FaviconDatabase"})
    CString ->                              -- page_uri : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously obtains a favicon image.
-- 
-- Asynchronously obtains an image of the favicon for the
-- given page URI. It returns the cached icon if it\'s in the database
-- asynchronously waiting for the icon to be read from the database.
-- 
-- This is an asynchronous method. When the operation is finished, callback will
-- be invoked. You can then call 'GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFaviconFinish'
-- to get the result of the operation.
faviconDatabaseGetFavicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsFaviconDatabase a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@database@/: a t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase'
    -> T.Text
    -- ^ /@pageUri@/: URI of the page for which we want to retrieve the favicon
    -> Maybe (b)
    -- ^ /@cancellable@/: A t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing'.
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: A t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is
    --            satisfied or 'P.Nothing' if you don\'t care about the result.
    -> m ()
faviconDatabaseGetFavicon database pageUri cancellable callback = liftIO $ do
    database' <- unsafeManagedPtrCastPtr database
    pageUri' <- textToCString pageUri
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
    webkit_favicon_database_get_favicon database' pageUri' maybeCancellable maybeCallback userData
    touchManagedPtr database
    whenJust cancellable touchManagedPtr
    freeMem pageUri'
    return ()

#if defined(ENABLE_OVERLOADING)
data FaviconDatabaseGetFaviconMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsFaviconDatabase a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod FaviconDatabaseGetFaviconMethodInfo a signature where
    overloadedMethod = faviconDatabaseGetFavicon

instance O.OverloadedMethodInfo FaviconDatabaseGetFaviconMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFavicon",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FaviconDatabase.html#v:faviconDatabaseGetFavicon"
        })


#endif

-- method FaviconDatabase::get_favicon_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "database"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FaviconDatabase" }
--           , argCType = Just "WebKitFaviconDatabase*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFaviconDatabase"
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
--                 { rawDocText =
--                     Just
--                       "A #GAsyncResult obtained from the #GAsyncReadyCallback passed to webkit_favicon_database_get_favicon()"
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
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_favicon_database_get_favicon_finish" webkit_favicon_database_get_favicon_finish :: 
    Ptr FaviconDatabase ->                  -- database : TInterface (Name {namespace = "WebKit2", name = "FaviconDatabase"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Cairo.Surface.Surface)

-- | Finishes an operation started with 'GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFavicon'.
faviconDatabaseGetFaviconFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsFaviconDatabase a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@database@/: a t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase'
    -> b
    -- ^ /@result@/: A t'GI.Gio.Interfaces.AsyncResult.AsyncResult' obtained from the t'GI.Gio.Callbacks.AsyncReadyCallback' passed to 'GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFavicon'
    -> m Cairo.Surface.Surface
    -- ^ __Returns:__ a new favicon image, or 'P.Nothing' in case of error. /(Can throw 'Data.GI.Base.GError.GError')/
faviconDatabaseGetFaviconFinish database result_ = liftIO $ do
    database' <- unsafeManagedPtrCastPtr database
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_favicon_database_get_favicon_finish database' result_'
        checkUnexpectedReturnNULL "faviconDatabaseGetFaviconFinish" result
        result' <- (wrapBoxed Cairo.Surface.Surface) result
        touchManagedPtr database
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FaviconDatabaseGetFaviconFinishMethodInfo
instance (signature ~ (b -> m Cairo.Surface.Surface), MonadIO m, IsFaviconDatabase a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod FaviconDatabaseGetFaviconFinishMethodInfo a signature where
    overloadedMethod = faviconDatabaseGetFaviconFinish

instance O.OverloadedMethodInfo FaviconDatabaseGetFaviconFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFaviconFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FaviconDatabase.html#v:faviconDatabaseGetFaviconFinish"
        })


#endif

-- method FaviconDatabase::get_favicon_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "database"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FaviconDatabase" }
--           , argCType = Just "WebKitFaviconDatabase*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFaviconDatabase"
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
--           { argCName = "page_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "URI of the page containing the icon"
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

foreign import ccall "webkit_favicon_database_get_favicon_uri" webkit_favicon_database_get_favicon_uri :: 
    Ptr FaviconDatabase ->                  -- database : TInterface (Name {namespace = "WebKit2", name = "FaviconDatabase"})
    CString ->                              -- page_uri : TBasicType TUTF8
    IO CString

-- | Obtains the URI of the favicon for the given /@pageUri@/.
faviconDatabaseGetFaviconUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsFaviconDatabase a) =>
    a
    -- ^ /@database@/: a t'GI.WebKit2.Objects.FaviconDatabase.FaviconDatabase'
    -> T.Text
    -- ^ /@pageUri@/: URI of the page containing the icon
    -> m (Maybe T.Text)
    -- ^ __Returns:__ a newly allocated URI for the favicon, or 'P.Nothing' if the
    -- database doesn\'t have a favicon for /@pageUri@/.
faviconDatabaseGetFaviconUri database pageUri = liftIO $ do
    database' <- unsafeManagedPtrCastPtr database
    pageUri' <- textToCString pageUri
    result <- webkit_favicon_database_get_favicon_uri database' pageUri'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr database
    freeMem pageUri'
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FaviconDatabaseGetFaviconUriMethodInfo
instance (signature ~ (T.Text -> m (Maybe T.Text)), MonadIO m, IsFaviconDatabase a) => O.OverloadedMethod FaviconDatabaseGetFaviconUriMethodInfo a signature where
    overloadedMethod = faviconDatabaseGetFaviconUri

instance O.OverloadedMethodInfo FaviconDatabaseGetFaviconUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FaviconDatabase.faviconDatabaseGetFaviconUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FaviconDatabase.html#v:faviconDatabaseGetFaviconUri"
        })


#endif


