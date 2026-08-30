{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- JSCContext represents a JavaScript execution context, where all operations
-- take place and where the values will be associated.
-- 
-- When a new context is created, a global object is allocated and the built-in JavaScript
-- objects (Object, Function, String, Array) are populated. You can execute JavaScript in
-- the context by using 'GI.JavaScriptCore.Objects.Context.contextEvaluate' or 'GI.JavaScriptCore.Objects.Context.contextEvaluateWithSourceUri'.
-- It\'s also possible to register custom objects in the context with 'GI.JavaScriptCore.Objects.Context.contextRegisterClass'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.Context
    ( 

-- * Exported types
    Context(..)                             ,
    IsContext                               ,
    toContext                               ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [checkSyntax]("GI.JavaScriptCore.Objects.Context#g:method:checkSyntax"), [clearException]("GI.JavaScriptCore.Objects.Context#g:method:clearException"), [evaluate]("GI.JavaScriptCore.Objects.Context#g:method:evaluate"), [evaluateInObject]("GI.JavaScriptCore.Objects.Context#g:method:evaluateInObject"), [evaluateWithSourceUri]("GI.JavaScriptCore.Objects.Context#g:method:evaluateWithSourceUri"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [popExceptionHandler]("GI.JavaScriptCore.Objects.Context#g:method:popExceptionHandler"), [pushExceptionHandler]("GI.JavaScriptCore.Objects.Context#g:method:pushExceptionHandler"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [registerClass]("GI.JavaScriptCore.Objects.Context#g:method:registerClass"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [throw]("GI.JavaScriptCore.Objects.Context#g:method:throw"), [throwException]("GI.JavaScriptCore.Objects.Context#g:method:throwException"), [throwWithName]("GI.JavaScriptCore.Objects.Context#g:method:throwWithName"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getException]("GI.JavaScriptCore.Objects.Context#g:method:getException"), [getGlobalObject]("GI.JavaScriptCore.Objects.Context#g:method:getGlobalObject"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getValue]("GI.JavaScriptCore.Objects.Context#g:method:getValue"), [getVirtualMachine]("GI.JavaScriptCore.Objects.Context#g:method:getVirtualMachine").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setValue]("GI.JavaScriptCore.Objects.Context#g:method:setValue").

#if defined(ENABLE_OVERLOADING)
    ResolveContextMethod                    ,
#endif

-- ** checkSyntax #method:checkSyntax#

#if defined(ENABLE_OVERLOADING)
    ContextCheckSyntaxMethodInfo            ,
#endif
    contextCheckSyntax                      ,


-- ** clearException #method:clearException#

#if defined(ENABLE_OVERLOADING)
    ContextClearExceptionMethodInfo         ,
#endif
    contextClearException                   ,


-- ** evaluate #method:evaluate#

#if defined(ENABLE_OVERLOADING)
    ContextEvaluateMethodInfo               ,
#endif
    contextEvaluate                         ,


-- ** evaluateInObject #method:evaluateInObject#

#if defined(ENABLE_OVERLOADING)
    ContextEvaluateInObjectMethodInfo       ,
#endif
    contextEvaluateInObject                 ,


-- ** evaluateWithSourceUri #method:evaluateWithSourceUri#

#if defined(ENABLE_OVERLOADING)
    ContextEvaluateWithSourceUriMethodInfo  ,
#endif
    contextEvaluateWithSourceUri            ,


-- ** getCurrent #method:getCurrent#

    contextGetCurrent                       ,


-- ** getException #method:getException#

#if defined(ENABLE_OVERLOADING)
    ContextGetExceptionMethodInfo           ,
#endif
    contextGetException                     ,


-- ** getGlobalObject #method:getGlobalObject#

#if defined(ENABLE_OVERLOADING)
    ContextGetGlobalObjectMethodInfo        ,
#endif
    contextGetGlobalObject                  ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    ContextGetValueMethodInfo               ,
#endif
    contextGetValue                         ,


-- ** getVirtualMachine #method:getVirtualMachine#

#if defined(ENABLE_OVERLOADING)
    ContextGetVirtualMachineMethodInfo      ,
#endif
    contextGetVirtualMachine                ,


-- ** new #method:new#

    contextNew                              ,


-- ** newWithVirtualMachine #method:newWithVirtualMachine#

    contextNewWithVirtualMachine            ,


-- ** popExceptionHandler #method:popExceptionHandler#

#if defined(ENABLE_OVERLOADING)
    ContextPopExceptionHandlerMethodInfo    ,
#endif
    contextPopExceptionHandler              ,


-- ** pushExceptionHandler #method:pushExceptionHandler#

#if defined(ENABLE_OVERLOADING)
    ContextPushExceptionHandlerMethodInfo   ,
#endif
    contextPushExceptionHandler             ,


-- ** registerClass #method:registerClass#

#if defined(ENABLE_OVERLOADING)
    ContextRegisterClassMethodInfo          ,
#endif
    contextRegisterClass                    ,


-- ** setValue #method:setValue#

#if defined(ENABLE_OVERLOADING)
    ContextSetValueMethodInfo               ,
#endif
    contextSetValue                         ,


-- ** throw #method:throw#

#if defined(ENABLE_OVERLOADING)
    ContextThrowMethodInfo                  ,
#endif
    contextThrow                            ,


-- ** throwException #method:throwException#

#if defined(ENABLE_OVERLOADING)
    ContextThrowExceptionMethodInfo         ,
#endif
    contextThrowException                   ,


-- ** throwWithName #method:throwWithName#

#if defined(ENABLE_OVERLOADING)
    ContextThrowWithNameMethodInfo          ,
#endif
    contextThrowWithName                    ,




 -- * Properties


-- ** virtualMachine #attr:virtualMachine#
-- | The t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine' in which the context was created.

#if defined(ENABLE_OVERLOADING)
    ContextVirtualMachinePropertyInfo       ,
#endif
    constructContextVirtualMachine          ,
#if defined(ENABLE_OVERLOADING)
    contextVirtualMachine                   ,
#endif
    getContextVirtualMachine                ,




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
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#endif

-- | Memory-managed wrapper type.
newtype Context = Context (SP.ManagedPtr Context)
    deriving (Eq)

instance SP.ManagedPtrNewtype Context where
    toManagedPtr (Context p) = p

foreign import ccall "jsc_context_get_type"
    c_jsc_context_get_type :: IO B.Types.GType

instance B.Types.TypedObject Context where
    glibType = c_jsc_context_get_type

instance B.Types.GObject Context

-- | Type class for types which can be safely cast to t'Context', for instance with `toContext`.
class (SP.GObject o, O.IsDescendantOf Context o) => IsContext o
instance (SP.GObject o, O.IsDescendantOf Context o) => IsContext o

instance O.HasParentTypes Context
type instance O.ParentTypes Context = '[GObject.Object.Object]

-- | Cast to t'Context', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toContext :: (MIO.MonadIO m, IsContext o) => o -> m Context
toContext = MIO.liftIO . B.ManagedPtr.unsafeCastTo Context

-- | Convert t'Context' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Context) where
    gvalueGType_ = c_jsc_context_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Context)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Context)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Context ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveContextMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveContextMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveContextMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveContextMethod "checkSyntax" o = ContextCheckSyntaxMethodInfo
    ResolveContextMethod "clearException" o = ContextClearExceptionMethodInfo
    ResolveContextMethod "evaluate" o = ContextEvaluateMethodInfo
    ResolveContextMethod "evaluateInObject" o = ContextEvaluateInObjectMethodInfo
    ResolveContextMethod "evaluateWithSourceUri" o = ContextEvaluateWithSourceUriMethodInfo
    ResolveContextMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveContextMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveContextMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveContextMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveContextMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveContextMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveContextMethod "popExceptionHandler" o = ContextPopExceptionHandlerMethodInfo
    ResolveContextMethod "pushExceptionHandler" o = ContextPushExceptionHandlerMethodInfo
    ResolveContextMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveContextMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveContextMethod "registerClass" o = ContextRegisterClassMethodInfo
    ResolveContextMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveContextMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveContextMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveContextMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveContextMethod "throw" o = ContextThrowMethodInfo
    ResolveContextMethod "throwException" o = ContextThrowExceptionMethodInfo
    ResolveContextMethod "throwWithName" o = ContextThrowWithNameMethodInfo
    ResolveContextMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveContextMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveContextMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveContextMethod "getException" o = ContextGetExceptionMethodInfo
    ResolveContextMethod "getGlobalObject" o = ContextGetGlobalObjectMethodInfo
    ResolveContextMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveContextMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveContextMethod "getValue" o = ContextGetValueMethodInfo
    ResolveContextMethod "getVirtualMachine" o = ContextGetVirtualMachineMethodInfo
    ResolveContextMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveContextMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveContextMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveContextMethod "setValue" o = ContextSetValueMethodInfo
    ResolveContextMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveContextMethod t Context, O.OverloadedMethod info Context p) => OL.IsLabel t (Context -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveContextMethod t Context, O.OverloadedMethod info Context p, R.HasField t Context p) => R.HasField t Context p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveContextMethod t Context, O.OverloadedMethodInfo info Context) => OL.IsLabel t (O.MethodProxy info Context) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "virtual-machine"
   -- Type: TInterface (Name {namespace = "JavaScriptCore", name = "VirtualMachine"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@virtual-machine@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' context #virtualMachine
-- @
getContextVirtualMachine :: (MonadIO m, IsContext o) => o -> m JavaScriptCore.VirtualMachine.VirtualMachine
getContextVirtualMachine obj = MIO.liftIO $ checkUnexpectedNothing "getContextVirtualMachine" $ B.Properties.getObjectPropertyObject obj "virtual-machine" JavaScriptCore.VirtualMachine.VirtualMachine

-- | Construct a t'GValueConstruct' with valid value for the “@virtual-machine@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructContextVirtualMachine :: (IsContext o, MIO.MonadIO m, JavaScriptCore.VirtualMachine.IsVirtualMachine a) => a -> m (GValueConstruct o)
constructContextVirtualMachine val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "virtual-machine" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ContextVirtualMachinePropertyInfo
instance AttrInfo ContextVirtualMachinePropertyInfo where
    type AttrAllowedOps ContextVirtualMachinePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ContextVirtualMachinePropertyInfo = IsContext
    type AttrSetTypeConstraint ContextVirtualMachinePropertyInfo = JavaScriptCore.VirtualMachine.IsVirtualMachine
    type AttrTransferTypeConstraint ContextVirtualMachinePropertyInfo = JavaScriptCore.VirtualMachine.IsVirtualMachine
    type AttrTransferType ContextVirtualMachinePropertyInfo = JavaScriptCore.VirtualMachine.VirtualMachine
    type AttrGetType ContextVirtualMachinePropertyInfo = JavaScriptCore.VirtualMachine.VirtualMachine
    type AttrLabel ContextVirtualMachinePropertyInfo = "virtual-machine"
    type AttrOrigin ContextVirtualMachinePropertyInfo = Context
    attrGet = getContextVirtualMachine
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo JavaScriptCore.VirtualMachine.VirtualMachine v
    attrConstruct = constructContextVirtualMachine
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.virtualMachine"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#g:attr:virtualMachine"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Context
type instance O.AttributeList Context = ContextAttributeList
type ContextAttributeList = ('[ '("virtualMachine", ContextVirtualMachinePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
contextVirtualMachine :: AttrLabelProxy "virtualMachine"
contextVirtualMachine = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Context = ContextSignalList
type ContextSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Context::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "Context" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_new" jsc_context_new :: 
    IO (Ptr Context)

-- | Create a new t'GI.JavaScriptCore.Objects.Context.Context'. The context is created in a new t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine'.
-- Use 'GI.JavaScriptCore.Objects.Context.contextNewWithVirtualMachine' to create a new t'GI.JavaScriptCore.Objects.Context.Context' in an
-- existing t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine'.
contextNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Context
    -- ^ __Returns:__ the newly created t'GI.JavaScriptCore.Objects.Context.Context'.
contextNew  = liftIO $ do
    result <- jsc_context_new
    checkUnexpectedReturnNULL "contextNew" result
    result' <- (wrapObject Context) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Context::new_with_virtual_machine
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "vm"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "VirtualMachine" }
--           , argCType = Just "JSCVirtualMachine*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCVirtualMachine"
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
--                  Name { namespace = "JavaScriptCore" , name = "Context" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_new_with_virtual_machine" jsc_context_new_with_virtual_machine :: 
    Ptr JavaScriptCore.VirtualMachine.VirtualMachine -> -- vm : TInterface (Name {namespace = "JavaScriptCore", name = "VirtualMachine"})
    IO (Ptr Context)

-- | Create a new t'GI.JavaScriptCore.Objects.Context.Context' in /@virtualMachine@/.
contextNewWithVirtualMachine ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.VirtualMachine.IsVirtualMachine a) =>
    a
    -- ^ /@vm@/: a t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine'
    -> m Context
    -- ^ __Returns:__ the newly created t'GI.JavaScriptCore.Objects.Context.Context'.
contextNewWithVirtualMachine vm = liftIO $ do
    vm' <- unsafeManagedPtrCastPtr vm
    result <- jsc_context_new_with_virtual_machine vm'
    checkUnexpectedReturnNULL "contextNewWithVirtualMachine" result
    result' <- (wrapObject Context) result
    touchManagedPtr vm
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Context::check_syntax
-- method type : OrdinaryMethod
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
--           { argCName = "code"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a JavaScript script to check"
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
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "length of @code, or -1 if @code is a nul-terminated string"
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
--           { argCName = "mode"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "CheckSyntaxMode" }
--           , argCType = Just "JSCCheckSyntaxMode"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCCheckSyntaxMode"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the source URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "line_number"
--           , argType = TBasicType TUInt
--           , argCType = Just "unsigned"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the starting line number"
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
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for a #JSCException, or %NULL to ignore"
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "CheckSyntaxResult" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_check_syntax" jsc_context_check_syntax :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- code : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    CUInt ->                                -- mode : TInterface (Name {namespace = "JavaScriptCore", name = "CheckSyntaxMode"})
    CString ->                              -- uri : TBasicType TUTF8
    Word32 ->                               -- line_number : TBasicType TUInt
    Ptr (Ptr JavaScriptCore.Exception.Exception) -> -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO CUInt

-- | Check the given /@code@/ in /@context@/ for syntax errors. The /@lineNumber@/ is the starting line number in /@uri@/;
-- the value is one-based so the first line is 1. /@uri@/ and /@lineNumber@/ are only used to fill the /@exception@/.
-- In case of errors /@exception@/ will be set to a new t'GI.JavaScriptCore.Objects.Exception.Exception' with the details. You can pass 'P.Nothing' to
-- /@exception@/ to ignore the error details.
contextCheckSyntax ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@code@/: a JavaScript script to check
    -> DI.Int64
    -- ^ /@length@/: length of /@code@/, or -1 if /@code@/ is a nul-terminated string
    -> JavaScriptCore.Enums.CheckSyntaxMode
    -- ^ /@mode@/: a t'GI.JavaScriptCore.Enums.CheckSyntaxMode'
    -> T.Text
    -- ^ /@uri@/: the source URI
    -> Word32
    -- ^ /@lineNumber@/: the starting line number
    -> m ((JavaScriptCore.Enums.CheckSyntaxResult, JavaScriptCore.Exception.Exception))
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Enums.CheckSyntaxResult'
contextCheckSyntax context code length_ mode uri lineNumber = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    code' <- textToCString code
    let mode' = (fromIntegral . fromEnum) mode
    uri' <- textToCString uri
    exception <- callocMem :: IO (Ptr (Ptr JavaScriptCore.Exception.Exception))
    result <- jsc_context_check_syntax context' code' length_ mode' uri' lineNumber exception
    let result' = (toEnum . fromIntegral) result
    exception' <- peek exception
    exception'' <- (wrapObject JavaScriptCore.Exception.Exception) exception'
    touchManagedPtr context
    freeMem code'
    freeMem uri'
    freeMem exception
    return (result', exception'')

#if defined(ENABLE_OVERLOADING)
data ContextCheckSyntaxMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> JavaScriptCore.Enums.CheckSyntaxMode -> T.Text -> Word32 -> m ((JavaScriptCore.Enums.CheckSyntaxResult, JavaScriptCore.Exception.Exception))), MonadIO m, IsContext a) => O.OverloadedMethod ContextCheckSyntaxMethodInfo a signature where
    overloadedMethod = contextCheckSyntax

instance O.OverloadedMethodInfo ContextCheckSyntaxMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextCheckSyntax",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextCheckSyntax"
        })


#endif

-- method Context::clear_exception
-- method type : OrdinaryMethod
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
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_clear_exception" jsc_context_clear_exception :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO ()

-- | Clear the uncaught exception in /@context@/ if any.
contextClearException ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m ()
contextClearException context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    jsc_context_clear_exception context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextClearExceptionMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContext a) => O.OverloadedMethod ContextClearExceptionMethodInfo a signature where
    overloadedMethod = contextClearException

