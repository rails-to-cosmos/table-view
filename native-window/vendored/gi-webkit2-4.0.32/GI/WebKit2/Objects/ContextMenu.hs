{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents the context menu in a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- t'GI.WebKit2.Objects.ContextMenu.ContextMenu' represents a context menu containing
-- t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's in a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- When a t'GI.WebKit2.Objects.WebView.WebView' is about to display the context menu, it
-- emits the [WebView::contextMenu]("GI.WebKit2.Objects.WebView#g:signal:contextMenu") signal, which has the
-- t'GI.WebKit2.Objects.ContextMenu.ContextMenu' as an argument. You can modify it, adding new
-- submenus that you can create with 'GI.WebKit2.Objects.ContextMenu.contextMenuNew', adding
-- new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's with
-- 'GI.WebKit2.Objects.ContextMenu.contextMenuPrepend', 'GI.WebKit2.Objects.ContextMenu.contextMenuAppend' or
-- 'GI.WebKit2.Objects.ContextMenu.contextMenuInsert', maybe after having removed the
-- existing ones with 'GI.WebKit2.Objects.ContextMenu.contextMenuRemoveAll'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.ContextMenu
    ( 

-- * Exported types
    ContextMenu(..)                         ,
    IsContextMenu                           ,
    toContextMenu                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [append]("GI.WebKit2.Objects.ContextMenu#g:method:append"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [first]("GI.WebKit2.Objects.ContextMenu#g:method:first"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [insert]("GI.WebKit2.Objects.ContextMenu#g:method:insert"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [last]("GI.WebKit2.Objects.ContextMenu#g:method:last"), [moveItem]("GI.WebKit2.Objects.ContextMenu#g:method:moveItem"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [prepend]("GI.WebKit2.Objects.ContextMenu#g:method:prepend"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [remove]("GI.WebKit2.Objects.ContextMenu#g:method:remove"), [removeAll]("GI.WebKit2.Objects.ContextMenu#g:method:removeAll"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getEvent]("GI.WebKit2.Objects.ContextMenu#g:method:getEvent"), [getItemAtPosition]("GI.WebKit2.Objects.ContextMenu#g:method:getItemAtPosition"), [getItems]("GI.WebKit2.Objects.ContextMenu#g:method:getItems"), [getNItems]("GI.WebKit2.Objects.ContextMenu#g:method:getNItems"), [getPosition]("GI.WebKit2.Objects.ContextMenu#g:method:getPosition"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getUserData]("GI.WebKit2.Objects.ContextMenu#g:method:getUserData").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setUserData]("GI.WebKit2.Objects.ContextMenu#g:method:setUserData").

#if defined(ENABLE_OVERLOADING)
    ResolveContextMenuMethod                ,
#endif

-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    ContextMenuAppendMethodInfo             ,
#endif
    contextMenuAppend                       ,


-- ** first #method:first#

#if defined(ENABLE_OVERLOADING)
    ContextMenuFirstMethodInfo              ,
#endif
    contextMenuFirst                        ,


-- ** getEvent #method:getEvent#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetEventMethodInfo           ,
#endif
    contextMenuGetEvent                     ,


-- ** getItemAtPosition #method:getItemAtPosition#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetItemAtPositionMethodInfo  ,
#endif
    contextMenuGetItemAtPosition            ,


-- ** getItems #method:getItems#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetItemsMethodInfo           ,
#endif
    contextMenuGetItems                     ,


-- ** getNItems #method:getNItems#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetNItemsMethodInfo          ,
#endif
    contextMenuGetNItems                    ,


-- ** getPosition #method:getPosition#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetPositionMethodInfo        ,
#endif
    contextMenuGetPosition                  ,


-- ** getUserData #method:getUserData#

#if defined(ENABLE_OVERLOADING)
    ContextMenuGetUserDataMethodInfo        ,
#endif
    contextMenuGetUserData                  ,


-- ** insert #method:insert#

#if defined(ENABLE_OVERLOADING)
    ContextMenuInsertMethodInfo             ,
#endif
    contextMenuInsert                       ,


-- ** last #method:last#

#if defined(ENABLE_OVERLOADING)
    ContextMenuLastMethodInfo               ,
#endif
    contextMenuLast                         ,


-- ** moveItem #method:moveItem#

#if defined(ENABLE_OVERLOADING)
    ContextMenuMoveItemMethodInfo           ,
#endif
    contextMenuMoveItem                     ,


-- ** new #method:new#

    contextMenuNew                          ,


-- ** newWithItems #method:newWithItems#

    contextMenuNewWithItems                 ,


-- ** prepend #method:prepend#

#if defined(ENABLE_OVERLOADING)
    ContextMenuPrependMethodInfo            ,
#endif
    contextMenuPrepend                      ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    ContextMenuRemoveMethodInfo             ,
#endif
    contextMenuRemove                       ,


-- ** removeAll #method:removeAll#

#if defined(ENABLE_OVERLOADING)
    ContextMenuRemoveAllMethodInfo          ,
#endif
    contextMenuRemoveAll                    ,


-- ** setUserData #method:setUserData#

#if defined(ENABLE_OVERLOADING)
    ContextMenuSetUserDataMethodInfo        ,
#endif
    contextMenuSetUserData                  ,




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
import qualified GI.Gio.Interfaces.Action as Gio.Action
import qualified GI.Gtk.Objects.Action as Gtk.Action
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenuItem as WebKit2.ContextMenuItem

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenuItem as WebKit2.ContextMenuItem

#endif

-- | Memory-managed wrapper type.
newtype ContextMenu = ContextMenu (SP.ManagedPtr ContextMenu)
    deriving (Eq)

instance SP.ManagedPtrNewtype ContextMenu where
    toManagedPtr (ContextMenu p) = p

foreign import ccall "webkit_context_menu_get_type"
    c_webkit_context_menu_get_type :: IO B.Types.GType

instance B.Types.TypedObject ContextMenu where
    glibType = c_webkit_context_menu_get_type

instance B.Types.GObject ContextMenu

-- | Type class for types which can be safely cast to t'ContextMenu', for instance with `toContextMenu`.
class (SP.GObject o, O.IsDescendantOf ContextMenu o) => IsContextMenu o
instance (SP.GObject o, O.IsDescendantOf ContextMenu o) => IsContextMenu o

instance O.HasParentTypes ContextMenu
type instance O.ParentTypes ContextMenu = '[GObject.Object.Object]

-- | Cast to t'ContextMenu', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toContextMenu :: (MIO.MonadIO m, IsContextMenu o) => o -> m ContextMenu
toContextMenu = MIO.liftIO . B.ManagedPtr.unsafeCastTo ContextMenu

-- | Convert t'ContextMenu' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ContextMenu) where
    gvalueGType_ = c_webkit_context_menu_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr ContextMenu)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr ContextMenu)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject ContextMenu ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveContextMenuMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveContextMenuMethod "append" o = ContextMenuAppendMethodInfo
    ResolveContextMenuMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveContextMenuMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveContextMenuMethod "first" o = ContextMenuFirstMethodInfo
    ResolveContextMenuMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveContextMenuMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveContextMenuMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveContextMenuMethod "insert" o = ContextMenuInsertMethodInfo
    ResolveContextMenuMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveContextMenuMethod "last" o = ContextMenuLastMethodInfo
    ResolveContextMenuMethod "moveItem" o = ContextMenuMoveItemMethodInfo
    ResolveContextMenuMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveContextMenuMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveContextMenuMethod "prepend" o = ContextMenuPrependMethodInfo
    ResolveContextMenuMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveContextMenuMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveContextMenuMethod "remove" o = ContextMenuRemoveMethodInfo
    ResolveContextMenuMethod "removeAll" o = ContextMenuRemoveAllMethodInfo
    ResolveContextMenuMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveContextMenuMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveContextMenuMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveContextMenuMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveContextMenuMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveContextMenuMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveContextMenuMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveContextMenuMethod "getEvent" o = ContextMenuGetEventMethodInfo
    ResolveContextMenuMethod "getItemAtPosition" o = ContextMenuGetItemAtPositionMethodInfo
    ResolveContextMenuMethod "getItems" o = ContextMenuGetItemsMethodInfo
    ResolveContextMenuMethod "getNItems" o = ContextMenuGetNItemsMethodInfo
    ResolveContextMenuMethod "getPosition" o = ContextMenuGetPositionMethodInfo
    ResolveContextMenuMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveContextMenuMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveContextMenuMethod "getUserData" o = ContextMenuGetUserDataMethodInfo
    ResolveContextMenuMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveContextMenuMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveContextMenuMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveContextMenuMethod "setUserData" o = ContextMenuSetUserDataMethodInfo
    ResolveContextMenuMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveContextMenuMethod t ContextMenu, O.OverloadedMethod info ContextMenu p) => OL.IsLabel t (ContextMenu -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveContextMenuMethod t ContextMenu, O.OverloadedMethod info ContextMenu p, R.HasField t ContextMenu p) => R.HasField t ContextMenu p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveContextMenuMethod t ContextMenu, O.OverloadedMethodInfo info ContextMenu) => OL.IsLabel t (O.MethodProxy info ContextMenu) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ContextMenu
type instance O.AttributeList ContextMenu = ContextMenuAttributeList
type ContextMenuAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ContextMenu = ContextMenuSignalList
type ContextMenuSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method ContextMenu::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "ContextMenu" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_new" webkit_context_menu_new :: 
    IO (Ptr ContextMenu)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object.
-- 
-- Creates a new t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object to be used as a submenu of an existing
-- t'GI.WebKit2.Objects.ContextMenu.ContextMenu'. The context menu of a t'GI.WebKit2.Objects.WebView.WebView' is created by the view
-- and passed as an argument of [WebView::contextMenu]("GI.WebKit2.Objects.WebView#g:signal:contextMenu") signal.
-- To add items to the menu use 'GI.WebKit2.Objects.ContextMenu.contextMenuPrepend',
-- 'GI.WebKit2.Objects.ContextMenu.contextMenuAppend' or 'GI.WebKit2.Objects.ContextMenu.contextMenuInsert'.
-- See also 'GI.WebKit2.Objects.ContextMenu.contextMenuNewWithItems' to create a t'GI.WebKit2.Objects.ContextMenu.ContextMenu' with
-- a list of initial items.
contextMenuNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ContextMenu
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object
contextMenuNew  = liftIO $ do
    result <- webkit_context_menu_new
    checkUnexpectedReturnNULL "contextMenuNew" result
    result' <- (wrapObject ContextMenu) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenu::new_with_items
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "items"
--           , argType =
--               TGList
--                 (TInterface
--                    Name { namespace = "WebKit2" , name = "ContextMenuItem" })
--           , argCType = Just "GList*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GList of #WebKitContextMenuItem"
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
--               (TInterface Name { namespace = "WebKit2" , name = "ContextMenu" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_new_with_items" webkit_context_menu_new_with_items :: 
    Ptr (GList (Ptr WebKit2.ContextMenuItem.ContextMenuItem)) -> -- items : TGList (TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"}))
    IO (Ptr ContextMenu)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object with the given items.
-- 
-- Creates a new t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object to be used as a submenu of an existing
-- t'GI.WebKit2.Objects.ContextMenu.ContextMenu' with the given initial items.
-- See also 'GI.WebKit2.Objects.ContextMenu.contextMenuNew'
contextMenuNewWithItems ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.ContextMenuItem.IsContextMenuItem a) =>
    [a]
    -- ^ /@items@/: a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m ContextMenu
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.ContextMenu.ContextMenu' object
contextMenuNewWithItems items = liftIO $ do
    items' <- mapM unsafeManagedPtrCastPtr items
    items'' <- packGList items'
    result <- webkit_context_menu_new_with_items items''
    checkUnexpectedReturnNULL "contextMenuNewWithItems" result
    result' <- (wrapObject ContextMenu) result
    mapM_ touchManagedPtr items
    g_list_free items''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenu::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitContextMenuItem to add"
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

foreign import ccall "webkit_context_menu_append" webkit_context_menu_append :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr WebKit2.ContextMenuItem.ContextMenuItem -> -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO ()

-- | Adds /@item@/ at the end of the /@menu@/.
contextMenuAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> b
    -- ^ /@item@/: the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' to add
    -> m ()
contextMenuAppend menu item = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    item' <- unsafeManagedPtrCastPtr item
    webkit_context_menu_append menu' item'
    touchManagedPtr menu
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuAppendMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) => O.OverloadedMethod ContextMenuAppendMethodInfo a signature where
    overloadedMethod = contextMenuAppend

instance O.OverloadedMethodInfo ContextMenuAppendMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuAppend",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuAppend"
        })


