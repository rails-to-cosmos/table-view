{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Defines how to handle cookies in a t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- The WebKitCookieManager defines how to set up and handle cookies.
-- You can get it from a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' with
-- 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerGetCookieManager', and use it to set where to
-- store cookies with 'GI.WebKit2.Objects.CookieManager.cookieManagerSetPersistentStorage',
-- or to set the acceptance policy, with 'GI.WebKit2.Objects.CookieManager.cookieManagerGetAcceptPolicy'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.CookieManager
    ( 

-- * Exported types
    CookieManager(..)                       ,
    IsCookieManager                         ,
    toCookieManager                         ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [addCookie]("GI.WebKit2.Objects.CookieManager#g:method:addCookie"), [addCookieFinish]("GI.WebKit2.Objects.CookieManager#g:method:addCookieFinish"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [deleteAllCookies]("GI.WebKit2.Objects.CookieManager#g:method:deleteAllCookies"), [deleteCookie]("GI.WebKit2.Objects.CookieManager#g:method:deleteCookie"), [deleteCookieFinish]("GI.WebKit2.Objects.CookieManager#g:method:deleteCookieFinish"), [deleteCookiesForDomain]("GI.WebKit2.Objects.CookieManager#g:method:deleteCookiesForDomain"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [replaceCookies]("GI.WebKit2.Objects.CookieManager#g:method:replaceCookies"), [replaceCookiesFinish]("GI.WebKit2.Objects.CookieManager#g:method:replaceCookiesFinish"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAcceptPolicy]("GI.WebKit2.Objects.CookieManager#g:method:getAcceptPolicy"), [getAcceptPolicyFinish]("GI.WebKit2.Objects.CookieManager#g:method:getAcceptPolicyFinish"), [getAllCookies]("GI.WebKit2.Objects.CookieManager#g:method:getAllCookies"), [getAllCookiesFinish]("GI.WebKit2.Objects.CookieManager#g:method:getAllCookiesFinish"), [getCookies]("GI.WebKit2.Objects.CookieManager#g:method:getCookies"), [getCookiesFinish]("GI.WebKit2.Objects.CookieManager#g:method:getCookiesFinish"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDomainsWithCookies]("GI.WebKit2.Objects.CookieManager#g:method:getDomainsWithCookies"), [getDomainsWithCookiesFinish]("GI.WebKit2.Objects.CookieManager#g:method:getDomainsWithCookiesFinish"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setAcceptPolicy]("GI.WebKit2.Objects.CookieManager#g:method:setAcceptPolicy"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setPersistentStorage]("GI.WebKit2.Objects.CookieManager#g:method:setPersistentStorage"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveCookieManagerMethod              ,
#endif

-- ** addCookie #method:addCookie#

#if defined(ENABLE_OVERLOADING)
    CookieManagerAddCookieMethodInfo        ,
#endif
    cookieManagerAddCookie                  ,


-- ** addCookieFinish #method:addCookieFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerAddCookieFinishMethodInfo  ,
#endif
    cookieManagerAddCookieFinish            ,


-- ** deleteAllCookies #method:deleteAllCookies#

#if defined(ENABLE_OVERLOADING)
    CookieManagerDeleteAllCookiesMethodInfo ,
#endif
    cookieManagerDeleteAllCookies           ,


-- ** deleteCookie #method:deleteCookie#

#if defined(ENABLE_OVERLOADING)
    CookieManagerDeleteCookieMethodInfo     ,
#endif
    cookieManagerDeleteCookie               ,


-- ** deleteCookieFinish #method:deleteCookieFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerDeleteCookieFinishMethodInfo,
#endif
    cookieManagerDeleteCookieFinish         ,


-- ** deleteCookiesForDomain #method:deleteCookiesForDomain#

#if defined(ENABLE_OVERLOADING)
    CookieManagerDeleteCookiesForDomainMethodInfo,
#endif
    cookieManagerDeleteCookiesForDomain     ,


-- ** getAcceptPolicy #method:getAcceptPolicy#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetAcceptPolicyMethodInfo  ,
#endif
    cookieManagerGetAcceptPolicy            ,


-- ** getAcceptPolicyFinish #method:getAcceptPolicyFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetAcceptPolicyFinishMethodInfo,
#endif
    cookieManagerGetAcceptPolicyFinish      ,


-- ** getAllCookies #method:getAllCookies#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetAllCookiesMethodInfo    ,
#endif
    cookieManagerGetAllCookies              ,


-- ** getAllCookiesFinish #method:getAllCookiesFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetAllCookiesFinishMethodInfo,
#endif
    cookieManagerGetAllCookiesFinish        ,


-- ** getCookies #method:getCookies#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetCookiesMethodInfo       ,
#endif
    cookieManagerGetCookies                 ,


-- ** getCookiesFinish #method:getCookiesFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetCookiesFinishMethodInfo ,
#endif
    cookieManagerGetCookiesFinish           ,


-- ** getDomainsWithCookies #method:getDomainsWithCookies#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetDomainsWithCookiesMethodInfo,
#endif
    cookieManagerGetDomainsWithCookies      ,


-- ** getDomainsWithCookiesFinish #method:getDomainsWithCookiesFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerGetDomainsWithCookiesFinishMethodInfo,
#endif
    cookieManagerGetDomainsWithCookiesFinish,


-- ** replaceCookies #method:replaceCookies#

#if defined(ENABLE_OVERLOADING)
    CookieManagerReplaceCookiesMethodInfo   ,
#endif
    cookieManagerReplaceCookies             ,


-- ** replaceCookiesFinish #method:replaceCookiesFinish#

#if defined(ENABLE_OVERLOADING)
    CookieManagerReplaceCookiesFinishMethodInfo,
#endif
    cookieManagerReplaceCookiesFinish       ,


-- ** setAcceptPolicy #method:setAcceptPolicy#

#if defined(ENABLE_OVERLOADING)
    CookieManagerSetAcceptPolicyMethodInfo  ,
#endif
    cookieManagerSetAcceptPolicy            ,


-- ** setPersistentStorage #method:setPersistentStorage#

#if defined(ENABLE_OVERLOADING)
    CookieManagerSetPersistentStorageMethodInfo,
#endif
    cookieManagerSetPersistentStorage       ,




 -- * Signals


-- ** changed #signal:changed#

    CookieManagerChangedCallback            ,
#if defined(ENABLE_OVERLOADING)
    CookieManagerChangedSignalInfo          ,
#endif
    afterCookieManagerChanged               ,
    onCookieManagerChanged                  ,




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
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Soup.Structs.Cookie as Soup.Cookie
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Soup.Structs.Cookie as Soup.Cookie
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#endif

-- | Memory-managed wrapper type.
newtype CookieManager = CookieManager (SP.ManagedPtr CookieManager)
    deriving (Eq)

instance SP.ManagedPtrNewtype CookieManager where
    toManagedPtr (CookieManager p) = p

foreign import ccall "webkit_cookie_manager_get_type"
    c_webkit_cookie_manager_get_type :: IO B.Types.GType

instance B.Types.TypedObject CookieManager where
    glibType = c_webkit_cookie_manager_get_type

instance B.Types.GObject CookieManager

-- | Type class for types which can be safely cast to t'CookieManager', for instance with `toCookieManager`.
class (SP.GObject o, O.IsDescendantOf CookieManager o) => IsCookieManager o
instance (SP.GObject o, O.IsDescendantOf CookieManager o) => IsCookieManager o

instance O.HasParentTypes CookieManager
type instance O.ParentTypes CookieManager = '[GObject.Object.Object]

-- | Cast to t'CookieManager', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toCookieManager :: (MIO.MonadIO m, IsCookieManager o) => o -> m CookieManager
toCookieManager = MIO.liftIO . B.ManagedPtr.unsafeCastTo CookieManager

-- | Convert t'CookieManager' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe CookieManager) where
    gvalueGType_ = c_webkit_cookie_manager_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr CookieManager)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr CookieManager)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject CookieManager ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveCookieManagerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveCookieManagerMethod "addCookie" o = CookieManagerAddCookieMethodInfo
    ResolveCookieManagerMethod "addCookieFinish" o = CookieManagerAddCookieFinishMethodInfo
    ResolveCookieManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCookieManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCookieManagerMethod "deleteAllCookies" o = CookieManagerDeleteAllCookiesMethodInfo
    ResolveCookieManagerMethod "deleteCookie" o = CookieManagerDeleteCookieMethodInfo
    ResolveCookieManagerMethod "deleteCookieFinish" o = CookieManagerDeleteCookieFinishMethodInfo
    ResolveCookieManagerMethod "deleteCookiesForDomain" o = CookieManagerDeleteCookiesForDomainMethodInfo
    ResolveCookieManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCookieManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCookieManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCookieManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCookieManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCookieManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCookieManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCookieManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCookieManagerMethod "replaceCookies" o = CookieManagerReplaceCookiesMethodInfo
    ResolveCookieManagerMethod "replaceCookiesFinish" o = CookieManagerReplaceCookiesFinishMethodInfo
    ResolveCookieManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCookieManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCookieManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCookieManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCookieManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCookieManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCookieManagerMethod "getAcceptPolicy" o = CookieManagerGetAcceptPolicyMethodInfo
    ResolveCookieManagerMethod "getAcceptPolicyFinish" o = CookieManagerGetAcceptPolicyFinishMethodInfo
    ResolveCookieManagerMethod "getAllCookies" o = CookieManagerGetAllCookiesMethodInfo
    ResolveCookieManagerMethod "getAllCookiesFinish" o = CookieManagerGetAllCookiesFinishMethodInfo
    ResolveCookieManagerMethod "getCookies" o = CookieManagerGetCookiesMethodInfo
    ResolveCookieManagerMethod "getCookiesFinish" o = CookieManagerGetCookiesFinishMethodInfo
    ResolveCookieManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCookieManagerMethod "getDomainsWithCookies" o = CookieManagerGetDomainsWithCookiesMethodInfo
    ResolveCookieManagerMethod "getDomainsWithCookiesFinish" o = CookieManagerGetDomainsWithCookiesFinishMethodInfo
    ResolveCookieManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCookieManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCookieManagerMethod "setAcceptPolicy" o = CookieManagerSetAcceptPolicyMethodInfo
    ResolveCookieManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCookieManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCookieManagerMethod "setPersistentStorage" o = CookieManagerSetPersistentStorageMethodInfo
    ResolveCookieManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCookieManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCookieManagerMethod t CookieManager, O.OverloadedMethod info CookieManager p) => OL.IsLabel t (CookieManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveCookieManagerMethod t CookieManager, O.OverloadedMethod info CookieManager p, R.HasField t CookieManager p) => R.HasField t CookieManager p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveCookieManagerMethod t CookieManager, O.OverloadedMethodInfo info CookieManager) => OL.IsLabel t (O.MethodProxy info CookieManager) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal CookieManager::changed