instance O.OverloadedMethodInfo ContextClearExceptionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextClearException",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextClearException"
        })


#endif

-- method Context::evaluate
-- method type : OrdinaryMethod
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
--           { argCName = "code"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a JavaScript script to evaluate"
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
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "length of @code, or -1 if @code is a nul-terminated string"
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_evaluate" jsc_context_evaluate :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- code : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    IO (Ptr JavaScriptCore.Value.Value)

-- | Evaluate /@code@/ in /@context@/.
contextEvaluate ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@code@/: a JavaScript script to evaluate
    -> DI.Int64
    -- ^ /@length@/: length of /@code@/, or -1 if /@code@/ is a nul-terminated string
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' representing the last value generated by the script.
contextEvaluate context code length_ = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    code' <- textToCString code
    result <- jsc_context_evaluate context' code' length_
    checkUnexpectedReturnNULL "contextEvaluate" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr context
    freeMem code'
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextEvaluateMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> m JavaScriptCore.Value.Value), MonadIO m, IsContext a) => O.OverloadedMethod ContextEvaluateMethodInfo a signature where
    overloadedMethod = contextEvaluate

instance O.OverloadedMethodInfo ContextEvaluateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextEvaluate",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextEvaluate"
        })


#endif

-- method Context::evaluate_in_object
-- method type : OrdinaryMethod
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
--           { argCName = "code"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a JavaScript script to evaluate"
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
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "length of @code, or -1 if @code is a nul-terminated string"
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
--           { argCName = "object_instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an object instance" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "object_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass or %NULL to use the default"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the source URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "line_number"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the starting line number"
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
--           { argCName = "object"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for a #JSCValue."
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
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_evaluate_in_object" jsc_context_evaluate_in_object :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- code : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    Ptr () ->                               -- object_instance : TBasicType TPtr
    Ptr JavaScriptCore.Class.Class ->       -- object_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- uri : TBasicType TUTF8
    Word32 ->                               -- line_number : TBasicType TUInt
    Ptr (Ptr JavaScriptCore.Value.Value) -> -- object : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr JavaScriptCore.Value.Value)

-- | Evaluate /@code@/ and create an new object where symbols defined in /@code@/ will be added as properties,
-- instead of being added to /@context@/ global object. The new object is returned as /@object@/ parameter.
-- Similar to how 'GI.JavaScriptCore.Objects.Value.valueNewObject' works, if /@objectInstance@/ is not 'P.Nothing' /@objectClass@/ must be provided too.
-- The /@lineNumber@/ is the starting line number in /@uri@/; the value is one-based so the first line is 1.
-- /@uri@/ and /@lineNumber@/ will be shown in exceptions and they don\'t affect the behavior of the script.
contextEvaluateInObject ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a, JavaScriptCore.Class.IsClass b) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@code@/: a JavaScript script to evaluate
    -> DI.Int64
    -- ^ /@length@/: length of /@code@/, or -1 if /@code@/ is a nul-terminated string
    -> Ptr ()
    -- ^ /@objectInstance@/: an object instance
    -> Maybe (b)
    -- ^ /@objectClass@/: a t'GI.JavaScriptCore.Objects.Class.Class' or 'P.Nothing' to use the default
    -> T.Text
    -- ^ /@uri@/: the source URI
    -> Word32
    -- ^ /@lineNumber@/: the starting line number
    -> m ((JavaScriptCore.Value.Value, JavaScriptCore.Value.Value))
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' representing the last value generated by the script.
contextEvaluateInObject context code length_ objectInstance objectClass uri lineNumber = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    code' <- textToCString code
    maybeObjectClass <- case objectClass of
        Nothing -> return FP.nullPtr
        Just jObjectClass -> do
            jObjectClass' <- unsafeManagedPtrCastPtr jObjectClass
            return jObjectClass'
    uri' <- textToCString uri
    object <- callocMem :: IO (Ptr (Ptr JavaScriptCore.Value.Value))
    result <- jsc_context_evaluate_in_object context' code' length_ objectInstance maybeObjectClass uri' lineNumber object
    checkUnexpectedReturnNULL "contextEvaluateInObject" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    object' <- peek object
    object'' <- (wrapObject JavaScriptCore.Value.Value) object'
    touchManagedPtr context
    whenJust objectClass touchManagedPtr
    freeMem code'
    freeMem uri'
    freeMem object
    return (result', object'')

#if defined(ENABLE_OVERLOADING)
data ContextEvaluateInObjectMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> Ptr () -> Maybe (b) -> T.Text -> Word32 -> m ((JavaScriptCore.Value.Value, JavaScriptCore.Value.Value))), MonadIO m, IsContext a, JavaScriptCore.Class.IsClass b) => O.OverloadedMethod ContextEvaluateInObjectMethodInfo a signature where
    overloadedMethod = contextEvaluateInObject

