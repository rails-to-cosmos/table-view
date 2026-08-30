{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Represents a form submission request.
-- 
-- When a form is about to be submitted in a t'GI.WebKit2.Objects.WebView.WebView', the
-- [WebView::submitForm]("GI.WebKit2.Objects.WebView#g:signal:submitForm") signal is emitted. Its request argument
-- contains information about the text fields of the form, that are
-- typically used to store login information, returned as lists by
-- 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestListTextFields'. You can submit the
-- form with 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestSubmit'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.FormSubmissionRequest
    ( 

-- * Exported types
    FormSubmissionRequest(..)               ,
    IsFormSubmissionRequest                 ,
    toFormSubmissionRequest                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [listTextFields]("GI.WebKit2.Objects.FormSubmissionRequest#g:method:listTextFields"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [submit]("GI.WebKit2.Objects.FormSubmissionRequest#g:method:submit"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getTextFields]("GI.WebKit2.Objects.FormSubmissionRequest#g:method:getTextFields").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveFormSubmissionRequestMethod      ,
#endif

-- ** getTextFields #method:getTextFields#

#if defined(ENABLE_OVERLOADING)
    FormSubmissionRequestGetTextFieldsMethodInfo,
#endif
    formSubmissionRequestGetTextFields      ,


-- ** listTextFields #method:listTextFields#

#if defined(ENABLE_OVERLOADING)
    FormSubmissionRequestListTextFieldsMethodInfo,
#endif
    formSubmissionRequestListTextFields     ,


-- ** submit #method:submit#

#if defined(ENABLE_OVERLOADING)
    FormSubmissionRequestSubmitMethodInfo   ,
#endif
    formSubmissionRequestSubmit             ,




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
newtype FormSubmissionRequest = FormSubmissionRequest (SP.ManagedPtr FormSubmissionRequest)
    deriving (Eq)

instance SP.ManagedPtrNewtype FormSubmissionRequest where
    toManagedPtr (FormSubmissionRequest p) = p

foreign import ccall "webkit_form_submission_request_get_type"
    c_webkit_form_submission_request_get_type :: IO B.Types.GType

instance B.Types.TypedObject FormSubmissionRequest where
    glibType = c_webkit_form_submission_request_get_type

instance B.Types.GObject FormSubmissionRequest

-- | Type class for types which can be safely cast to t'FormSubmissionRequest', for instance with `toFormSubmissionRequest`.
class (SP.GObject o, O.IsDescendantOf FormSubmissionRequest o) => IsFormSubmissionRequest o
instance (SP.GObject o, O.IsDescendantOf FormSubmissionRequest o) => IsFormSubmissionRequest o

instance O.HasParentTypes FormSubmissionRequest
type instance O.ParentTypes FormSubmissionRequest = '[GObject.Object.Object]

-- | Cast to t'FormSubmissionRequest', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toFormSubmissionRequest :: (MIO.MonadIO m, IsFormSubmissionRequest o) => o -> m FormSubmissionRequest
toFormSubmissionRequest = MIO.liftIO . B.ManagedPtr.unsafeCastTo FormSubmissionRequest

-- | Convert t'FormSubmissionRequest' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe FormSubmissionRequest) where
    gvalueGType_ = c_webkit_form_submission_request_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr FormSubmissionRequest)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr FormSubmissionRequest)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject FormSubmissionRequest ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveFormSubmissionRequestMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveFormSubmissionRequestMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFormSubmissionRequestMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFormSubmissionRequestMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFormSubmissionRequestMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFormSubmissionRequestMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFormSubmissionRequestMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFormSubmissionRequestMethod "listTextFields" o = FormSubmissionRequestListTextFieldsMethodInfo
    ResolveFormSubmissionRequestMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFormSubmissionRequestMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFormSubmissionRequestMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFormSubmissionRequestMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFormSubmissionRequestMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFormSubmissionRequestMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFormSubmissionRequestMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFormSubmissionRequestMethod "submit" o = FormSubmissionRequestSubmitMethodInfo
    ResolveFormSubmissionRequestMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFormSubmissionRequestMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFormSubmissionRequestMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFormSubmissionRequestMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFormSubmissionRequestMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFormSubmissionRequestMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFormSubmissionRequestMethod "getTextFields" o = FormSubmissionRequestGetTextFieldsMethodInfo
    ResolveFormSubmissionRequestMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFormSubmissionRequestMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFormSubmissionRequestMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFormSubmissionRequestMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFormSubmissionRequestMethod t FormSubmissionRequest, O.OverloadedMethod info FormSubmissionRequest p) => OL.IsLabel t (FormSubmissionRequest -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveFormSubmissionRequestMethod t FormSubmissionRequest, O.OverloadedMethod info FormSubmissionRequest p, R.HasField t FormSubmissionRequest p) => R.HasField t FormSubmissionRequest p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveFormSubmissionRequestMethod t FormSubmissionRequest, O.OverloadedMethodInfo info FormSubmissionRequest) => OL.IsLabel t (O.MethodProxy info FormSubmissionRequest) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FormSubmissionRequest
