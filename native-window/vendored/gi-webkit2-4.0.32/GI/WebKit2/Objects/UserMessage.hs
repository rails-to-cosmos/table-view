{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Message that can be sent between the UI process and web process extensions.
-- 
-- A WebKitUserMessage is a message that can be used for the communication between the UI process
-- and web process extensions. A WebKitUserMessage always has a name, and it can also include parameters and
-- UNIX file descriptors. Messages can be sent from a t'GI.WebKit2.Objects.WebContext.WebContext' to all web process extensions,
-- from a web process extension to its corresponding t'GI.WebKit2.Objects.WebContext.WebContext', and from a t'GI.WebKit2.Objects.WebView.WebView' to its
-- corresponding @/WebKitWebPage/@ (and vice versa). One to one messages can be replied to directly with
-- 'GI.WebKit2.Objects.UserMessage.userMessageSendReply'.
-- 
-- /Since: 2.28/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.UserMessage
    ( 

-- * Exported types
    UserMessage(..)                         ,
    IsUserMessage                           ,
    toUserMessage                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [sendReply]("GI.WebKit2.Objects.UserMessage#g:method:sendReply"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getFdList]("GI.WebKit2.Objects.UserMessage#g:method:getFdList"), [getName]("GI.WebKit2.Objects.UserMessage#g:method:getName"), [getParameters]("GI.WebKit2.Objects.UserMessage#g:method:getParameters"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveUserMessageMethod                ,
#endif

-- ** getFdList #method:getFdList#

#if defined(ENABLE_OVERLOADING)
    UserMessageGetFdListMethodInfo          ,
#endif
    userMessageGetFdList                    ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    UserMessageGetNameMethodInfo            ,
#endif
    userMessageGetName                      ,


-- ** getParameters #method:getParameters#

#if defined(ENABLE_OVERLOADING)
    UserMessageGetParametersMethodInfo      ,
#endif
    userMessageGetParameters                ,


-- ** new #method:new#

    userMessageNew                          ,


-- ** newWithFdList #method:newWithFdList#

    userMessageNewWithFdList                ,


-- ** sendReply #method:sendReply#

#if defined(ENABLE_OVERLOADING)
    UserMessageSendReplyMethodInfo          ,
#endif
    userMessageSendReply                    ,




 -- * Properties


-- ** fdList #attr:fdList#
-- | The UNIX file descriptors of the user message.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    UserMessageFdListPropertyInfo           ,
#endif
    constructUserMessageFdList              ,
    getUserMessageFdList                    ,
#if defined(ENABLE_OVERLOADING)
    userMessageFdList                       ,
#endif


-- ** name #attr:name#
-- | The name of the user message.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    UserMessageNamePropertyInfo             ,
#endif
    constructUserMessageName                ,
    getUserMessageName                      ,
#if defined(ENABLE_OVERLOADING)
    userMessageName                         ,
#endif


-- ** parameters #attr:parameters#
-- | The parameters of the user message as a t'GVariant', or 'P.Nothing'
-- if the message doesn\'t include parameters. Note that only complete types are
-- allowed.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    UserMessageParametersPropertyInfo       ,
#endif
    constructUserMessageParameters          ,
    getUserMessageParameters                ,
#if defined(ENABLE_OVERLOADING)
    userMessageParameters                   ,
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
import qualified GI.Gio.Objects.UnixFDList as Gio.UnixFDList

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Objects.UnixFDList as Gio.UnixFDList

#endif

-- | Memory-managed wrapper type.
newtype UserMessage = UserMessage (SP.ManagedPtr UserMessage)
    deriving (Eq)

instance SP.ManagedPtrNewtype UserMessage where
    toManagedPtr (UserMessage p) = p

foreign import ccall "webkit_user_message_get_type"
    c_webkit_user_message_get_type :: IO B.Types.GType

instance B.Types.TypedObject UserMessage where
    glibType = c_webkit_user_message_get_type

instance B.Types.GObject UserMessage

-- | Type class for types which can be safely cast to t'UserMessage', for instance with `toUserMessage`.
class (SP.GObject o, O.IsDescendantOf UserMessage o) => IsUserMessage o
instance (SP.GObject o, O.IsDescendantOf UserMessage o) => IsUserMessage o

instance O.HasParentTypes UserMessage
type instance O.ParentTypes UserMessage = '[GObject.Object.Object]

-- | Cast to t'UserMessage', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toUserMessage :: (MIO.MonadIO m, IsUserMessage o) => o -> m UserMessage
toUserMessage = MIO.liftIO . B.ManagedPtr.unsafeCastTo UserMessage

-- | Convert t'UserMessage' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe UserMessage) where
    gvalueGType_ = c_webkit_user_message_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr UserMessage)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr UserMessage)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject UserMessage ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveUserMessageMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveUserMessageMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUserMessageMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUserMessageMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUserMessageMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUserMessageMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUserMessageMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUserMessageMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUserMessageMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUserMessageMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUserMessageMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUserMessageMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUserMessageMethod "sendReply" o = UserMessageSendReplyMethodInfo
    ResolveUserMessageMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUserMessageMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUserMessageMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUserMessageMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUserMessageMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUserMessageMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUserMessageMethod "getFdList" o = UserMessageGetFdListMethodInfo
    ResolveUserMessageMethod "getName" o = UserMessageGetNameMethodInfo
    ResolveUserMessageMethod "getParameters" o = UserMessageGetParametersMethodInfo
    ResolveUserMessageMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUserMessageMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUserMessageMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUserMessageMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUserMessageMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUserMessageMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUserMessageMethod t UserMessage, O.OverloadedMethod info UserMessage p) => OL.IsLabel t (UserMessage -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveUserMessageMethod t UserMessage, O.OverloadedMethod info UserMessage p, R.HasField t UserMessage p) => R.HasField t UserMessage p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveUserMessageMethod t UserMessage, O.OverloadedMethodInfo info UserMessage) => OL.IsLabel t (O.MethodProxy info UserMessage) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "fd-list"
   -- Type: TInterface (Name {namespace = "Gio", name = "UnixFDList"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@fd-list@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userMessage #fdList
-- @
getUserMessageFdList :: (MonadIO m, IsUserMessage o) => o -> m (Maybe Gio.UnixFDList.UnixFDList)
getUserMessageFdList obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "fd-list" Gio.UnixFDList.UnixFDList

-- | Construct a t'GValueConstruct' with valid value for the “@fd-list@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructUserMessageFdList :: (IsUserMessage o, MIO.MonadIO m, Gio.UnixFDList.IsUnixFDList a) => a -> m (GValueConstruct o)
constructUserMessageFdList val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "fd-list" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data UserMessageFdListPropertyInfo
instance AttrInfo UserMessageFdListPropertyInfo where
    type AttrAllowedOps UserMessageFdListPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint UserMessageFdListPropertyInfo = IsUserMessage
    type AttrSetTypeConstraint UserMessageFdListPropertyInfo = Gio.UnixFDList.IsUnixFDList
    type AttrTransferTypeConstraint UserMessageFdListPropertyInfo = Gio.UnixFDList.IsUnixFDList
    type AttrTransferType UserMessageFdListPropertyInfo = Gio.UnixFDList.UnixFDList
    type AttrGetType UserMessageFdListPropertyInfo = (Maybe Gio.UnixFDList.UnixFDList)
    type AttrLabel UserMessageFdListPropertyInfo = "fd-list"
    type AttrOrigin UserMessageFdListPropertyInfo = UserMessage
    attrGet = getUserMessageFdList
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Gio.UnixFDList.UnixFDList v
    attrConstruct = constructUserMessageFdList
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.fdList"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#g:attr:fdList"
        })