#endif

-- method ContextMenu::first
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--                  Name { namespace = "WebKit2" , name = "ContextMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_first" webkit_context_menu_first :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr WebKit2.ContextMenuItem.ContextMenuItem)

-- | Gets the first item in the /@menu@/.
contextMenuFirst ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)
    -- ^ __Returns:__ the first t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' of /@menu@/,
    --    or 'P.Nothing' if the t'GI.WebKit2.Objects.ContextMenu.ContextMenu' is empty.
contextMenuFirst menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_first menu'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.ContextMenuItem.ContextMenuItem) result'
        return result''
    touchManagedPtr menu
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuFirstMethodInfo
instance (signature ~ (m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuFirstMethodInfo a signature where
    overloadedMethod = contextMenuFirst

instance O.OverloadedMethodInfo ContextMenuFirstMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuFirst",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuFirst"
        })


#endif

-- method ContextMenu::get_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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

foreign import ccall "webkit_context_menu_get_event" webkit_context_menu_get_event :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr Gdk.Event.Event)

-- | Gets the t'GI.Gdk.Unions.Event.Event' that triggered the context menu. This function only returns a valid
-- t'GI.Gdk.Unions.Event.Event' when called for a t'GI.WebKit2.Objects.ContextMenu.ContextMenu' passed to [WebView::contextMenu]("GI.WebKit2.Objects.WebView#g:signal:contextMenu")
-- signal; in all other cases, 'P.Nothing' is returned.
-- 
-- The returned t'GI.Gdk.Unions.Event.Event' is expected to be one of the following types:
-- \<itemizedlist>
-- \<listitem>\<para>
-- a t'GI.Gdk.Structs.EventButton.EventButton' of type 'GI.Gdk.Enums.EventTypeButtonPress' when the context menu was triggered with mouse.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
-- a t'GI.Gdk.Structs.EventKey.EventKey' of type 'GI.Gdk.Enums.EventTypeKeyPress' if the keyboard was used to show the menu.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
-- a generic t'GI.Gdk.Unions.Event.Event' of type 'GI.Gdk.Enums.EventTypeNothing' when the [Widget::popupMenu]("GI.Gtk.Objects.Widget#g:signal:popupMenu") signal was used to show the context menu.
-- \<\/para>\<\/listitem>
-- \<\/itemizedlist>
-- 
-- /Since: 2.40/
contextMenuGetEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m Gdk.Event.Event
    -- ^ __Returns:__ the menu event or 'P.Nothing'.
