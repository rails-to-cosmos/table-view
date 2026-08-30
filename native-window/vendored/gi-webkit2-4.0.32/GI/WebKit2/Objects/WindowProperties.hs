{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Window properties of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- The content of a t'GI.WebKit2.Objects.WebView.WebView' can request to change certain
-- properties of the window containing the view. This can include the x, y position
-- of the window, the width and height but also if a toolbar,
-- scrollbar, statusbar, locationbar should be visible to the user,
-- and the request to show the t'GI.WebKit2.Objects.WebView.WebView' fullscreen.
-- 
-- The [WebView::readyToShow]("GI.WebKit2.Objects.WebView#g:signal:readyToShow") signal handler is the proper place
-- to apply the initial window properties. Then you can monitor the
-- t'GI.WebKit2.Objects.WindowProperties.WindowProperties' by connecting to [notify](#g:signal:notify) signal.
-- 
-- 
-- === /c code/
-- >static void ready_to_show_cb (WebKitWebView *web_view, gpointer user_data)
-- >{
-- >    GtkWidget *window;
-- >    WebKitWindowProperties *window_properties;
-- >    gboolean visible;
-- >
-- >    // Create the window to contain the WebKitWebView.
-- >    window = browser_window_new ();
-- >    gtk_container_add (GTK_CONTAINER (window), GTK_WIDGET (web_view));
-- >    gtk_widget_show (GTK_WIDGET (web_view));
-- >
-- >    // Get the WebKitWindowProperties of the web view and monitor it.
-- >    window_properties = webkit_web_view_get_window_properties (web_view);
-- >    g_signal_connect (window_properties, "notify::geometry",
-- >                      G_CALLBACK (window_geometry_changed), window);
-- >    g_signal_connect (window_properties, "notify::toolbar-visible",
-- >                      G_CALLBACK (window_toolbar_visibility_changed), window);
-- >    g_signal_connect (window_properties, "notify::menubar-visible",
-- >                      G_CALLBACK (window_menubar_visibility_changed), window);
-- >
-- >    // Apply the window properties before showing the window.
-- >    visible = webkit_window_properties_get_toolbar_visible (window_properties);
-- >    browser_window_set_toolbar_visible (BROWSER_WINDOW (window), visible);
-- >    visible = webkit_window_properties_get_menubar_visible (window_properties);
-- >    browser_window_set_menubar_visible (BROWSER_WINDOW (window), visible);
-- >
-- >    if (webkit_window_properties_get_fullscreen (window_properties)) {
-- >        gtk_window_fullscreen (GTK_WINDOW (window));
-- >    } else {
-- >        GdkRectangle geometry;
-- >
-- >        gtk_window_set_resizable (GTK_WINDOW (window),
-- >                                  webkit_window_properties_get_resizable (window_properties));
-- >        webkit_window_properties_get_geometry (window_properties, &geometry);
-- >        gtk_window_move (GTK_WINDOW (window), geometry.x, geometry.y);
-- >        gtk_window_resize (GTK_WINDOW (window), geometry.width, geometry.height);
-- >    }
-- >
-- >    gtk_widget_show (window);
-- >}
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WindowProperties
    ( 

-- * Exported types
    WindowProperties(..)                    ,
    IsWindowProperties                      ,
    toWindowProperties                      ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getFullscreen]("GI.WebKit2.Objects.WindowProperties#g:method:getFullscreen"), [getGeometry]("GI.WebKit2.Objects.WindowProperties#g:method:getGeometry"), [getLocationbarVisible]("GI.WebKit2.Objects.WindowProperties#g:method:getLocationbarVisible"), [getMenubarVisible]("GI.WebKit2.Objects.WindowProperties#g:method:getMenubarVisible"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getResizable]("GI.WebKit2.Objects.WindowProperties#g:method:getResizable"), [getScrollbarsVisible]("GI.WebKit2.Objects.WindowProperties#g:method:getScrollbarsVisible"), [getStatusbarVisible]("GI.WebKit2.Objects.WindowProperties#g:method:getStatusbarVisible"), [getToolbarVisible]("GI.WebKit2.Objects.WindowProperties#g:method:getToolbarVisible").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWindowPropertiesMethod           ,
#endif

-- ** getFullscreen #method:getFullscreen#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetFullscreenMethodInfo ,
#endif
    windowPropertiesGetFullscreen           ,


-- ** getGeometry #method:getGeometry#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetGeometryMethodInfo   ,
#endif
    windowPropertiesGetGeometry             ,


-- ** getLocationbarVisible #method:getLocationbarVisible#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetLocationbarVisibleMethodInfo,
#endif
    windowPropertiesGetLocationbarVisible   ,


-- ** getMenubarVisible #method:getMenubarVisible#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetMenubarVisibleMethodInfo,
#endif
    windowPropertiesGetMenubarVisible       ,


-- ** getResizable #method:getResizable#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetResizableMethodInfo  ,
#endif
    windowPropertiesGetResizable            ,


-- ** getScrollbarsVisible #method:getScrollbarsVisible#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetScrollbarsVisibleMethodInfo,
#endif
    windowPropertiesGetScrollbarsVisible    ,


-- ** getStatusbarVisible #method:getStatusbarVisible#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetStatusbarVisibleMethodInfo,
#endif
    windowPropertiesGetStatusbarVisible     ,


-- ** getToolbarVisible #method:getToolbarVisible#

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGetToolbarVisibleMethodInfo,
#endif
    windowPropertiesGetToolbarVisible       ,




 -- * Properties


-- ** fullscreen #attr:fullscreen#
-- | Whether window will be displayed fullscreen.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesFullscreenPropertyInfo  ,
#endif
    constructWindowPropertiesFullscreen     ,
    getWindowPropertiesFullscreen           ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesFullscreen              ,
#endif


-- ** geometry #attr:geometry#
-- | The size and position of the window on the screen.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesGeometryPropertyInfo    ,
#endif
    constructWindowPropertiesGeometry       ,
    getWindowPropertiesGeometry             ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesGeometry                ,
#endif


-- ** locationbarVisible #attr:locationbarVisible#
-- | Whether the locationbar should be visible for the window.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesLocationbarVisiblePropertyInfo,
#endif
    constructWindowPropertiesLocationbarVisible,
    getWindowPropertiesLocationbarVisible   ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesLocationbarVisible      ,
#endif


-- ** menubarVisible #attr:menubarVisible#
-- | Whether the menubar should be visible for the window.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesMenubarVisiblePropertyInfo,
#endif
    constructWindowPropertiesMenubarVisible ,
    getWindowPropertiesMenubarVisible       ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesMenubarVisible          ,
#endif


-- ** resizable #attr:resizable#
-- | Whether the window can be resized.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesResizablePropertyInfo   ,
#endif
    constructWindowPropertiesResizable      ,
    getWindowPropertiesResizable            ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesResizable               ,
#endif


-- ** scrollbarsVisible #attr:scrollbarsVisible#
-- | Whether the scrollbars should be visible for the window.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesScrollbarsVisiblePropertyInfo,
#endif
    constructWindowPropertiesScrollbarsVisible,
    getWindowPropertiesScrollbarsVisible    ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesScrollbarsVisible       ,
#endif


-- ** statusbarVisible #attr:statusbarVisible#
-- | Whether the statusbar should be visible for the window.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesStatusbarVisiblePropertyInfo,
#endif
    constructWindowPropertiesStatusbarVisible,
    getWindowPropertiesStatusbarVisible     ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesStatusbarVisible        ,
#endif


-- ** toolbarVisible #attr:toolbarVisible#
-- | Whether the toolbar should be visible for the window.

#if defined(ENABLE_OVERLOADING)
    WindowPropertiesToolbarVisiblePropertyInfo,
#endif
    constructWindowPropertiesToolbarVisible ,
    getWindowPropertiesToolbarVisible       ,
#if defined(ENABLE_OVERLOADING)
    windowPropertiesToolbarVisible          ,
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
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle

#endif

-- | Memory-managed wrapper type.
newtype WindowProperties = WindowProperties (SP.ManagedPtr WindowProperties)
    deriving (Eq)

instance SP.ManagedPtrNewtype WindowProperties where
    toManagedPtr (WindowProperties p) = p

foreign import ccall "webkit_window_properties_get_type"
    c_webkit_window_properties_get_type :: IO B.Types.GType

instance B.Types.TypedObject WindowProperties where
    glibType = c_webkit_window_properties_get_type

instance B.Types.GObject WindowProperties

-- | Type class for types which can be safely cast to t'WindowProperties', for instance with `toWindowProperties`.
class (SP.GObject o, O.IsDescendantOf WindowProperties o) => IsWindowProperties o
instance (SP.GObject o, O.IsDescendantOf WindowProperties o) => IsWindowProperties o

instance O.HasParentTypes WindowProperties
type instance O.ParentTypes WindowProperties = '[GObject.Object.Object]

-- | Cast to t'WindowProperties', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWindowProperties :: (MIO.MonadIO m, IsWindowProperties o) => o -> m WindowProperties
toWindowProperties = MIO.liftIO . B.ManagedPtr.unsafeCastTo WindowProperties

-- | Convert t'WindowProperties' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WindowProperties) where
    gvalueGType_ = c_webkit_window_properties_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WindowProperties)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WindowProperties)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WindowProperties ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWindowPropertiesMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWindowPropertiesMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWindowPropertiesMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWindowPropertiesMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWindowPropertiesMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWindowPropertiesMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWindowPropertiesMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWindowPropertiesMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWindowPropertiesMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWindowPropertiesMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWindowPropertiesMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWindowPropertiesMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWindowPropertiesMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWindowPropertiesMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWindowPropertiesMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWindowPropertiesMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWindowPropertiesMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWindowPropertiesMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWindowPropertiesMethod "getFullscreen" o = WindowPropertiesGetFullscreenMethodInfo
    ResolveWindowPropertiesMethod "getGeometry" o = WindowPropertiesGetGeometryMethodInfo
    ResolveWindowPropertiesMethod "getLocationbarVisible" o = WindowPropertiesGetLocationbarVisibleMethodInfo
    ResolveWindowPropertiesMethod "getMenubarVisible" o = WindowPropertiesGetMenubarVisibleMethodInfo
    ResolveWindowPropertiesMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWindowPropertiesMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWindowPropertiesMethod "getResizable" o = WindowPropertiesGetResizableMethodInfo
    ResolveWindowPropertiesMethod "getScrollbarsVisible" o = WindowPropertiesGetScrollbarsVisibleMethodInfo
    ResolveWindowPropertiesMethod "getStatusbarVisible" o = WindowPropertiesGetStatusbarVisibleMethodInfo
    ResolveWindowPropertiesMethod "getToolbarVisible" o = WindowPropertiesGetToolbarVisibleMethodInfo
    ResolveWindowPropertiesMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWindowPropertiesMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWindowPropertiesMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWindowPropertiesMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWindowPropertiesMethod t WindowProperties, O.OverloadedMethod info WindowProperties p) => OL.IsLabel t (WindowProperties -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWindowPropertiesMethod t WindowProperties, O.OverloadedMethod info WindowProperties p, R.HasField t WindowProperties p) => R.HasField t WindowProperties p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWindowPropertiesMethod t WindowProperties, O.OverloadedMethodInfo info WindowProperties) => OL.IsLabel t (O.MethodProxy info WindowProperties) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "fullscreen"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@fullscreen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #fullscreen
