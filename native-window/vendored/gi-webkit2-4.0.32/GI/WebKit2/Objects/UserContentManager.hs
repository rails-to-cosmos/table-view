{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Manages user-defined content which affects web pages.
-- 
-- Using a t'GI.WebKit2.Objects.UserContentManager.UserContentManager' user CSS style sheets can be set to
-- be injected in the web pages loaded by a t'GI.WebKit2.Objects.WebView.WebView', by
-- 'GI.WebKit2.Objects.UserContentManager.userContentManagerAddStyleSheet'.
-- 
-- To use a t'GI.WebKit2.Objects.UserContentManager.UserContentManager', it must be created using
-- 'GI.WebKit2.Objects.UserContentManager.userContentManagerNew', and then used to construct
-- a t'GI.WebKit2.Objects.WebView.WebView'. User style sheets can be created with
-- 'GI.WebKit2.Structs.UserStyleSheet.userStyleSheetNew'.
-- 
-- User style sheets can be added and removed at any time, but
-- they will affect the web pages loaded afterwards.
-- 
-- /Since: 2.6/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.UserContentManager
    ( 

-- * Exported types
    UserContentManager(..)                  ,
    IsUserContentManager                    ,
    toUserContentManager                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [addFilter]("GI.WebKit2.Objects.UserContentManager#g:method:addFilter"), [addScript]("GI.WebKit2.Objects.UserContentManager#g:method:addScript"), [addStyleSheet]("GI.WebKit2.Objects.UserContentManager#g:method:addStyleSheet"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [registerScriptMessageHandler]("GI.WebKit2.Objects.UserContentManager#g:method:registerScriptMessageHandler"), [registerScriptMessageHandlerInWorld]("GI.WebKit2.Objects.UserContentManager#g:method:registerScriptMessageHandlerInWorld"), [registerScriptMessageHandlerWithReply]("GI.WebKit2.Objects.UserContentManager#g:method:registerScriptMessageHandlerWithReply"), [removeAllFilters]("GI.WebKit2.Objects.UserContentManager#g:method:removeAllFilters"), [removeAllScripts]("GI.WebKit2.Objects.UserContentManager#g:method:removeAllScripts"), [removeAllStyleSheets]("GI.WebKit2.Objects.UserContentManager#g:method:removeAllStyleSheets"), [removeFilter]("GI.WebKit2.Objects.UserContentManager#g:method:removeFilter"), [removeFilterById]("GI.WebKit2.Objects.UserContentManager#g:method:removeFilterById"), [removeScript]("GI.WebKit2.Objects.UserContentManager#g:method:removeScript"), [removeStyleSheet]("GI.WebKit2.Objects.UserContentManager#g:method:removeStyleSheet"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [unregisterScriptMessageHandler]("GI.WebKit2.Objects.UserContentManager#g:method:unregisterScriptMessageHandler"), [unregisterScriptMessageHandlerInWorld]("GI.WebKit2.Objects.UserContentManager#g:method:unregisterScriptMessageHandlerInWorld"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveUserContentManagerMethod         ,
#endif

-- ** addFilter #method:addFilter#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerAddFilterMethodInfo   ,
#endif
    userContentManagerAddFilter             ,


-- ** addScript #method:addScript#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerAddScriptMethodInfo   ,
#endif
    userContentManagerAddScript             ,


-- ** addStyleSheet #method:addStyleSheet#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerAddStyleSheetMethodInfo,
#endif
    userContentManagerAddStyleSheet         ,


-- ** new #method:new#

    userContentManagerNew                   ,


-- ** registerScriptMessageHandler #method:registerScriptMessageHandler#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRegisterScriptMessageHandlerMethodInfo,
#endif
    userContentManagerRegisterScriptMessageHandler,


-- ** registerScriptMessageHandlerInWorld #method:registerScriptMessageHandlerInWorld#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRegisterScriptMessageHandlerInWorldMethodInfo,
#endif
    userContentManagerRegisterScriptMessageHandlerInWorld,


-- ** registerScriptMessageHandlerWithReply #method:registerScriptMessageHandlerWithReply#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRegisterScriptMessageHandlerWithReplyMethodInfo,
#endif
    userContentManagerRegisterScriptMessageHandlerWithReply,


-- ** removeAllFilters #method:removeAllFilters#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveAllFiltersMethodInfo,
#endif
    userContentManagerRemoveAllFilters      ,


-- ** removeAllScripts #method:removeAllScripts#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveAllScriptsMethodInfo,
#endif
    userContentManagerRemoveAllScripts      ,


-- ** removeAllStyleSheets #method:removeAllStyleSheets#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveAllStyleSheetsMethodInfo,
#endif
    userContentManagerRemoveAllStyleSheets  ,


-- ** removeFilter #method:removeFilter#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveFilterMethodInfo,
#endif
    userContentManagerRemoveFilter          ,


-- ** removeFilterById #method:removeFilterById#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveFilterByIdMethodInfo,
#endif
    userContentManagerRemoveFilterById      ,


-- ** removeScript #method:removeScript#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveScriptMethodInfo,
#endif
    userContentManagerRemoveScript          ,


-- ** removeStyleSheet #method:removeStyleSheet#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerRemoveStyleSheetMethodInfo,
#endif
    userContentManagerRemoveStyleSheet      ,


-- ** unregisterScriptMessageHandler #method:unregisterScriptMessageHandler#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerUnregisterScriptMessageHandlerMethodInfo,
#endif
    userContentManagerUnregisterScriptMessageHandler,


-- ** unregisterScriptMessageHandlerInWorld #method:unregisterScriptMessageHandlerInWorld#

#if defined(ENABLE_OVERLOADING)
    UserContentManagerUnregisterScriptMessageHandlerInWorldMethodInfo,
#endif
    userContentManagerUnregisterScriptMessageHandlerInWorld,




 -- * Signals


-- ** scriptMessageReceived #signal:scriptMessageReceived#

    UserContentManagerScriptMessageReceivedCallback,
#if defined(ENABLE_OVERLOADING)
    UserContentManagerScriptMessageReceivedSignalInfo,
#endif
    afterUserContentManagerScriptMessageReceived,
    onUserContentManagerScriptMessageReceived,


-- ** scriptMessageWithReplyReceived #signal:scriptMessageWithReplyReceived#

    UserContentManagerScriptMessageWithReplyReceivedCallback,
#if defined(ENABLE_OVERLOADING)
    UserContentManagerScriptMessageWithReplyReceivedSignalInfo,
#endif
    afterUserContentManagerScriptMessageWithReplyReceived,
    onUserContentManagerScriptMessageWithReplyReceived,




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
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Structs.JavascriptResult as WebKit2.JavascriptResult
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptMessageReply as WebKit2.ScriptMessageReply
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserScript as WebKit2.UserScript
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserStyleSheet as WebKit2.UserStyleSheet

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.WebKit2.Structs.JavascriptResult as WebKit2.JavascriptResult
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptMessageReply as WebKit2.ScriptMessageReply
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserScript as WebKit2.UserScript
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserStyleSheet as WebKit2.UserStyleSheet

#endif

-- | Memory-managed wrapper type.
newtype UserContentManager = UserContentManager (SP.ManagedPtr UserContentManager)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserContentManager where
    toManagedPtr (UserContentManager p) = p

foreign import ccall "webkit_user_content_manager_get_type"
    c_webkit_user_content_manager_get_type :: IO B.Types.GType

instance B.Types.TypedObject UserContentManager where
    glibType = c_webkit_user_content_manager_get_type

instance B.Types.GObject UserContentManager

-- | Type class for types which can be safely cast to t'UserContentManager', for instance with `toUserContentManager`.
class (SP.GObject o, O.IsDescendantOf UserContentManager o) => IsUserContentManager o
instance (SP.GObject o, O.IsDescendantOf UserContentManager o) => IsUserContentManager o

instance O.HasParentTypes UserContentManager
type instance O.ParentTypes UserContentManager = '[GObject.Object.Object]

-- | Cast to t'UserContentManager', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toUserContentManager :: (MIO.MonadIO m, IsUserContentManager o) => o -> m UserContentManager
toUserContentManager = MIO.liftIO . B.ManagedPtr.unsafeCastTo UserContentManager

-- | Convert t'UserContentManager' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserContentManager) where
    gvalueGType_ = c_webkit_user_content_manager_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr UserContentManager)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr UserContentManager)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject UserContentManager ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveUserContentManagerMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserContentManagerMethod "addFilter" o = UserContentManagerAddFilterMethodInfo
    ResolveUserContentManagerMethod "addScript" o = UserContentManagerAddScriptMethodInfo
    ResolveUserContentManagerMethod "addStyleSheet" o = UserContentManagerAddStyleSheetMethodInfo
    ResolveUserContentManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUserContentManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUserContentManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUserContentManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUserContentManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUserContentManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUserContentManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUserContentManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUserContentManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUserContentManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUserContentManagerMethod "registerScriptMessageHandler" o = UserContentManagerRegisterScriptMessageHandlerMethodInfo
    ResolveUserContentManagerMethod "registerScriptMessageHandlerInWorld" o = UserContentManagerRegisterScriptMessageHandlerInWorldMethodInfo
    ResolveUserContentManagerMethod "registerScriptMessageHandlerWithReply" o = UserContentManagerRegisterScriptMessageHandlerWithReplyMethodInfo
    ResolveUserContentManagerMethod "removeAllFilters" o = UserContentManagerRemoveAllFiltersMethodInfo
    ResolveUserContentManagerMethod "removeAllScripts" o = UserContentManagerRemoveAllScriptsMethodInfo
    ResolveUserContentManagerMethod "removeAllStyleSheets" o = UserContentManagerRemoveAllStyleSheetsMethodInfo
    ResolveUserContentManagerMethod "removeFilter" o = UserContentManagerRemoveFilterMethodInfo
    ResolveUserContentManagerMethod "removeFilterById" o = UserContentManagerRemoveFilterByIdMethodInfo
    ResolveUserContentManagerMethod "removeScript" o = UserContentManagerRemoveScriptMethodInfo
    ResolveUserContentManagerMethod "removeStyleSheet" o = UserContentManagerRemoveStyleSheetMethodInfo
    ResolveUserContentManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUserContentManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUserContentManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUserContentManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUserContentManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUserContentManagerMethod "unregisterScriptMessageHandler" o = UserContentManagerUnregisterScriptMessageHandlerMethodInfo
    ResolveUserContentManagerMethod "unregisterScriptMessageHandlerInWorld" o = UserContentManagerUnregisterScriptMessageHandlerInWorldMethodInfo
    ResolveUserContentManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUserContentManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUserContentManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUserContentManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUserContentManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUserContentManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUserContentManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUserContentManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserContentManagerMethod t UserContentManager, O.OverloadedMethod info UserContentManager p) => OL.IsLabel t (UserContentManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserContentManagerMethod t UserContentManager, O.OverloadedMethod info UserContentManager p, R.HasField t UserContentManager p) => R.HasField t UserContentManager p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserContentManagerMethod t UserContentManager, O.OverloadedMethodInfo info UserContentManager) => OL.IsLabel t (O.MethodProxy info UserContentManager) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal UserContentManager::script-message-received