#endif

-- VVV Prop "name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userMessage #name
-- @
getUserMessageName :: (MonadIO m, IsUserMessage o) => o -> m T.Text
getUserMessageName obj = MIO.liftIO $ checkUnexpectedNothing "getUserMessageName" $ B.Properties.getObjectPropertyString obj "name"

-- | Construct a t'GValueConstruct' with valid value for the “@name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructUserMessageName :: (IsUserMessage o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructUserMessageName val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "name" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data UserMessageNamePropertyInfo
instance AttrInfo UserMessageNamePropertyInfo where
    type AttrAllowedOps UserMessageNamePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint UserMessageNamePropertyInfo = IsUserMessage
    type AttrSetTypeConstraint UserMessageNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint UserMessageNamePropertyInfo = (~) T.Text
    type AttrTransferType UserMessageNamePropertyInfo = T.Text
    type AttrGetType UserMessageNamePropertyInfo = T.Text
    type AttrLabel UserMessageNamePropertyInfo = "name"
    type AttrOrigin UserMessageNamePropertyInfo = UserMessage
    attrGet = getUserMessageName
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructUserMessageName
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.name"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#g:attr:name"
        })
#endif

-- VVV Prop "parameters"
   -- Type: TVariant
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@parameters@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' userMessage #parameters
-- @
getUserMessageParameters :: (MonadIO m, IsUserMessage o) => o -> m (Maybe GVariant)
getUserMessageParameters obj = MIO.liftIO $ B.Properties.getObjectPropertyVariant obj "parameters"