-- | This signal is emitted when cookies are added, removed or modified.
type CookieManagerChangedCallback =
    IO ()

type C_CookieManagerChangedCallback =
    Ptr CookieManager ->                    -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CookieManagerChangedCallback`.
foreign import ccall "wrapper"
    mk_CookieManagerChangedCallback :: C_CookieManagerChangedCallback -> IO (FunPtr C_CookieManagerChangedCallback)

wrap_CookieManagerChangedCallback :: 
    GObject a => (a -> CookieManagerChangedCallback) ->
    C_CookieManagerChangedCallback
wrap_CookieManagerChangedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' cookieManager #changed callback
-- @
-- 
-- 
onCookieManagerChanged :: (IsCookieManager a, MonadIO m) => a -> ((?self :: a) => CookieManagerChangedCallback) -> m SignalHandlerId
onCookieManagerChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_CookieManagerChangedCallback wrapped
    wrapped'' <- mk_CookieManagerChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' cookieManager #changed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterCookieManagerChanged :: (IsCookieManager a, MonadIO m) => a -> ((?self :: a) => CookieManagerChangedCallback) -> m SignalHandlerId
afterCookieManagerChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_CookieManagerChangedCallback wrapped
    wrapped'' <- mk_CookieManagerChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CookieManagerChangedSignalInfo
instance SignalInfo CookieManagerChangedSignalInfo where
    type HaskellCallbackType CookieManagerChangedSignalInfo = CookieManagerChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CookieManagerChangedCallback cb
        cb'' <- mk_CookieManagerChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager::changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#g:signal:changed"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CookieManager
type instance O.AttributeList CookieManager = CookieManagerAttributeList
type CookieManagerAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CookieManager = CookieManagerSignalList
type CookieManagerSignalList = ('[ '("changed", CookieManagerChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method CookieManager::add_cookie
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "cookie"
--           , argType =
--               TInterface Name { namespace = "Soup" , name = "Cookie" }
--           , argCType = Just "SoupCookie*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #SoupCookie to be added"
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
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_add_cookie" webkit_cookie_manager_add_cookie :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Soup.Cookie.Cookie ->               -- cookie : TInterface (Name {namespace = "Soup", name = "Cookie"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously add a t'GI.Soup.Structs.Cookie.Cookie' to the underlying storage.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerAddCookieFinish' to get the result of the operation.
-- 
-- /Since: 2.20/
cookieManagerAddCookie ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> Soup.Cookie.Cookie
    -- ^ /@cookie@/: the t'GI.Soup.Structs.Cookie.Cookie' to be added
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerAddCookie cookieManager cookie cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    cookie' <- unsafeManagedPtrGetPtr cookie
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
    webkit_cookie_manager_add_cookie cookieManager' cookie' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    touchManagedPtr cookie
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerAddCookieMethodInfo
instance (signature ~ (Soup.Cookie.Cookie -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerAddCookieMethodInfo a signature where
    overloadedMethod = cookieManagerAddCookie

instance O.OverloadedMethodInfo CookieManagerAddCookieMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerAddCookie",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerAddCookie"
        })


#endif

-- method CookieManager::add_cookie_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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

foreign import ccall "webkit_cookie_manager_add_cookie_finish" webkit_cookie_manager_add_cookie_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerAddCookie'.
-- 
-- /Since: 2.20/
cookieManagerAddCookieFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerAddCookieFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_cookie_manager_add_cookie_finish cookieManager' result_'
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerAddCookieFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerAddCookieFinishMethodInfo a signature where
    overloadedMethod = cookieManagerAddCookieFinish

instance O.OverloadedMethodInfo CookieManagerAddCookieFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerAddCookieFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerAddCookieFinish"
        })


#endif

-- method CookieManager::delete_all_cookies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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

foreign import ccall "webkit_cookie_manager_delete_all_cookies" webkit_cookie_manager_delete_all_cookies :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    IO ()

{-# DEPRECATED cookieManagerDeleteAllCookies ["(Since version 2.16)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerClear' instead."] #-}
-- | Delete all cookies of /@cookieManager@/.
cookieManagerDeleteAllCookies ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> m ()
cookieManagerDeleteAllCookies cookieManager = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    webkit_cookie_manager_delete_all_cookies cookieManager'
    touchManagedPtr cookieManager
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteAllCookiesMethodInfo
instance (signature ~ (m ()), MonadIO m, IsCookieManager a) => O.OverloadedMethod CookieManagerDeleteAllCookiesMethodInfo a signature where
    overloadedMethod = cookieManagerDeleteAllCookies

instance O.OverloadedMethodInfo CookieManagerDeleteAllCookiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerDeleteAllCookies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerDeleteAllCookies"
        })


#endif

-- method CookieManager::delete_cookie
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "cookie"
--           , argType =
--               TInterface Name { namespace = "Soup" , name = "Cookie" }
--           , argCType = Just "SoupCookie*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #SoupCookie to be deleted"
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
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_delete_cookie" webkit_cookie_manager_delete_cookie :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Soup.Cookie.Cookie ->               -- cookie : TInterface (Name {namespace = "Soup", name = "Cookie"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously delete a t'GI.Soup.Structs.Cookie.Cookie' from the current session.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerDeleteCookieFinish' to get the result of the operation.
-- 
-- /Since: 2.20/
cookieManagerDeleteCookie ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> Soup.Cookie.Cookie
    -- ^ /@cookie@/: the t'GI.Soup.Structs.Cookie.Cookie' to be deleted
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerDeleteCookie cookieManager cookie cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    cookie' <- unsafeManagedPtrGetPtr cookie
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
    webkit_cookie_manager_delete_cookie cookieManager' cookie' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    touchManagedPtr cookie
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookieMethodInfo
instance (signature ~ (Soup.Cookie.Cookie -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerDeleteCookieMethodInfo a signature where
    overloadedMethod = cookieManagerDeleteCookie

instance O.OverloadedMethodInfo CookieManagerDeleteCookieMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerDeleteCookie",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerDeleteCookie"
        })


#endif

-- method CookieManager::delete_cookie_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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

foreign import ccall "webkit_cookie_manager_delete_cookie_finish" webkit_cookie_manager_delete_cookie_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerDeleteCookie'.
-- 
-- /Since: 2.20/
cookieManagerDeleteCookieFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerDeleteCookieFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_cookie_manager_delete_cookie_finish cookieManager' result_'
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookieFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerDeleteCookieFinishMethodInfo a signature where
    overloadedMethod = cookieManagerDeleteCookieFinish

instance O.OverloadedMethodInfo CookieManagerDeleteCookieFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerDeleteCookieFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerDeleteCookieFinish"
        })


#endif

-- method CookieManager::delete_cookies_for_domain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "domain"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a domain name" , sinceVersion = Nothing }
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

foreign import ccall "webkit_cookie_manager_delete_cookies_for_domain" webkit_cookie_manager_delete_cookies_for_domain :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    CString ->                              -- domain : TBasicType TUTF8
    IO ()

{-# DEPRECATED cookieManagerDeleteCookiesForDomain ["(Since version 2.16)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerRemove' instead."] #-}
-- | Remove all cookies of /@cookieManager@/ for the given /@domain@/.
cookieManagerDeleteCookiesForDomain ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> T.Text
    -- ^ /@domain@/: a domain name
    -> m ()
cookieManagerDeleteCookiesForDomain cookieManager domain = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    domain' <- textToCString domain
    webkit_cookie_manager_delete_cookies_for_domain cookieManager' domain'
    touchManagedPtr cookieManager
    freeMem domain'
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookiesForDomainMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCookieManager a) => O.OverloadedMethod CookieManagerDeleteCookiesForDomainMethodInfo a signature where
    overloadedMethod = cookieManagerDeleteCookiesForDomain

instance O.OverloadedMethodInfo CookieManagerDeleteCookiesForDomainMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerDeleteCookiesForDomain",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerDeleteCookiesForDomain"
        })


#endif

-- method CookieManager::get_accept_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_get_accept_policy" webkit_cookie_manager_get_accept_policy :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get the cookie acceptance policy of /@cookieManager@/.
-- 
-- Note that when policy was set to 'GI.WebKit2.Enums.CookieAcceptPolicyNoThirdParty' and
-- ITP is enabled, this will return 'GI.WebKit2.Enums.CookieAcceptPolicyAlways'.
-- See also 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetItpEnabled'.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerGetAcceptPolicyFinish' to get the result of the operation.
cookieManagerGetAcceptPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerGetAcceptPolicy cookieManager cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
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
    webkit_cookie_manager_get_accept_policy cookieManager' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAcceptPolicyMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerGetAcceptPolicyMethodInfo a signature where
    overloadedMethod = cookieManagerGetAcceptPolicy

instance O.OverloadedMethodInfo CookieManagerGetAcceptPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetAcceptPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetAcceptPolicy"
        })


#endif

-- method CookieManager::get_accept_policy_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--                  Name { namespace = "WebKit2" , name = "CookieAcceptPolicy" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_cookie_manager_get_accept_policy_finish" webkit_cookie_manager_get_accept_policy_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CUInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerGetAcceptPolicy'.
cookieManagerGetAcceptPolicyFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.Enums.CookieAcceptPolicy
    -- ^ __Returns:__ the cookie acceptance policy of /@cookieManager@/ as a t'GI.WebKit2.Enums.CookieAcceptPolicy'. /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerGetAcceptPolicyFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_cookie_manager_get_accept_policy_finish cookieManager' result_'
        let result' = (toEnum . fromIntegral) result
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAcceptPolicyFinishMethodInfo
instance (signature ~ (b -> m WebKit2.Enums.CookieAcceptPolicy), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerGetAcceptPolicyFinishMethodInfo a signature where
    overloadedMethod = cookieManagerGetAcceptPolicyFinish

instance O.OverloadedMethodInfo CookieManagerGetAcceptPolicyFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetAcceptPolicyFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetAcceptPolicyFinish"
        })


#endif

-- method CookieManager::get_all_cookies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--                     Just
--                       "(closure user_data): a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_get_all_cookies" webkit_cookie_manager_get_all_cookies :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get a list of t'GI.Soup.Structs.Cookie.Cookie' from /@cookieManager@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerGetAllCookiesFinish' to get the result of the operation.
-- 
-- /Since: 2.42/
cookieManagerGetAllCookies ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: (closure user_data): a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerGetAllCookies cookieManager cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
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
    webkit_cookie_manager_get_all_cookies cookieManager' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAllCookiesMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerGetAllCookiesMethodInfo a signature where
    overloadedMethod = cookieManagerGetAllCookies

instance O.OverloadedMethodInfo CookieManagerGetAllCookiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetAllCookies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetAllCookies"
        })


#endif

-- method CookieManager::get_all_cookies_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--               (TGList (TInterface Name { namespace = "Soup" , name = "Cookie" }))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_cookie_manager_get_all_cookies_finish" webkit_cookie_manager_get_all_cookies_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr Soup.Cookie.Cookie)))

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerGetAllCookies'.
-- 
-- The return value is a t'GI.GLib.Structs.List.List' of t'GI.Soup.Structs.Cookie.Cookie' instances which should be released
-- with @/g_list_free_full()/@ and 'GI.Soup.Structs.Cookie.cookieFree'.
-- 
-- /Since: 2.42/
cookieManagerGetAllCookiesFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [Soup.Cookie.Cookie]
    -- ^ __Returns:__ A t'GI.GLib.Structs.List.List' of t'GI.Soup.Structs.Cookie.Cookie' instances. /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerGetAllCookiesFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_cookie_manager_get_all_cookies_finish cookieManager' result_'
        result' <- unpackGList result
        result'' <- mapM (wrapBoxed Soup.Cookie.Cookie) result'
        g_list_free result
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAllCookiesFinishMethodInfo
instance (signature ~ (b -> m [Soup.Cookie.Cookie]), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerGetAllCookiesFinishMethodInfo a signature where
    overloadedMethod = cookieManagerGetAllCookiesFinish

instance O.OverloadedMethodInfo CookieManagerGetAllCookiesFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetAllCookiesFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetAllCookiesFinish"
        })


#endif

-- method CookieManager::get_cookies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the URI associated to the cookies to be retrieved"
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
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_get_cookies" webkit_cookie_manager_get_cookies :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    CString ->                              -- uri : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously get a list of t'GI.Soup.Structs.Cookie.Cookie' from /@cookieManager@/.
-- 
-- Asynchronously get a list of t'GI.Soup.Structs.Cookie.Cookie' from /@cookieManager@/ associated with /@uri@/, which
-- must be either an HTTP or an HTTPS URL.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerGetCookiesFinish' to get the result of the operation.
-- 
-- /Since: 2.20/
cookieManagerGetCookies ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> T.Text
    -- ^ /@uri@/: the URI associated to the cookies to be retrieved
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerGetCookies cookieManager uri cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    uri' <- textToCString uri
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
    webkit_cookie_manager_get_cookies cookieManager' uri' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    whenJust cancellable touchManagedPtr
    freeMem uri'
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetCookiesMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerGetCookiesMethodInfo a signature where
    overloadedMethod = cookieManagerGetCookies

instance O.OverloadedMethodInfo CookieManagerGetCookiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetCookies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetCookies"
        })


#endif

-- method CookieManager::get_cookies_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--               (TGList (TInterface Name { namespace = "Soup" , name = "Cookie" }))
-- throws : True
-- Skip return : False

foreign import ccall "webkit_cookie_manager_get_cookies_finish" webkit_cookie_manager_get_cookies_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr Soup.Cookie.Cookie)))

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerGetCookies'.
-- 
-- The return value is a t'GI.GLib.Structs.List.List' of t'GI.Soup.Structs.Cookie.Cookie' instances which should be released
-- with @/g_list_free_full()/@ and 'GI.Soup.Structs.Cookie.cookieFree'.
-- 
-- /Since: 2.20/
cookieManagerGetCookiesFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [Soup.Cookie.Cookie]
    -- ^ __Returns:__ A t'GI.GLib.Structs.List.List' of t'GI.Soup.Structs.Cookie.Cookie' instances. /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerGetCookiesFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_cookie_manager_get_cookies_finish cookieManager' result_'
        result' <- unpackGList result
        result'' <- mapM (wrapBoxed Soup.Cookie.Cookie) result'
        g_list_free result
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetCookiesFinishMethodInfo
instance (signature ~ (b -> m [Soup.Cookie.Cookie]), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerGetCookiesFinishMethodInfo a signature where
    overloadedMethod = cookieManagerGetCookiesFinish

instance O.OverloadedMethodInfo CookieManagerGetCookiesFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetCookiesFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetCookiesFinish"
        })


#endif

-- method CookieManager::get_domains_with_cookies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_get_domains_with_cookies" webkit_cookie_manager_get_domains_with_cookies :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED cookieManagerGetDomainsWithCookies ["(Since version 2.16)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetch' instead."] #-}
-- | Asynchronously get the list of domains for which /@cookieManager@/ contains cookies.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerGetDomainsWithCookiesFinish' to get the result of the operation.
cookieManagerGetDomainsWithCookies ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerGetDomainsWithCookies cookieManager cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
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
    webkit_cookie_manager_get_domains_with_cookies cookieManager' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetDomainsWithCookiesMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerGetDomainsWithCookiesMethodInfo a signature where
    overloadedMethod = cookieManagerGetDomainsWithCookies

instance O.OverloadedMethodInfo CookieManagerGetDomainsWithCookiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetDomainsWithCookies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetDomainsWithCookies"
        })


#endif

-- method CookieManager::get_domains_with_cookies_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
-- throws : True
-- Skip return : False

foreign import ccall "webkit_cookie_manager_get_domains_with_cookies_finish" webkit_cookie_manager_get_domains_with_cookies_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr CString)

{-# DEPRECATED cookieManagerGetDomainsWithCookiesFinish ["(Since version 2.16)","Use 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerFetchFinish' instead."] #-}
-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerGetDomainsWithCookies'.
-- 
-- The return value is a 'P.Nothing' terminated list of strings which should
-- be released with 'GI.GLib.Functions.strfreev'.
cookieManagerGetDomainsWithCookiesFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m [T.Text]
    -- ^ __Returns:__ A 'P.Nothing' terminated array of domain names
    --    or 'P.Nothing' in case of error. /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerGetDomainsWithCookiesFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_cookie_manager_get_domains_with_cookies_finish cookieManager' result_'
        checkUnexpectedReturnNULL "cookieManagerGetDomainsWithCookiesFinish" result
        result' <- unpackZeroTerminatedUTF8CArray result
        mapZeroTerminatedCArray freeMem result
        freeMem result
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerGetDomainsWithCookiesFinishMethodInfo
instance (signature ~ (b -> m [T.Text]), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerGetDomainsWithCookiesFinishMethodInfo a signature where
    overloadedMethod = cookieManagerGetDomainsWithCookiesFinish

instance O.OverloadedMethodInfo CookieManagerGetDomainsWithCookiesFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerGetDomainsWithCookiesFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerGetDomainsWithCookiesFinish"
        })


#endif

-- method CookieManager::replace_cookies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "cookies"
--           , argType =
--               TGList (TInterface Name { namespace = "Soup" , name = "Cookie" })
--           , argCType = Just "GList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GList of #SoupCookie to be added"
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
--                     Just
--                       "(closure user_data): a #GAsyncReadyCallback to call when the request is satisfied"
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
--                 { rawDocText = Just "the data to pass to callback function"
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

foreign import ccall "webkit_cookie_manager_replace_cookies" webkit_cookie_manager_replace_cookies :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr (GList (Ptr Soup.Cookie.Cookie)) -> -- cookies : TGList (TInterface (Name {namespace = "Soup", name = "Cookie"}))
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously replace all cookies in /@cookieManager@/ with the given list of /@cookies@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.CookieManager.cookieManagerReplaceCookiesFinish' to get the result of the operation.
-- 
-- /Since: 2.42/
cookieManagerReplaceCookies ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> [Soup.Cookie.Cookie]
    -- ^ /@cookies@/: a t'GI.GLib.Structs.List.List' of t'GI.Soup.Structs.Cookie.Cookie' to be added
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: (closure user_data): a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
cookieManagerReplaceCookies cookieManager cookies cancellable callback = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    cookies' <- mapM unsafeManagedPtrGetPtr cookies
    cookies'' <- packGList cookies'
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
    webkit_cookie_manager_replace_cookies cookieManager' cookies'' maybeCancellable maybeCallback userData
    touchManagedPtr cookieManager
    mapM_ touchManagedPtr cookies
    whenJust cancellable touchManagedPtr
    g_list_free cookies''
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerReplaceCookiesMethodInfo
instance (signature ~ ([Soup.Cookie.Cookie] -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsCookieManager a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod CookieManagerReplaceCookiesMethodInfo a signature where
    overloadedMethod = cookieManagerReplaceCookies

instance O.OverloadedMethodInfo CookieManagerReplaceCookiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerReplaceCookies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerReplaceCookies"
        })


#endif

-- method CookieManager::replace_cookies_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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

foreign import ccall "webkit_cookie_manager_replace_cookies_finish" webkit_cookie_manager_replace_cookies_finish :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.CookieManager.cookieManagerReplaceCookies'.
-- 
-- /Since: 2.42/
cookieManagerReplaceCookiesFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
cookieManagerReplaceCookiesFinish cookieManager result_ = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_cookie_manager_replace_cookies_finish cookieManager' result_'
        touchManagedPtr cookieManager
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CookieManagerReplaceCookiesFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCookieManager a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod CookieManagerReplaceCookiesFinishMethodInfo a signature where
    overloadedMethod = cookieManagerReplaceCookiesFinish

instance O.OverloadedMethodInfo CookieManagerReplaceCookiesFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerReplaceCookiesFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerReplaceCookiesFinish"
        })


#endif

-- method CookieManager::set_accept_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "policy"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "CookieAcceptPolicy" }
--           , argCType = Just "WebKitCookieAcceptPolicy"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieAcceptPolicy"
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

foreign import ccall "webkit_cookie_manager_set_accept_policy" webkit_cookie_manager_set_accept_policy :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "WebKit2", name = "CookieAcceptPolicy"})
    IO ()

-- | Set the cookie acceptance policy of /@cookieManager@/ as /@policy@/.
-- 
-- Note that ITP has its own way to handle third-party cookies, so when it\'s enabled,
-- and /@policy@/ is set to 'GI.WebKit2.Enums.CookieAcceptPolicyNoThirdParty', 'GI.WebKit2.Enums.CookieAcceptPolicyAlways'
-- will be used instead. Once disabled, the policy will be set back to 'GI.WebKit2.Enums.CookieAcceptPolicyNoThirdParty'.
-- See also 'GI.WebKit2.Objects.WebsiteDataManager.websiteDataManagerSetItpEnabled'.
cookieManagerSetAcceptPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> WebKit2.Enums.CookieAcceptPolicy
    -- ^ /@policy@/: a t'GI.WebKit2.Enums.CookieAcceptPolicy'
    -> m ()
cookieManagerSetAcceptPolicy cookieManager policy = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    let policy' = (fromIntegral . fromEnum) policy
    webkit_cookie_manager_set_accept_policy cookieManager' policy'
    touchManagedPtr cookieManager
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerSetAcceptPolicyMethodInfo
instance (signature ~ (WebKit2.Enums.CookieAcceptPolicy -> m ()), MonadIO m, IsCookieManager a) => O.OverloadedMethod CookieManagerSetAcceptPolicyMethodInfo a signature where
    overloadedMethod = cookieManagerSetAcceptPolicy

instance O.OverloadedMethodInfo CookieManagerSetAcceptPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerSetAcceptPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerSetAcceptPolicy"
        })


#endif

-- method CookieManager::set_persistent_storage
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cookie_manager"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "CookieManager" }
--           , argCType = Just "WebKitCookieManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookieManager"
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
--           { argCName = "filename"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the filename to read to/write from"
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
--           { argCName = "storage"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "CookiePersistentStorage" }
--           , argCType = Just "WebKitCookiePersistentStorage"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCookiePersistentStorage"
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

foreign import ccall "webkit_cookie_manager_set_persistent_storage" webkit_cookie_manager_set_persistent_storage :: 
    Ptr CookieManager ->                    -- cookie_manager : TInterface (Name {namespace = "WebKit2", name = "CookieManager"})
    CString ->                              -- filename : TBasicType TUTF8
    CUInt ->                                -- storage : TInterface (Name {namespace = "WebKit2", name = "CookiePersistentStorage"})
    IO ()

-- | Set non-session cookies.
-- 
-- Set the /@filename@/ where non-session cookies are stored persistently using
-- /@storage@/ as the format to read\/write the cookies.
-- Cookies are initially read from /@filename@/ to create an initial set of cookies.
-- Then, non-session cookies will be written to /@filename@/ when the WebKitCookieManager[changed](#g:signal:changed)
-- signal is emitted.
-- By default, /@cookieManager@/ doesn\'t store the cookies persistently, so you need to call this
-- method to keep cookies saved across sessions.
-- 
-- This method should never be called on a t'GI.WebKit2.Objects.CookieManager.CookieManager' associated to an ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'.
cookieManagerSetPersistentStorage ::
    (B.CallStack.HasCallStack, MonadIO m, IsCookieManager a) =>
    a
    -- ^ /@cookieManager@/: a t'GI.WebKit2.Objects.CookieManager.CookieManager'
    -> T.Text
    -- ^ /@filename@/: the filename to read to\/write from
    -> WebKit2.Enums.CookiePersistentStorage
    -- ^ /@storage@/: a t'GI.WebKit2.Enums.CookiePersistentStorage'
    -> m ()
cookieManagerSetPersistentStorage cookieManager filename storage = liftIO $ do
    cookieManager' <- unsafeManagedPtrCastPtr cookieManager
    filename' <- textToCString filename
    let storage' = (fromIntegral . fromEnum) storage
    webkit_cookie_manager_set_persistent_storage cookieManager' filename' storage'
    touchManagedPtr cookieManager
    freeMem filename'
    return ()

#if defined(ENABLE_OVERLOADING)
data CookieManagerSetPersistentStorageMethodInfo
instance (signature ~ (T.Text -> WebKit2.Enums.CookiePersistentStorage -> m ()), MonadIO m, IsCookieManager a) => O.OverloadedMethod CookieManagerSetPersistentStorageMethodInfo a signature where
    overloadedMethod = cookieManagerSetPersistentStorage

instance O.OverloadedMethodInfo CookieManagerSetPersistentStorageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.CookieManager.cookieManagerSetPersistentStorage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-CookieManager.html#v:cookieManagerSetPersistentStorage"
        })


#endif


