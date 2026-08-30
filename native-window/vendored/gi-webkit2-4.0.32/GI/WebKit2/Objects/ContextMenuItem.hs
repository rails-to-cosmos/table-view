{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- One item of a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'.
-- 
-- The t'GI.WebKit2.Objects.ContextMenu.ContextMenu' is composed of t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's. These items can be created from a t'GI.Gtk.Objects.Action.Action', from a
-- t'GI.WebKit2.Enums.ContextMenuAction' or from a t'GI.WebKit2.Enums.ContextMenuAction' and a
-- label. These t'GI.WebKit2.Enums.ContextMenuAction's denote stock actions
-- for the items. You can also create separators and submenus.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.ContextMenuItem
    ( 

-- * Exported types
    ContextMenuItem(..)                     ,
    IsContextMenuItem                       ,
    toContextMenuItem                       ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isSeparator]("GI.WebKit2.Objects.ContextMenuItem#g:method:isSeparator"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAction]("GI.WebKit2.Objects.ContextMenuItem#g:method:getAction"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getGaction]("GI.WebKit2.Objects.ContextMenuItem#g:method:getGaction"), [getGactionTarget]("GI.WebKit2.Objects.ContextMenuItem#g:method:getGactionTarget"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getStockAction]("GI.WebKit2.Objects.ContextMenuItem#g:method:getStockAction"), [getSubmenu]("GI.WebKit2.Objects.ContextMenuItem#g:method:getSubmenu"), [getTitle]("GI.WebKit2.Objects.ContextMenuItem#g:method:getTitle").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setSubmenu]("GI.WebKit2.Objects.ContextMenuItem#g:method:setSubmenu").

#if defined(ENABLE_OVERLOADING)
    ResolveContextMenuItemMethod            ,
#endif

-- ** getAction #method:getAction#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetActionMethodInfo      ,
#endif
    contextMenuItemGetAction                ,


-- ** getGaction #method:getGaction#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetGactionMethodInfo     ,
#endif
    contextMenuItemGetGaction               ,


-- ** getGactionTarget #method:getGactionTarget#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetGactionTargetMethodInfo,
#endif
    contextMenuItemGetGactionTarget         ,


-- ** getStockAction #method:getStockAction#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetStockActionMethodInfo ,
#endif
    contextMenuItemGetStockAction           ,


-- ** getSubmenu #method:getSubmenu#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetSubmenuMethodInfo     ,
#endif
    contextMenuItemGetSubmenu               ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemGetTitleMethodInfo       ,
#endif
    contextMenuItemGetTitle                 ,


-- ** isSeparator #method:isSeparator#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemIsSeparatorMethodInfo    ,
#endif
    contextMenuItemIsSeparator              ,


-- ** new #method:new#

    contextMenuItemNew                      ,


-- ** newFromGaction #method:newFromGaction#

    contextMenuItemNewFromGaction           ,


-- ** newFromStockAction #method:newFromStockAction#

    contextMenuItemNewFromStockAction       ,


-- ** newFromStockActionWithLabel #method:newFromStockActionWithLabel#

    contextMenuItemNewFromStockActionWithLabel,


-- ** newSeparator #method:newSeparator#

    contextMenuItemNewSeparator             ,


-- ** newWithSubmenu #method:newWithSubmenu#

    contextMenuItemNewWithSubmenu           ,


-- ** setSubmenu #method:setSubmenu#

#if defined(ENABLE_OVERLOADING)
    ContextMenuItemSetSubmenuMethodInfo     ,
#endif
    contextMenuItemSetSubmenu               ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenu as WebKit2.ContextMenu

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Interfaces.Action as Gio.Action
import qualified GI.Gtk.Objects.Action as Gtk.Action
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenu as WebKit2.ContextMenu

#endif

-- | Memory-managed wrapper type.
newtype ContextMenuItem = ContextMenuItem (SP.ManagedPtr ContextMenuItem)
    deriving (Eq)