-- | This signal is emitted when JavaScript in a web view calls
-- \<code>window.webkit.messageHandlers.\<name>.@/postMessage()/@\<\/code>, after registering
-- \<code>\<name>\<\/code> using
-- 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler'
-- 
-- /Since: 2.8/
type UserContentManagerScriptMessageReceivedCallback =
    WebKit2.JavascriptResult.JavascriptResult
    -- ^ /@value@/: the value received from the JavaScript world.
    -> IO ()

type C_UserContentManagerScriptMessageReceivedCallback =
    Ptr UserContentManager ->               -- object
    Ptr WebKit2.JavascriptResult.JavascriptResult ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_UserContentManagerScriptMessageReceivedCallback`.
foreign import ccall "wrapper"
    mk_UserContentManagerScriptMessageReceivedCallback :: C_UserContentManagerScriptMessageReceivedCallback -> IO (FunPtr C_UserContentManagerScriptMessageReceivedCallback)

wrap_UserContentManagerScriptMessageReceivedCallback :: 
    GObject a => (a -> UserContentManagerScriptMessageReceivedCallback) ->
    C_UserContentManagerScriptMessageReceivedCallback
wrap_UserContentManagerScriptMessageReceivedCallback gi'cb gi'selfPtr value _ = do
    B.ManagedPtr.withTransient  value $ \value' -> do
        B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  value'


-- | Connect a signal handler for the [scriptMessageReceived](#signal:scriptMessageReceived) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' userContentManager #scriptMessageReceived callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@script-message-received::detail@” instead.
-- 
onUserContentManagerScriptMessageReceived :: (IsUserContentManager a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => UserContentManagerScriptMessageReceivedCallback) -> m SignalHandlerId
onUserContentManagerScriptMessageReceived obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_UserContentManagerScriptMessageReceivedCallback wrapped
    wrapped'' <- mk_UserContentManagerScriptMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "script-message-received" wrapped'' SignalConnectBefore detail

-- | Connect a signal handler for the [scriptMessageReceived](#signal:scriptMessageReceived) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' userContentManager #scriptMessageReceived callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@script-message-received::detail@” instead.
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterUserContentManagerScriptMessageReceived :: (IsUserContentManager a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => UserContentManagerScriptMessageReceivedCallback) -> m SignalHandlerId
afterUserContentManagerScriptMessageReceived obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_UserContentManagerScriptMessageReceivedCallback wrapped
    wrapped'' <- mk_UserContentManagerScriptMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "script-message-received" wrapped'' SignalConnectAfter detail


#if defined(ENABLE_OVERLOADING)
data UserContentManagerScriptMessageReceivedSignalInfo
instance SignalInfo UserContentManagerScriptMessageReceivedSignalInfo where
    type HaskellCallbackType UserContentManagerScriptMessageReceivedSignalInfo = UserContentManagerScriptMessageReceivedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_UserContentManagerScriptMessageReceivedCallback cb
        cb'' <- mk_UserContentManagerScriptMessageReceivedCallback cb'
        connectSignalFunPtr obj "script-message-received" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager::script-message-received"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#g:signal:scriptMessageReceived"})

#endif

-- signal UserContentManager::script-message-with-reply-received
-- | This signal is emitted when JavaScript in a web view calls
-- \<code>window.webkit.messageHandlers.\<name>.@/postMessage()/@\<\/code>, after registering
-- \<code>\<name>\<\/code> using
-- 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandlerWithReply'
-- 
-- The given /@reply@/ can be used to send a return value with
-- 'GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyReturnValue' or an error message with
-- 'GI.WebKit2.Structs.ScriptMessageReply.scriptMessageReplyReturnErrorMessage'. If none of them are
-- called, an automatic reply with an undefined value will be sent.
-- 
-- It is possible to handle the reply asynchronously, by simply calling
-- 'GI.GObject.Objects.Object.objectRef' on the /@reply@/ and returning 'P.True'.
-- 
-- /Since: 2.40/
type UserContentManagerScriptMessageWithReplyReceivedCallback =
    JavaScriptCore.Value.Value
    -- ^ /@value@/: the value received from the JavaScript world.
    -> WebKit2.ScriptMessageReply.ScriptMessageReply
    -- ^ /@reply@/: the t'GI.WebKit2.Structs.ScriptMessageReply.ScriptMessageReply' to send the reply to the script message.
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_UserContentManagerScriptMessageWithReplyReceivedCallback =
    Ptr UserContentManager ->               -- object
    Ptr JavaScriptCore.Value.Value ->
    Ptr WebKit2.ScriptMessageReply.ScriptMessageReply ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_UserContentManagerScriptMessageWithReplyReceivedCallback`.