contextMenuGetEvent menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_get_event menu'
    checkUnexpectedReturnNULL "contextMenuGetEvent" result
    result' <- (newBoxed Gdk.Event.Event) result
    touchManagedPtr menu
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetEventMethodInfo
instance (signature ~ (m Gdk.Event.Event), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetEventMethodInfo a signature where
    overloadedMethod = contextMenuGetEvent

instance O.OverloadedMethodInfo ContextMenuGetEventMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetEvent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetEvent"
        })


#endif

-- method ContextMenu::get_item_at_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "position"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position of the item, counting from 0"
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
--                  Name { namespace = "WebKit2" , name = "ContextMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_get_item_at_position" webkit_context_menu_get_item_at_position :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Word32 ->                               -- position : TBasicType TUInt
    IO (Ptr WebKit2.ContextMenuItem.ContextMenuItem)

-- | Gets the item at the given position in the /@menu@/.
contextMenuGetItemAtPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> Word32
    -- ^ /@position@/: the position of the item, counting from 0
    -> m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' at position /@position@/ in /@menu@/,
    --    or 'P.Nothing' if the position is off the end of the /@menu@/.
contextMenuGetItemAtPosition menu position = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_get_item_at_position menu' position
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.ContextMenuItem.ContextMenuItem) result'
        return result''
    touchManagedPtr menu
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetItemAtPositionMethodInfo
instance (signature ~ (Word32 -> m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetItemAtPositionMethodInfo a signature where
    overloadedMethod = contextMenuGetItemAtPosition

instance O.OverloadedMethodInfo ContextMenuGetItemAtPositionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetItemAtPosition",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetItemAtPosition"
        })


