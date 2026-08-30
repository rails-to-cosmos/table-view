{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Allows to embed a custom widget in print dialog.
-- 
-- A WebKitPrintCustomWidget allows to embed a custom widget in the print
-- dialog by connecting to the [PrintOperation::createCustomWidget]("GI.WebKit2.Objects.PrintOperation#g:signal:createCustomWidget")
-- signal, creating a new WebKitPrintCustomWidget with
-- 'GI.WebKit2.Objects.PrintCustomWidget.printCustomWidgetNew' and returning it from there. You can later
-- use 'GI.WebKit2.Objects.PrintOperation.printOperationRunDialog' to display the dialog.
-- 
-- Unfortunately, use of custom widgets is incompatible with modern
-- containerized application frameworks like Flatpak. A print dialog
-- constructed in the application process will not have access to host
-- printers, so instead it must be constructed by a desktop portal service
-- running on the host system. Because this print dialog runs in a separate
-- process, it\'s not possible to attach a custom widget.
-- 
-- /Since: 2.16/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.PrintCustomWidget
    ( 

-- * Exported types
    PrintCustomWidget(..)                   ,
    IsPrintCustomWidget                     ,
    toPrintCustomWidget                     ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getTitle]("GI.WebKit2.Objects.PrintCustomWidget#g:method:getTitle"), [getWidget]("GI.WebKit2.Objects.PrintCustomWidget#g:method:getWidget").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolvePrintCustomWidgetMethod          ,
#endif

-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetGetTitleMethodInfo     ,
#endif
    printCustomWidgetGetTitle               ,


-- ** getWidget #method:getWidget#

#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetGetWidgetMethodInfo    ,
#endif
    printCustomWidgetGetWidget              ,


-- ** new #method:new#

    printCustomWidgetNew                    ,




 -- * Properties


-- ** title #attr:title#
-- | The title of the custom widget.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetTitlePropertyInfo      ,
#endif
    constructPrintCustomWidgetTitle         ,
    getPrintCustomWidgetTitle               ,
#if defined(ENABLE_OVERLOADING)
    printCustomWidgetTitle                  ,
#endif


-- ** widget #attr:widget#
-- | The custom t'GI.Gtk.Objects.Widget.Widget' that will be embedded in the dialog.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetWidgetPropertyInfo     ,
#endif
    constructPrintCustomWidgetWidget        ,
    getPrintCustomWidgetWidget              ,
#if defined(ENABLE_OVERLOADING)
    printCustomWidgetWidget                 ,
#endif




 -- * Signals


-- ** apply #signal:apply#

    PrintCustomWidgetApplyCallback          ,
#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetApplySignalInfo        ,
#endif
    afterPrintCustomWidgetApply             ,
    onPrintCustomWidgetApply                ,


-- ** update #signal:update#

    PrintCustomWidgetUpdateCallback         ,
#if defined(ENABLE_OVERLOADING)
    PrintCustomWidgetUpdateSignalInfo       ,
#endif
    afterPrintCustomWidgetUpdate            ,
    onPrintCustomWidgetUpdate               ,




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
import qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import qualified GI.Gtk.Objects.PrintSettings as Gtk.PrintSettings
import qualified GI.Gtk.Objects.Widget as Gtk.Widget

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import qualified GI.Gtk.Objects.PrintSettings as Gtk.PrintSettings
import qualified GI.Gtk.Objects.Widget as Gtk.Widget

#endif

-- | Memory-managed wrapper type.
newtype PrintCustomWidget = PrintCustomWidget (SP.ManagedPtr PrintCustomWidget)
    deriving (Eq)

instance SP.ManagedPtrNewtype PrintCustomWidget where
    toManagedPtr (PrintCustomWidget p) = p

foreign import ccall "webkit_print_custom_widget_get_type"
    c_webkit_print_custom_widget_get_type :: IO B.Types.GType

instance B.Types.TypedObject PrintCustomWidget where
    glibType = c_webkit_print_custom_widget_get_type

instance B.Types.GObject PrintCustomWidget

-- | Type class for types which can be safely cast to t'PrintCustomWidget', for instance with `toPrintCustomWidget`.
class (SP.GObject o, O.IsDescendantOf PrintCustomWidget o) => IsPrintCustomWidget o
instance (SP.GObject o, O.IsDescendantOf PrintCustomWidget o) => IsPrintCustomWidget o

instance O.HasParentTypes PrintCustomWidget
type instance O.ParentTypes PrintCustomWidget = '[GObject.Object.Object]

-- | Cast to t'PrintCustomWidget', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toPrintCustomWidget :: (MIO.MonadIO m, IsPrintCustomWidget o) => o -> m PrintCustomWidget
toPrintCustomWidget = MIO.liftIO . B.ManagedPtr.unsafeCastTo PrintCustomWidget

-- | Convert t'PrintCustomWidget' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe PrintCustomWidget) where
    gvalueGType_ = c_webkit_print_custom_widget_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr PrintCustomWidget)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr PrintCustomWidget)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject PrintCustomWidget ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolvePrintCustomWidgetMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolvePrintCustomWidgetMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePrintCustomWidgetMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePrintCustomWidgetMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePrintCustomWidgetMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePrintCustomWidgetMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePrintCustomWidgetMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePrintCustomWidgetMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePrintCustomWidgetMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePrintCustomWidgetMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePrintCustomWidgetMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePrintCustomWidgetMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePrintCustomWidgetMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePrintCustomWidgetMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePrintCustomWidgetMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePrintCustomWidgetMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePrintCustomWidgetMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePrintCustomWidgetMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePrintCustomWidgetMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePrintCustomWidgetMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePrintCustomWidgetMethod "getTitle" o = PrintCustomWidgetGetTitleMethodInfo
    ResolvePrintCustomWidgetMethod "getWidget" o = PrintCustomWidgetGetWidgetMethodInfo
    ResolvePrintCustomWidgetMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePrintCustomWidgetMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePrintCustomWidgetMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePrintCustomWidgetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePrintCustomWidgetMethod t PrintCustomWidget, O.OverloadedMethod info PrintCustomWidget p) => OL.IsLabel t (PrintCustomWidget -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolvePrintCustomWidgetMethod t PrintCustomWidget, O.OverloadedMethod info PrintCustomWidget p, R.HasField t PrintCustomWidget p) => R.HasField t PrintCustomWidget p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolvePrintCustomWidgetMethod t PrintCustomWidget, O.OverloadedMethodInfo info PrintCustomWidget) => OL.IsLabel t (O.MethodProxy info PrintCustomWidget) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal PrintCustomWidget::apply
{-# DEPRECATED PrintCustomWidgetApplyCallback ["(Since version 2.40)"] #-}
-- | Emitted right before the printing will start. You should read the information
-- from the widget and update the content based on it if necessary. The widget
-- is not guaranteed to be valid at a later time.
-- 
-- /Since: 2.16/
type PrintCustomWidgetApplyCallback =
    IO ()

type C_PrintCustomWidgetApplyCallback =
    Ptr PrintCustomWidget ->                -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintCustomWidgetApplyCallback`.
foreign import ccall "wrapper"
    mk_PrintCustomWidgetApplyCallback :: C_PrintCustomWidgetApplyCallback -> IO (FunPtr C_PrintCustomWidgetApplyCallback)

wrap_PrintCustomWidgetApplyCallback :: 
    GObject a => (a -> PrintCustomWidgetApplyCallback) ->
    C_PrintCustomWidgetApplyCallback
wrap_PrintCustomWidgetApplyCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [apply](#signal:apply) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printCustomWidget #apply callback
-- @
-- 
-- 
onPrintCustomWidgetApply :: (IsPrintCustomWidget a, MonadIO m) => a -> ((?self :: a) => PrintCustomWidgetApplyCallback) -> m SignalHandlerId
onPrintCustomWidgetApply obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintCustomWidgetApplyCallback wrapped
    wrapped'' <- mk_PrintCustomWidgetApplyCallback wrapped'
    connectSignalFunPtr obj "apply" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [apply](#signal:apply) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printCustomWidget #apply callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterPrintCustomWidgetApply :: (IsPrintCustomWidget a, MonadIO m) => a -> ((?self :: a) => PrintCustomWidgetApplyCallback) -> m SignalHandlerId
afterPrintCustomWidgetApply obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintCustomWidgetApplyCallback wrapped
    wrapped'' <- mk_PrintCustomWidgetApplyCallback wrapped'
    connectSignalFunPtr obj "apply" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetApplySignalInfo
instance SignalInfo PrintCustomWidgetApplySignalInfo where
    type HaskellCallbackType PrintCustomWidgetApplySignalInfo = PrintCustomWidgetApplyCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintCustomWidgetApplyCallback cb
        cb'' <- mk_PrintCustomWidgetApplyCallback cb'
        connectSignalFunPtr obj "apply" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget::apply"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#g:signal:apply"})

#endif

-- signal PrintCustomWidget::update
{-# DEPRECATED PrintCustomWidgetUpdateCallback ["(Since version 2.40)"] #-}
-- | Emitted after change of selected printer in the dialog. The actual page setup
-- and print settings are available and the custom widget can actualize itself
-- according to their values.
-- 
-- /Since: 2.16/
type PrintCustomWidgetUpdateCallback =
    Gtk.PageSetup.PageSetup
    -- ^ /@pageSetup@/: actual page setup
    -> Gtk.PrintSettings.PrintSettings
    -- ^ /@printSettings@/: actual print settings
    -> IO ()

type C_PrintCustomWidgetUpdateCallback =
    Ptr PrintCustomWidget ->                -- object
    Ptr Gtk.PageSetup.PageSetup ->
    Ptr Gtk.PrintSettings.PrintSettings ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PrintCustomWidgetUpdateCallback`.
foreign import ccall "wrapper"
    mk_PrintCustomWidgetUpdateCallback :: C_PrintCustomWidgetUpdateCallback -> IO (FunPtr C_PrintCustomWidgetUpdateCallback)

wrap_PrintCustomWidgetUpdateCallback :: 
    GObject a => (a -> PrintCustomWidgetUpdateCallback) ->
    C_PrintCustomWidgetUpdateCallback
wrap_PrintCustomWidgetUpdateCallback gi'cb gi'selfPtr pageSetup printSettings _ = do
    pageSetup' <- (newObject Gtk.PageSetup.PageSetup) pageSetup
    printSettings' <- (newObject Gtk.PrintSettings.PrintSettings) printSettings
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  pageSetup' printSettings'


-- | Connect a signal handler for the [update](#signal:update) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' printCustomWidget #update callback
-- @
-- 
-- 
onPrintCustomWidgetUpdate :: (IsPrintCustomWidget a, MonadIO m) => a -> ((?self :: a) => PrintCustomWidgetUpdateCallback) -> m SignalHandlerId
onPrintCustomWidgetUpdate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintCustomWidgetUpdateCallback wrapped
    wrapped'' <- mk_PrintCustomWidgetUpdateCallback wrapped'
    connectSignalFunPtr obj "update" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [update](#signal:update) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' printCustomWidget #update callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterPrintCustomWidgetUpdate :: (IsPrintCustomWidget a, MonadIO m) => a -> ((?self :: a) => PrintCustomWidgetUpdateCallback) -> m SignalHandlerId
afterPrintCustomWidgetUpdate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_PrintCustomWidgetUpdateCallback wrapped
    wrapped'' <- mk_PrintCustomWidgetUpdateCallback wrapped'
    connectSignalFunPtr obj "update" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetUpdateSignalInfo
instance SignalInfo PrintCustomWidgetUpdateSignalInfo where
    type HaskellCallbackType PrintCustomWidgetUpdateSignalInfo = PrintCustomWidgetUpdateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PrintCustomWidgetUpdateCallback cb
        cb'' <- mk_PrintCustomWidgetUpdateCallback cb'
        connectSignalFunPtr obj "update" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget::update"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#g:signal:update"})

#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' printCustomWidget #title
-- @
getPrintCustomWidgetTitle :: (MonadIO m, IsPrintCustomWidget o) => o -> m T.Text
getPrintCustomWidgetTitle obj = MIO.liftIO $ checkUnexpectedNothing "getPrintCustomWidgetTitle" $ B.Properties.getObjectPropertyString obj "title"

-- | Construct a t'GValueConstruct' with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPrintCustomWidgetTitle :: (IsPrintCustomWidget o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructPrintCustomWidgetTitle val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "title" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetTitlePropertyInfo
instance AttrInfo PrintCustomWidgetTitlePropertyInfo where
    type AttrAllowedOps PrintCustomWidgetTitlePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint PrintCustomWidgetTitlePropertyInfo = IsPrintCustomWidget
    type AttrSetTypeConstraint PrintCustomWidgetTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint PrintCustomWidgetTitlePropertyInfo = (~) T.Text
    type AttrTransferType PrintCustomWidgetTitlePropertyInfo = T.Text
    type AttrGetType PrintCustomWidgetTitlePropertyInfo = T.Text
    type AttrLabel PrintCustomWidgetTitlePropertyInfo = "title"
    type AttrOrigin PrintCustomWidgetTitlePropertyInfo = PrintCustomWidget
    attrGet = getPrintCustomWidgetTitle
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructPrintCustomWidgetTitle
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget.title"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#g:attr:title"
        })