instance SP.ManagedPtrNewtype ContextMenuItem where
    toManagedPtr (ContextMenuItem p) = p

foreign import ccall "webkit_context_menu_item_get_type"
    c_webkit_context_menu_item_get_type :: IO B.Types.GType

instance B.Types.TypedObject ContextMenuItem where
    glibType = c_webkit_context_menu_item_get_type

instance B.Types.GObject ContextMenuItem

-- | Type class for types which can be safely cast to t'ContextMenuItem', for instance with `toContextMenuItem`.
class (SP.GObject o, O.IsDescendantOf ContextMenuItem o) => IsContextMenuItem o
instance (SP.GObject o, O.IsDescendantOf ContextMenuItem o) => IsContextMenuItem o

instance O.HasParentTypes ContextMenuItem
type instance O.ParentTypes ContextMenuItem = '[GObject.Object.Object]

-- | Cast to t'ContextMenuItem', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toContextMenuItem :: (MIO.MonadIO m, IsContextMenuItem o) => o -> m ContextMenuItem
toContextMenuItem = MIO.liftIO . B.ManagedPtr.unsafeCastTo ContextMenuItem

-- | Convert t'ContextMenuItem' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ContextMenuItem) where
    gvalueGType_ = c_webkit_context_menu_item_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr ContextMenuItem)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr ContextMenuItem)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject ContextMenuItem ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveContextMenuItemMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveContextMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveContextMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveContextMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveContextMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveContextMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveContextMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveContextMenuItemMethod "isSeparator" o = ContextMenuItemIsSeparatorMethodInfo
    ResolveContextMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveContextMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveContextMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveContextMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveContextMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveContextMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveContextMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveContextMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveContextMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveContextMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveContextMenuItemMethod "getAction" o = ContextMenuItemGetActionMethodInfo
    ResolveContextMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveContextMenuItemMethod "getGaction" o = ContextMenuItemGetGactionMethodInfo
    ResolveContextMenuItemMethod "getGactionTarget" o = ContextMenuItemGetGactionTargetMethodInfo
    ResolveContextMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveContextMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveContextMenuItemMethod "getStockAction" o = ContextMenuItemGetStockActionMethodInfo
    ResolveContextMenuItemMethod "getSubmenu" o = ContextMenuItemGetSubmenuMethodInfo
    ResolveContextMenuItemMethod "getTitle" o = ContextMenuItemGetTitleMethodInfo
    ResolveContextMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveContextMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveContextMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveContextMenuItemMethod "setSubmenu" o = ContextMenuItemSetSubmenuMethodInfo
    ResolveContextMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveContextMenuItemMethod t ContextMenuItem, O.OverloadedMethod info ContextMenuItem p) => OL.IsLabel t (ContextMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveContextMenuItemMethod t ContextMenuItem, O.OverloadedMethod info ContextMenuItem p, R.HasField t ContextMenuItem p) => R.HasField t ContextMenuItem p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveContextMenuItemMethod t ContextMenuItem, O.OverloadedMethodInfo info ContextMenuItem) => OL.IsLabel t (O.MethodProxy info ContextMenuItem) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ContextMenuItem
type instance O.AttributeList ContextMenuItem = ContextMenuItemAttributeList
type ContextMenuItemAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ContextMenuItem = ContextMenuItemSignalList
type ContextMenuItemSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method ContextMenuItem::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Action" }
--           , argCType = Just "GtkAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAction" , sinceVersion = Nothing }
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

foreign import ccall "webkit_context_menu_item_new" webkit_context_menu_item_new :: 
    Ptr Gtk.Action.Action ->                -- action : TInterface (Name {namespace = "Gtk", name = "Action"})
    IO (Ptr ContextMenuItem)

