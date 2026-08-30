{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A request to open a file chooser.
-- 
-- Whenever the user interacts with an HTML input element with
-- file type, WebKit will need to show a dialog to choose one or
-- more files to be uploaded to the server along with the rest of the
-- form data. For that to happen in a general way, instead of just
-- opening a t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' (which might be not desirable in
-- some cases, which could prefer to use their own file chooser
-- dialog), WebKit will fire the [WebView::runFileChooser]("GI.WebKit2.Objects.WebView#g:signal:runFileChooser")
-- signal with a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest' object, which will allow
-- the client application to specify the files to be selected, to
-- inspect the details of the request (e.g. if multiple selection
-- should be allowed) and to cancel the request, in case nothing was
-- selected.
-- 
-- In case the client application does not wish to handle this signal,
-- WebKit will provide a default handler which will asynchronously run
-- a regular t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' for the user to interact with.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.FileChooserRequest
    ( 

-- * Exported types
    FileChooserRequest(..)                  ,
    IsFileChooserRequest                    ,
    toFileChooserRequest                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [cancel]("GI.WebKit2.Objects.FileChooserRequest#g:method:cancel"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [selectFiles]("GI.WebKit2.Objects.FileChooserRequest#g:method:selectFiles"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getMimeTypes]("GI.WebKit2.Objects.FileChooserRequest#g:method:getMimeTypes"), [getMimeTypesFilter]("GI.WebKit2.Objects.FileChooserRequest#g:method:getMimeTypesFilter"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getSelectMultiple]("GI.WebKit2.Objects.FileChooserRequest#g:method:getSelectMultiple"), [getSelectedFiles]("GI.WebKit2.Objects.FileChooserRequest#g:method:getSelectedFiles").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveFileChooserRequestMethod         ,
#endif

-- ** cancel #method:cancel#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestCancelMethodInfo      ,
#endif
    fileChooserRequestCancel                ,


-- ** getMimeTypes #method:getMimeTypes#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestGetMimeTypesMethodInfo,
#endif
    fileChooserRequestGetMimeTypes          ,


-- ** getMimeTypesFilter #method:getMimeTypesFilter#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestGetMimeTypesFilterMethodInfo,
#endif
    fileChooserRequestGetMimeTypesFilter    ,


-- ** getSelectMultiple #method:getSelectMultiple#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestGetSelectMultipleMethodInfo,
#endif
    fileChooserRequestGetSelectMultiple     ,


-- ** getSelectedFiles #method:getSelectedFiles#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestGetSelectedFilesMethodInfo,
#endif
    fileChooserRequestGetSelectedFiles      ,


-- ** selectFiles #method:selectFiles#

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestSelectFilesMethodInfo ,
#endif
    fileChooserRequestSelectFiles           ,




 -- * Properties


-- ** filter #attr:filter#
-- | The filter currently associated with the request. See
-- 'GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetMimeTypesFilter' for more
-- details.

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestFilterPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    fileChooserRequestFilter                ,
#endif
    getFileChooserRequestFilter             ,


-- ** mimeTypes #attr:mimeTypes#
-- | A 'P.Nothing'-terminated array of strings containing the list of MIME
-- types the file chooser dialog should handle. See
-- 'GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetMimeTypes' for more details.

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestMimeTypesPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    fileChooserRequestMimeTypes             ,
#endif
    getFileChooserRequestMimeTypes          ,


-- ** selectMultiple #attr:selectMultiple#
-- | Whether the file chooser should allow selecting multiple
-- files. See
-- 'GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetSelectMultiple' for
-- more details.

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestSelectMultiplePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    fileChooserRequestSelectMultiple        ,
#endif
    getFileChooserRequestSelectMultiple     ,


-- ** selectedFiles #attr:selectedFiles#
-- | A 'P.Nothing'-terminated array of strings containing the list of
-- selected files associated to the current request. See
-- 'GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetSelectedFiles' for more details.

#if defined(ENABLE_OVERLOADING)
    FileChooserRequestSelectedFilesPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    fileChooserRequestSelectedFiles         ,
#endif
    getFileChooserRequestSelectedFiles      ,




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
import qualified GI.Gtk.Objects.FileFilter as Gtk.FileFilter

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Objects.FileFilter as Gtk.FileFilter

#endif

-- | Memory-managed wrapper type.
newtype FileChooserRequest = FileChooserRequest (SP.ManagedPtr FileChooserRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype FileChooserRequest where
    toManagedPtr (FileChooserRequest p) = p

foreign import ccall "webkit_file_chooser_request_get_type"
    c_webkit_file_chooser_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject FileChooserRequest where
    glibType = c_webkit_file_chooser_request_get_type

instance B.Types.GObject FileChooserRequest

-- | Type class for types which can be safely cast to t'FileChooserRequest', for instance with `toFileChooserRequest`.
class (SP.GObject o, O.IsDescendantOf FileChooserRequest o) => IsFileChooserRequest o
instance (SP.GObject o, O.IsDescendantOf FileChooserRequest o) => IsFileChooserRequest o

instance O.HasParentTypes FileChooserRequest
type instance O.ParentTypes FileChooserRequest = '[GObject.Object.Object]

-- | Cast to t'FileChooserRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toFileChooserRequest :: (MIO.MonadIO m, IsFileChooserRequest o) => o -> m FileChooserRequest
toFileChooserRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo FileChooserRequest

-- | Convert t'FileChooserRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe FileChooserRequest) where
    gvalueGType_ = c_webkit_file_chooser_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr FileChooserRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr FileChooserRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject FileChooserRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveFileChooserRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFileChooserRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileChooserRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileChooserRequestMethod "cancel" o = FileChooserRequestCancelMethodInfo
    ResolveFileChooserRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileChooserRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileChooserRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileChooserRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileChooserRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileChooserRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileChooserRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileChooserRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileChooserRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileChooserRequestMethod "selectFiles" o = FileChooserRequestSelectFilesMethodInfo
    ResolveFileChooserRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileChooserRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileChooserRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileChooserRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileChooserRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileChooserRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileChooserRequestMethod "getMimeTypes" o = FileChooserRequestGetMimeTypesMethodInfo
    ResolveFileChooserRequestMethod "getMimeTypesFilter" o = FileChooserRequestGetMimeTypesFilterMethodInfo
    ResolveFileChooserRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileChooserRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileChooserRequestMethod "getSelectMultiple" o = FileChooserRequestGetSelectMultipleMethodInfo
    ResolveFileChooserRequestMethod "getSelectedFiles" o = FileChooserRequestGetSelectedFilesMethodInfo
    ResolveFileChooserRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileChooserRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileChooserRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileChooserRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileChooserRequestMethod t FileChooserRequest, O.OverloadedMethod info FileChooserRequest p) => OL.IsLabel t (FileChooserRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFileChooserRequestMethod t FileChooserRequest, O.OverloadedMethod info FileChooserRequest p, R.HasField t FileChooserRequest p) => R.HasField t FileChooserRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFileChooserRequestMethod t FileChooserRequest, O.OverloadedMethodInfo info FileChooserRequest) => OL.IsLabel t (O.MethodProxy info FileChooserRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "filter"
   -- Type: TInterface (Name {namespace = "Gtk", name = "FileFilter"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@filter@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserRequest #filter
-- @
getFileChooserRequestFilter :: (MonadIO m, IsFileChooserRequest o) => o -> m (Maybe Gtk.FileFilter.FileFilter)
getFileChooserRequestFilter obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "filter" Gtk.FileFilter.FileFilter

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestFilterPropertyInfo
instance AttrInfo FileChooserRequestFilterPropertyInfo where
    type AttrAllowedOps FileChooserRequestFilterPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserRequestFilterPropertyInfo = IsFileChooserRequest
    type AttrSetTypeConstraint FileChooserRequestFilterPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FileChooserRequestFilterPropertyInfo = (~) ()
    type AttrTransferType FileChooserRequestFilterPropertyInfo = ()
    type AttrGetType FileChooserRequestFilterPropertyInfo = (Maybe Gtk.FileFilter.FileFilter)
    type AttrLabel FileChooserRequestFilterPropertyInfo = "filter"
    type AttrOrigin FileChooserRequestFilterPropertyInfo = FileChooserRequest
    attrGet = getFileChooserRequestFilter
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.filter"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#g:attr:filter"
        })
#endif

-- VVV Prop "mime-types"
   -- Type: TCArray True (-1) (-1) (TBasicType TUTF8)
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@mime-types@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserRequest #mimeTypes
-- @
getFileChooserRequestMimeTypes :: (MonadIO m, IsFileChooserRequest o) => o -> m [T.Text]
getFileChooserRequestMimeTypes obj = MIO.liftIO $ checkUnexpectedNothing "getFileChooserRequestMimeTypes" $ B.Properties.getObjectPropertyStringArray obj "mime-types"

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestMimeTypesPropertyInfo
instance AttrInfo FileChooserRequestMimeTypesPropertyInfo where
    type AttrAllowedOps FileChooserRequestMimeTypesPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserRequestMimeTypesPropertyInfo = IsFileChooserRequest
    type AttrSetTypeConstraint FileChooserRequestMimeTypesPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FileChooserRequestMimeTypesPropertyInfo = (~) ()
    type AttrTransferType FileChooserRequestMimeTypesPropertyInfo = ()
    type AttrGetType FileChooserRequestMimeTypesPropertyInfo = [T.Text]
    type AttrLabel FileChooserRequestMimeTypesPropertyInfo = "mime-types"
    type AttrOrigin FileChooserRequestMimeTypesPropertyInfo = FileChooserRequest
    attrGet = getFileChooserRequestMimeTypes
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.mimeTypes"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#g:attr:mimeTypes"
        })