#endif

-- VVV Prop "widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' printCustomWidget #widget
-- @
getPrintCustomWidgetWidget :: (MonadIO m, IsPrintCustomWidget o) => o -> m (Maybe Gtk.Widget.Widget)
getPrintCustomWidgetWidget obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "widget" Gtk.Widget.Widget

-- | Construct a t'GValueConstruct' with valid value for the “@widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPrintCustomWidgetWidget :: (IsPrintCustomWidget o, MIO.MonadIO m, Gtk.Widget.IsWidget a) => a -> m (GValueConstruct o)
constructPrintCustomWidgetWidget val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "widget" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetWidgetPropertyInfo
instance AttrInfo PrintCustomWidgetWidgetPropertyInfo where
    type AttrAllowedOps PrintCustomWidgetWidgetPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint PrintCustomWidgetWidgetPropertyInfo = IsPrintCustomWidget
    type AttrSetTypeConstraint PrintCustomWidgetWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint PrintCustomWidgetWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType PrintCustomWidgetWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType PrintCustomWidgetWidgetPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel PrintCustomWidgetWidgetPropertyInfo = "widget"
    type AttrOrigin PrintCustomWidgetWidgetPropertyInfo = PrintCustomWidget
    attrGet = getPrintCustomWidgetWidget
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructPrintCustomWidgetWidget
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget.widget"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#g:attr:widget"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PrintCustomWidget
type instance O.AttributeList PrintCustomWidget = PrintCustomWidgetAttributeList
type PrintCustomWidgetAttributeList = ('[ '("title", PrintCustomWidgetTitlePropertyInfo), '("widget", PrintCustomWidgetWidgetPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
printCustomWidgetTitle :: AttrLabelProxy "title"
printCustomWidgetTitle = AttrLabelProxy

printCustomWidgetWidget :: AttrLabelProxy "widget"
printCustomWidgetWidget = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PrintCustomWidget = PrintCustomWidgetSignalList
type PrintCustomWidgetSignalList = ('[ '("apply", PrintCustomWidgetApplySignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("update", PrintCustomWidgetUpdateSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method PrintCustomWidget::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , argCType = Just "GtkWidget*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a @widget's title" , sinceVersion = Nothing }
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
--                  Name { namespace = "WebKit2" , name = "PrintCustomWidget" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_custom_widget_new" webkit_print_custom_widget_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- title : TBasicType TUTF8
    IO (Ptr PrintCustomWidget)

{-# DEPRECATED printCustomWidgetNew ["(Since version 2.40)"] #-}
-- | Create a new t'GI.WebKit2.Objects.PrintCustomWidget.PrintCustomWidget' with given /@widget@/ and /@title@/.
-- 
-- The /@widget@/
-- ownership is taken and it is destroyed together with the dialog even if this
-- object could still be alive at that point. You typically want to pass a container
-- widget with multiple widgets in it.
-- 
-- /Since: 2.16/
printCustomWidgetNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> T.Text
    -- ^ /@title@/: a /@widget@/\'s title
    -> m PrintCustomWidget
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.PrintOperation.PrintOperation'.
printCustomWidgetNew widget title = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    title' <- textToCString title
    result <- webkit_print_custom_widget_new widget' title'
    checkUnexpectedReturnNULL "printCustomWidgetNew" result
    result' <- (wrapObject PrintCustomWidget) result
    touchManagedPtr widget
    freeMem title'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method PrintCustomWidget::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_custom_widget"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PrintCustomWidget" }
--           , argCType = Just "WebKitPrintCustomWidget*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintCustomWidget"
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

foreign import ccall "webkit_print_custom_widget_get_title" webkit_print_custom_widget_get_title :: 
    Ptr PrintCustomWidget ->                -- print_custom_widget : TInterface (Name {namespace = "WebKit2", name = "PrintCustomWidget"})
    IO CString

{-# DEPRECATED printCustomWidgetGetTitle ["(Since version 2.40)"] #-}
-- | Return the value of [PrintCustomWidget:title]("GI.WebKit2.Objects.PrintCustomWidget#g:attr:title") property.
-- 
-- Return the value of [PrintCustomWidget:title]("GI.WebKit2.Objects.PrintCustomWidget#g:attr:title") property for the given
-- /@printCustomWidget@/ object.
-- 
-- /Since: 2.16/
printCustomWidgetGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintCustomWidget a) =>
    a
    -- ^ /@printCustomWidget@/: a t'GI.WebKit2.Objects.PrintCustomWidget.PrintCustomWidget'
    -> m T.Text
    -- ^ __Returns:__ Title of the /@printCustomWidget@/.
printCustomWidgetGetTitle printCustomWidget = liftIO $ do
    printCustomWidget' <- unsafeManagedPtrCastPtr printCustomWidget
    result <- webkit_print_custom_widget_get_title printCustomWidget'
    checkUnexpectedReturnNULL "printCustomWidgetGetTitle" result
    result' <- cstringToText result
    touchManagedPtr printCustomWidget
    return result'

#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsPrintCustomWidget a) => O.OverloadedMethod PrintCustomWidgetGetTitleMethodInfo a signature where
    overloadedMethod = printCustomWidgetGetTitle

instance O.OverloadedMethodInfo PrintCustomWidgetGetTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget.printCustomWidgetGetTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#v:printCustomWidgetGetTitle"
        })


#endif

-- method PrintCustomWidget::get_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "print_custom_widget"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "PrintCustomWidget" }
--           , argCType = Just "WebKitPrintCustomWidget*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitPrintCustomWidget"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_print_custom_widget_get_widget" webkit_print_custom_widget_get_widget :: 
    Ptr PrintCustomWidget ->                -- print_custom_widget : TInterface (Name {namespace = "WebKit2", name = "PrintCustomWidget"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED printCustomWidgetGetWidget ["(Since version 2.40)"] #-}
-- | Return the value of [PrintCustomWidget:widget]("GI.WebKit2.Objects.PrintCustomWidget#g:attr:widget") property.
-- 
-- Return the value of [PrintCustomWidget:widget]("GI.WebKit2.Objects.PrintCustomWidget#g:attr:widget") property for the given
-- /@printCustomWidget@/ object. The returned value will always be valid if called
-- from [PrintCustomWidget::apply]("GI.WebKit2.Objects.PrintCustomWidget#g:signal:apply") or [PrintCustomWidget::update]("GI.WebKit2.Objects.PrintCustomWidget#g:signal:update")
-- callbacks, but it will be 'P.Nothing' if called after the
-- [PrintCustomWidget::apply]("GI.WebKit2.Objects.PrintCustomWidget#g:signal:apply") signal is emitted.
-- 
-- /Since: 2.16/
printCustomWidgetGetWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrintCustomWidget a) =>
    a
    -- ^ /@printCustomWidget@/: a t'GI.WebKit2.Objects.PrintCustomWidget.PrintCustomWidget'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget'.
printCustomWidgetGetWidget printCustomWidget = liftIO $ do
    printCustomWidget' <- unsafeManagedPtrCastPtr printCustomWidget
    result <- webkit_print_custom_widget_get_widget printCustomWidget'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr printCustomWidget
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PrintCustomWidgetGetWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsPrintCustomWidget a) => O.OverloadedMethod PrintCustomWidgetGetWidgetMethodInfo a signature where
    overloadedMethod = printCustomWidgetGetWidget

instance O.OverloadedMethodInfo PrintCustomWidgetGetWidgetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.PrintCustomWidget.printCustomWidgetGetWidget",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-PrintCustomWidget.html#v:printCustomWidgetGetWidget"
        })


#endif


