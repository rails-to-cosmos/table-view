{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents the dropdown menu of a @select@ element in a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- When a select element in a t'GI.WebKit2.Objects.WebView.WebView' needs to display a dropdown menu, the signal
-- [WebView::showOptionMenu]("GI.WebKit2.Objects.WebView#g:signal:showOptionMenu") is emitted, providing a WebKitOptionMenu with the
-- t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem's that should be displayed.
-- 
-- /Since: 2.18/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.OptionMenu
    ( 

-- * Exported types
    OptionMenu(..)                          ,
    IsOptionMenu                            ,
    toOptionMenu                            ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [activateItem]("GI.WebKit2.Objects.OptionMenu#g:method:activateItem"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [close]("GI.WebKit2.Objects.OptionMenu#g:method:close"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [selectItem]("GI.WebKit2.Objects.OptionMenu#g:method:selectItem"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getEvent]("GI.WebKit2.Objects.OptionMenu#g:method:getEvent"), [getItem]("GI.WebKit2.Objects.OptionMenu#g:method:getItem"), [getNItems]("GI.WebKit2.Objects.OptionMenu#g:method:getNItems"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveOptionMenuMethod                 ,
#endif

-- ** activateItem #method:activateItem#

#if defined(ENABLE_OVERLOADING)
    OptionMenuActivateItemMethodInfo        ,
#endif
    optionMenuActivateItem                  ,


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    OptionMenuCloseMethodInfo               ,
#endif
    optionMenuClose                         ,


-- ** getEvent #method:getEvent#

#if defined(ENABLE_OVERLOADING)
    OptionMenuGetEventMethodInfo            ,
#endif
    optionMenuGetEvent                      ,


-- ** getItem #method:getItem#

#if defined(ENABLE_OVERLOADING)
    OptionMenuGetItemMethodInfo             ,
#endif
    optionMenuGetItem                       ,


-- ** getNItems #method:getNItems#

#if defined(ENABLE_OVERLOADING)
    OptionMenuGetNItemsMethodInfo           ,
#endif
    optionMenuGetNItems                     ,


-- ** selectItem #method:selectItem#

#if defined(ENABLE_OVERLOADING)
    OptionMenuSelectItemMethodInfo          ,
#endif
    optionMenuSelectItem                    ,




 -- * Signals


-- ** close #signal:close#

    OptionMenuCloseCallback                 ,
#if defined(ENABLE_OVERLOADING)
    OptionMenuCloseSignalInfo               ,
#endif
    afterOptionMenuClose                    ,
    onOptionMenuClose                       ,




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
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.WebKit2.Structs.OptionMenuItem as WebKit2.OptionMenuItem

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.WebKit2.Structs.OptionMenuItem as WebKit2.OptionMenuItem

#endif

-- | Memory-managed wrapper type.
newtype OptionMenu = OptionMenu (SP.ManagedPtr OptionMenu)
    deriving (Eq)

instance SP.ManagedPtrNewtype OptionMenu where
    toManagedPtr (OptionMenu p) = p

foreign import ccall "webkit_option_menu_get_type"
    c_webkit_option_menu_get_type :: IO B.Types.GType

instance B.Types.TypedObject OptionMenu where
    glibType = c_webkit_option_menu_get_type

instance B.Types.GObject OptionMenu

-- | Type class for types which can be safely cast to t'OptionMenu', for instance with `toOptionMenu`.
class (SP.GObject o, O.IsDescendantOf OptionMenu o) => IsOptionMenu o
instance (SP.GObject o, O.IsDescendantOf OptionMenu o) => IsOptionMenu o

instance O.HasParentTypes OptionMenu
type instance O.ParentTypes OptionMenu = '[GObject.Object.Object]

-- | Cast to t'OptionMenu', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toOptionMenu :: (MIO.MonadIO m, IsOptionMenu o) => o -> m OptionMenu
toOptionMenu = MIO.liftIO . B.ManagedPtr.unsafeCastTo OptionMenu

-- | Convert t'OptionMenu' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe OptionMenu) where
    gvalueGType_ = c_webkit_option_menu_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr OptionMenu)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr OptionMenu)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject OptionMenu ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveOptionMenuMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveOptionMenuMethod "activateItem" o = OptionMenuActivateItemMethodInfo
    ResolveOptionMenuMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveOptionMenuMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveOptionMenuMethod "close" o = OptionMenuCloseMethodInfo
    ResolveOptionMenuMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveOptionMenuMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveOptionMenuMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveOptionMenuMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveOptionMenuMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveOptionMenuMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveOptionMenuMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveOptionMenuMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveOptionMenuMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveOptionMenuMethod "selectItem" o = OptionMenuSelectItemMethodInfo
    ResolveOptionMenuMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveOptionMenuMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveOptionMenuMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveOptionMenuMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveOptionMenuMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveOptionMenuMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveOptionMenuMethod "getEvent" o = OptionMenuGetEventMethodInfo
    ResolveOptionMenuMethod "getItem" o = OptionMenuGetItemMethodInfo
    ResolveOptionMenuMethod "getNItems" o = OptionMenuGetNItemsMethodInfo
    ResolveOptionMenuMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveOptionMenuMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveOptionMenuMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveOptionMenuMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveOptionMenuMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveOptionMenuMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveOptionMenuMethod t OptionMenu, O.OverloadedMethod info OptionMenu p) => OL.IsLabel t (OptionMenu -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveOptionMenuMethod t OptionMenu, O.OverloadedMethod info OptionMenu p, R.HasField t OptionMenu p) => R.HasField t OptionMenu p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveOptionMenuMethod t OptionMenu, O.OverloadedMethodInfo info OptionMenu) => OL.IsLabel t (O.MethodProxy info OptionMenu) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal OptionMenu::close