#endif

-- VVV Prop "select-multiple"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@select-multiple@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserRequest #selectMultiple
-- @
getFileChooserRequestSelectMultiple :: (MonadIO m, IsFileChooserRequest o) => o -> m Bool
getFileChooserRequestSelectMultiple obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "select-multiple"

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestSelectMultiplePropertyInfo
instance AttrInfo FileChooserRequestSelectMultiplePropertyInfo where
    type AttrAllowedOps FileChooserRequestSelectMultiplePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint FileChooserRequestSelectMultiplePropertyInfo = IsFileChooserRequest
    type AttrSetTypeConstraint FileChooserRequestSelectMultiplePropertyInfo = (~) ()
    type AttrTransferTypeConstraint FileChooserRequestSelectMultiplePropertyInfo = (~) ()
    type AttrTransferType FileChooserRequestSelectMultiplePropertyInfo = ()
    type AttrGetType FileChooserRequestSelectMultiplePropertyInfo = Bool
    type AttrLabel FileChooserRequestSelectMultiplePropertyInfo = "select-multiple"
    type AttrOrigin FileChooserRequestSelectMultiplePropertyInfo = FileChooserRequest
    attrGet = getFileChooserRequestSelectMultiple
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.selectMultiple"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#g:attr:selectMultiple"
        })