foreign import ccall "wrapper"
    mk_UserContentManagerScriptMessageWithReplyReceivedCallback :: C_UserContentManagerScriptMessageWithReplyReceivedCallback -> IO (FunPtr C_UserContentManagerScriptMessageWithReplyReceivedCallback)

wrap_UserContentManagerScriptMessageWithReplyReceivedCallback :: 
    GObject a => (a -> UserContentManagerScriptMessageWithReplyReceivedCallback) ->
    C_UserContentManagerScriptMessageWithReplyReceivedCallback
wrap_UserContentManagerScriptMessageWithReplyReceivedCallback gi'cb gi'selfPtr value reply _ = do
    value' <- (newObject JavaScriptCore.Value.Value) value
    B.ManagedPtr.withTransient  reply $ \reply' -> do
        result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  value' reply'
        let result' = (P.fromIntegral . P.fromEnum) result
        return result'


-- | Connect a signal handler for the [scriptMessageWithReplyReceived](#signal:scriptMessageWithReplyReceived) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' userContentManager #scriptMessageWithReplyReceived callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@script-message-with-reply-received::detail@” instead.
-- 
onUserContentManagerScriptMessageWithReplyReceived :: (IsUserContentManager a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => UserContentManagerScriptMessageWithReplyReceivedCallback) -> m SignalHandlerId
onUserContentManagerScriptMessageWithReplyReceived obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_UserContentManagerScriptMessageWithReplyReceivedCallback wrapped
    wrapped'' <- mk_UserContentManagerScriptMessageWithReplyReceivedCallback wrapped'
    connectSignalFunPtr obj "script-message-with-reply-received" wrapped'' SignalConnectBefore detail

-- | Connect a signal handler for the [scriptMessageWithReplyReceived](#signal:scriptMessageWithReplyReceived) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' userContentManager #scriptMessageWithReplyReceived callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@script-message-with-reply-received::detail@” instead.
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterUserContentManagerScriptMessageWithReplyReceived :: (IsUserContentManager a, MonadIO m) => a -> P.Maybe T.Text -> ((?self :: a) => UserContentManagerScriptMessageWithReplyReceivedCallback) -> m SignalHandlerId
afterUserContentManagerScriptMessageWithReplyReceived obj detail cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_UserContentManagerScriptMessageWithReplyReceivedCallback wrapped
    wrapped'' <- mk_UserContentManagerScriptMessageWithReplyReceivedCallback wrapped'
    connectSignalFunPtr obj "script-message-with-reply-received" wrapped'' SignalConnectAfter detail


#if defined(ENABLE_OVERLOADING)
data UserContentManagerScriptMessageWithReplyReceivedSignalInfo
instance SignalInfo UserContentManagerScriptMessageWithReplyReceivedSignalInfo where
    type HaskellCallbackType UserContentManagerScriptMessageWithReplyReceivedSignalInfo = UserContentManagerScriptMessageWithReplyReceivedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_UserContentManagerScriptMessageWithReplyReceivedCallback cb
        cb'' <- mk_UserContentManagerScriptMessageWithReplyReceivedCallback cb'
        connectSignalFunPtr obj "script-message-with-reply-received" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager::script-message-with-reply-received"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#g:signal:scriptMessageWithReplyReceived"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserContentManager
type instance O.AttributeList UserContentManager = UserContentManagerAttributeList
type UserContentManagerAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UserContentManager = UserContentManagerSignalList
type UserContentManagerSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("scriptMessageReceived", UserContentManagerScriptMessageReceivedSignalInfo), '("scriptMessageWithReplyReceived", UserContentManagerScriptMessageWithReplyReceivedSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method UserContentManager::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "UserContentManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_content_manager_new" webkit_user_content_manager_new :: 
    IO (Ptr UserContentManager)

-- | Creates a new user content manager.
-- 
-- /Since: 2.6/
userContentManagerNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UserContentManager
    -- ^ __Returns:__ A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
userContentManagerNew  = liftIO $ do
    result <- webkit_user_content_manager_new
    checkUnexpectedReturnNULL "userContentManagerNew" result
    result' <- (wrapObject UserContentManager) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserContentManager::add_filter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "filter"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilter" }
--           , argCType = Just "WebKitUserContentFilter*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentFilter"
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

foreign import ccall "webkit_user_content_manager_add_filter" webkit_user_content_manager_add_filter :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserContentFilter.UserContentFilter -> -- filter : TInterface (Name {namespace = "WebKit2", name = "UserContentFilter"})
    IO ()

-- | Adds a t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter' to the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- The same t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter' can be reused with multiple
-- t'GI.WebKit2.Objects.UserContentManager.UserContentManager' instances.
-- 
-- Filters need to be saved and loaded from t'GI.WebKit2.Objects.UserContentFilterStore.UserContentFilterStore'.
-- 
-- /Since: 2.24/
userContentManagerAddFilter ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserContentFilter.UserContentFilter
    -- ^ /@filter@/: A t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter'
    -> m ()
userContentManagerAddFilter manager filter = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    filter' <- unsafeManagedPtrGetPtr filter
    webkit_user_content_manager_add_filter manager' filter'
    touchManagedPtr manager
    touchManagedPtr filter
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerAddFilterMethodInfo
instance (signature ~ (WebKit2.UserContentFilter.UserContentFilter -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerAddFilterMethodInfo a signature where
    overloadedMethod = userContentManagerAddFilter

instance O.OverloadedMethodInfo UserContentManagerAddFilterMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerAddFilter",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerAddFilter"
        })


#endif

-- method UserContentManager::add_script
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "script"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserScript" }
--           , argCType = Just "WebKitUserScript*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserScript"
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

foreign import ccall "webkit_user_content_manager_add_script" webkit_user_content_manager_add_script :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserScript.UserScript ->    -- script : TInterface (Name {namespace = "WebKit2", name = "UserScript"})
    IO ()

-- | Adds a t'GI.WebKit2.Structs.UserScript.UserScript' to the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- The same t'GI.WebKit2.Structs.UserScript.UserScript' can be reused with multiple
-- t'GI.WebKit2.Objects.UserContentManager.UserContentManager' instances.
-- 
-- /Since: 2.6/
userContentManagerAddScript ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserScript.UserScript
    -- ^ /@script@/: A t'GI.WebKit2.Structs.UserScript.UserScript'
    -> m ()
userContentManagerAddScript manager script = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    script' <- unsafeManagedPtrGetPtr script
    webkit_user_content_manager_add_script manager' script'
    touchManagedPtr manager
    touchManagedPtr script
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerAddScriptMethodInfo
instance (signature ~ (WebKit2.UserScript.UserScript -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerAddScriptMethodInfo a signature where
    overloadedMethod = userContentManagerAddScript

instance O.OverloadedMethodInfo UserContentManagerAddScriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerAddScript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerAddScript"
        })


#endif

-- method UserContentManager::add_style_sheet
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "stylesheet"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleSheet" }
--           , argCType = Just "WebKitUserStyleSheet*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserStyleSheet"
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

foreign import ccall "webkit_user_content_manager_add_style_sheet" webkit_user_content_manager_add_style_sheet :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserStyleSheet.UserStyleSheet -> -- stylesheet : TInterface (Name {namespace = "WebKit2", name = "UserStyleSheet"})
    IO ()

-- | Adds a t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet' to the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- The same t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet' can be reused with multiple
-- t'GI.WebKit2.Objects.UserContentManager.UserContentManager' instances.
-- 
-- /Since: 2.6/
userContentManagerAddStyleSheet ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserStyleSheet.UserStyleSheet
    -- ^ /@stylesheet@/: A t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
    -> m ()
userContentManagerAddStyleSheet manager stylesheet = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    stylesheet' <- unsafeManagedPtrGetPtr stylesheet
    webkit_user_content_manager_add_style_sheet manager' stylesheet'
    touchManagedPtr manager
    touchManagedPtr stylesheet
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerAddStyleSheetMethodInfo
instance (signature ~ (WebKit2.UserStyleSheet.UserStyleSheet -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerAddStyleSheetMethodInfo a signature where
    overloadedMethod = userContentManagerAddStyleSheet

instance O.OverloadedMethodInfo UserContentManagerAddStyleSheetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerAddStyleSheet",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerAddStyleSheet"
        })


#endif

-- method UserContentManager::register_script_message_handler
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the script message channel"
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

foreign import ccall "webkit_user_content_manager_register_script_message_handler" webkit_user_content_manager_register_script_message_handler :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- name : TBasicType TUTF8
    IO CInt

-- | Registers a new user script message handler.
-- 
-- After it is registered,
-- scripts can use @window.webkit.messageHandlers.\<name>.postMessage(value)@
-- to send messages. Those messages are received by connecting handlers
-- to the [UserContentManager::scriptMessageReceived]("GI.WebKit2.Objects.UserContentManager#g:signal:scriptMessageReceived") signal. The
-- handler name is used as the detail of the signal. To avoid race
-- conditions between registering the handler name, and starting to
-- receive the signals, it is recommended to connect to the signal
-- *before* registering the handler name:
-- 
-- 
-- === /c code/
-- >WebKitWebView *view = webkit_web_view_new ();
-- >WebKitUserContentManager *manager = webkit_web_view_get_user_content_manager ();
-- >g_signal_connect (manager, "script-message-received::foobar",
-- >                  G_CALLBACK (handle_script_message), NULL);
-- >webkit_user_content_manager_register_script_message_handler (manager, "foobar");
-- 
-- 
-- Registering a script message handler will fail if the requested
-- name has been already registered before.
-- 
-- /Since: 2.8/
userContentManagerRegisterScriptMessageHandler ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@name@/: Name of the script message channel
    -> m Bool
    -- ^ __Returns:__ 'P.True' if message handler was registered successfully, or 'P.False' otherwise.
userContentManagerRegisterScriptMessageHandler manager name = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    name' <- textToCString name
    result <- webkit_user_content_manager_register_script_message_handler manager' name'
    let result' = (/= 0) result
    touchManagedPtr manager
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRegisterScriptMessageHandlerMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRegisterScriptMessageHandlerMethodInfo a signature where
    overloadedMethod = userContentManagerRegisterScriptMessageHandler

instance O.OverloadedMethodInfo UserContentManagerRegisterScriptMessageHandlerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRegisterScriptMessageHandler"
        })