#endif

-- method ContextMenu::get_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--                     Name { namespace = "WebKit2" , name = "ContextMenuItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_get_items" webkit_context_menu_get_items :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr (GList (Ptr WebKit2.ContextMenuItem.ContextMenuItem)))

-- | Returns the item list of /@menu@/.
contextMenuGetItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m [WebKit2.ContextMenuItem.ContextMenuItem]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of
    --    t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's
contextMenuGetItems menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_get_items menu'
    result' <- unpackGList result
    result'' <- mapM (newObject WebKit2.ContextMenuItem.ContextMenuItem) result'
    touchManagedPtr menu
    return result''

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetItemsMethodInfo
instance (signature ~ (m [WebKit2.ContextMenuItem.ContextMenuItem]), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetItemsMethodInfo a signature where
    overloadedMethod = contextMenuGetItems

instance O.OverloadedMethodInfo ContextMenuGetItemsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetItems",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetItems"
        })


#endif

-- method ContextMenu::get_n_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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

foreign import ccall "webkit_context_menu_get_n_items" webkit_context_menu_get_n_items :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO Word32

-- | Gets the length of the /@menu@/.
contextMenuGetNItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m Word32
    -- ^ __Returns:__ the number of t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's in /@menu@/
contextMenuGetNItems menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_get_n_items menu'
    touchManagedPtr menu
    return result

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetNItemsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetNItemsMethodInfo a signature where
    overloadedMethod = contextMenuGetNItems