#endif

-- VVV Prop "selected-files"
   -- Type: TCArray True (-1) (-1) (TBasicType TUTF8)
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@selected-files@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserRequest #selectedFiles
-- @
getFileChooserRequestSelectedFiles :: (MonadIO m, IsFileChooserRequest o) => o -> m (Maybe [T.Text])
getFileChooserRequestSelectedFiles obj = MIO.liftIO $ B.Properties.getObjectPropertyStringArray obj "selected-files"

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestSelectedFilesPropertyInfo
instance AttrInfo FileChooserRequestSelectedFilesPropertyInfo where
    type AttrAllowedOps FileChooserRequestSelectedFilesPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserRequestSelectedFilesPropertyInfo = IsFileChooserRequest
    type AttrSetTypeConstraint FileChooserRequestSelectedFilesPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FileChooserRequestSelectedFilesPropertyInfo = (~) ()
    type AttrTransferType FileChooserRequestSelectedFilesPropertyInfo = ()
    type AttrGetType FileChooserRequestSelectedFilesPropertyInfo = (Maybe [T.Text])
    type AttrLabel FileChooserRequestSelectedFilesPropertyInfo = "selected-files"
    type AttrOrigin FileChooserRequestSelectedFilesPropertyInfo = FileChooserRequest
    attrGet = getFileChooserRequestSelectedFiles
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.selectedFiles"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#g:attr:selectedFiles"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileChooserRequest
type instance O.AttributeList FileChooserRequest = FileChooserRequestAttributeList
type FileChooserRequestAttributeList = ('[ '("filter", FileChooserRequestFilterPropertyInfo), '("mimeTypes", FileChooserRequestMimeTypesPropertyInfo), '("selectMultiple", FileChooserRequestSelectMultiplePropertyInfo), '("selectedFiles", FileChooserRequestSelectedFilesPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
fileChooserRequestFilter :: AttrLabelProxy "filter"
fileChooserRequestFilter = AttrLabelProxy

fileChooserRequestMimeTypes :: AttrLabelProxy "mimeTypes"
fileChooserRequestMimeTypes = AttrLabelProxy

fileChooserRequestSelectMultiple :: AttrLabelProxy "selectMultiple"
fileChooserRequestSelectMultiple = AttrLabelProxy

fileChooserRequestSelectedFiles :: AttrLabelProxy "selectedFiles"
fileChooserRequestSelectedFiles = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileChooserRequest = FileChooserRequestSignalList
type FileChooserRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method FileChooserRequest::cancel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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

foreign import ccall "webkit_file_chooser_request_cancel" webkit_file_chooser_request_cancel :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    IO ()

-- | Ask WebKit to cancel the request.
-- 
-- It\'s important to do this in case
-- no selection has been made in the client, otherwise the request
-- won\'t be properly completed and the browser will keep the request
-- pending forever, which might cause the browser to hang.
fileChooserRequestCancel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> m ()
fileChooserRequestCancel request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_file_chooser_request_cancel request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestCancelMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestCancelMethodInfo a signature where
    overloadedMethod = fileChooserRequestCancel

instance O.OverloadedMethodInfo FileChooserRequestCancelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestCancel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestCancel"
        })