type instance O.AttributeList FormSubmissionRequest = FormSubmissionRequestAttributeList
type FormSubmissionRequestAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FormSubmissionRequest = FormSubmissionRequestSignalList
type FormSubmissionRequestSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method FormSubmissionRequest::get_text_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FormSubmissionRequest" }
--           , argCType = Just "WebKitFormSubmissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFormSubmissionRequest"
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
-- returnType: Just (TGHash (TBasicType TPtr) (TBasicType TPtr))
-- throws : False
-- Skip return : False

foreign import ccall "webkit_form_submission_request_get_text_fields" webkit_form_submission_request_get_text_fields :: 
    Ptr FormSubmissionRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "FormSubmissionRequest"})
    IO (Ptr (GHashTable (Ptr ()) (Ptr ())))

{-# DEPRECATED formSubmissionRequestGetTextFields ["(Since version 2.20.)","Use 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestListTextFields' instead."] #-}
-- | Get the values of the text fields contained in the form associated to /@request@/.
-- 
-- Get a t'GI.GLib.Structs.HashTable.HashTable' with the values of the text fields contained in the form
-- associated to /@request@/. Note that fields will be missing if the form
-- contains multiple text input elements with the same name, so this
-- function does not reliably return all text fields.
formSubmissionRequestGetTextFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsFormSubmissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FormSubmissionRequest.FormSubmissionRequest'
    -> m (Maybe (Map.Map (Ptr ()) (Ptr ())))
    -- ^ __Returns:__ a t'GI.GLib.Structs.HashTable.HashTable' with the form
    --    text fields, or 'P.Nothing' if the form doesn\'t contain text fields.
formSubmissionRequestGetTextFields request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_form_submission_request_get_text_fields request'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackGHashTable result'
        let result''' = mapFirst B.GHT.ptrUnpackPtr result''
        let result'''' = mapSecond B.GHT.ptrUnpackPtr result'''
        let result''''' = Map.fromList result''''
        return result'''''
    touchManagedPtr request
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FormSubmissionRequestGetTextFieldsMethodInfo
instance (signature ~ (m (Maybe (Map.Map (Ptr ()) (Ptr ())))), MonadIO m, IsFormSubmissionRequest a) => O.OverloadedMethod FormSubmissionRequestGetTextFieldsMethodInfo a signature where
    overloadedMethod = formSubmissionRequestGetTextFields

instance O.OverloadedMethodInfo FormSubmissionRequestGetTextFieldsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestGetTextFields",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FormSubmissionRequest.html#v:formSubmissionRequestGetTextFields"
        })


#endif

-- method FormSubmissionRequest::list_text_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FormSubmissionRequest" }
--           , argCType = Just "WebKitFormSubmissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFormSubmissionRequest"
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
--           { argCName = "field_names"
--           , argType = TPtrArray (TBasicType TUTF8)
--           , argCType = Just "GPtrArray**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n   names of the text fields in the form"
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
--           { argCName = "field_values"
--           , argType = TPtrArray (TBasicType TUTF8)
--           , argCType = Just "GPtrArray**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n   values of the text fields in the form"
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

foreign import ccall "webkit_form_submission_request_list_text_fields" webkit_form_submission_request_list_text_fields :: 
    Ptr FormSubmissionRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "FormSubmissionRequest"})
    Ptr (Ptr (GPtrArray CString)) ->        -- field_names : TPtrArray (TBasicType TUTF8)
    Ptr (Ptr (GPtrArray CString)) ->        -- field_values : TPtrArray (TBasicType TUTF8)
    IO CInt

-- | Get lists of the text fields contained in the form associated to /@request@/.
-- 
-- Get lists with the names and values of the text fields contained in
-- the form associated to /@request@/. Note that names and values may be
-- 'P.Nothing'.
-- 
-- If this function returns 'P.False', then both /@fieldNames@/ and
-- /@fieldValues@/ will be empty.
-- 
-- /Since: 2.20/
formSubmissionRequestListTextFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsFormSubmissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FormSubmissionRequest.FormSubmissionRequest'
    -> m ((Bool, [T.Text], [T.Text]))
    -- ^ __Returns:__ 'P.True' if the form contains text fields, or 'P.False' otherwise
formSubmissionRequestListTextFields request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    fieldNames <- callocMem :: IO (Ptr (Ptr (GPtrArray CString)))
    fieldValues <- callocMem :: IO (Ptr (Ptr (GPtrArray CString)))
    result <- webkit_form_submission_request_list_text_fields request' fieldNames fieldValues
    let result' = (/= 0) result
    fieldNames' <- peek fieldNames
    fieldNames'' <- unpackGPtrArray fieldNames'
    fieldNames''' <- mapM cstringToText fieldNames''
    fieldValues' <- peek fieldValues
    fieldValues'' <- unpackGPtrArray fieldValues'
    fieldValues''' <- mapM cstringToText fieldValues''
    touchManagedPtr request
    freeMem fieldNames
    freeMem fieldValues
    return (result', fieldNames''', fieldValues''')

#if defined(ENABLE_OVERLOADING)
data FormSubmissionRequestListTextFieldsMethodInfo
instance (signature ~ (m ((Bool, [T.Text], [T.Text]))), MonadIO m, IsFormSubmissionRequest a) => O.OverloadedMethod FormSubmissionRequestListTextFieldsMethodInfo a signature where
    overloadedMethod = formSubmissionRequestListTextFields

instance O.OverloadedMethodInfo FormSubmissionRequestListTextFieldsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestListTextFields",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FormSubmissionRequest.html#v:formSubmissionRequestListTextFields"
        })


#endif

-- method FormSubmissionRequest::submit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "FormSubmissionRequest" }
--           , argCType = Just "WebKitFormSubmissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitFormSubmissionRequest"
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

foreign import ccall "webkit_form_submission_request_submit" webkit_form_submission_request_submit :: 
    Ptr FormSubmissionRequest ->            -- request : TInterface (Name {namespace = "WebKit2", name = "FormSubmissionRequest"})
    IO ()

-- | Continue the form submission.
formSubmissionRequestSubmit ::
    (B.CallStack.HasCallStack, MonadIO m, IsFormSubmissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FormSubmissionRequest.FormSubmissionRequest'
    -> m ()
formSubmissionRequestSubmit request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    webkit_form_submission_request_submit request'
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data FormSubmissionRequestSubmitMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFormSubmissionRequest a) => O.OverloadedMethod FormSubmissionRequestSubmitMethodInfo a signature where
    overloadedMethod = formSubmissionRequestSubmit

instance O.OverloadedMethodInfo FormSubmissionRequestSubmitMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestSubmit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-FormSubmissionRequest.html#v:formSubmissionRequestSubmit"
        })


#endif