-- @
getWindowPropertiesFullscreen :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesFullscreen obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "fullscreen"

-- | Construct a t'GValueConstruct' with valid value for the “@fullscreen@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesFullscreen :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesFullscreen val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "fullscreen" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesFullscreenPropertyInfo
instance AttrInfo WindowPropertiesFullscreenPropertyInfo where
    type AttrAllowedOps WindowPropertiesFullscreenPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesFullscreenPropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesFullscreenPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesFullscreenPropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesFullscreenPropertyInfo = Bool
    type AttrGetType WindowPropertiesFullscreenPropertyInfo = Bool
    type AttrLabel WindowPropertiesFullscreenPropertyInfo = "fullscreen"
    type AttrOrigin WindowPropertiesFullscreenPropertyInfo = WindowProperties
    attrGet = getWindowPropertiesFullscreen
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesFullscreen
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.fullscreen"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:fullscreen"
        })
#endif

-- VVV Prop "geometry"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Rectangle"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@geometry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #geometry
-- @
getWindowPropertiesGeometry :: (MonadIO m, IsWindowProperties o) => o -> m (Maybe Gdk.Rectangle.Rectangle)
getWindowPropertiesGeometry obj = MIO.liftIO $ B.Properties.getObjectPropertyBoxed obj "geometry" Gdk.Rectangle.Rectangle