-- | Construct a t'GValueConstruct' with valid value for the “@parameters@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructUserMessageParameters :: (IsUserMessage o, MIO.MonadIO m) => GVariant -> m (GValueConstruct o)
constructUserMessageParameters val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyVariant "parameters" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data UserMessageParametersPropertyInfo
instance AttrInfo UserMessageParametersPropertyInfo where
    type AttrAllowedOps UserMessageParametersPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint UserMessageParametersPropertyInfo = IsUserMessage
    type AttrSetTypeConstraint UserMessageParametersPropertyInfo = (~) GVariant
    type AttrTransferTypeConstraint UserMessageParametersPropertyInfo = (~) GVariant
    type AttrTransferType UserMessageParametersPropertyInfo = GVariant
    type AttrGetType UserMessageParametersPropertyInfo = (Maybe GVariant)
    type AttrLabel UserMessageParametersPropertyInfo = "parameters"
    type AttrOrigin UserMessageParametersPropertyInfo = UserMessage
    attrGet = getUserMessageParameters
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructUserMessageParameters
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.parameters"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#g:attr:parameters"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UserMessage
type instance O.AttributeList UserMessage = UserMessageAttributeList
type UserMessageAttributeList = ('[ '("fdList", UserMessageFdListPropertyInfo), '("name", UserMessageNamePropertyInfo), '("parameters", UserMessageParametersPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
userMessageFdList :: AttrLabelProxy "fdList"
userMessageFdList = AttrLabelProxy

userMessageName :: AttrLabelProxy "name"
userMessageName = AttrLabelProxy

userMessageParameters :: AttrLabelProxy "parameters"
userMessageParameters = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UserMessage = UserMessageSignalList
type UserMessageSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method UserMessage::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the message name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parameters"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the message parameters as a #GVariant, or %NULL"
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
--               (TInterface Name { namespace = "WebKit2" , name = "UserMessage" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_message_new" webkit_user_message_new :: 
    CString ->                              -- name : TBasicType TUTF8
    Ptr GVariant ->                         -- parameters : TVariant
    IO (Ptr UserMessage)

-- | Create a new t'GI.WebKit2.Objects.UserMessage.UserMessage' with /@name@/.
-- 
-- /Since: 2.28/
userMessageNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@name@/: the message name
    -> Maybe (GVariant)
    -- ^ /@parameters@/: the message parameters as a t'GVariant', or 'P.Nothing'
    -> m UserMessage
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.UserMessage.UserMessage' object.
userMessageNew name parameters = liftIO $ do
    name' <- textToCString name
    maybeParameters <- case parameters of
        Nothing -> return FP.nullPtr
        Just jParameters -> do
            jParameters' <- unsafeManagedPtrGetPtr jParameters
            return jParameters'
    result <- webkit_user_message_new name' maybeParameters
    checkUnexpectedReturnNULL "userMessageNew" result
    result' <- (newObject UserMessage) result
    whenJust parameters touchManagedPtr
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserMessage::new_with_fd_list
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the message name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parameters"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the message parameters as a #GVariant"
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
--           { argCName = "fd_list"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "UnixFDList" }
--           , argCType = Just "GUnixFDList*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the message file descriptors"
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
--               (TInterface Name { namespace = "WebKit2" , name = "UserMessage" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_message_new_with_fd_list" webkit_user_message_new_with_fd_list :: 
    CString ->                              -- name : TBasicType TUTF8
    Ptr GVariant ->                         -- parameters : TVariant
    Ptr Gio.UnixFDList.UnixFDList ->        -- fd_list : TInterface (Name {namespace = "Gio", name = "UnixFDList"})
    IO (Ptr UserMessage)

-- | Create a new t'GI.WebKit2.Objects.UserMessage.UserMessage' including also a list of UNIX file descriptors to be sent.
-- 
-- /Since: 2.28/
userMessageNewWithFdList ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.UnixFDList.IsUnixFDList a) =>
    T.Text
    -- ^ /@name@/: the message name
    -> Maybe (GVariant)
    -- ^ /@parameters@/: the message parameters as a t'GVariant'
    -> Maybe (a)
    -- ^ /@fdList@/: the message file descriptors
    -> m UserMessage
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.UserMessage.UserMessage' object.
userMessageNewWithFdList name parameters fdList = liftIO $ do
    name' <- textToCString name
    maybeParameters <- case parameters of
        Nothing -> return FP.nullPtr
        Just jParameters -> do
            jParameters' <- unsafeManagedPtrGetPtr jParameters
            return jParameters'
    maybeFdList <- case fdList of
        Nothing -> return FP.nullPtr
        Just jFdList -> do
            jFdList' <- unsafeManagedPtrCastPtr jFdList
            return jFdList'
    result <- webkit_user_message_new_with_fd_list name' maybeParameters maybeFdList
    checkUnexpectedReturnNULL "userMessageNewWithFdList" result
    result' <- (newObject UserMessage) result
    whenJust parameters touchManagedPtr
    whenJust fdList touchManagedPtr
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UserMessage::get_fd_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
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
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "UnixFDList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_message_get_fd_list" webkit_user_message_get_fd_list :: 
    Ptr UserMessage ->                      -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    IO (Ptr Gio.UnixFDList.UnixFDList)

-- | Get the /@message@/ list of file descritpor.
-- 
-- /Since: 2.28/
userMessageGetFdList ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserMessage a) =>
    a
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> m (Maybe Gio.UnixFDList.UnixFDList)
    -- ^ __Returns:__ the message list of file descriptors
userMessageGetFdList message = liftIO $ do
    message' <- unsafeManagedPtrCastPtr message
    result <- webkit_user_message_get_fd_list message'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gio.UnixFDList.UnixFDList) result'
        return result''
    touchManagedPtr message
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data UserMessageGetFdListMethodInfo
instance (signature ~ (m (Maybe Gio.UnixFDList.UnixFDList)), MonadIO m, IsUserMessage a) => O.OverloadedMethod UserMessageGetFdListMethodInfo a signature where
    overloadedMethod = userMessageGetFdList

instance O.OverloadedMethodInfo UserMessageGetFdListMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.userMessageGetFdList",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#v:userMessageGetFdList"
        })


#endif

-- method UserMessage::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
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

foreign import ccall "webkit_user_message_get_name" webkit_user_message_get_name :: 
    Ptr UserMessage ->                      -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    IO CString

-- | Get the /@message@/ name.
-- 
-- /Since: 2.28/
userMessageGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserMessage a) =>
    a
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> m T.Text
    -- ^ __Returns:__ the message name
userMessageGetName message = liftIO $ do
    message' <- unsafeManagedPtrCastPtr message
    result <- webkit_user_message_get_name message'
    checkUnexpectedReturnNULL "userMessageGetName" result
    result' <- cstringToText result
    touchManagedPtr message
    return result'

#if defined(ENABLE_OVERLOADING)
data UserMessageGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsUserMessage a) => O.OverloadedMethod UserMessageGetNameMethodInfo a signature where
    overloadedMethod = userMessageGetName