{-# DEPRECATED contextMenuItemNew ["(Since version 2.18)","Use 'GI.WebKit2.Objects.ContextMenuItem.contextMenuItemNewFromGaction' instead."] #-}
-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' for the given /@action@/.
contextMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Action.IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gtk.Objects.Action.Action'
    -> m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNew action = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    result <- webkit_context_menu_item_new action'
    checkUnexpectedReturnNULL "contextMenuItemNew" result
    result' <- (newObject ContextMenuItem) result
    touchManagedPtr action
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::new_from_gaction
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "action"
--           , argType = TInterface Name { namespace = "Gio" , name = "Action" }
--           , argCType = Just "GAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAction" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the menu item label text"
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
--           { argCName = "target"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GVariant to use as the action target"
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

foreign import ccall "webkit_context_menu_item_new_from_gaction" webkit_context_menu_item_new_from_gaction :: 
    Ptr Gio.Action.Action ->                -- action : TInterface (Name {namespace = "Gio", name = "Action"})
    CString ->                              -- label : TBasicType TUTF8
    Ptr GVariant ->                         -- target : TVariant
    IO (Ptr ContextMenuItem)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' for the given /@action@/ and /@label@/.
-- 
-- On activation
-- /@target@/ will be passed as parameter to the callback.
-- 
-- /Since: 2.18/
contextMenuItemNewFromGaction ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.Action.IsAction a) =>
    a
    -- ^ /@action@/: a t'GI.Gio.Interfaces.Action.Action'
    -> T.Text
    -- ^ /@label@/: the menu item label text
    -> Maybe (GVariant)
    -- ^ /@target@/: a t'GVariant' to use as the action target
    -> m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNewFromGaction action label target = liftIO $ do
    action' <- unsafeManagedPtrCastPtr action
    label' <- textToCString label
    maybeTarget <- case target of
        Nothing -> return FP.nullPtr
        Just jTarget -> do
            jTarget' <- unsafeManagedPtrGetPtr jTarget
            return jTarget'
    result <- webkit_context_menu_item_new_from_gaction action' label' maybeTarget
    checkUnexpectedReturnNULL "contextMenuItemNewFromGaction" result
    result' <- (newObject ContextMenuItem) result
    touchManagedPtr action
    whenJust target touchManagedPtr
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::new_from_stock_action
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuAction" }
--           , argCType = Just "WebKitContextMenuAction"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuAction stock action"
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

foreign import ccall "webkit_context_menu_item_new_from_stock_action" webkit_context_menu_item_new_from_stock_action :: 
    CUInt ->                                -- action : TInterface (Name {namespace = "WebKit2", name = "ContextMenuAction"})
    IO (Ptr ContextMenuItem)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' for the given stock action.
-- 
-- Stock actions are handled automatically by WebKit so that, for example,
-- when a menu item created with a 'GI.WebKit2.Enums.ContextMenuActionStop' is
-- activated the action associated will be handled by WebKit and the current
-- load operation will be stopped. You can get the t'GI.Gio.Interfaces.Action.Action' of a
-- t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' created with a t'GI.WebKit2.Enums.ContextMenuAction' with
-- 'GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetGaction' and connect to the [SimpleAction::activate]("GI.Gio.Objects.SimpleAction#g:signal:activate") signal
-- to be notified when the item is activated, but you can\'t prevent the associated
-- action from being performed.
contextMenuItemNewFromStockAction ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebKit2.Enums.ContextMenuAction
    -- ^ /@action@/: a t'GI.WebKit2.Enums.ContextMenuAction' stock action
    -> m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNewFromStockAction action = liftIO $ do
    let action' = (fromIntegral . fromEnum) action
    result <- webkit_context_menu_item_new_from_stock_action action'
    checkUnexpectedReturnNULL "contextMenuItemNewFromStockAction" result
    result' <- (newObject ContextMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::new_from_stock_action_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuAction" }
--           , argCType = Just "WebKitContextMenuAction"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuAction stock action"
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
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a custom label text to use instead of the predefined one"
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

foreign import ccall "webkit_context_menu_item_new_from_stock_action_with_label" webkit_context_menu_item_new_from_stock_action_with_label :: 
    CUInt ->                                -- action : TInterface (Name {namespace = "WebKit2", name = "ContextMenuAction"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr ContextMenuItem)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' for the given stock action using the given /@label@/.
-- 
-- Stock actions have a predefined label, this method can be used to create a
-- t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' for a t'GI.WebKit2.Enums.ContextMenuAction' but using a custom label.
contextMenuItemNewFromStockActionWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    WebKit2.Enums.ContextMenuAction
    -- ^ /@action@/: a t'GI.WebKit2.Enums.ContextMenuAction' stock action
    -> T.Text
    -- ^ /@label@/: a custom label text to use instead of the predefined one
    -> m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNewFromStockActionWithLabel action label = liftIO $ do
    let action' = (fromIntegral . fromEnum) action
    label' <- textToCString label
    result <- webkit_context_menu_item_new_from_stock_action_with_label action' label'
    checkUnexpectedReturnNULL "contextMenuItemNewFromStockActionWithLabel" result
    result' <- (newObject ContextMenuItem) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::new_separator
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "ContextMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_item_new_separator" webkit_context_menu_item_new_separator :: 
    IO (Ptr ContextMenuItem)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' representing a separator.
contextMenuItemNewSeparator ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNewSeparator  = liftIO $ do
    result <- webkit_context_menu_item_new_separator
    checkUnexpectedReturnNULL "contextMenuItemNewSeparator" result
    result' <- (newObject ContextMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::new_with_submenu
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the menu item label text"
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
--           { argCName = "submenu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenu to set"
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

foreign import ccall "webkit_context_menu_item_new_with_submenu" webkit_context_menu_item_new_with_submenu :: 
    CString ->                              -- label : TBasicType TUTF8
    Ptr WebKit2.ContextMenu.ContextMenu ->  -- submenu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO (Ptr ContextMenuItem)

-- | Creates a new t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' using the given /@label@/ with a submenu.
contextMenuItemNewWithSubmenu ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.ContextMenu.IsContextMenu a) =>
    T.Text
    -- ^ /@label@/: the menu item label text
    -> a
    -- ^ /@submenu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu' to set
    -> m ContextMenuItem
    -- ^ __Returns:__ the newly created t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' object.
contextMenuItemNewWithSubmenu label submenu = liftIO $ do
    label' <- textToCString label
    submenu' <- unsafeManagedPtrCastPtr submenu
    result <- webkit_context_menu_item_new_with_submenu label' submenu'
    checkUnexpectedReturnNULL "contextMenuItemNewWithSubmenu" result
    result' <- (newObject ContextMenuItem) result
    touchManagedPtr submenu
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContextMenuItem::get_action
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Action" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_item_get_action" webkit_context_menu_item_get_action :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO (Ptr Gtk.Action.Action)

{-# DEPRECATED contextMenuItemGetAction ["(Since version 2.18)","Use 'GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetGaction' instead."] #-}
-- | Gets the action associated to /@item@/ as a t'GI.Gtk.Objects.Action.Action'.
contextMenuItemGetAction ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m (Maybe Gtk.Action.Action)
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Action.Action' associated to the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem',
    --    or 'P.Nothing' if /@item@/ is a separator.
contextMenuItemGetAction item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_action item'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Action.Action) result'
        return result''
    touchManagedPtr item
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetActionMethodInfo
instance (signature ~ (m (Maybe Gtk.Action.Action)), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetActionMethodInfo a signature where
    overloadedMethod = contextMenuItemGetAction

instance O.OverloadedMethodInfo ContextMenuItemGetActionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetAction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetAction"
        })


#endif

-- method ContextMenuItem::get_gaction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "Action" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_item_get_gaction" webkit_context_menu_item_get_gaction :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO (Ptr Gio.Action.Action)

-- | Gets the action associated to /@item@/ as a t'GI.Gio.Interfaces.Action.Action'.
-- 
-- /Since: 2.18/
contextMenuItemGetGaction ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m (Maybe Gio.Action.Action)
    -- ^ __Returns:__ the t'GI.Gio.Interfaces.Action.Action' associated to the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem',
    --    or 'P.Nothing' if /@item@/ is a separator.
contextMenuItemGetGaction item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_gaction item'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gio.Action.Action) result'
        return result''
    touchManagedPtr item
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetGactionMethodInfo
instance (signature ~ (m (Maybe Gio.Action.Action)), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetGactionMethodInfo a signature where
    overloadedMethod = contextMenuItemGetGaction

instance O.OverloadedMethodInfo ContextMenuItemGetGactionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetGaction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetGaction"
        })


#endif

-- method ContextMenuItem::get_gaction_target
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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

foreign import ccall "webkit_context_menu_item_get_gaction_target" webkit_context_menu_item_get_gaction_target :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO (Ptr GVariant)

-- | Gets the target t'GVariant' associated with /@item@/.
-- 
-- /Since: 2.52/
contextMenuItemGetGactionTarget ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m (Maybe GVariant)
    -- ^ __Returns:__ the target t'GVariant' of the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem',
    --    or 'P.Nothing' if /@item@/ was not created with 'GI.WebKit2.Objects.ContextMenuItem.contextMenuItemNewFromGaction'
    --    or if no target was specified.
contextMenuItemGetGactionTarget item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_gaction_target item'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- B.GVariant.newGVariantFromPtr result'
        return result''
    touchManagedPtr item
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetGactionTargetMethodInfo
instance (signature ~ (m (Maybe GVariant)), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetGactionTargetMethodInfo a signature where
    overloadedMethod = contextMenuItemGetGactionTarget

instance O.OverloadedMethodInfo ContextMenuItemGetGactionTargetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetGactionTarget",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetGactionTarget"
        })