-- | Construct a t'GValueConstruct' with valid value for the “@geometry@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesGeometry :: (IsWindowProperties o, MIO.MonadIO m) => Gdk.Rectangle.Rectangle -> m (GValueConstruct o)
constructWindowPropertiesGeometry val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBoxed "geometry" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGeometryPropertyInfo
instance AttrInfo WindowPropertiesGeometryPropertyInfo where
    type AttrAllowedOps WindowPropertiesGeometryPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WindowPropertiesGeometryPropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesGeometryPropertyInfo = (~) Gdk.Rectangle.Rectangle
    type AttrTransferTypeConstraint WindowPropertiesGeometryPropertyInfo = (~) Gdk.Rectangle.Rectangle
    type AttrTransferType WindowPropertiesGeometryPropertyInfo = Gdk.Rectangle.Rectangle
    type AttrGetType WindowPropertiesGeometryPropertyInfo = (Maybe Gdk.Rectangle.Rectangle)
    type AttrLabel WindowPropertiesGeometryPropertyInfo = "geometry"
    type AttrOrigin WindowPropertiesGeometryPropertyInfo = WindowProperties
    attrGet = getWindowPropertiesGeometry
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesGeometry
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.geometry"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:geometry"
        })
#endif

-- VVV Prop "locationbar-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@locationbar-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #locationbarVisible
-- @
getWindowPropertiesLocationbarVisible :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesLocationbarVisible obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "locationbar-visible"