instance O.OverloadedMethodInfo ContextEvaluateInObjectMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextEvaluateInObject",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextEvaluateInObject"
        })


#endif

-- method Context::evaluate_with_source_uri
-- method type : OrdinaryMethod
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
--           { argCName = "code"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a JavaScript script to evaluate"
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
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "length of @code, or -1 if @code is a nul-terminated string"
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
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the source URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "line_number"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the starting line number"
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_evaluate_with_source_uri" jsc_context_evaluate_with_source_uri :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- code : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    CString ->                              -- uri : TBasicType TUTF8
    Word32 ->                               -- line_number : TBasicType TUInt
    IO (Ptr JavaScriptCore.Value.Value)

-- | Evaluate /@code@/ in /@context@/ using /@uri@/ as the source URI. The /@lineNumber@/ is the starting line number
-- in /@uri@/; the value is one-based so the first line is 1. /@uri@/ and /@lineNumber@/ will be shown in exceptions and
-- they don\'t affect the behavior of the script.
contextEvaluateWithSourceUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@code@/: a JavaScript script to evaluate
    -> DI.Int64
    -- ^ /@length@/: length of /@code@/, or -1 if /@code@/ is a nul-terminated string
    -> T.Text
    -- ^ /@uri@/: the source URI
    -> Word32
    -- ^ /@lineNumber@/: the starting line number
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' representing the last value generated by the script.
contextEvaluateWithSourceUri context code length_ uri lineNumber = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    code' <- textToCString code
    uri' <- textToCString uri
    result <- jsc_context_evaluate_with_source_uri context' code' length_ uri' lineNumber
    checkUnexpectedReturnNULL "contextEvaluateWithSourceUri" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr context
    freeMem code'
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextEvaluateWithSourceUriMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> T.Text -> Word32 -> m JavaScriptCore.Value.Value), MonadIO m, IsContext a) => O.OverloadedMethod ContextEvaluateWithSourceUriMethodInfo a signature where
    overloadedMethod = contextEvaluateWithSourceUri