instance O.OverloadedMethodInfo ContextMenuGetNItemsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetNItems",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetNItems"
        })


#endif

-- method ContextMenu::get_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , argCType = Just "gint*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the x coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , argCType = Just "gint*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the y coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_get_position" webkit_context_menu_get_position :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr Int32 ->                            -- x : TBasicType TInt
    Ptr Int32 ->                            -- y : TBasicType TInt
    IO CInt

-- | Gets the position in view coordinates where the context menu was triggered.
-- 
-- This function only returns valid coordinates when called for a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
-- passed to [WebView::contextMenu]("GI.WebKit2.Objects.WebView#g:signal:contextMenu") signal.
-- 
-- /Since: 2.52/
contextMenuGetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m ((Bool, Int32, Int32))
    -- ^ __Returns:__ 'P.True' if valid position coordinates are available, 'P.False' otherwise
contextMenuGetPosition menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    x <- allocMem :: IO (Ptr Int32)
    y <- allocMem :: IO (Ptr Int32)
    result <- webkit_context_menu_get_position menu' x y
    let result' = (/= 0) result
    x' <- peek x
    y' <- peek y
    touchManagedPtr menu
    freeMem x
    freeMem y
    return (result', x', y')

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetPositionMethodInfo
instance (signature ~ (m ((Bool, Int32, Int32))), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetPositionMethodInfo a signature where
    overloadedMethod = contextMenuGetPosition

instance O.OverloadedMethodInfo ContextMenuGetPositionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetPosition",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetPosition"
        })


#endif

-- method ContextMenu::get_user_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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

foreign import ccall "webkit_context_menu_get_user_data" webkit_context_menu_get_user_data :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr GVariant)