-- | Construct a t'GValueConstruct' with valid value for the “@locationbar-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesLocationbarVisible :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesLocationbarVisible val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "locationbar-visible" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesLocationbarVisiblePropertyInfo
instance AttrInfo WindowPropertiesLocationbarVisiblePropertyInfo where
    type AttrAllowedOps WindowPropertiesLocationbarVisiblePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesLocationbarVisiblePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesLocationbarVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesLocationbarVisiblePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesLocationbarVisiblePropertyInfo = Bool
    type AttrGetType WindowPropertiesLocationbarVisiblePropertyInfo = Bool
    type AttrLabel WindowPropertiesLocationbarVisiblePropertyInfo = "locationbar-visible"
    type AttrOrigin WindowPropertiesLocationbarVisiblePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesLocationbarVisible
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesLocationbarVisible
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.locationbarVisible"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:locationbarVisible"
        })
#endif

-- VVV Prop "menubar-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@menubar-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #menubarVisible
-- @
getWindowPropertiesMenubarVisible :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesMenubarVisible obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "menubar-visible"

-- | Construct a t'GValueConstruct' with valid value for the “@menubar-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesMenubarVisible :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesMenubarVisible val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "menubar-visible" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesMenubarVisiblePropertyInfo
instance AttrInfo WindowPropertiesMenubarVisiblePropertyInfo where
    type AttrAllowedOps WindowPropertiesMenubarVisiblePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesMenubarVisiblePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesMenubarVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesMenubarVisiblePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesMenubarVisiblePropertyInfo = Bool
    type AttrGetType WindowPropertiesMenubarVisiblePropertyInfo = Bool
    type AttrLabel WindowPropertiesMenubarVisiblePropertyInfo = "menubar-visible"
    type AttrOrigin WindowPropertiesMenubarVisiblePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesMenubarVisible
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesMenubarVisible
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.menubarVisible"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:menubarVisible"
        })
#endif

-- VVV Prop "resizable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@resizable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #resizable
-- @
getWindowPropertiesResizable :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesResizable obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "resizable"