instance O.OverloadedMethodInfo ContextEvaluateWithSourceUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextEvaluateWithSourceUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextEvaluateWithSourceUri"
        })


#endif

-- method Context::get_exception
-- method type : OrdinaryMethod
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "Exception" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_get_exception" jsc_context_get_exception :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO (Ptr JavaScriptCore.Exception.Exception)

-- | Get the last unhandled exception thrown in /@context@/ by API functions calls.
contextGetException ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m (Maybe JavaScriptCore.Exception.Exception)
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Exception.Exception' or 'P.Nothing' if there isn\'t any
    --    unhandled exception in the t'GI.JavaScriptCore.Objects.Context.Context'.
contextGetException context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- jsc_context_get_exception context'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject JavaScriptCore.Exception.Exception) result'
        return result''
    touchManagedPtr context
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContextGetExceptionMethodInfo
instance (signature ~ (m (Maybe JavaScriptCore.Exception.Exception)), MonadIO m, IsContext a) => O.OverloadedMethod ContextGetExceptionMethodInfo a signature where
    overloadedMethod = contextGetException

instance O.OverloadedMethodInfo ContextGetExceptionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextGetException",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextGetException"
        })


#endif

-- method Context::get_global_object
-- method type : OrdinaryMethod
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_get_global_object" jsc_context_get_global_object :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO (Ptr JavaScriptCore.Value.Value)