instance O.OverloadedMethodInfo UserMessageGetNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.userMessageGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#v:userMessageGetName"
        })


#endif

-- method UserMessage::get_parameters
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
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
-- returnType: Just TVariant
-- throws : False
-- Skip return : False

foreign import ccall "webkit_user_message_get_parameters" webkit_user_message_get_parameters :: 
    Ptr UserMessage ->                      -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    IO (Ptr GVariant)

-- | Get the /@message@/ parameters.
-- 
-- /Since: 2.28/
userMessageGetParameters ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserMessage a) =>
    a
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> m (Maybe GVariant)
    -- ^ __Returns:__ the message parameters
userMessageGetParameters message = liftIO $ do
    message' <- unsafeManagedPtrCastPtr message
    result <- webkit_user_message_get_parameters message'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- B.GVariant.newGVariantFromPtr result'
        return result''
    touchManagedPtr message
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data UserMessageGetParametersMethodInfo
instance (signature ~ (m (Maybe GVariant)), MonadIO m, IsUserMessage a) => O.OverloadedMethod UserMessageGetParametersMethodInfo a signature where
    overloadedMethod = userMessageGetParameters

instance O.OverloadedMethodInfo UserMessageGetParametersMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.userMessageGetParameters",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#v:userMessageGetParameters"
        })


#endif

-- method UserMessage::send_reply
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
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
--           { argCName = "reply"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage to send as reply"
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

foreign import ccall "webkit_user_message_send_reply" webkit_user_message_send_reply :: 
    Ptr UserMessage ->                      -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    Ptr UserMessage ->                      -- reply : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    IO ()

-- | Send a reply to an user message.
-- 
-- If /@reply@/ is floating, it\'s consumed.
-- You can only send a reply to a t'GI.WebKit2.Objects.UserMessage.UserMessage' that has been
-- received.
-- 
-- /Since: 2.28/
userMessageSendReply ::
    (B.CallStack.HasCallStack, MonadIO m, IsUserMessage a, IsUserMessage b) =>
    a
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> b
    -- ^ /@reply@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage' to send as reply
    -> m ()
userMessageSendReply message reply = liftIO $ do
    message' <- unsafeManagedPtrCastPtr message
    reply' <- unsafeManagedPtrCastPtr reply
    webkit_user_message_send_reply message' reply'
    touchManagedPtr message
    touchManagedPtr reply
    return ()

#if defined(ENABLE_OVERLOADING)
data UserMessageSendReplyMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsUserMessage a, IsUserMessage b) => O.OverloadedMethod UserMessageSendReplyMethodInfo a signature where
    overloadedMethod = userMessageSendReply

instance O.OverloadedMethodInfo UserMessageSendReplyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.UserMessage.userMessageSendReply",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-UserMessage.html#v:userMessageSendReply"
        })


#endif