#endif

-- method FileChooserRequest::get_mime_types
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_file_chooser_request_get_mime_types" webkit_file_chooser_request_get_mime_types :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    IO (Ptr CString)

-- | Get the list of MIME types the file chooser dialog should handle.
-- 
-- Get the list of MIME types the file chooser dialog should handle,
-- in the format specified in RFC 2046 for \"media types\". Its contents
-- depend on the value of the \'accept\' attribute for HTML input
-- elements. This function should normally be called before presenting
-- the file chooser dialog to the user, to decide whether to allow the
-- user to select multiple files at once or only one.
fileChooserRequestGetMimeTypes ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> m [T.Text]
    -- ^ __Returns:__ a
    -- 'P.Nothing'-terminated array of strings if a list of accepted MIME types
    -- is defined or 'P.Nothing' otherwise, meaning that any MIME type should be
    -- accepted. This array and its contents are owned by WebKit and
    -- should not be modified or freed.
fileChooserRequestGetMimeTypes request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_file_chooser_request_get_mime_types request'
    checkUnexpectedReturnNULL "fileChooserRequestGetMimeTypes" result
    result' <- unpackZeroTerminatedUTF8CArray result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestGetMimeTypesMethodInfo
instance (signature ~ (m [T.Text]), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestGetMimeTypesMethodInfo a signature where
    overloadedMethod = fileChooserRequestGetMimeTypes

instance O.OverloadedMethodInfo FileChooserRequestGetMimeTypesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetMimeTypes",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestGetMimeTypes"
        })


#endif

-- method FileChooserRequest::get_mime_types_filter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "FileFilter" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_file_chooser_request_get_mime_types_filter" webkit_file_chooser_request_get_mime_types_filter :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    IO (Ptr Gtk.FileFilter.FileFilter)

-- | Get the filter currently associated with the request.
-- 
-- Get the filter currently associated with the request, ready to be
-- used by t'GI.Gtk.Interfaces.FileChooser.FileChooser'. This function should normally be called
-- before presenting the file chooser dialog to the user, to decide
-- whether to apply a filter so the user would not be allowed to
-- select files with other MIME types.
-- 
-- See 'GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetMimeTypes' if you are
-- interested in getting the list of accepted MIME types.
fileChooserRequestGetMimeTypesFilter ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> m (Maybe Gtk.FileFilter.FileFilter)
    -- ^ __Returns:__ a t'GI.Gtk.Objects.FileFilter.FileFilter' if a list of accepted
    -- MIME types is defined or 'P.Nothing' otherwise. The returned object is
    -- owned by WebKit should not be modified or freed.