-- | Get a t'GI.JavaScriptCore.Objects.Value.Value' referencing the /@context@/ global object
contextGetGlobalObject ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'
contextGetGlobalObject context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- jsc_context_get_global_object context'
    checkUnexpectedReturnNULL "contextGetGlobalObject" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextGetGlobalObjectMethodInfo
instance (signature ~ (m JavaScriptCore.Value.Value), MonadIO m, IsContext a) => O.OverloadedMethod ContextGetGlobalObjectMethodInfo a signature where
    overloadedMethod = contextGetGlobalObject

instance O.OverloadedMethodInfo ContextGetGlobalObjectMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextGetGlobalObject",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextGetGlobalObject"
        })


#endif

-- method Context::get_value
-- method type : OrdinaryMethod
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
--                 { rawDocText = Just "the value name" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_get_value" jsc_context_get_value :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr JavaScriptCore.Value.Value)

-- | Get a property of /@context@/ global object with /@name@/.
contextGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@name@/: the value name
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'
contextGetValue context name = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    result <- jsc_context_get_value context' name'
    checkUnexpectedReturnNULL "contextGetValue" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr context
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextGetValueMethodInfo
instance (signature ~ (T.Text -> m JavaScriptCore.Value.Value), MonadIO m, IsContext a) => O.OverloadedMethod ContextGetValueMethodInfo a signature where
    overloadedMethod = contextGetValue

instance O.OverloadedMethodInfo ContextGetValueMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextGetValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextGetValue"
        })


