{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Holds information about a notification that should be shown to the user.
-- 
-- /Since: 2.8/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.Notification
    ( 

-- * Exported types
    Notification(..)                        ,
    IsNotification                          ,
    toNotification                          ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [clicked]("GI.WebKit2.Objects.Notification#g:method:clicked"), [close]("GI.WebKit2.Objects.Notification#g:method:close"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getBody]("GI.WebKit2.Objects.Notification#g:method:getBody"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getId]("GI.WebKit2.Objects.Notification#g:method:getId"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getTag]("GI.WebKit2.Objects.Notification#g:method:getTag"), [getTitle]("GI.WebKit2.Objects.Notification#g:method:getTitle").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveNotificationMethod               ,
#endif

-- ** clicked #method:clicked#

#if defined(ENABLE_OVERLOADING)
    NotificationClickedMethodInfo           ,
#endif
    notificationClicked                     ,


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    NotificationCloseMethodInfo             ,
#endif
    notificationClose                       ,


-- ** getBody #method:getBody#

#if defined(ENABLE_OVERLOADING)
    NotificationGetBodyMethodInfo           ,
#endif
    notificationGetBody                     ,


-- ** getId #method:getId#

#if defined(ENABLE_OVERLOADING)
    NotificationGetIdMethodInfo             ,
#endif
    notificationGetId                       ,


-- ** getTag #method:getTag#

#if defined(ENABLE_OVERLOADING)
    NotificationGetTagMethodInfo            ,
#endif
    notificationGetTag                      ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    NotificationGetTitleMethodInfo          ,
#endif
    notificationGetTitle                    ,




 -- * Properties


-- ** body #attr:body#
-- | The body for the notification.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    NotificationBodyPropertyInfo            ,
#endif
    getNotificationBody                     ,
#if defined(ENABLE_OVERLOADING)
    notificationBody                        ,
#endif


-- ** id #attr:id#
-- | The unique id for the notification.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    NotificationIdPropertyInfo              ,
#endif
    getNotificationId                       ,
#if defined(ENABLE_OVERLOADING)
    notificationId                          ,
#endif


-- ** tag #attr:tag#
-- | The tag identifier for the notification.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    NotificationTagPropertyInfo             ,
#endif
    getNotificationTag                      ,
#if defined(ENABLE_OVERLOADING)
    notificationTag                         ,
#endif


-- ** title #attr:title#
-- | The title for the notification.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    NotificationTitlePropertyInfo           ,
#endif
    getNotificationTitle                    ,
#if defined(ENABLE_OVERLOADING)
    notificationTitle                       ,
#endif




 -- * Signals


-- ** clicked #signal:clicked#

    NotificationClickedCallback             ,
#if defined(ENABLE_OVERLOADING)
    NotificationClickedSignalInfo           ,
#endif
    afterNotificationClicked                ,
    onNotificationClicked                   ,


-- ** closed #signal:closed#

    NotificationClosedCallback              ,
#if defined(ENABLE_OVERLOADING)
    NotificationClosedSignalInfo            ,
#endif
    afterNotificationClosed                 ,
    onNotificationClosed                    ,




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
newtype Notification = Notification (SP.ManagedPtr Notification)
    deriving (Eq)

instance SP.ManagedPtrNewtype Notification where
    toManagedPtr (Notification p) = p

foreign import ccall "webkit_notification_get_type"
    c_webkit_notification_get_type :: IO B.Types.GType

instance B.Types.TypedObject Notification where
    glibType = c_webkit_notification_get_type

instance B.Types.GObject Notification

-- | Type class for types which can be safely cast to t'Notification', for instance with `toNotification`.
class (SP.GObject o, O.IsDescendantOf Notification o) => IsNotification o
instance (SP.GObject o, O.IsDescendantOf Notification o) => IsNotification o

instance O.HasParentTypes Notification
type instance O.ParentTypes Notification = '[GObject.Object.Object]

-- | Cast to t'Notification', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toNotification :: (MIO.MonadIO m, IsNotification o) => o -> m Notification
toNotification = MIO.liftIO . B.ManagedPtr.unsafeCastTo Notification

-- | Convert t'Notification' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Notification) where
    gvalueGType_ = c_webkit_notification_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Notification)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Notification)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Notification ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveNotificationMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveNotificationMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNotificationMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNotificationMethod "clicked" o = NotificationClickedMethodInfo
    ResolveNotificationMethod "close" o = NotificationCloseMethodInfo
    ResolveNotificationMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNotificationMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNotificationMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNotificationMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNotificationMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNotificationMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNotificationMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNotificationMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNotificationMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNotificationMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNotificationMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNotificationMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNotificationMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNotificationMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNotificationMethod "getBody" o = NotificationGetBodyMethodInfo
    ResolveNotificationMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNotificationMethod "getId" o = NotificationGetIdMethodInfo
    ResolveNotificationMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNotificationMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNotificationMethod "getTag" o = NotificationGetTagMethodInfo
    ResolveNotificationMethod "getTitle" o = NotificationGetTitleMethodInfo
    ResolveNotificationMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNotificationMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNotificationMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNotificationMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNotificationMethod t Notification, O.OverloadedMethod info Notification p) => OL.IsLabel t (Notification -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveNotificationMethod t Notification, O.OverloadedMethod info Notification p, R.HasField t Notification p) => R.HasField t Notification p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveNotificationMethod t Notification, O.OverloadedMethodInfo info Notification) => OL.IsLabel t (O.MethodProxy info Notification) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal Notification::clicked