#endif

-- method UserContentManager::register_script_message_handler_in_world
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the script message channel"
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
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a #WebKitScriptWorld"
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

foreign import ccall "webkit_user_content_manager_register_script_message_handler_in_world" webkit_user_content_manager_register_script_message_handler_in_world :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- world_name : TBasicType TUTF8
    IO CInt

-- | Registers a new user script message handler in script world.
-- 
-- Registers a new user script message handler in script world with name /@worldName@/.
-- See 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler' for full description.
-- 
-- Registering a script message handler will fail if the requested
-- name has been already registered before.
-- 
-- /Since: 2.22/
userContentManagerRegisterScriptMessageHandlerInWorld ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@name@/: Name of the script message channel
    -> T.Text
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> m Bool
    -- ^ __Returns:__ 'P.True' if message handler was registered successfully, or 'P.False' otherwise.
userContentManagerRegisterScriptMessageHandlerInWorld manager name worldName = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    name' <- textToCString name
    worldName' <- textToCString worldName
    result <- webkit_user_content_manager_register_script_message_handler_in_world manager' name' worldName'
    let result' = (/= 0) result
    touchManagedPtr manager
    freeMem name'
    freeMem worldName'
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRegisterScriptMessageHandlerInWorldMethodInfo
instance (signature ~ (T.Text -> T.Text -> m Bool), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRegisterScriptMessageHandlerInWorldMethodInfo a signature where
    overloadedMethod = userContentManagerRegisterScriptMessageHandlerInWorld

instance O.OverloadedMethodInfo UserContentManagerRegisterScriptMessageHandlerInWorldMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandlerInWorld",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRegisterScriptMessageHandlerInWorld"
        })