#endif

-- method Context::get_virtual_machine
-- method type : OrdinaryMethod
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "VirtualMachine" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_get_virtual_machine" jsc_context_get_virtual_machine :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO (Ptr JavaScriptCore.VirtualMachine.VirtualMachine)

-- | Get the t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine' where /@context@/ was created.
contextGetVirtualMachine ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m JavaScriptCore.VirtualMachine.VirtualMachine
    -- ^ __Returns:__ the t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine' where the t'GI.JavaScriptCore.Objects.Context.Context' was created.
contextGetVirtualMachine context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- jsc_context_get_virtual_machine context'
    checkUnexpectedReturnNULL "contextGetVirtualMachine" result
    result' <- (newObject JavaScriptCore.VirtualMachine.VirtualMachine) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextGetVirtualMachineMethodInfo
instance (signature ~ (m JavaScriptCore.VirtualMachine.VirtualMachine), MonadIO m, IsContext a) => O.OverloadedMethod ContextGetVirtualMachineMethodInfo a signature where
    overloadedMethod = contextGetVirtualMachine

instance O.OverloadedMethodInfo ContextGetVirtualMachineMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextGetVirtualMachine",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextGetVirtualMachine"
        })


#endif

-- method Context::pop_exception_handler
-- method type : OrdinaryMethod
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
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_pop_exception_handler" jsc_context_pop_exception_handler :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO ()

-- | Remove the last t'GI.JavaScriptCore.Callbacks.ExceptionHandler' previously pushed to /@context@/ with
-- 'GI.JavaScriptCore.Objects.Context.contextPushExceptionHandler'.
contextPopExceptionHandler ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m ()
contextPopExceptionHandler context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    jsc_context_pop_exception_handler context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextPopExceptionHandlerMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContext a) => O.OverloadedMethod ContextPopExceptionHandlerMethodInfo a signature where
    overloadedMethod = contextPopExceptionHandler

instance O.OverloadedMethodInfo ContextPopExceptionHandlerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextPopExceptionHandler",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextPopExceptionHandler"
        })


#endif

-- method Context::push_exception_handler
-- method type : OrdinaryMethod
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
--           { argCName = "handler"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "ExceptionHandler" }
--           , argCType = Just "JSCExceptionHandler"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCExceptionHandler"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 2
--           , argDestroy = 3
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @handler"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "jsc_context_push_exception_handler" jsc_context_push_exception_handler :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    FunPtr JavaScriptCore.Callbacks.C_ExceptionHandler -> -- handler : TInterface (Name {namespace = "JavaScriptCore", name = "ExceptionHandler"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Push an exception handler in /@context@/. Whenever a JavaScript exception happens in
-- the t'GI.JavaScriptCore.Objects.Context.Context', the given /@handler@/ will be called. The default t'GI.JavaScriptCore.Callbacks.ExceptionHandler'
-- simply calls 'GI.JavaScriptCore.Objects.Context.contextThrowException' to throw the exception to the t'GI.JavaScriptCore.Objects.Context.Context'.
-- If you don\'t want to catch the exception, but only get notified about it, call
-- 'GI.JavaScriptCore.Objects.Context.contextThrowException' in /@handler@/ like the default one does.
-- The last exception handler pushed is the only one used by the t'GI.JavaScriptCore.Objects.Context.Context', use
-- 'GI.JavaScriptCore.Objects.Context.contextPopExceptionHandler' to remove it and set the previous one. When /@handler@/
-- is removed from the context, /@destroyNotify@/ is called with /@userData@/ as parameter.
contextPushExceptionHandler ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> JavaScriptCore.Callbacks.ExceptionHandler
    -- ^ /@handler@/: a t'GI.JavaScriptCore.Callbacks.ExceptionHandler'
    -> m ()