-- | Emitted when a notification has been clicked. See 'GI.WebKit2.Objects.Notification.notificationClicked'.
-- 
-- /Since: 2.12/
type NotificationClickedCallback =
    IO ()

type C_NotificationClickedCallback =
    Ptr Notification ->                     -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotificationClickedCallback`.
foreign import ccall "wrapper"
    mk_NotificationClickedCallback :: C_NotificationClickedCallback -> IO (FunPtr C_NotificationClickedCallback)

wrap_NotificationClickedCallback :: 
    GObject a => (a -> NotificationClickedCallback) ->
    C_NotificationClickedCallback
wrap_NotificationClickedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [clicked](#signal:clicked) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notification #clicked callback
-- @
-- 
-- 
onNotificationClicked :: (IsNotification a, MonadIO m) => a -> ((?self :: a) => NotificationClickedCallback) -> m SignalHandlerId
onNotificationClicked obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_NotificationClickedCallback wrapped
    wrapped'' <- mk_NotificationClickedCallback wrapped'
    connectSignalFunPtr obj "clicked" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [clicked](#signal:clicked) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notification #clicked callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterNotificationClicked :: (IsNotification a, MonadIO m) => a -> ((?self :: a) => NotificationClickedCallback) -> m SignalHandlerId
afterNotificationClicked obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_NotificationClickedCallback wrapped
    wrapped'' <- mk_NotificationClickedCallback wrapped'
    connectSignalFunPtr obj "clicked" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotificationClickedSignalInfo
instance SignalInfo NotificationClickedSignalInfo where
    type HaskellCallbackType NotificationClickedSignalInfo = NotificationClickedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotificationClickedCallback cb
        cb'' <- mk_NotificationClickedCallback cb'
        connectSignalFunPtr obj "clicked" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification::clicked"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:signal:clicked"})

#endif

-- signal Notification::closed
-- | Emitted when a notification has been withdrawn.
-- 
-- The default handler will close the notification using libnotify, if built with
-- support for it.
-- 
-- /Since: 2.8/
type NotificationClosedCallback =
    IO ()

type C_NotificationClosedCallback =
    Ptr Notification ->                     -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotificationClosedCallback`.
foreign import ccall "wrapper"
    mk_NotificationClosedCallback :: C_NotificationClosedCallback -> IO (FunPtr C_NotificationClosedCallback)

wrap_NotificationClosedCallback :: 
    GObject a => (a -> NotificationClosedCallback) ->
    C_NotificationClosedCallback
wrap_NotificationClosedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notification #closed callback
-- @
-- 
-- 
onNotificationClosed :: (IsNotification a, MonadIO m) => a -> ((?self :: a) => NotificationClosedCallback) -> m SignalHandlerId
onNotificationClosed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_NotificationClosedCallback wrapped
    wrapped'' <- mk_NotificationClosedCallback wrapped'
    connectSignalFunPtr obj "closed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notification #closed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterNotificationClosed :: (IsNotification a, MonadIO m) => a -> ((?self :: a) => NotificationClosedCallback) -> m SignalHandlerId
afterNotificationClosed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_NotificationClosedCallback wrapped
    wrapped'' <- mk_NotificationClosedCallback wrapped'
    connectSignalFunPtr obj "closed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotificationClosedSignalInfo
instance SignalInfo NotificationClosedSignalInfo where
    type HaskellCallbackType NotificationClosedSignalInfo = NotificationClosedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotificationClosedCallback cb
        cb'' <- mk_NotificationClosedCallback cb'
        connectSignalFunPtr obj "closed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification::closed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:signal:closed"})

#endif

