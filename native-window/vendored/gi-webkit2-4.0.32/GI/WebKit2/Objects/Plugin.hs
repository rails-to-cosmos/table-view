{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a plugin, enabling fine-grained control.
-- 
-- This object represents a single plugin, found while scanning the
-- various platform plugin directories. This object can be used to get
-- more information about a plugin, and enable\/disable it, allowing
-- fine-grained control of plugins. The list of available plugins can
-- be obtained from the t'GI.WebKit2.Objects.WebContext.WebContext', with
-- 'GI.WebKit2.Objects.WebContext.webContextGetPlugins'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.Plugin
    ( 

-- * Exported types
    Plugin(..)                              ,
    IsPlugin                                ,
    toPlugin                                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDescription]("GI.WebKit2.Objects.Plugin#g:method:getDescription"), [getMimeInfoList]("GI.WebKit2.Objects.Plugin#g:method:getMimeInfoList"), [getName]("GI.WebKit2.Objects.Plugin#g:method:getName"), [getPath]("GI.WebKit2.Objects.Plugin#g:method:getPath"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolvePluginMethod                     ,
#endif

-- ** getDescription #method:getDescription#

#if defined(ENABLE_OVERLOADING)
    PluginGetDescriptionMethodInfo          ,
#endif
    pluginGetDescription                    ,


-- ** getMimeInfoList #method:getMimeInfoList#

#if defined(ENABLE_OVERLOADING)
    PluginGetMimeInfoListMethodInfo         ,
#endif
    pluginGetMimeInfoList                   ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    PluginGetNameMethodInfo                 ,
#endif
    pluginGetName                           ,


-- ** getPath #method:getPath#

#if defined(ENABLE_OVERLOADING)
    PluginGetPathMethodInfo                 ,
#endif
    pluginGetPath                           ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MimeInfo as WebKit2.MimeInfo

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MimeInfo as WebKit2.MimeInfo

#endif

-- | Memory-managed wrapper type.
newtype Plugin = Plugin (SP.ManagedPtr Plugin)
    deriving (Eq)

instance SP.ManagedPtrNewtype Plugin where
    toManagedPtr (Plugin p) = p

foreign import ccall "webkit_plugin_get_type"
    c_webkit_plugin_get_type :: IO B.Types.GType

instance B.Types.TypedObject Plugin where
    glibType = c_webkit_plugin_get_type

instance B.Types.GObject Plugin

-- | Type class for types which can be safely cast to t'Plugin', for instance with `toPlugin`.
class (SP.GObject o, O.IsDescendantOf Plugin o) => IsPlugin o
instance (SP.GObject o, O.IsDescendantOf Plugin o) => IsPlugin o

instance O.HasParentTypes Plugin
type instance O.ParentTypes Plugin = '[GObject.Object.Object]

-- | Cast to t'Plugin', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPlugin :: (MIO.MonadIO m, IsPlugin o) => o -> m Plugin
toPlugin = MIO.liftIO . B.ManagedPtr.unsafeCastTo Plugin

-- | Convert t'Plugin' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Plugin) where
    gvalueGType_ = c_webkit_plugin_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Plugin)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Plugin)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Plugin ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolvePluginMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePluginMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePluginMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePluginMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePluginMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePluginMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePluginMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePluginMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePluginMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePluginMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePluginMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePluginMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePluginMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePluginMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePluginMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePluginMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePluginMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePluginMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePluginMethod "getDescription" o = PluginGetDescriptionMethodInfo
    ResolvePluginMethod "getMimeInfoList" o = PluginGetMimeInfoListMethodInfo
    ResolvePluginMethod "getName" o = PluginGetNameMethodInfo
    ResolvePluginMethod "getPath" o = PluginGetPathMethodInfo
    ResolvePluginMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePluginMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePluginMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePluginMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePluginMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePluginMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePluginMethod t Plugin, O.OverloadedMethod info Plugin p) => OL.IsLabel t (Plugin -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePluginMethod t Plugin, O.OverloadedMethod info Plugin p, R.HasField t Plugin p) => R.HasField t Plugin p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePluginMethod t Plugin, O.OverloadedMethodInfo info Plugin) => OL.IsLabel t (O.MethodProxy info Plugin) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Plugin
type instance O.AttributeList Plugin = PluginAttributeList
type PluginAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Plugin = PluginSignalList
type PluginSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Plugin::get_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "plugin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Plugin" }
--           , argCType = Just "WebKitPlugin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPlugin" , sinceVersion = Nothing }
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

foreign import ccall "webkit_plugin_get_description" webkit_plugin_get_description :: 
    Ptr Plugin ->                           -- plugin : TInterface (Name {namespace = "WebKit2", name = "Plugin"})
    IO CString

{-# DEPRECATED pluginGetDescription ["(Since version 2.32)"] #-}
-- | Obtain the plugin description.
pluginGetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlugin a) =>
    a
    -- ^ /@plugin@/: a t'GI.WebKit2.Objects.Plugin.Plugin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ description, as a string.