-- | Gets the user data of /@menu@/.
-- 
-- This function can be used from the UI Process to get user data previously set
-- from the Web Process with 'GI.WebKit2.Objects.ContextMenu.contextMenuSetUserData'.
-- 
-- /Since: 2.8/
contextMenuGetUserData ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m (Maybe GVariant)
    -- ^ __Returns:__ the user data of /@menu@/, or 'P.Nothing' if /@menu@/ doesn\'t have user data
contextMenuGetUserData menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_get_user_data menu'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- B.GVariant.newGVariantFromPtr result'
        return result''
    touchManagedPtr menu
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuGetUserDataMethodInfo
instance (signature ~ (m (Maybe GVariant)), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuGetUserDataMethodInfo a signature where
    overloadedMethod = contextMenuGetUserData

instance O.OverloadedMethodInfo ContextMenuGetUserDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuGetUserData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuGetUserData"
        })


#endif

-- method ContextMenu::insert
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitContextMenuItem to add"
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
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , argCType = Just "gint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position to insert the item"
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

foreign import ccall "webkit_context_menu_insert" webkit_context_menu_insert :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr WebKit2.ContextMenuItem.ContextMenuItem -> -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Inserts /@item@/ into the /@menu@/ at the given position.
-- 
-- If /@position@/ is negative, or is larger than the number of items
-- in the t'GI.WebKit2.Objects.ContextMenu.ContextMenu', the item is added on to the end of
-- the /@menu@/. The first position is 0.
contextMenuInsert ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> b
    -- ^ /@item@/: the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' to add
    -> Int32
    -- ^ /@position@/: the position to insert the item
    -> m ()
contextMenuInsert menu item position = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    item' <- unsafeManagedPtrCastPtr item
    webkit_context_menu_insert menu' item' position
    touchManagedPtr menu
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuInsertMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) => O.OverloadedMethod ContextMenuInsertMethodInfo a signature where
    overloadedMethod = contextMenuInsert

instance O.OverloadedMethodInfo ContextMenuInsertMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuInsert",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuInsert"
        })


#endif

-- method ContextMenu::last
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--                  Name { namespace = "WebKit2" , name = "ContextMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_last" webkit_context_menu_last :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr WebKit2.ContextMenuItem.ContextMenuItem)

-- | Gets the last item in the /@menu@/.
contextMenuLast ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)
    -- ^ __Returns:__ the last t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' of /@menu@/,
    --    or 'P.Nothing' if the t'GI.WebKit2.Objects.ContextMenu.ContextMenu' is empty.
contextMenuLast menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    result <- webkit_context_menu_last menu'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.ContextMenuItem.ContextMenuItem) result'
        return result''
    touchManagedPtr menu
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuLastMethodInfo
instance (signature ~ (m (Maybe WebKit2.ContextMenuItem.ContextMenuItem)), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuLastMethodInfo a signature where
    overloadedMethod = contextMenuLast

instance O.OverloadedMethodInfo ContextMenuLastMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuLast",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuLast"
        })


#endif

-- method ContextMenu::move_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitContextMenuItem to add"
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
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , argCType = Just "gint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new position to move the item"
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

foreign import ccall "webkit_context_menu_move_item" webkit_context_menu_move_item :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr WebKit2.ContextMenuItem.ContextMenuItem -> -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Moves /@item@/ to the given position in the /@menu@/.
-- 
-- If /@position@/ is negative, or is larger than the number of items
-- in the t'GI.WebKit2.Objects.ContextMenu.ContextMenu', the item is added on to the end of
-- the /@menu@/.
-- The first position is 0.
contextMenuMoveItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> b
    -- ^ /@item@/: the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' to add
    -> Int32
    -- ^ /@position@/: the new position to move the item
    -> m ()
contextMenuMoveItem menu item position = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    item' <- unsafeManagedPtrCastPtr item
    webkit_context_menu_move_item menu' item' position
    touchManagedPtr menu
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuMoveItemMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) => O.OverloadedMethod ContextMenuMoveItemMethodInfo a signature where
    overloadedMethod = contextMenuMoveItem

instance O.OverloadedMethodInfo ContextMenuMoveItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuMoveItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuMoveItem"
        })


#endif