-- VVV Prop "body"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@body@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notification #body
-- @
getNotificationBody :: (MonadIO m, IsNotification o) => o -> m T.Text
getNotificationBody obj = MIO.liftIO $ checkUnexpectedNothing "getNotificationBody" $ B.Properties.getObjectPropertyString obj "body"

#if defined(ENABLE_OVERLOADING)
data NotificationBodyPropertyInfo
instance AttrInfo NotificationBodyPropertyInfo where
    type AttrAllowedOps NotificationBodyPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NotificationBodyPropertyInfo = IsNotification
    type AttrSetTypeConstraint NotificationBodyPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NotificationBodyPropertyInfo = (~) ()
    type AttrTransferType NotificationBodyPropertyInfo = ()
    type AttrGetType NotificationBodyPropertyInfo = T.Text
    type AttrLabel NotificationBodyPropertyInfo = "body"
    type AttrOrigin NotificationBodyPropertyInfo = Notification
    attrGet = getNotificationBody
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.body"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:attr:body"
        })
#endif

-- VVV Prop "id"
   -- Type: TBasicType TUInt64
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notification #id
-- @
getNotificationId :: (MonadIO m, IsNotification o) => o -> m Word64
getNotificationId obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt64 obj "id"

#if defined(ENABLE_OVERLOADING)
data NotificationIdPropertyInfo
instance AttrInfo NotificationIdPropertyInfo where
    type AttrAllowedOps NotificationIdPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint NotificationIdPropertyInfo = IsNotification
    type AttrSetTypeConstraint NotificationIdPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NotificationIdPropertyInfo = (~) ()
    type AttrTransferType NotificationIdPropertyInfo = ()
    type AttrGetType NotificationIdPropertyInfo = Word64
    type AttrLabel NotificationIdPropertyInfo = "id"
    type AttrOrigin NotificationIdPropertyInfo = Notification
    attrGet = getNotificationId
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.id"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:attr:id"
        })
#endif

-- VVV Prop "tag"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@tag@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notification #tag
-- @
getNotificationTag :: (MonadIO m, IsNotification o) => o -> m (Maybe T.Text)
getNotificationTag obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "tag"

#if defined(ENABLE_OVERLOADING)
data NotificationTagPropertyInfo
instance AttrInfo NotificationTagPropertyInfo where
    type AttrAllowedOps NotificationTagPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NotificationTagPropertyInfo = IsNotification
    type AttrSetTypeConstraint NotificationTagPropertyInfo = (~) ()
    type AttrTransferTypeConstraint NotificationTagPropertyInfo = (~) ()
    type AttrTransferType NotificationTagPropertyInfo = ()
    type AttrGetType NotificationTagPropertyInfo = (Maybe T.Text)
    type AttrLabel NotificationTagPropertyInfo = "tag"
    type AttrOrigin NotificationTagPropertyInfo = Notification
    attrGet = getNotificationTag
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.tag"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:attr:tag"
        })
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notification #title
-- @
getNotificationTitle :: (MonadIO m, IsNotification o) => o -> m T.Text
getNotificationTitle obj = MIO.liftIO $ checkUnexpectedNothing "getNotificationTitle" $ B.Properties.getObjectPropertyString obj "title"

#if defined(ENABLE_OVERLOADING)
data NotificationTitlePropertyInfo
instance AttrInfo NotificationTitlePropertyInfo where
    type AttrAllowedOps NotificationTitlePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NotificationTitlePropertyInfo = IsNotification
    type AttrSetTypeConstraint NotificationTitlePropertyInfo = (~) ()
    type AttrTransferTypeConstraint NotificationTitlePropertyInfo = (~) ()
    type AttrTransferType NotificationTitlePropertyInfo = ()
    type AttrGetType NotificationTitlePropertyInfo = T.Text
    type AttrLabel NotificationTitlePropertyInfo = "title"
    type AttrOrigin NotificationTitlePropertyInfo = Notification
    attrGet = getNotificationTitle
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.title"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#g:attr:title"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Notification
type instance O.AttributeList Notification = NotificationAttributeList
type NotificationAttributeList = ('[ '("body", NotificationBodyPropertyInfo), '("id", NotificationIdPropertyInfo), '("tag", NotificationTagPropertyInfo), '("title", NotificationTitlePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
notificationBody :: AttrLabelProxy "body"
notificationBody = AttrLabelProxy

notificationId :: AttrLabelProxy "id"
notificationId = AttrLabelProxy

notificationTag :: AttrLabelProxy "tag"
notificationTag = AttrLabelProxy

notificationTitle :: AttrLabelProxy "title"
notificationTitle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Notification = NotificationSignalList
type NotificationSignalList = ('[ '("clicked", NotificationClickedSignalInfo), '("closed", NotificationClosedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Notification::clicked
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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

foreign import ccall "webkit_notification_clicked" webkit_notification_clicked :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO ()

-- | Tells WebKit the notification has been clicked.
-- 
-- This will emit the
-- [Notification::clicked]("GI.WebKit2.Objects.Notification#g:signal:clicked") signal.
-- 
-- /Since: 2.12/
notificationClicked ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m ()
notificationClicked notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    webkit_notification_clicked notification'
    touchManagedPtr notification
    return ()

#if defined(ENABLE_OVERLOADING)
data NotificationClickedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationClickedMethodInfo a signature where
    overloadedMethod = notificationClicked

instance O.OverloadedMethodInfo NotificationClickedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationClicked",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationClicked"
        })