-- | Construct a t'GValueConstruct' with valid value for the “@resizable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesResizable :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesResizable val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "resizable" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesResizablePropertyInfo
instance AttrInfo WindowPropertiesResizablePropertyInfo where
    type AttrAllowedOps WindowPropertiesResizablePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesResizablePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesResizablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesResizablePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesResizablePropertyInfo = Bool
    type AttrGetType WindowPropertiesResizablePropertyInfo = Bool
    type AttrLabel WindowPropertiesResizablePropertyInfo = "resizable"
    type AttrOrigin WindowPropertiesResizablePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesResizable
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesResizable
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.resizable"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:resizable"
        })
#endif

-- VVV Prop "scrollbars-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@scrollbars-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #scrollbarsVisible
-- @
getWindowPropertiesScrollbarsVisible :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesScrollbarsVisible obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "scrollbars-visible"

-- | Construct a t'GValueConstruct' with valid value for the “@scrollbars-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesScrollbarsVisible :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesScrollbarsVisible val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "scrollbars-visible" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesScrollbarsVisiblePropertyInfo
instance AttrInfo WindowPropertiesScrollbarsVisiblePropertyInfo where
    type AttrAllowedOps WindowPropertiesScrollbarsVisiblePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesScrollbarsVisiblePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesScrollbarsVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesScrollbarsVisiblePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesScrollbarsVisiblePropertyInfo = Bool
    type AttrGetType WindowPropertiesScrollbarsVisiblePropertyInfo = Bool
    type AttrLabel WindowPropertiesScrollbarsVisiblePropertyInfo = "scrollbars-visible"
    type AttrOrigin WindowPropertiesScrollbarsVisiblePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesScrollbarsVisible
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesScrollbarsVisible
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.scrollbarsVisible"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:scrollbarsVisible"
        })
#endif

-- VVV Prop "statusbar-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@statusbar-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #statusbarVisible
-- @
getWindowPropertiesStatusbarVisible :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesStatusbarVisible obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "statusbar-visible"

-- | Construct a t'GValueConstruct' with valid value for the “@statusbar-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesStatusbarVisible :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesStatusbarVisible val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "statusbar-visible" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesStatusbarVisiblePropertyInfo
instance AttrInfo WindowPropertiesStatusbarVisiblePropertyInfo where
    type AttrAllowedOps WindowPropertiesStatusbarVisiblePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesStatusbarVisiblePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesStatusbarVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesStatusbarVisiblePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesStatusbarVisiblePropertyInfo = Bool
    type AttrGetType WindowPropertiesStatusbarVisiblePropertyInfo = Bool
    type AttrLabel WindowPropertiesStatusbarVisiblePropertyInfo = "statusbar-visible"
    type AttrOrigin WindowPropertiesStatusbarVisiblePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesStatusbarVisible
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesStatusbarVisible
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.statusbarVisible"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:statusbarVisible"
        })
#endif

-- VVV Prop "toolbar-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@toolbar-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' windowProperties #toolbarVisible
-- @
getWindowPropertiesToolbarVisible :: (MonadIO m, IsWindowProperties o) => o -> m Bool
getWindowPropertiesToolbarVisible obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "toolbar-visible"