#endif

-- method UserContentManager::register_script_message_handler_with_reply
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the script message channel"
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
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a #WebKitScriptWorld"
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

foreign import ccall "webkit_user_content_manager_register_script_message_handler_with_reply" webkit_user_content_manager_register_script_message_handler_with_reply :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- world_name : TBasicType TUTF8
    IO CInt

-- | Registers a new user script message handler in script world with name /@worldName@/.
-- 
-- Different from 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler',
-- when using this function to register the handler, the connected signal is
-- script-message-with-reply-received, and a reply provided by the user is expected.
-- Otherwise, the user will receive a default undefined value.
-- 
-- If 'P.Nothing' is passed as the /@worldName@/, the default world will be used.
-- See 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler' for full description.
-- 
-- Registering a script message handler will fail if the requested
-- name has been already registered before.
-- 
-- The registered handler can be unregistered by using
-- 'GI.WebKit2.Objects.UserContentManager.userContentManagerUnregisterScriptMessageHandler'.
-- 
-- /Since: 2.40/
userContentManagerRegisterScriptMessageHandlerWithReply ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@name@/: Name of the script message channel
    -> Maybe (T.Text)
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> m Bool
    -- ^ __Returns:__ 'P.True' if message handler was registered successfully, or 'P.False' otherwise.