#endif

-- method ContextMenuItem::get_stock_action
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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
--                  Name { namespace = "WebKit2" , name = "ContextMenuAction" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_context_menu_item_get_stock_action" webkit_context_menu_item_get_stock_action :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO CUInt

-- | Gets the t'GI.WebKit2.Enums.ContextMenuAction' of /@item@/.
-- 
-- If the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' was not
-- created for a stock action 'GI.WebKit2.Enums.ContextMenuActionCustom' will be
-- returned. If the t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem' is a separator 'GI.WebKit2.Enums.ContextMenuActionNoAction'
-- will be returned.
contextMenuItemGetStockAction ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m WebKit2.Enums.ContextMenuAction
    -- ^ __Returns:__ the t'GI.WebKit2.Enums.ContextMenuAction' of /@item@/
contextMenuItemGetStockAction item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_stock_action item'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetStockActionMethodInfo
instance (signature ~ (m WebKit2.Enums.ContextMenuAction), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetStockActionMethodInfo a signature where
    overloadedMethod = contextMenuItemGetStockAction

instance O.OverloadedMethodInfo ContextMenuItemGetStockActionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetStockAction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetStockAction"
        })


#endif

-- method ContextMenuItem::get_submenu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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

foreign import ccall "webkit_context_menu_item_get_submenu" webkit_context_menu_item_get_submenu :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO (Ptr WebKit2.ContextMenu.ContextMenu)