contextPushExceptionHandler context handler = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    handler' <- JavaScriptCore.Callbacks.mk_ExceptionHandler (JavaScriptCore.Callbacks.wrap_ExceptionHandler Nothing (JavaScriptCore.Callbacks.drop_closures_ExceptionHandler handler))
    let userData = castFunPtrToPtr handler'
    let destroyNotify = SP.safeFreeFunPtrPtr
    jsc_context_push_exception_handler context' handler' userData destroyNotify
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextPushExceptionHandlerMethodInfo
instance (signature ~ (JavaScriptCore.Callbacks.ExceptionHandler -> m ()), MonadIO m, IsContext a) => O.OverloadedMethod ContextPushExceptionHandlerMethodInfo a signature where
    overloadedMethod = contextPushExceptionHandler

instance O.OverloadedMethodInfo ContextPushExceptionHandlerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextPushExceptionHandler",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextPushExceptionHandler"
        })


#endif

-- method Context::register_class
-- method type : OrdinaryMethod
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
--                 { rawDocText = Just "the class name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass or %NULL"
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
--           { argCName = "vtable"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "ClassVTable" }
--           , argCType = Just "JSCClassVTable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an optional #JSCClassVTable or %NULL"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a destroy notifier for class instances"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Class" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_register_class" jsc_context_register_class :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr JavaScriptCore.Class.Class ->       -- parent_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    Ptr JavaScriptCore.ClassVTable.ClassVTable -> -- vtable : TInterface (Name {namespace = "JavaScriptCore", name = "ClassVTable"})
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO (Ptr JavaScriptCore.Class.Class)

-- | Register a custom class in /@context@/ using the given /@name@/. If the new class inherits from
-- another t'GI.JavaScriptCore.Objects.Class.Class', the parent should be passed as /@parentClass@/, otherwise 'P.Nothing' should be
-- used. The optional /@vtable@/ parameter allows to provide a custom implementation for handling
-- the class, for example, to handle external properties not added to the prototype.
-- When an instance of the t'GI.JavaScriptCore.Objects.Class.Class' is cleared in the context, /@destroyNotify@/ is called with
-- the instance as parameter.
contextRegisterClass ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a, JavaScriptCore.Class.IsClass b) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@name@/: the class name
    -> Maybe (b)
    -- ^ /@parentClass@/: a t'GI.JavaScriptCore.Objects.Class.Class' or 'P.Nothing'
    -> Maybe (JavaScriptCore.ClassVTable.ClassVTable)
    -- ^ /@vtable@/: an optional t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable' or 'P.Nothing'
    -> Maybe (GLib.Callbacks.DestroyNotify)
    -- ^ /@destroyNotify@/: a destroy notifier for class instances
    -> m JavaScriptCore.Class.Class
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Class.Class'
contextRegisterClass context name parentClass vtable destroyNotify = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    maybeParentClass <- case parentClass of
        Nothing -> return FP.nullPtr
        Just jParentClass -> do
            jParentClass' <- unsafeManagedPtrCastPtr jParentClass
            return jParentClass'
    maybeVtable <- case vtable of
        Nothing -> return FP.nullPtr
        Just jVtable -> do
            jVtable' <- unsafeManagedPtrGetPtr jVtable
            return jVtable'
    maybeDestroyNotify <- case destroyNotify of
        Nothing -> return FP.nullFunPtr
        Just jDestroyNotify -> do
            ptrdestroyNotify <- callocMem :: IO (Ptr (FunPtr GLib.Callbacks.C_DestroyNotify))
            jDestroyNotify' <- GLib.Callbacks.mk_DestroyNotify (GLib.Callbacks.wrap_DestroyNotify (Just ptrdestroyNotify) jDestroyNotify)
            poke ptrdestroyNotify jDestroyNotify'
            return jDestroyNotify'
    result <- jsc_context_register_class context' name' maybeParentClass maybeVtable maybeDestroyNotify
    checkUnexpectedReturnNULL "contextRegisterClass" result
    result' <- (newObject JavaScriptCore.Class.Class) result
    touchManagedPtr context
    whenJust parentClass touchManagedPtr
    whenJust vtable touchManagedPtr
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ContextRegisterClassMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (JavaScriptCore.ClassVTable.ClassVTable) -> Maybe (GLib.Callbacks.DestroyNotify) -> m JavaScriptCore.Class.Class), MonadIO m, IsContext a, JavaScriptCore.Class.IsClass b) => O.OverloadedMethod ContextRegisterClassMethodInfo a signature where
    overloadedMethod = contextRegisterClass

instance O.OverloadedMethodInfo ContextRegisterClassMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextRegisterClass",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextRegisterClass"
        })


#endif

-- method Context::set_value
-- method type : OrdinaryMethod
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
--                 { rawDocText = Just "the value name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCValue" , sinceVersion = Nothing }
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