userContentManagerRegisterScriptMessageHandlerWithReply manager name worldName = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    name' <- textToCString name
    maybeWorldName <- case worldName of
        Nothing -> return FP.nullPtr
        Just jWorldName -> do
            jWorldName' <- textToCString jWorldName
            return jWorldName'
    result <- webkit_user_content_manager_register_script_message_handler_with_reply manager' name' maybeWorldName
    let result' = (/= 0) result
    touchManagedPtr manager
    freeMem name'
    freeMem maybeWorldName
    return result'

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRegisterScriptMessageHandlerWithReplyMethodInfo
instance (signature ~ (T.Text -> Maybe (T.Text) -> m Bool), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRegisterScriptMessageHandlerWithReplyMethodInfo a signature where
    overloadedMethod = userContentManagerRegisterScriptMessageHandlerWithReply

instance O.OverloadedMethodInfo UserContentManagerRegisterScriptMessageHandlerWithReplyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandlerWithReply",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRegisterScriptMessageHandlerWithReply"
        })


#endif

-- method UserContentManager::remove_all_filters
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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

foreign import ccall "webkit_user_content_manager_remove_all_filters" webkit_user_content_manager_remove_all_filters :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    IO ()

-- | Removes all content filters from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- /Since: 2.24/
userContentManagerRemoveAllFilters ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> m ()
userContentManagerRemoveAllFilters manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    webkit_user_content_manager_remove_all_filters manager'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveAllFiltersMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveAllFiltersMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveAllFilters

instance O.OverloadedMethodInfo UserContentManagerRemoveAllFiltersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveAllFilters",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveAllFilters"
        })


#endif

-- method UserContentManager::remove_all_scripts
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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

foreign import ccall "webkit_user_content_manager_remove_all_scripts" webkit_user_content_manager_remove_all_scripts :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    IO ()

-- | Removes all user scripts from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
-- 
-- See also 'GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveScript'.
-- 
-- /Since: 2.6/
userContentManagerRemoveAllScripts ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> m ()
userContentManagerRemoveAllScripts manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    webkit_user_content_manager_remove_all_scripts manager'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveAllScriptsMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveAllScriptsMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveAllScripts

instance O.OverloadedMethodInfo UserContentManagerRemoveAllScriptsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveAllScripts",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveAllScripts"
        })


#endif

-- method UserContentManager::remove_all_style_sheets
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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

foreign import ccall "webkit_user_content_manager_remove_all_style_sheets" webkit_user_content_manager_remove_all_style_sheets :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    IO ()

-- | Removes all user style sheets from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- /Since: 2.6/
userContentManagerRemoveAllStyleSheets ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> m ()
userContentManagerRemoveAllStyleSheets manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    webkit_user_content_manager_remove_all_style_sheets manager'
    touchManagedPtr manager
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveAllStyleSheetsMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveAllStyleSheetsMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveAllStyleSheets

instance O.OverloadedMethodInfo UserContentManagerRemoveAllStyleSheetsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveAllStyleSheets",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveAllStyleSheets"
        })


#endif

-- method UserContentManager::remove_filter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "filter"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentFilter" }
--           , argCType = Just "WebKitUserContentFilter*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentFilter"
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

foreign import ccall "webkit_user_content_manager_remove_filter" webkit_user_content_manager_remove_filter :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserContentFilter.UserContentFilter -> -- filter : TInterface (Name {namespace = "WebKit2", name = "UserContentFilter"})
    IO ()

-- | Removes a filter from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- Since 2.24
userContentManagerRemoveFilter ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserContentFilter.UserContentFilter
    -- ^ /@filter@/: A t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter'
    -> m ()
userContentManagerRemoveFilter manager filter = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    filter' <- unsafeManagedPtrGetPtr filter
    webkit_user_content_manager_remove_filter manager' filter'
    touchManagedPtr manager
    touchManagedPtr filter
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveFilterMethodInfo
instance (signature ~ (WebKit2.UserContentFilter.UserContentFilter -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveFilterMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveFilter

instance O.OverloadedMethodInfo UserContentManagerRemoveFilterMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveFilter",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveFilter"
        })


#endif

-- method UserContentManager::remove_filter_by_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "filter_id"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Filter identifier" , sinceVersion = Nothing }
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

foreign import ccall "webkit_user_content_manager_remove_filter_by_id" webkit_user_content_manager_remove_filter_by_id :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- filter_id : TBasicType TUTF8
    IO ()

-- | Removes a filter by the given identifier.
-- 
-- Removes a filter from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager' given the
-- identifier of a t'GI.WebKit2.Structs.UserContentFilter.UserContentFilter' as returned by
-- 'GI.WebKit2.Structs.UserContentFilter.userContentFilterGetIdentifier'.
-- 
-- /Since: 2.26/
userContentManagerRemoveFilterById ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@filterId@/: Filter identifier
    -> m ()
userContentManagerRemoveFilterById manager filterId = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    filterId' <- textToCString filterId
    webkit_user_content_manager_remove_filter_by_id manager' filterId'
    touchManagedPtr manager
    freeMem filterId'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveFilterByIdMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveFilterByIdMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveFilterById

instance O.OverloadedMethodInfo UserContentManagerRemoveFilterByIdMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveFilterById",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveFilterById"
        })


#endif

-- method UserContentManager::remove_script
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "script"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserScript" }
--           , argCType = Just "WebKitUserScript*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserScript"
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

foreign import ccall "webkit_user_content_manager_remove_script" webkit_user_content_manager_remove_script :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserScript.UserScript ->    -- script : TInterface (Name {namespace = "WebKit2", name = "UserScript"})
    IO ()

-- | Removes a t'GI.WebKit2.Structs.UserScript.UserScript' from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- See also 'GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveAllScripts'.
-- 
-- /Since: 2.32/
userContentManagerRemoveScript ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserScript.UserScript
    -- ^ /@script@/: A t'GI.WebKit2.Structs.UserScript.UserScript'
    -> m ()
userContentManagerRemoveScript manager script = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    script' <- unsafeManagedPtrGetPtr script
    webkit_user_content_manager_remove_script manager' script'
    touchManagedPtr manager
    touchManagedPtr script
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveScriptMethodInfo
instance (signature ~ (WebKit2.UserScript.UserScript -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveScriptMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveScript

instance O.OverloadedMethodInfo UserContentManagerRemoveScriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveScript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveScript"
        })


#endif

-- method UserContentManager::remove_style_sheet
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "stylesheet"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserStyleSheet" }
--           , argCType = Just "WebKitUserStyleSheet*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserStyleSheet"
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