-- | Gets the submenu of /@item@/.
contextMenuItemGetSubmenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m (Maybe WebKit2.ContextMenu.ContextMenu)
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.ContextMenu.ContextMenu' representing the submenu of
    --    /@item@/ or 'P.Nothing' if /@item@/ doesn\'t have a submenu.
contextMenuItemGetSubmenu item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_submenu item'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.ContextMenu.ContextMenu) result'
        return result''
    touchManagedPtr item
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetSubmenuMethodInfo
instance (signature ~ (m (Maybe WebKit2.ContextMenu.ContextMenu)), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetSubmenuMethodInfo a signature where
    overloadedMethod = contextMenuItemGetSubmenu

instance O.OverloadedMethodInfo ContextMenuItemGetSubmenuMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetSubmenu",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetSubmenu"
        })


#endif

-- method ContextMenuItem::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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

foreign import ccall "webkit_context_menu_item_get_title" webkit_context_menu_item_get_title :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO CString

-- | Gets the title of /@item@/.
-- 
-- /Since: 2.52/
contextMenuItemGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m T.Text
    -- ^ __Returns:__ the title of /@item@/, or 'P.Nothing' if /@item@/ is a separator.
contextMenuItemGetTitle item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_get_title item'
    checkUnexpectedReturnNULL "contextMenuItemGetTitle" result
    result' <- cstringToText result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemGetTitleMethodInfo a signature where
    overloadedMethod = contextMenuItemGetTitle