-- method ContextMenu::prepend
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitContextMenuItem to add"
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

foreign import ccall "webkit_context_menu_prepend" webkit_context_menu_prepend :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr WebKit2.ContextMenuItem.ContextMenuItem -> -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO ()

-- | Adds /@item@/ at the beginning of the /@menu@/.
contextMenuPrepend ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> b
    -- ^ /@item@/: the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' to add
    -> m ()
contextMenuPrepend menu item = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    item' <- unsafeManagedPtrCastPtr item
    webkit_context_menu_prepend menu' item'
    touchManagedPtr menu
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuPrependMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) => O.OverloadedMethod ContextMenuPrependMethodInfo a signature where
    overloadedMethod = contextMenuPrepend

instance O.OverloadedMethodInfo ContextMenuPrependMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuPrepend",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuPrepend"
        })


#endif

-- method ContextMenu::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitContextMenuItem to remove"
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

foreign import ccall "webkit_context_menu_remove" webkit_context_menu_remove :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr WebKit2.ContextMenuItem.ContextMenuItem -> -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO ()

-- | Removes /@item@/ from the /@menu@/.
-- 
-- See also 'GI.WebKit2.Objects.ContextMenu.contextMenuRemoveAll' to remove all items.
contextMenuRemove ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> b
    -- ^ /@item@/: the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' to remove
    -> m ()
contextMenuRemove menu item = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    item' <- unsafeManagedPtrCastPtr item
    webkit_context_menu_remove menu' item'
    touchManagedPtr menu
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuRemoveMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContextMenu a, WebKit2.ContextMenuItem.IsContextMenuItem b) => O.OverloadedMethod ContextMenuRemoveMethodInfo a signature where
    overloadedMethod = contextMenuRemove

instance O.OverloadedMethodInfo ContextMenuRemoveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuRemove",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuRemove"
        })


#endif

-- method ContextMenu::remove_all
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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

foreign import ccall "webkit_context_menu_remove_all" webkit_context_menu_remove_all :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO ()

-- | Removes all items of the /@menu@/.
contextMenuRemoveAll ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m ()
contextMenuRemoveAll menu = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    webkit_context_menu_remove_all menu'
    touchManagedPtr menu
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuRemoveAllMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuRemoveAllMethodInfo a signature where
    overloadedMethod = contextMenuRemoveAll

instance O.OverloadedMethodInfo ContextMenuRemoveAllMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuRemoveAll",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuRemoveAll"
        })


#endif

-- method ContextMenu::set_user_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu"
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
--           { argCName = "user_data"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GVariant" , sinceVersion = Nothing }
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

foreign import ccall "webkit_context_menu_set_user_data" webkit_context_menu_set_user_data :: 
    Ptr ContextMenu ->                      -- menu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    Ptr GVariant ->                         -- user_data : TVariant
    IO ()

-- | Sets user data to /@menu@/.
-- 
-- This function can be used from a Web Process extension to set user data
-- that can be retrieved from the UI Process using 'GI.WebKit2.Objects.ContextMenu.contextMenuGetUserData'.
-- If the /@userData@/ t'GVariant' is floating, it is consumed.
-- 
-- /Since: 2.8/
contextMenuSetUserData ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenu a) =>
    a
    -- ^ /@menu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> GVariant
    -- ^ /@userData@/: a t'GVariant'
    -> m ()
contextMenuSetUserData menu userData = liftIO $ do
    menu' <- unsafeManagedPtrCastPtr menu
    userData' <- unsafeManagedPtrGetPtr userData
    webkit_context_menu_set_user_data menu' userData'
    touchManagedPtr menu
    touchManagedPtr userData
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuSetUserDataMethodInfo
instance (signature ~ (GVariant -> m ()), MonadIO m, IsContextMenu a) => O.OverloadedMethod ContextMenuSetUserDataMethodInfo a signature where
    overloadedMethod = contextMenuSetUserData

instance O.OverloadedMethodInfo ContextMenuSetUserDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenu.contextMenuSetUserData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenu.html#v:contextMenuSetUserData"
        })


#endif


