{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- JSCException represents a JavaScript exception.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.Exception
    ( 

-- * Exported types
    Exception(..)                           ,
    IsException                             ,
    toException                             ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [report]("GI.JavaScriptCore.Objects.Exception#g:method:report"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [toString]("GI.JavaScriptCore.Objects.Exception#g:method:toString"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getBacktraceString]("GI.JavaScriptCore.Objects.Exception#g:method:getBacktraceString"), [getColumnNumber]("GI.JavaScriptCore.Objects.Exception#g:method:getColumnNumber"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getLineNumber]("GI.JavaScriptCore.Objects.Exception#g:method:getLineNumber"), [getMessage]("GI.JavaScriptCore.Objects.Exception#g:method:getMessage"), [getName]("GI.JavaScriptCore.Objects.Exception#g:method:getName"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getSourceUri]("GI.JavaScriptCore.Objects.Exception#g:method:getSourceUri").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveExceptionMethod                  ,
#endif

-- ** getBacktraceString #method:getBacktraceString#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetBacktraceStringMethodInfo   ,
#endif
    exceptionGetBacktraceString             ,


-- ** getColumnNumber #method:getColumnNumber#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetColumnNumberMethodInfo      ,
#endif
    exceptionGetColumnNumber                ,


-- ** getLineNumber #method:getLineNumber#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetLineNumberMethodInfo        ,
#endif
    exceptionGetLineNumber                  ,


-- ** getMessage #method:getMessage#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetMessageMethodInfo           ,
#endif
    exceptionGetMessage                     ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetNameMethodInfo              ,
#endif
    exceptionGetName                        ,


-- ** getSourceUri #method:getSourceUri#

#if defined(ENABLE_OVERLOADING)
    ExceptionGetSourceUriMethodInfo         ,
#endif
    exceptionGetSourceUri                   ,


-- ** new #method:new#

    exceptionNew                            ,


-- ** newWithName #method:newWithName#

    exceptionNewWithName                    ,


-- ** report #method:report#

#if defined(ENABLE_OVERLOADING)
    ExceptionReportMethodInfo               ,
#endif
    exceptionReport                         ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    ExceptionToStringMethodInfo             ,
#endif
    exceptionToString                       ,




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
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Callbacks as GObject.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Flags as JavaScriptCore.Flags
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context

#endif

-- | Memory-managed wrapper type.
newtype Exception = Exception (SP.ManagedPtr Exception)
    deriving (Eq)

instance SP.ManagedPtrNewtype Exception where
    toManagedPtr (Exception p) = p

foreign import ccall "jsc_exception_get_type"
    c_jsc_exception_get_type :: IO B.Types.GType

instance B.Types.TypedObject Exception where
    glibType = c_jsc_exception_get_type

instance B.Types.GObject Exception

-- | Type class for types which can be safely cast to t'Exception', for instance with `toException`.
class (SP.GObject o, O.IsDescendantOf Exception o) => IsException o
instance (SP.GObject o, O.IsDescendantOf Exception o) => IsException o

instance O.HasParentTypes Exception
type instance O.ParentTypes Exception = '[GObject.Object.Object]

-- | Cast to t'Exception', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toException :: (MIO.MonadIO m, IsException o) => o -> m Exception
toException = MIO.liftIO . B.ManagedPtr.unsafeCastTo Exception

-- | Convert t'Exception' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Exception) where
    gvalueGType_ = c_jsc_exception_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Exception)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Exception)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Exception ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveExceptionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveExceptionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveExceptionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveExceptionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveExceptionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveExceptionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveExceptionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveExceptionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveExceptionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveExceptionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveExceptionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveExceptionMethod "report" o = ExceptionReportMethodInfo
    ResolveExceptionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveExceptionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveExceptionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveExceptionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveExceptionMethod "toString" o = ExceptionToStringMethodInfo
    ResolveExceptionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveExceptionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveExceptionMethod "getBacktraceString" o = ExceptionGetBacktraceStringMethodInfo
    ResolveExceptionMethod "getColumnNumber" o = ExceptionGetColumnNumberMethodInfo
    ResolveExceptionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveExceptionMethod "getLineNumber" o = ExceptionGetLineNumberMethodInfo
    ResolveExceptionMethod "getMessage" o = ExceptionGetMessageMethodInfo
    ResolveExceptionMethod "getName" o = ExceptionGetNameMethodInfo
    ResolveExceptionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveExceptionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveExceptionMethod "getSourceUri" o = ExceptionGetSourceUriMethodInfo
    ResolveExceptionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveExceptionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveExceptionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveExceptionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveExceptionMethod t Exception, O.OverloadedMethod info Exception p) => OL.IsLabel t (Exception -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveExceptionMethod t Exception, O.OverloadedMethod info Exception p, R.HasField t Exception p) => R.HasField t Exception p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveExceptionMethod t Exception, O.OverloadedMethodInfo info Exception) => OL.IsLabel t (O.MethodProxy info Exception) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Exception