-- | Construct a t'GValueConstruct' with valid value for the “@toolbar-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWindowPropertiesToolbarVisible :: (IsWindowProperties o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWindowPropertiesToolbarVisible val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "toolbar-visible" val

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesToolbarVisiblePropertyInfo
instance AttrInfo WindowPropertiesToolbarVisiblePropertyInfo where
    type AttrAllowedOps WindowPropertiesToolbarVisiblePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WindowPropertiesToolbarVisiblePropertyInfo = IsWindowProperties
    type AttrSetTypeConstraint WindowPropertiesToolbarVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WindowPropertiesToolbarVisiblePropertyInfo = (~) Bool
    type AttrTransferType WindowPropertiesToolbarVisiblePropertyInfo = Bool
    type AttrGetType WindowPropertiesToolbarVisiblePropertyInfo = Bool
    type AttrLabel WindowPropertiesToolbarVisiblePropertyInfo = "toolbar-visible"
    type AttrOrigin WindowPropertiesToolbarVisiblePropertyInfo = WindowProperties
    attrGet = getWindowPropertiesToolbarVisible
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWindowPropertiesToolbarVisible
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.toolbarVisible"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#g:attr:toolbarVisible"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WindowProperties
type instance O.AttributeList WindowProperties = WindowPropertiesAttributeList
type WindowPropertiesAttributeList = ('[ '("fullscreen", WindowPropertiesFullscreenPropertyInfo), '("geometry", WindowPropertiesGeometryPropertyInfo), '("locationbarVisible", WindowPropertiesLocationbarVisiblePropertyInfo), '("menubarVisible", WindowPropertiesMenubarVisiblePropertyInfo), '("resizable", WindowPropertiesResizablePropertyInfo), '("scrollbarsVisible", WindowPropertiesScrollbarsVisiblePropertyInfo), '("statusbarVisible", WindowPropertiesStatusbarVisiblePropertyInfo), '("toolbarVisible", WindowPropertiesToolbarVisiblePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
windowPropertiesFullscreen :: AttrLabelProxy "fullscreen"
windowPropertiesFullscreen = AttrLabelProxy

windowPropertiesGeometry :: AttrLabelProxy "geometry"
windowPropertiesGeometry = AttrLabelProxy

windowPropertiesLocationbarVisible :: AttrLabelProxy "locationbarVisible"
windowPropertiesLocationbarVisible = AttrLabelProxy

windowPropertiesMenubarVisible :: AttrLabelProxy "menubarVisible"
windowPropertiesMenubarVisible = AttrLabelProxy

windowPropertiesResizable :: AttrLabelProxy "resizable"
windowPropertiesResizable = AttrLabelProxy

windowPropertiesScrollbarsVisible :: AttrLabelProxy "scrollbarsVisible"
windowPropertiesScrollbarsVisible = AttrLabelProxy

windowPropertiesStatusbarVisible :: AttrLabelProxy "statusbarVisible"
windowPropertiesStatusbarVisible = AttrLabelProxy

windowPropertiesToolbarVisible :: AttrLabelProxy "toolbarVisible"
windowPropertiesToolbarVisible = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WindowProperties = WindowPropertiesSignalList
type WindowPropertiesSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WindowProperties::get_fullscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_fullscreen" webkit_window_properties_get_fullscreen :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should be shown in fullscreen state or not.
windowPropertiesGetFullscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the window should be fullscreen or 'P.False' otherwise.
windowPropertiesGetFullscreen windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_fullscreen windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetFullscreenMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetFullscreenMethodInfo a signature where
    overloadedMethod = windowPropertiesGetFullscreen

instance O.OverloadedMethodInfo WindowPropertiesGetFullscreenMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetFullscreen",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetFullscreen"
        })


#endif

-- method WindowProperties::get_geometry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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
--           { argCName = "geometry"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , argCType = Just "GdkRectangle*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the window geometry"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_window_properties_get_geometry" webkit_window_properties_get_geometry :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    Ptr Gdk.Rectangle.Rectangle ->          -- geometry : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Get the geometry the window should have on the screen when shown.
windowPropertiesGetGeometry ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m (Gdk.Rectangle.Rectangle)
windowPropertiesGetGeometry windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    geometry <- SP.callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    webkit_window_properties_get_geometry windowProperties' geometry
    geometry' <- (wrapBoxed Gdk.Rectangle.Rectangle) geometry
    touchManagedPtr windowProperties
    return geometry'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetGeometryMethodInfo
instance (signature ~ (m (Gdk.Rectangle.Rectangle)), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetGeometryMethodInfo a signature where
    overloadedMethod = windowPropertiesGetGeometry

instance O.OverloadedMethodInfo WindowPropertiesGetGeometryMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetGeometry",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetGeometry"
        })


#endif

-- method WindowProperties::get_locationbar_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_locationbar_visible" webkit_window_properties_get_locationbar_visible :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should have the locationbar visible or not.
windowPropertiesGetLocationbarVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if locationbar should be visible or 'P.False' otherwise.
windowPropertiesGetLocationbarVisible windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_locationbar_visible windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetLocationbarVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetLocationbarVisibleMethodInfo a signature where
    overloadedMethod = windowPropertiesGetLocationbarVisible