pluginGetDescription plugin = liftIO $ do
    plugin' <- unsafeManagedPtrCastPtr plugin
    result <- webkit_plugin_get_description plugin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr plugin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PluginGetDescriptionMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsPlugin a) => O.OverloadedMethod PluginGetDescriptionMethodInfo a signature where
    overloadedMethod = pluginGetDescription

instance O.OverloadedMethodInfo PluginGetDescriptionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Plugin.pluginGetDescription",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Plugin.html#v:pluginGetDescription"
        })


#endif

-- method Plugin::get_mime_info_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "plugin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Plugin" }
--           , argCType = Just "WebKitPlugin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPlugin" , sinceVersion = Nothing }
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
--                  (TInterface Name { namespace = "WebKit2" , name = "MimeInfo" }))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_plugin_get_mime_info_list" webkit_plugin_get_mime_info_list :: 
    Ptr Plugin ->                           -- plugin : TInterface (Name {namespace = "WebKit2", name = "Plugin"})
    IO (Ptr (GList (Ptr WebKit2.MimeInfo.MimeInfo)))

{-# DEPRECATED pluginGetMimeInfoList ["(Since version 2.32)"] #-}
-- | Get information about MIME types handled by the plugin.
-- 
-- Get information about MIME types handled by the plugin,
-- as a list of t'GI.WebKit2.Structs.MimeInfo.MimeInfo'.
pluginGetMimeInfoList ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlugin a) =>
    a
    -- ^ /@plugin@/: a t'GI.WebKit2.Objects.Plugin.Plugin'
    -> m [WebKit2.MimeInfo.MimeInfo]
    -- ^ __Returns:__ a t'GI.GLib.Structs.List.List' of t'GI.WebKit2.Structs.MimeInfo.MimeInfo'.
pluginGetMimeInfoList plugin = liftIO $ do
    plugin' <- unsafeManagedPtrCastPtr plugin
    result <- webkit_plugin_get_mime_info_list plugin'
    result' <- unpackGList result
    result'' <- mapM (newBoxed WebKit2.MimeInfo.MimeInfo) result'
    touchManagedPtr plugin
    return result''

#if defined(ENABLE_OVERLOADING)
data PluginGetMimeInfoListMethodInfo
instance (signature ~ (m [WebKit2.MimeInfo.MimeInfo]), MonadIO m, IsPlugin a) => O.OverloadedMethod PluginGetMimeInfoListMethodInfo a signature where
    overloadedMethod = pluginGetMimeInfoList

instance O.OverloadedMethodInfo PluginGetMimeInfoListMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Plugin.pluginGetMimeInfoList",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Plugin.html#v:pluginGetMimeInfoList"
        })


#endif

-- method Plugin::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "plugin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Plugin" }
--           , argCType = Just "WebKitPlugin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPlugin" , sinceVersion = Nothing }
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

foreign import ccall "webkit_plugin_get_name" webkit_plugin_get_name :: 
    Ptr Plugin ->                           -- plugin : TInterface (Name {namespace = "WebKit2", name = "Plugin"})
    IO CString

{-# DEPRECATED pluginGetName ["(Since version 2.32)"] #-}
-- | Obtain the plugin name.
pluginGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlugin a) =>
    a
    -- ^ /@plugin@/: a t'GI.WebKit2.Objects.Plugin.Plugin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ name, as a string.
pluginGetName plugin = liftIO $ do
    plugin' <- unsafeManagedPtrCastPtr plugin
    result <- webkit_plugin_get_name plugin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr plugin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PluginGetNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsPlugin a) => O.OverloadedMethod PluginGetNameMethodInfo a signature where
    overloadedMethod = pluginGetName

instance O.OverloadedMethodInfo PluginGetNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Plugin.pluginGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Plugin.html#v:pluginGetName"
        })


#endif

-- method Plugin::get_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "plugin"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Plugin" }
--           , argCType = Just "WebKitPlugin*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPlugin" , sinceVersion = Nothing }
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

foreign import ccall "webkit_plugin_get_path" webkit_plugin_get_path :: 
    Ptr Plugin ->                           -- plugin : TInterface (Name {namespace = "WebKit2", name = "Plugin"})
    IO CString

{-# DEPRECATED pluginGetPath ["(Since version 2.32)"] #-}
-- | Obtain the absolute path where the plugin is installed.
pluginGetPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsPlugin a) =>
    a
    -- ^ /@plugin@/: a t'GI.WebKit2.Objects.Plugin.Plugin'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ path, as a string.
pluginGetPath plugin = liftIO $ do
    plugin' <- unsafeManagedPtrCastPtr plugin
    result <- webkit_plugin_get_path plugin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr plugin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PluginGetPathMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsPlugin a) => O.OverloadedMethod PluginGetPathMethodInfo a signature where
    overloadedMethod = pluginGetPath

instance O.OverloadedMethodInfo PluginGetPathMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.Plugin.pluginGetPath",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-Plugin.html#v:pluginGetPath"
        })


#endif