type instance O.AttributeList Exception = ExceptionAttributeList
type ExceptionAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Exception = ExceptionSignalList
type ExceptionSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Exception::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the error message" , sinceVersion = Nothing }
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
--                  Name { namespace = "JavaScriptCore" , name = "Exception" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_exception_new" jsc_exception_new :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- message : TBasicType TUTF8
    IO (Ptr Exception)

-- | Create a new t'GI.JavaScriptCore.Objects.Exception.Exception' in /@context@/ with /@message@/.
exceptionNew ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@message@/: the error message
    -> m Exception
    -- ^ __Returns:__ a new t'GI.JavaScriptCore.Objects.Exception.Exception'.
exceptionNew context message = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    message' <- textToCString message
    result <- jsc_exception_new context' message'
    checkUnexpectedReturnNULL "exceptionNew" result
    result' <- (wrapObject Exception) result
    touchManagedPtr context
    freeMem message'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Exception::new_with_name
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the error name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the error message" , sinceVersion = Nothing }
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
--                  Name { namespace = "JavaScriptCore" , name = "Exception" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_exception_new_with_name" jsc_exception_new_with_name :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    CString ->                              -- message : TBasicType TUTF8
    IO (Ptr Exception)

-- | Create a new t'GI.JavaScriptCore.Objects.Exception.Exception' in /@context@/ with /@name@/ and /@message@/.
exceptionNewWithName ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@name@/: the error name
    -> T.Text
    -- ^ /@message@/: the error message
    -> m Exception
    -- ^ __Returns:__ a new t'GI.JavaScriptCore.Objects.Exception.Exception'.
exceptionNewWithName context name message = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    message' <- textToCString message
    result <- jsc_exception_new_with_name context' name' message'
    checkUnexpectedReturnNULL "exceptionNewWithName" result
    result' <- (wrapObject Exception) result
    touchManagedPtr context
    freeMem name'
    freeMem message'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Exception::get_backtrace_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_backtrace_string" jsc_exception_get_backtrace_string :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Get a string with the exception backtrace.
exceptionGetBacktraceString ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the exception backtrace string or 'P.Nothing'.
exceptionGetBacktraceString exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_backtrace_string exception'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr exception
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ExceptionGetBacktraceStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetBacktraceStringMethodInfo a signature where
    overloadedMethod = exceptionGetBacktraceString

instance O.OverloadedMethodInfo ExceptionGetBacktraceStringMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetBacktraceString",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetBacktraceString"
        })


#endif

-- method Exception::get_column_number
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_column_number" jsc_exception_get_column_number :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO Word32

-- | Get the column number at which /@exception@/ happened.
exceptionGetColumnNumber ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m Word32
    -- ^ __Returns:__ the column number of /@exception@/.
exceptionGetColumnNumber exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_column_number exception'
    touchManagedPtr exception
    return result

#if defined(ENABLE_OVERLOADING)
data ExceptionGetColumnNumberMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetColumnNumberMethodInfo a signature where
    overloadedMethod = exceptionGetColumnNumber

instance O.OverloadedMethodInfo ExceptionGetColumnNumberMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetColumnNumber",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetColumnNumber"
        })


#endif

-- method Exception::get_line_number
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_line_number" jsc_exception_get_line_number :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO Word32

