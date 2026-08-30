{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- One item of a t'GI.WebKit2.Objects.OptionMenu.OptionMenu'.
-- 
-- The t'GI.WebKit2.Objects.OptionMenu.OptionMenu' is composed of WebKitOptionMenuItems.
-- A WebKitOptionMenuItem always has a label and can contain a tooltip text.
-- You can use the WebKitOptionMenuItem of a t'GI.WebKit2.Objects.OptionMenu.OptionMenu' to build your
-- own menus.
-- 
-- /Since: 2.18/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.OptionMenuItem
    ( 

-- * Exported types
    OptionMenuItem(..)                      ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.OptionMenuItem#g:method:copy"), [free]("GI.WebKit2.Structs.OptionMenuItem#g:method:free"), [isEnabled]("GI.WebKit2.Structs.OptionMenuItem#g:method:isEnabled"), [isGroupChild]("GI.WebKit2.Structs.OptionMenuItem#g:method:isGroupChild"), [isGroupLabel]("GI.WebKit2.Structs.OptionMenuItem#g:method:isGroupLabel"), [isSelected]("GI.WebKit2.Structs.OptionMenuItem#g:method:isSelected").
-- 
-- ==== Getters
-- [getLabel]("GI.WebKit2.Structs.OptionMenuItem#g:method:getLabel"), [getTooltip]("GI.WebKit2.Structs.OptionMenuItem#g:method:getTooltip").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveOptionMenuItemMethod             ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemCopyMethodInfo            ,
#endif
    optionMenuItemCopy                      ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemFreeMethodInfo            ,
#endif
    optionMenuItemFree                      ,


-- ** getLabel #method:getLabel#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemGetLabelMethodInfo        ,
#endif
    optionMenuItemGetLabel                  ,


-- ** getTooltip #method:getTooltip#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemGetTooltipMethodInfo      ,
#endif
    optionMenuItemGetTooltip                ,


-- ** isEnabled #method:isEnabled#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemIsEnabledMethodInfo       ,
#endif
    optionMenuItemIsEnabled                 ,


-- ** isGroupChild #method:isGroupChild#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemIsGroupChildMethodInfo    ,
#endif
    optionMenuItemIsGroupChild              ,


-- ** isGroupLabel #method:isGroupLabel#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemIsGroupLabelMethodInfo    ,
#endif
    optionMenuItemIsGroupLabel              ,


-- ** isSelected #method:isSelected#

#if defined(ENABLE_OVERLOADING)
    OptionMenuItemIsSelectedMethodInfo      ,
#endif
    optionMenuItemIsSelected                ,




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

#else

#endif

-- | Memory-managed wrapper type.
newtype OptionMenuItem = OptionMenuItem (SP.ManagedPtr OptionMenuItem)
    deriving (Eq)

instance SP.ManagedPtrNewtype OptionMenuItem where
    toManagedPtr (OptionMenuItem p) = p

foreign import ccall "webkit_option_menu_item_get_type" c_webkit_option_menu_item_get_type :: 
    IO GType

type instance O.ParentTypes OptionMenuItem = '[]
instance O.HasParentTypes OptionMenuItem

instance B.Types.TypedObject OptionMenuItem where
    glibType = c_webkit_option_menu_item_get_type

instance B.Types.GBoxed OptionMenuItem

-- | Convert t'OptionMenuItem' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe OptionMenuItem) where
    gvalueGType_ = c_webkit_option_menu_item_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr OptionMenuItem)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr OptionMenuItem)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed OptionMenuItem ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList OptionMenuItem
type instance O.AttributeList OptionMenuItem = OptionMenuItemAttributeList
type OptionMenuItemAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method OptionMenuItem::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_copy" webkit_option_menu_item_copy :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO (Ptr OptionMenuItem)

-- | Make a copy of the t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'.
-- 
-- /Since: 2.18/
optionMenuItemCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m OptionMenuItem
    -- ^ __Returns:__ A copy of passed in t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
optionMenuItemCopy item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_copy item'
    checkUnexpectedReturnNULL "optionMenuItemCopy" result
    result' <- (wrapBoxed OptionMenuItem) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemCopyMethodInfo
instance (signature ~ (m OptionMenuItem), MonadIO m) => O.OverloadedMethod OptionMenuItemCopyMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemCopy

instance O.OverloadedMethodInfo OptionMenuItemCopyMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemCopy"
        })


#endif

-- method OptionMenuItem::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_free" webkit_option_menu_item_free :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'.
-- 
-- /Since: 2.18/
optionMenuItemFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: A t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m ()
optionMenuItemFree item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    webkit_option_menu_item_free item'
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod OptionMenuItemFreeMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemFree

instance O.OverloadedMethodInfo OptionMenuItemFreeMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemFree"
        })


#endif

-- method OptionMenuItem::get_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_get_label" webkit_option_menu_item_get_label :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CString

-- | Get the label of a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'.
-- 
-- /Since: 2.18/
optionMenuItemGetLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m T.Text
    -- ^ __Returns:__ The label of /@item@/.
optionMenuItemGetLabel item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_get_label item'
    checkUnexpectedReturnNULL "optionMenuItemGetLabel" result
    result' <- cstringToText result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemGetLabelMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod OptionMenuItemGetLabelMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemGetLabel

instance O.OverloadedMethodInfo OptionMenuItemGetLabelMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemGetLabel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemGetLabel"
        })


#endif

-- method OptionMenuItem::get_tooltip
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_get_tooltip" webkit_option_menu_item_get_tooltip :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CString

-- | Get the tooltip of a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'.
-- 
-- /Since: 2.18/
optionMenuItemGetTooltip ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The tooltip of /@item@/, or 'P.Nothing'.
optionMenuItemGetTooltip item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_get_tooltip item'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr item
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemGetTooltipMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod OptionMenuItemGetTooltipMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemGetTooltip

instance O.OverloadedMethodInfo OptionMenuItemGetTooltipMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemGetTooltip",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemGetTooltip"
        })


#endif

-- method OptionMenuItem::is_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_is_enabled" webkit_option_menu_item_is_enabled :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CInt

-- | Whether a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' is enabled.
-- 
-- /Since: 2.18/
optionMenuItemIsEnabled ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@item@/ is enabled or 'P.False' otherwise.
optionMenuItemIsEnabled item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_is_enabled item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemIsEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod OptionMenuItemIsEnabledMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemIsEnabled

instance O.OverloadedMethodInfo OptionMenuItemIsEnabledMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemIsEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemIsEnabled"
        })


#endif

-- method OptionMenuItem::is_group_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_is_group_child" webkit_option_menu_item_is_group_child :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CInt

-- | Whether a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' is a group child.
-- 
-- /Since: 2.18/
optionMenuItemIsGroupChild ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@item@/ is a group child or 'P.False' otherwise.
optionMenuItemIsGroupChild item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_is_group_child item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemIsGroupChildMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod OptionMenuItemIsGroupChildMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemIsGroupChild

instance O.OverloadedMethodInfo OptionMenuItemIsGroupChildMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemIsGroupChild",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemIsGroupChild"
        })


#endif

-- method OptionMenuItem::is_group_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_is_group_label" webkit_option_menu_item_is_group_label :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CInt

-- | Whether a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' is a group label.
-- 
-- /Since: 2.18/
optionMenuItemIsGroupLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@item@/ is a group label or 'P.False' otherwise.
optionMenuItemIsGroupLabel item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_is_group_label item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemIsGroupLabelMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod OptionMenuItemIsGroupLabelMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemIsGroupLabel

instance O.OverloadedMethodInfo OptionMenuItemIsGroupLabelMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemIsGroupLabel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemIsGroupLabel"
        })


#endif

-- method OptionMenuItem::is_selected
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "OptionMenuItem" }
--           , argCType = Just "WebKitOptionMenuItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitOptionMenuItem"
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

foreign import ccall "webkit_option_menu_item_is_selected" webkit_option_menu_item_is_selected :: 
    Ptr OptionMenuItem ->                   -- item : TInterface (Name {namespace = "WebKit2", name = "OptionMenuItem"})
    IO CInt

-- | Whether a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem' is the currently selected one.
-- 
-- /Since: 2.18/
optionMenuItemIsSelected ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    OptionMenuItem
    -- ^ /@item@/: a t'GI.WebKit2.Structs.OptionMenuItem.OptionMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@item@/ is selected or 'P.False' otherwise.
optionMenuItemIsSelected item = liftIO $ do
    item' <- unsafeManagedPtrGetPtr item
    result <- webkit_option_menu_item_is_selected item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data OptionMenuItemIsSelectedMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod OptionMenuItemIsSelectedMethodInfo OptionMenuItem signature where
    overloadedMethod = optionMenuItemIsSelected

instance O.OverloadedMethodInfo OptionMenuItemIsSelectedMethodInfo OptionMenuItem where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.OptionMenuItem.optionMenuItemIsSelected",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-OptionMenuItem.html#v:optionMenuItemIsSelected"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveOptionMenuItemMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveOptionMenuItemMethod "copy" o = OptionMenuItemCopyMethodInfo
    ResolveOptionMenuItemMethod "free" o = OptionMenuItemFreeMethodInfo
    ResolveOptionMenuItemMethod "isEnabled" o = OptionMenuItemIsEnabledMethodInfo
    ResolveOptionMenuItemMethod "isGroupChild" o = OptionMenuItemIsGroupChildMethodInfo
    ResolveOptionMenuItemMethod "isGroupLabel" o = OptionMenuItemIsGroupLabelMethodInfo
    ResolveOptionMenuItemMethod "isSelected" o = OptionMenuItemIsSelectedMethodInfo
    ResolveOptionMenuItemMethod "getLabel" o = OptionMenuItemGetLabelMethodInfo
    ResolveOptionMenuItemMethod "getTooltip" o = OptionMenuItemGetTooltipMethodInfo
    ResolveOptionMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveOptionMenuItemMethod t OptionMenuItem, O.OverloadedMethod info OptionMenuItem p) => OL.IsLabel t (OptionMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveOptionMenuItemMethod t OptionMenuItem, O.OverloadedMethod info OptionMenuItem p, R.HasField t OptionMenuItem p) => R.HasField t OptionMenuItem p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveOptionMenuItemMethod t OptionMenuItem, O.OverloadedMethodInfo info OptionMenuItem) => OL.IsLabel t (O.MethodProxy info OptionMenuItem) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