foreign import ccall "jsc_context_set_value" jsc_context_set_value :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr JavaScriptCore.Value.Value ->       -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO ()

-- | Set a property of /@context@/ global object with /@name@/ and /@value@/.
contextSetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a, JavaScriptCore.Value.IsValue b) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@name@/: the value name
    -> b
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m ()
contextSetValue context name value = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    value' <- unsafeManagedPtrCastPtr value
    jsc_context_set_value context' name' value'
    touchManagedPtr context
    touchManagedPtr value
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextSetValueMethodInfo
instance (signature ~ (T.Text -> b -> m ()), MonadIO m, IsContext a, JavaScriptCore.Value.IsValue b) => O.OverloadedMethod ContextSetValueMethodInfo a signature where
    overloadedMethod = contextSetValue

instance O.OverloadedMethodInfo ContextSetValueMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextSetValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextSetValue"
        })


#endif

-- method Context::throw
-- method type : OrdinaryMethod
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
--           { argCName = "error_message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an error message" , sinceVersion = Nothing }
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

foreign import ccall "jsc_context_throw" jsc_context_throw :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- error_message : TBasicType TUTF8
    IO ()

-- | Throw an exception to /@context@/ using the given error message. The created t'GI.JavaScriptCore.Objects.Exception.Exception'
-- can be retrieved with 'GI.JavaScriptCore.Objects.Context.contextGetException'.
contextThrow ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@errorMessage@/: an error message
    -> m ()
contextThrow context errorMessage = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    errorMessage' <- textToCString errorMessage
    jsc_context_throw context' errorMessage'
    touchManagedPtr context
    freeMem errorMessage'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextThrowMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsContext a) => O.OverloadedMethod ContextThrowMethodInfo a signature where
    overloadedMethod = contextThrow

instance O.OverloadedMethodInfo ContextThrowMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextThrow",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextThrow"
        })


#endif

-- method Context::throw_exception
-- method type : OrdinaryMethod
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_throw_exception" jsc_context_throw_exception :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr JavaScriptCore.Exception.Exception -> -- exception : TInterface (Name {namespace = "JavaScriptCore", name = "Exception"})
    IO ()

-- | Throw /@exception@/ to /@context@/.
contextThrowException ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a, JavaScriptCore.Exception.IsException b) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> b
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> m ()
contextThrowException context exception = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    exception' <- unsafeManagedPtrCastPtr exception
    jsc_context_throw_exception context' exception'
    touchManagedPtr context
    touchManagedPtr exception
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextThrowExceptionMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContext a, JavaScriptCore.Exception.IsException b) => O.OverloadedMethod ContextThrowExceptionMethodInfo a signature where
    overloadedMethod = contextThrowException

instance O.OverloadedMethodInfo ContextThrowExceptionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextThrowException",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextThrowException"
        })


#endif

-- method Context::throw_with_name
-- method type : OrdinaryMethod
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
--           { argCName = "error_name"
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
--           { argCName = "error_message"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an error message" , sinceVersion = Nothing }
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

foreign import ccall "jsc_context_throw_with_name" jsc_context_throw_with_name :: 
    Ptr Context ->                          -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- error_name : TBasicType TUTF8
    CString ->                              -- error_message : TBasicType TUTF8
    IO ()

-- | Throw an exception to /@context@/ using the given error name and message. The created t'GI.JavaScriptCore.Objects.Exception.Exception'
-- can be retrieved with 'GI.JavaScriptCore.Objects.Context.contextGetException'.
contextThrowWithName ::
    (B.CallStack.HasCallStack, MonadIO m, IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@errorName@/: the error name
    -> T.Text
    -- ^ /@errorMessage@/: an error message
    -> m ()
contextThrowWithName context errorName errorMessage = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    errorName' <- textToCString errorName
    errorMessage' <- textToCString errorMessage
    jsc_context_throw_with_name context' errorName' errorMessage'
    touchManagedPtr context
    freeMem errorName'
    freeMem errorMessage'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContextThrowWithNameMethodInfo
instance (signature ~ (T.Text -> T.Text -> m ()), MonadIO m, IsContext a) => O.OverloadedMethod ContextThrowWithNameMethodInfo a signature where
    overloadedMethod = contextThrowWithName

instance O.OverloadedMethodInfo ContextThrowWithNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Context.contextThrowWithName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Context.html#v:contextThrowWithName"
        })


#endif

-- method Context::get_current
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "Context" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_context_get_current" jsc_context_get_current :: 
    IO (Ptr Context)

-- | Get the t'GI.JavaScriptCore.Objects.Context.Context' that is currently executing a function. This should only be
-- called within a function or method callback, otherwise 'P.Nothing' will be returned.
contextGetCurrent ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m (Maybe Context)
    -- ^ __Returns:__ the t'GI.JavaScriptCore.Objects.Context.Context' that is currently executing.
contextGetCurrent  = liftIO $ do
    result <- jsc_context_get_current
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Context) result'
        return result''
    return maybeResult

#if defined(ENABLE_OVERLOADING)
#endif