-- | Emitted when closing a t'GI.WebKit2.Objects.OptionMenu.OptionMenu' is requested. This can happen
-- when the user explicitly calls 'GI.WebKit2.Objects.OptionMenu.optionMenuClose' or when the
-- element is detached from the current page.
-- 
-- /Since: 2.18/
type OptionMenuCloseCallback =
    IO ()

type C_OptionMenuCloseCallback =
    Ptr OptionMenu ->                       -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_OptionMenuCloseCallback`.
foreign import ccall "wrapper"
    mk_OptionMenuCloseCallback :: C_OptionMenuCloseCallback -> IO (FunPtr C_OptionMenuCloseCallback)

wrap_OptionMenuCloseCallback :: 
    GObject a => (a -> OptionMenuCloseCallback) ->
    C_OptionMenuCloseCallback
wrap_OptionMenuCloseCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' optionMenu #close callback
-- @
-- 
-- 
onOptionMenuClose :: (IsOptionMenu a, MonadIO m) => a -> ((?self :: a) => OptionMenuCloseCallback) -> m SignalHandlerId
onOptionMenuClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_OptionMenuCloseCallback wrapped
    wrapped'' <- mk_OptionMenuCloseCallback wrapped'
    connectSignalFunPtr obj "close" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' optionMenu #close callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterOptionMenuClose :: (IsOptionMenu a, MonadIO m) => a -> ((?self :: a) => OptionMenuCloseCallback) -> m SignalHandlerId
afterOptionMenuClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_OptionMenuCloseCallback wrapped
    wrapped'' <- mk_OptionMenuCloseCallback wrapped'
    connectSignalFunPtr obj "close" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data OptionMenuCloseSignalInfo
instance SignalInfo OptionMenuCloseSignalInfo where
    type HaskellCallbackType OptionMenuCloseSignalInfo = OptionMenuCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_OptionMenuCloseCallback cb
        cb'' <- mk_OptionMenuCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu::close"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#g:signal:close"})

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList OptionMenu
type instance O.AttributeList OptionMenu = OptionMenuAttributeList
type OptionMenuAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList OptionMenu = OptionMenuSignalList
type OptionMenuSignalList = ('[ '("close", OptionMenuCloseSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method OptionMenu::activate_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_option_menu_activate_item" webkit_option_menu_activate_item :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    Word32 ->                               -- index : TBasicType TUInt
    IO ()

-- | Activates the t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' at /@index@/ in /@menu@/.
-- 
-- Activating an item changes the value
-- of the element making the item the active one. You are expected to close the menu with
-- 'GI.WebKit2.Objects.OptionMenu.optionMenuClose' after activating an item, calling this function again will have no
-- effect.
-- 
-- /Since: 2.18/
optionMenuActivateItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> Word32
    -- ^ /@index@/: the index of the item
    -> m ()
optionMenuActivateItem menu index = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    webkit_option_menu_activate_item menu' index
    touchManagedPtr menu
    return ()

#if defined(ENABLE_OVERLOADING)
data OptionMenuActivateItemMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuActivateItemMethodInfo a signature where
    overloadedMethod = optionMenuActivateItem

instance O.OverloadedMethodInfo OptionMenuActivateItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuActivateItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuActivateItem"
        })


#endif

-- method OptionMenu::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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

foreign import ccall "webkit_option_menu_close" webkit_option_menu_close :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    IO ()

-- | Request to close a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'.
-- 
-- This emits WebKitOptionMenu[close](#g:signal:close) signal.
-- This function should always be called to notify WebKit that the associated
-- menu has been closed. If the menu is closed and neither 'GI.WebKit2.Objects.OptionMenu.optionMenuSelectItem'
-- nor 'GI.WebKit2.Objects.OptionMenu.optionMenuActivateItem' have been called, the element value remains
-- unchanged.
-- 
-- /Since: 2.18/
optionMenuClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> m ()
optionMenuClose menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    webkit_option_menu_close menu'
    touchManagedPtr menu
    return ()

#if defined(ENABLE_OVERLOADING)
data OptionMenuCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuCloseMethodInfo a signature where
    overloadedMethod = optionMenuClose

instance O.OverloadedMethodInfo OptionMenuCloseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuClose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuClose"
        })


#endif

-- method OptionMenu::get_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Event" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_option_menu_get_event" webkit_option_menu_get_event :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    IO (Ptr Gdk.Event.Event)

-- | Gets the t'GI.Gdk.Unions.Event.Event' that triggered the dropdown menu.
-- If /@menu@/ was not triggered by a user interaction, like a mouse click,
-- 'P.Nothing' is returned.
-- 
-- /Since: 2.40/
optionMenuGetEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> m Gdk.Event.Event
    -- ^ __Returns:__ the menu event or 'P.Nothing'.
optionMenuGetEvent menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_option_menu_get_event menu'
    checkUnexpectedReturnNULL "optionMenuGetEvent" result
    result' <- (newBoxed Gdk.Event.Event) result
    touchManagedPtr menu
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuGetEventMethodInfo
instance (signature ~ (m Gdk.Event.Event), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuGetEventMethodInfo a signature where
    overloadedMethod = optionMenuGetEvent

instance O.OverloadedMethodInfo OptionMenuGetEventMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuGetEvent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuGetEvent"
        })


#endif

-- method OptionMenu::get_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
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
--                  Name { namespace = "WebKit2" , name = "OptionMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_option_menu_get_item" webkit_option_menu_get_item :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    Word32 ->                               -- index : TBasicType TUInt
    IO (Ptr WebKit2.OptionMenuItem.OptionMenuItem)

-- | Returns the t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' at /@index@/ in /@menu@/.
-- 
-- /Since: 2.18/
optionMenuGetItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> Word32
    -- ^ /@index@/: the index of the item
    -> m (Maybe WebKit2.OptionMenuItem.OptionMenuItem)
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' of /@menu@/.
optionMenuGetItem menu index = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_option_menu_get_item menu' index
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed WebKit2.OptionMenuItem.OptionMenuItem) result'
        return result''
    touchManagedPtr menu
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data OptionMenuGetItemMethodInfo
instance (signature ~ (Word32 -> m (Maybe WebKit2.OptionMenuItem.OptionMenuItem)), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuGetItemMethodInfo a signature where
    overloadedMethod = optionMenuGetItem

instance O.OverloadedMethodInfo OptionMenuGetItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuGetItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuGetItem"
        })


#endif

-- method OptionMenu::get_n_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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

foreign import ccall "webkit_option_menu_get_n_items" webkit_option_menu_get_n_items :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    IO Word32

-- | Gets the length of the /@menu@/.
-- 
-- /Since: 2.18/
optionMenuGetNItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> m Word32
    -- ^ __Returns:__ the number of t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem's in /@menu@/
optionMenuGetNItems menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_option_menu_get_n_items menu'
    touchManagedPtr menu
    return result

#if defined(ENABLE_OVERLOADING)
data OptionMenuGetNItemsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuGetNItemsMethodInfo a signature where
    overloadedMethod = optionMenuGetNItems

instance O.OverloadedMethodInfo OptionMenuGetNItemsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuGetNItems",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuGetNItems"
        })


#endif

-- method OptionMenu::select_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenu" }
--           , argCType = Just "WebKitOptionMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenu"
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
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_option_menu_select_item" webkit_option_menu_select_item :: 
    Ptr OptionMenu ->                       -- menu : TInterface (Name {namespace = "WebKit2", name = "OptionMenu"})
    Word32 ->                               -- index : TBasicType TUInt
    IO ()

-- | Selects the t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' at /@index@/ in /@menu@/.
-- 
-- Selecting an item changes the
-- text shown by the combo button, but it doesn\'t change the value of the element. You need to
-- explicitly activate the item with 'GI.WebKit2.Objects.OptionMenu.optionMenuSelectItem' or close the menu with
-- 'GI.WebKit2.Objects.OptionMenu.optionMenuClose' in which case the currently selected item will be activated.
-- 
-- /Since: 2.18/
optionMenuSelectItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsOptionMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> Word32
    -- ^ /@index@/: the index of the item
    -> m ()
optionMenuSelectItem menu index = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    webkit_option_menu_select_item menu' index
    touchManagedPtr menu
    return ()

#if defined(ENABLE_OVERLOADING)
data OptionMenuSelectItemMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsOptionMenu a) => O.OverloadedMethod OptionMenuSelectItemMethodInfo a signature where
    overloadedMethod = optionMenuSelectItem

instance O.OverloadedMethodInfo OptionMenuSelectItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.OptionMenu.optionMenuSelectItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-OptionMenu.html#v:optionMenuSelectItem"
        })


#endif