-- | Get the line number at which /@exception@/ happened.
exceptionGetLineNumber ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m Word32
    -- ^ __Returns:__ the line number of /@exception@/.
exceptionGetLineNumber exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_line_number exception'
    touchManagedPtr exception
    return result

#if defined(ENABLE_OVERLOADING)
data ExceptionGetLineNumberMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetLineNumberMethodInfo a signature where
    overloadedMethod = exceptionGetLineNumber

instance O.OverloadedMethodInfo ExceptionGetLineNumberMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetLineNumber",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetLineNumber"
        })


#endif

-- method Exception::get_message
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_message" jsc_exception_get_message :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Get the error message of /@exception@/.
exceptionGetMessage ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m T.Text
    -- ^ __Returns:__ the /@exception@/ error message.
exceptionGetMessage exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_message exception'
    checkUnexpectedReturnNULL "exceptionGetMessage" result
    result' <- cstringToText result
    touchManagedPtr exception
    return result'

#if defined(ENABLE_OVERLOADING)
data ExceptionGetMessageMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetMessageMethodInfo a signature where
    overloadedMethod = exceptionGetMessage

instance O.OverloadedMethodInfo ExceptionGetMessageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetMessage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetMessage"
        })


#endif

-- method Exception::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_name" jsc_exception_get_name :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Get the error name of /@exception@/
exceptionGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m T.Text
    -- ^ __Returns:__ the /@exception@/ error name.
exceptionGetName exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_name exception'
    checkUnexpectedReturnNULL "exceptionGetName" result
    result' <- cstringToText result
    touchManagedPtr exception
    return result'

#if defined(ENABLE_OVERLOADING)
data ExceptionGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetNameMethodInfo a signature where
    overloadedMethod = exceptionGetName

instance O.OverloadedMethodInfo ExceptionGetNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetName"
        })


#endif

-- method Exception::get_source_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_get_source_uri" jsc_exception_get_source_uri :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Get the source URI of /@exception@/.
exceptionGetSourceUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the the source URI of /@exception@/, or 'P.Nothing'.
exceptionGetSourceUri exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_get_source_uri exception'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr exception
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ExceptionGetSourceUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsException a) => O.OverloadedMethod ExceptionGetSourceUriMethodInfo a signature where
    overloadedMethod = exceptionGetSourceUri

instance O.OverloadedMethodInfo ExceptionGetSourceUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionGetSourceUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionGetSourceUri"
        })


#endif

-- method Exception::report
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_report" jsc_exception_report :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Return a report message of /@exception@/, containing all the possible details such us
-- source URI, line, column and backtrace, and formatted to be printed.
exceptionReport ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m T.Text
    -- ^ __Returns:__ a new string with the exception report
exceptionReport exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_report exception'
    checkUnexpectedReturnNULL "exceptionReport" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr exception
    return result'

#if defined(ENABLE_OVERLOADING)
data ExceptionReportMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsException a) => O.OverloadedMethod ExceptionReportMethodInfo a signature where
    overloadedMethod = exceptionReport

instance O.OverloadedMethodInfo ExceptionReportMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionReport",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionReport"
        })


#endif

-- method Exception::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
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

foreign import ccall "jsc_exception_to_string" jsc_exception_to_string :: 
    Ptr Exception ->                        -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CString

-- | Get the string representation of /@exception@/ error.
exceptionToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsException a) =>
    a
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m T.Text
    -- ^ __Returns:__ the string representation of /@exception@/.
exceptionToString exception = liftIO $ do
    exception' <- unsafeManagedPtrCastPtr exception
    result <- jsc_exception_to_string exception'
    checkUnexpectedReturnNULL "exceptionToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr exception
    return result'

#if defined(ENABLE_OVERLOADING)
data ExceptionToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsException a) => O.OverloadedMethod ExceptionToStringMethodInfo a signature where
    overloadedMethod = exceptionToString

instance O.OverloadedMethodInfo ExceptionToStringMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Exception.exceptionToString",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Exception.html#v:exceptionToString"
        })


#endif