instance O.OverloadedMethodInfo ContextMenuItemGetTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemGetTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemGetTitle"
        })


#endif

-- method ContextMenuItem::is_separator
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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

foreign import ccall "webkit_context_menu_item_is_separator" webkit_context_menu_item_is_separator :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    IO CInt

-- | Checks whether /@item@/ is a separator.
contextMenuItemIsSeparator ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' is /@item@/ is a separator or 'P.False' otherwise
contextMenuItemIsSeparator item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- webkit_context_menu_item_is_separator item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemIsSeparatorMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsContextMenuItem a) => O.OverloadedMethod ContextMenuItemIsSeparatorMethodInfo a signature where
    overloadedMethod = contextMenuItemIsSeparator

instance O.OverloadedMethodInfo ContextMenuItemIsSeparatorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemIsSeparator",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemIsSeparator"
        })


#endif

-- method ContextMenuItem::set_submenu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "ContextMenuItem" }
--           , argCType = Just "WebKitContextMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitContextMenuItem"
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
--           { argCName = "submenu"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ContextMenu" }
--           , argCType = Just "WebKitContextMenu*"
--           , direction = DirectionIn
--           , mayBeNull = True
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

foreign import ccall "webkit_context_menu_item_set_submenu" webkit_context_menu_item_set_submenu :: 
    Ptr ContextMenuItem ->                  -- item : TInterface (Name {namespace = "WebKit2", name = "ContextMenuItem"})
    Ptr WebKit2.ContextMenu.ContextMenu ->  -- submenu : TInterface (Name {namespace = "WebKit2", name = "ContextMenu"})
    IO ()

-- | Sets or replaces the /@item@/ submenu.
-- 
-- If /@submenu@/ is 'P.Nothing' the current
-- submenu of /@item@/ is removed.
contextMenuItemSetSubmenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsContextMenuItem a, WebKit2.ContextMenu.IsContextMenu b) =>
    a
    -- ^ /@item@/: a t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem'
    -> Maybe (b)
    -- ^ /@submenu@/: a t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> m ()
contextMenuItemSetSubmenu item submenu = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    maybeSubmenu <- case submenu of
        Nothing -> return FP.nullPtr
        Just jSubmenu -> do
            jSubmenu' <- unsafeManagedPtrCastPtr jSubmenu
            return jSubmenu'
    webkit_context_menu_item_set_submenu item' maybeSubmenu
    touchManagedPtr item
    whenJust submenu touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextMenuItemSetSubmenuMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsContextMenuItem a, WebKit2.ContextMenu.IsContextMenu b) => O.OverloadedMethod ContextMenuItemSetSubmenuMethodInfo a signature where
    overloadedMethod = contextMenuItemSetSubmenu

instance O.OverloadedMethodInfo ContextMenuItemSetSubmenuMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.ContextMenuItem.contextMenuItemSetSubmenu",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-ContextMenuItem.html#v:contextMenuItemSetSubmenu"
        })


#endif