#endif

-- method Notification::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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

foreign import ccall "webkit_notification_close" webkit_notification_close :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO ()

-- | Closes the notification.
-- 
-- /Since: 2.8/
notificationClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m ()
notificationClose notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    webkit_notification_close notification'
    touchManagedPtr notification
    return ()

#if defined(ENABLE_OVERLOADING)
data NotificationCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationCloseMethodInfo a signature where
    overloadedMethod = notificationClose

instance O.OverloadedMethodInfo NotificationCloseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationClose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationClose"
        })


#endif

-- method Notification::get_body
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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

foreign import ccall "webkit_notification_get_body" webkit_notification_get_body :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO CString

-- | Obtains the body for the notification.
-- 
-- /Since: 2.8/
notificationGetBody ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m T.Text
    -- ^ __Returns:__ the body for the notification
notificationGetBody notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    result <- webkit_notification_get_body notification'
    checkUnexpectedReturnNULL "notificationGetBody" result
    result' <- cstringToText result
    touchManagedPtr notification
    return result'

#if defined(ENABLE_OVERLOADING)
data NotificationGetBodyMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationGetBodyMethodInfo a signature where
    overloadedMethod = notificationGetBody

instance O.OverloadedMethodInfo NotificationGetBodyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationGetBody",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationGetBody"
        })


#endif

-- method Notification::get_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_notification_get_id" webkit_notification_get_id :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO Word64

-- | Obtains the unique id for the notification.
-- 
-- /Since: 2.8/
notificationGetId ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m Word64
    -- ^ __Returns:__ the unique id for the notification
notificationGetId notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    result <- webkit_notification_get_id notification'
    touchManagedPtr notification
    return result

#if defined(ENABLE_OVERLOADING)
data NotificationGetIdMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationGetIdMethodInfo a signature where
    overloadedMethod = notificationGetId

instance O.OverloadedMethodInfo NotificationGetIdMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationGetId",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationGetId"
        })


#endif

-- method Notification::get_tag
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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

foreign import ccall "webkit_notification_get_tag" webkit_notification_get_tag :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO CString

-- | Obtains the tag identifier for the notification.
-- 
-- /Since: 2.16/
notificationGetTag ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the tag for the notification
notificationGetTag notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    result <- webkit_notification_get_tag notification'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr notification
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotificationGetTagMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationGetTagMethodInfo a signature where
    overloadedMethod = notificationGetTag

instance O.OverloadedMethodInfo NotificationGetTagMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationGetTag",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationGetTag"
        })


#endif

-- method Notification::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notification"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Notification" }
--           , argCType = Just "WebKitNotification*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNotification"
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

foreign import ccall "webkit_notification_get_title" webkit_notification_get_title :: 
    Ptr Notification ->                     -- notification : TInterface (Name {namespace = "WebKit2", name = "Notification"})
    IO CString

-- | Obtains the title for the notification.
-- 
-- /Since: 2.8/
notificationGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotification a) =>
    a
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> m T.Text
    -- ^ __Returns:__ the title for the notification
notificationGetTitle notification = liftIO $ do
    notification' <- unsafeManagedPtrCastPtr notification
    result <- webkit_notification_get_title notification'
    checkUnexpectedReturnNULL "notificationGetTitle" result
    result' <- cstringToText result
    touchManagedPtr notification
    return result'

#if defined(ENABLE_OVERLOADING)
data NotificationGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsNotification a) => O.OverloadedMethod NotificationGetTitleMethodInfo a signature where
    overloadedMethod = notificationGetTitle

instance O.OverloadedMethodInfo NotificationGetTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Notification.notificationGetTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Notification.html#v:notificationGetTitle"
        })


#endif