foreign import ccall "webkit_user_content_manager_remove_style_sheet" webkit_user_content_manager_remove_style_sheet :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    Ptr WebKit2.UserStyleSheet.UserStyleSheet -> -- stylesheet : TInterface (Name {namespace = "WebKit2", name = "UserStyleSheet"})
    IO ()

-- | Removes a t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet' from the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- See also 'GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveAllStyleSheets'.
-- 
-- /Since: 2.32/
userContentManagerRemoveStyleSheet ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> WebKit2.UserStyleSheet.UserStyleSheet
    -- ^ /@stylesheet@/: A t'GI.WebKit2.Structs.UserStyleSheet.UserStyleSheet'
    -> m ()
userContentManagerRemoveStyleSheet manager stylesheet = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    stylesheet' <- unsafeManagedPtrGetPtr stylesheet
    webkit_user_content_manager_remove_style_sheet manager' stylesheet'
    touchManagedPtr manager
    touchManagedPtr stylesheet
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerRemoveStyleSheetMethodInfo
instance (signature ~ (WebKit2.UserStyleSheet.UserStyleSheet -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerRemoveStyleSheetMethodInfo a signature where
    overloadedMethod = userContentManagerRemoveStyleSheet

instance O.OverloadedMethodInfo UserContentManagerRemoveStyleSheetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerRemoveStyleSheet",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerRemoveStyleSheet"
        })


#endif

-- method UserContentManager::unregister_script_message_handler
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the script message channel"
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

foreign import ccall "webkit_user_content_manager_unregister_script_message_handler" webkit_user_content_manager_unregister_script_message_handler :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- name : TBasicType TUTF8
    IO ()

-- | Unregisters a previously registered message handler.
-- 
-- Note that this does *not* disconnect handlers for the
-- [UserContentManager::scriptMessageReceived]("GI.WebKit2.Objects.UserContentManager#g:signal:scriptMessageReceived") signal;
-- they will be kept connected, but the signal will not be emitted
-- unless the handler name is registered again.
-- 
-- See also 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandler'.
-- 
-- /Since: 2.8/
userContentManagerUnregisterScriptMessageHandler ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@name@/: Name of the script message channel
    -> m ()
userContentManagerUnregisterScriptMessageHandler manager name = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    name' <- textToCString name
    webkit_user_content_manager_unregister_script_message_handler manager' name'
    touchManagedPtr manager
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerUnregisterScriptMessageHandlerMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerUnregisterScriptMessageHandlerMethodInfo a signature where
    overloadedMethod = userContentManagerUnregisterScriptMessageHandler

instance O.OverloadedMethodInfo UserContentManagerUnregisterScriptMessageHandlerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerUnregisterScriptMessageHandler",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerUnregisterScriptMessageHandler"
        })


#endif

-- method UserContentManager::unregister_script_message_handler_in_world
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitUserContentManager"
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
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Name of the script message channel"
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
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a #WebKitScriptWorld"
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

foreign import ccall "webkit_user_content_manager_unregister_script_message_handler_in_world" webkit_user_content_manager_unregister_script_message_handler_in_world :: 
    Ptr UserContentManager ->               -- manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- world_name : TBasicType TUTF8
    IO ()

-- | Unregisters a previously registered message handler in script world with name /@worldName@/.
-- 
-- Note that this does *not* disconnect handlers for the
-- [UserContentManager::scriptMessageReceived]("GI.WebKit2.Objects.UserContentManager#g:signal:scriptMessageReceived") signal;
-- they will be kept connected, but the signal will not be emitted
-- unless the handler name is registered again.
-- 
-- See also 'GI.WebKit2.Objects.UserContentManager.userContentManagerRegisterScriptMessageHandlerInWorld'.
-- 
-- /Since: 2.22/
userContentManagerUnregisterScriptMessageHandlerInWorld ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserContentManager a) =>
    a
    -- ^ /@manager@/: A t'GI.WebKit2.Objects.UserContentManager.UserContentManager'
    -> T.Text
    -- ^ /@name@/: Name of the script message channel
    -> T.Text
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> m ()
userContentManagerUnregisterScriptMessageHandlerInWorld manager name worldName = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    name' <- textToCString name
    worldName' <- textToCString worldName
    webkit_user_content_manager_unregister_script_message_handler_in_world manager' name' worldName'
    touchManagedPtr manager
    freeMem name'
    freeMem worldName'
    return ()

#if defined(ENABLE_OVERLOADING)
data UserContentManagerUnregisterScriptMessageHandlerInWorldMethodInfo
instance (signature ~ (T.Text -> T.Text -> m ()), MonadIO m, IsUserContentManager a) => O.OverloadedMethod UserContentManagerUnregisterScriptMessageHandlerInWorldMethodInfo a signature where
    overloadedMethod = userContentManagerUnregisterScriptMessageHandlerInWorld

instance O.OverloadedMethodInfo UserContentManagerUnregisterScriptMessageHandlerInWorldMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserContentManager.userContentManagerUnregisterScriptMessageHandlerInWorld",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserContentManager.html#v:userContentManagerUnregisterScriptMessageHandlerInWorld"
        })


#endif