fileChooserRequestGetMimeTypesFilter request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_file_chooser_request_get_mime_types_filter request'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.FileFilter.FileFilter) result'
        return result''
    touchManagedPtr request
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestGetMimeTypesFilterMethodInfo
instance (signature ~ (m (Maybe Gtk.FileFilter.FileFilter)), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestGetMimeTypesFilterMethodInfo a signature where
    overloadedMethod = fileChooserRequestGetMimeTypesFilter

instance O.OverloadedMethodInfo FileChooserRequestGetMimeTypesFilterMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetMimeTypesFilter",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestGetMimeTypesFilter"
        })


#endif

-- method FileChooserRequest::get_select_multiple
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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

foreign import ccall "webkit_file_chooser_request_get_select_multiple" webkit_file_chooser_request_get_select_multiple :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    IO CInt

-- | Whether the file chooser should allow selecting multiple files.
-- 
-- Determine whether the file chooser associated to this
-- t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest' should allow selecting multiple files,
-- which depends on the HTML input element having a \'multiple\'
-- attribute defined.
fileChooserRequestGetSelectMultiple ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the file chooser should allow selecting multiple files or 'P.False' otherwise.
fileChooserRequestGetSelectMultiple request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_file_chooser_request_get_select_multiple request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestGetSelectMultipleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestGetSelectMultipleMethodInfo a signature where
    overloadedMethod = fileChooserRequestGetSelectMultiple

instance O.OverloadedMethodInfo FileChooserRequestGetSelectMultipleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetSelectMultiple",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestGetSelectMultiple"
        })


#endif

-- method FileChooserRequest::get_selected_files
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_file_chooser_request_get_selected_files" webkit_file_chooser_request_get_selected_files :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    IO (Ptr CString)

-- | Get the list of selected files associated to the request.
-- 
-- Get the list of selected files currently associated to the
-- request. Initially, the return value of this method contains any
-- files selected in previous file chooser requests for this HTML
-- input element. Once webkit_file_chooser_request_select_files, the
-- value will reflect whatever files are given.
-- 
-- This function should normally be called only before presenting the
-- file chooser dialog to the user, to decide whether to perform some
-- extra action, like pre-selecting the files from a previous request.
fileChooserRequestGetSelectedFiles ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ a
    -- 'P.Nothing'-terminated array of strings if there are selected files
    -- associated with the request or 'P.Nothing' otherwise. This array and its
    -- contents are owned by WebKit and should not be modified or
    -- freed.
fileChooserRequestGetSelectedFiles request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_file_chooser_request_get_selected_files request'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        return result''
    touchManagedPtr request
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestGetSelectedFilesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestGetSelectedFilesMethodInfo a signature where
    overloadedMethod = fileChooserRequestGetSelectedFiles

instance O.OverloadedMethodInfo FileChooserRequestGetSelectedFilesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestGetSelectedFiles",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestGetSelectedFiles"
        })


#endif

-- method FileChooserRequest::select_files
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FileChooserRequest" }
--           , argCType = Just "WebKitFileChooserRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFileChooserRequest"
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
--           { argCName = "files"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a\n%NULL-terminated array of strings, containing paths to local files."
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

foreign import ccall "webkit_file_chooser_request_select_files" webkit_file_chooser_request_select_files :: 
    Ptr FileChooserRequest ->               -- request : TInterface (Name {namespace = "WebKit2", name = "FileChooserRequest"})
    Ptr CString ->                          -- files : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Ask WebKit to select local files for upload and complete the
-- request.
fileChooserRequestSelectFiles ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> [T.Text]
    -- ^ /@files@/: a
    -- 'P.Nothing'-terminated array of strings, containing paths to local files.
    -> m ()
fileChooserRequestSelectFiles request files = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    files' <- packZeroTerminatedUTF8CArray files
    webkit_file_chooser_request_select_files request' files'
    touchManagedPtr request
    mapZeroTerminatedCArray freeMem files'
    freeMem files'
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserRequestSelectFilesMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsFileChooserRequest a) => O.OverloadedMethod FileChooserRequestSelectFilesMethodInfo a signature where
    overloadedMethod = fileChooserRequestSelectFiles

instance O.OverloadedMethodInfo FileChooserRequestSelectFilesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FileChooserRequest.fileChooserRequestSelectFiles",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FileChooserRequest.html#v:fileChooserRequestSelectFiles"
        })


#endif