instance O.OverloadedMethodInfo WindowPropertiesGetLocationbarVisibleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetLocationbarVisible",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetLocationbarVisible"
        })


#endif

-- method WindowProperties::get_menubar_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_menubar_visible" webkit_window_properties_get_menubar_visible :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should have the menubar visible or not.
windowPropertiesGetMenubarVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if menubar should be visible or 'P.False' otherwise.
windowPropertiesGetMenubarVisible windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_menubar_visible windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetMenubarVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetMenubarVisibleMethodInfo a signature where
    overloadedMethod = windowPropertiesGetMenubarVisible

instance O.OverloadedMethodInfo WindowPropertiesGetMenubarVisibleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetMenubarVisible",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetMenubarVisible"
        })


#endif

-- method WindowProperties::get_resizable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_resizable" webkit_window_properties_get_resizable :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should be resizable by the user or not.
windowPropertiesGetResizable ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the window should be resizable or 'P.False' otherwise.
windowPropertiesGetResizable windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_resizable windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetResizableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetResizableMethodInfo a signature where
    overloadedMethod = windowPropertiesGetResizable

instance O.OverloadedMethodInfo WindowPropertiesGetResizableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetResizable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetResizable"
        })


#endif

-- method WindowProperties::get_scrollbars_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_scrollbars_visible" webkit_window_properties_get_scrollbars_visible :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should have the scrollbars visible or not.
windowPropertiesGetScrollbarsVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if scrollbars should be visible or 'P.False' otherwise.
windowPropertiesGetScrollbarsVisible windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_scrollbars_visible windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetScrollbarsVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetScrollbarsVisibleMethodInfo a signature where
    overloadedMethod = windowPropertiesGetScrollbarsVisible

instance O.OverloadedMethodInfo WindowPropertiesGetScrollbarsVisibleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetScrollbarsVisible",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetScrollbarsVisible"
        })


#endif

-- method WindowProperties::get_statusbar_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_statusbar_visible" webkit_window_properties_get_statusbar_visible :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should have the statusbar visible or not.
windowPropertiesGetStatusbarVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if statusbar should be visible or 'P.False' otherwise.
windowPropertiesGetStatusbarVisible windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_statusbar_visible windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetStatusbarVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetStatusbarVisibleMethodInfo a signature where
    overloadedMethod = windowPropertiesGetStatusbarVisible

instance O.OverloadedMethodInfo WindowPropertiesGetStatusbarVisibleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetStatusbarVisible",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetStatusbarVisible"
        })


#endif

-- method WindowProperties::get_toolbar_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window_properties"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WindowProperties" }
--           , argCType = Just "WebKitWindowProperties*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWindowProperties"
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

foreign import ccall "webkit_window_properties_get_toolbar_visible" webkit_window_properties_get_toolbar_visible :: 
    Ptr WindowProperties ->                 -- window_properties : TInterface (Name {namespace = "WebKit2", name = "WindowProperties"})
    IO CInt

-- | Get whether the window should have the toolbar visible or not.
windowPropertiesGetToolbarVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsWindowProperties a) =>
    a
    -- ^ /@windowProperties@/: a t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if toolbar should be visible or 'P.False' otherwise.
windowPropertiesGetToolbarVisible windowProperties = liftIO $ do
    windowProperties' <- unsafeManagedPtrCastPtr windowProperties
    result <- webkit_window_properties_get_toolbar_visible windowProperties'
    let result' = (/= 0) result
    touchManagedPtr windowProperties
    return result'

#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetToolbarVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWindowProperties a) => O.OverloadedMethod WindowPropertiesGetToolbarVisibleMethodInfo a signature where
    overloadedMethod = windowPropertiesGetToolbarVisible

instance O.OverloadedMethodInfo WindowPropertiesGetToolbarVisibleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WindowProperties.windowPropertiesGetToolbarVisible",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WindowProperties.html#v:windowPropertiesGetToolbarVisible"
        })


#endif


