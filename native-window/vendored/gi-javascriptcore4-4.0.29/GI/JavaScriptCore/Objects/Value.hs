{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- JSCValue represents a reference to a value in a t'GI.JavaScriptCore.Objects.Context.Context'. The JSCValue
-- protects the referenced value from being garbage collected.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.Value
    ( 
#if defined(ENABLE_OVERLOADING)
    ValueObjectDefinePropertyAccessorMethodInfo,
#endif

-- * Exported types
    Value(..)                               ,
    IsValue                                 ,
    toValue                                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [arrayBufferGetData]("GI.JavaScriptCore.Objects.Value#g:method:arrayBufferGetData"), [arrayBufferGetSize]("GI.JavaScriptCore.Objects.Value#g:method:arrayBufferGetSize"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [constructorCall]("GI.JavaScriptCore.Objects.Value#g:method:constructorCall"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [functionCall]("GI.JavaScriptCore.Objects.Value#g:method:functionCall"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isArray]("GI.JavaScriptCore.Objects.Value#g:method:isArray"), [isArrayBuffer]("GI.JavaScriptCore.Objects.Value#g:method:isArrayBuffer"), [isBoolean]("GI.JavaScriptCore.Objects.Value#g:method:isBoolean"), [isConstructor]("GI.JavaScriptCore.Objects.Value#g:method:isConstructor"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isFunction]("GI.JavaScriptCore.Objects.Value#g:method:isFunction"), [isNull]("GI.JavaScriptCore.Objects.Value#g:method:isNull"), [isNumber]("GI.JavaScriptCore.Objects.Value#g:method:isNumber"), [isObject]("GI.JavaScriptCore.Objects.Value#g:method:isObject"), [isString]("GI.JavaScriptCore.Objects.Value#g:method:isString"), [isTypedArray]("GI.JavaScriptCore.Objects.Value#g:method:isTypedArray"), [isUndefined]("GI.JavaScriptCore.Objects.Value#g:method:isUndefined"), [newTypedArrayWithBuffer]("GI.JavaScriptCore.Objects.Value#g:method:newTypedArrayWithBuffer"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [objectDefinePropertyAccessor]("GI.JavaScriptCore.Objects.Value#g:method:objectDefinePropertyAccessor"), [objectDefinePropertyData]("GI.JavaScriptCore.Objects.Value#g:method:objectDefinePropertyData"), [objectDeleteProperty]("GI.JavaScriptCore.Objects.Value#g:method:objectDeleteProperty"), [objectEnumerateProperties]("GI.JavaScriptCore.Objects.Value#g:method:objectEnumerateProperties"), [objectGetProperty]("GI.JavaScriptCore.Objects.Value#g:method:objectGetProperty"), [objectGetPropertyAtIndex]("GI.JavaScriptCore.Objects.Value#g:method:objectGetPropertyAtIndex"), [objectHasProperty]("GI.JavaScriptCore.Objects.Value#g:method:objectHasProperty"), [objectInvokeMethod]("GI.JavaScriptCore.Objects.Value#g:method:objectInvokeMethod"), [objectIsInstanceOf]("GI.JavaScriptCore.Objects.Value#g:method:objectIsInstanceOf"), [objectSetProperty]("GI.JavaScriptCore.Objects.Value#g:method:objectSetProperty"), [objectSetPropertyAtIndex]("GI.JavaScriptCore.Objects.Value#g:method:objectSetPropertyAtIndex"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [toBoolean]("GI.JavaScriptCore.Objects.Value#g:method:toBoolean"), [toDouble]("GI.JavaScriptCore.Objects.Value#g:method:toDouble"), [toInt32]("GI.JavaScriptCore.Objects.Value#g:method:toInt32"), [toJson]("GI.JavaScriptCore.Objects.Value#g:method:toJson"), [toString]("GI.JavaScriptCore.Objects.Value#g:method:toString"), [toStringAsBytes]("GI.JavaScriptCore.Objects.Value#g:method:toStringAsBytes"), [typedArrayGetBuffer]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetBuffer"), [typedArrayGetData]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetData"), [typedArrayGetLength]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetLength"), [typedArrayGetOffset]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetOffset"), [typedArrayGetSize]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetSize"), [typedArrayGetType]("GI.JavaScriptCore.Objects.Value#g:method:typedArrayGetType"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getContext]("GI.JavaScriptCore.Objects.Value#g:method:getContext"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveValueMethod                      ,
#endif

-- ** arrayBufferGetData #method:arrayBufferGetData#

#if defined(ENABLE_OVERLOADING)
    ValueArrayBufferGetDataMethodInfo       ,
#endif
    valueArrayBufferGetData                 ,


-- ** arrayBufferGetSize #method:arrayBufferGetSize#

#if defined(ENABLE_OVERLOADING)
    ValueArrayBufferGetSizeMethodInfo       ,
#endif
    valueArrayBufferGetSize                 ,


-- ** constructorCall #method:constructorCall#

#if defined(ENABLE_OVERLOADING)
    ValueConstructorCallMethodInfo          ,
#endif
    valueConstructorCall                    ,


-- ** functionCall #method:functionCall#

#if defined(ENABLE_OVERLOADING)
    ValueFunctionCallMethodInfo             ,
#endif
    valueFunctionCall                       ,


-- ** getContext #method:getContext#

#if defined(ENABLE_OVERLOADING)
    ValueGetContextMethodInfo               ,
#endif
    valueGetContext                         ,


-- ** isArray #method:isArray#

#if defined(ENABLE_OVERLOADING)
    ValueIsArrayMethodInfo                  ,
#endif
    valueIsArray                            ,


-- ** isArrayBuffer #method:isArrayBuffer#

#if defined(ENABLE_OVERLOADING)
    ValueIsArrayBufferMethodInfo            ,
#endif
    valueIsArrayBuffer                      ,


-- ** isBoolean #method:isBoolean#

#if defined(ENABLE_OVERLOADING)
    ValueIsBooleanMethodInfo                ,
#endif
    valueIsBoolean                          ,


-- ** isConstructor #method:isConstructor#

#if defined(ENABLE_OVERLOADING)
    ValueIsConstructorMethodInfo            ,
#endif
    valueIsConstructor                      ,


-- ** isFunction #method:isFunction#

#if defined(ENABLE_OVERLOADING)
    ValueIsFunctionMethodInfo               ,
#endif
    valueIsFunction                         ,


-- ** isNull #method:isNull#

#if defined(ENABLE_OVERLOADING)
    ValueIsNullMethodInfo                   ,
#endif
    valueIsNull                             ,


-- ** isNumber #method:isNumber#

#if defined(ENABLE_OVERLOADING)
    ValueIsNumberMethodInfo                 ,
#endif
    valueIsNumber                           ,


-- ** isObject #method:isObject#

#if defined(ENABLE_OVERLOADING)
    ValueIsObjectMethodInfo                 ,
#endif
    valueIsObject                           ,


-- ** isString #method:isString#

#if defined(ENABLE_OVERLOADING)
    ValueIsStringMethodInfo                 ,
#endif
    valueIsString                           ,


-- ** isTypedArray #method:isTypedArray#

#if defined(ENABLE_OVERLOADING)
    ValueIsTypedArrayMethodInfo             ,
#endif
    valueIsTypedArray                       ,


-- ** isUndefined #method:isUndefined#

#if defined(ENABLE_OVERLOADING)
    ValueIsUndefinedMethodInfo              ,
#endif
    valueIsUndefined                        ,


-- ** newArrayBuffer #method:newArrayBuffer#

    valueNewArrayBuffer                     ,


-- ** newArrayFromGarray #method:newArrayFromGarray#

    valueNewArrayFromGarray                 ,


-- ** newArrayFromStrv #method:newArrayFromStrv#

    valueNewArrayFromStrv                   ,


-- ** newBoolean #method:newBoolean#

    valueNewBoolean                         ,


-- ** newFromJson #method:newFromJson#

    valueNewFromJson                        ,


-- ** newFunction #method:newFunction#

    valueNewFunction                        ,


-- ** newFunctionVariadic #method:newFunctionVariadic#

    valueNewFunctionVariadic                ,


-- ** newNull #method:newNull#

    valueNewNull                            ,


-- ** newNumber #method:newNumber#

    valueNewNumber                          ,


-- ** newObject #method:newObject#

    valueNewObject                          ,


-- ** newPromise #method:newPromise#

    valueNewPromise                         ,


-- ** newString #method:newString#

    valueNewString                          ,


-- ** newStringFromBytes #method:newStringFromBytes#

    valueNewStringFromBytes                 ,


-- ** newTypedArray #method:newTypedArray#

    valueNewTypedArray                      ,


-- ** newTypedArrayWithBuffer #method:newTypedArrayWithBuffer#

#if defined(ENABLE_OVERLOADING)
    ValueNewTypedArrayWithBufferMethodInfo  ,
#endif
    valueNewTypedArrayWithBuffer            ,


-- ** newUndefined #method:newUndefined#

    valueNewUndefined                       ,


-- ** objectDefinePropertyData #method:objectDefinePropertyData#

#if defined(ENABLE_OVERLOADING)
    ValueObjectDefinePropertyDataMethodInfo ,
#endif
    valueObjectDefinePropertyData           ,


-- ** objectDeleteProperty #method:objectDeleteProperty#

#if defined(ENABLE_OVERLOADING)
    ValueObjectDeletePropertyMethodInfo     ,
#endif
    valueObjectDeleteProperty               ,


-- ** objectEnumerateProperties #method:objectEnumerateProperties#

#if defined(ENABLE_OVERLOADING)
    ValueObjectEnumeratePropertiesMethodInfo,
#endif
    valueObjectEnumerateProperties          ,


-- ** objectGetProperty #method:objectGetProperty#

#if defined(ENABLE_OVERLOADING)
    ValueObjectGetPropertyMethodInfo        ,
#endif
    valueObjectGetProperty                  ,


-- ** objectGetPropertyAtIndex #method:objectGetPropertyAtIndex#

#if defined(ENABLE_OVERLOADING)
    ValueObjectGetPropertyAtIndexMethodInfo ,
#endif
    valueObjectGetPropertyAtIndex           ,


-- ** objectHasProperty #method:objectHasProperty#

#if defined(ENABLE_OVERLOADING)
    ValueObjectHasPropertyMethodInfo        ,
#endif
    valueObjectHasProperty                  ,


-- ** objectInvokeMethod #method:objectInvokeMethod#

#if defined(ENABLE_OVERLOADING)
    ValueObjectInvokeMethodMethodInfo       ,
#endif
    valueObjectInvokeMethod                 ,


-- ** objectIsInstanceOf #method:objectIsInstanceOf#

#if defined(ENABLE_OVERLOADING)
    ValueObjectIsInstanceOfMethodInfo       ,
#endif
    valueObjectIsInstanceOf                 ,


-- ** objectSetProperty #method:objectSetProperty#

#if defined(ENABLE_OVERLOADING)
    ValueObjectSetPropertyMethodInfo        ,
#endif
    valueObjectSetProperty                  ,


-- ** objectSetPropertyAtIndex #method:objectSetPropertyAtIndex#

#if defined(ENABLE_OVERLOADING)
    ValueObjectSetPropertyAtIndexMethodInfo ,
#endif
    valueObjectSetPropertyAtIndex           ,


-- ** toBoolean #method:toBoolean#

#if defined(ENABLE_OVERLOADING)
    ValueToBooleanMethodInfo                ,
#endif
    valueToBoolean                          ,


-- ** toDouble #method:toDouble#

#if defined(ENABLE_OVERLOADING)
    ValueToDoubleMethodInfo                 ,
#endif
    valueToDouble                           ,


-- ** toInt32 #method:toInt32#

#if defined(ENABLE_OVERLOADING)
    ValueToInt32MethodInfo                  ,
#endif
    valueToInt32                            ,


-- ** toJson #method:toJson#

#if defined(ENABLE_OVERLOADING)
    ValueToJsonMethodInfo                   ,
#endif
    valueToJson                             ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    ValueToStringMethodInfo                 ,
#endif
    valueToString                           ,


-- ** toStringAsBytes #method:toStringAsBytes#

#if defined(ENABLE_OVERLOADING)
    ValueToStringAsBytesMethodInfo          ,
#endif
    valueToStringAsBytes                    ,


-- ** typedArrayGetBuffer #method:typedArrayGetBuffer#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetBufferMethodInfo      ,
#endif
    valueTypedArrayGetBuffer                ,


-- ** typedArrayGetData #method:typedArrayGetData#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetDataMethodInfo        ,
#endif
    valueTypedArrayGetData                  ,


-- ** typedArrayGetLength #method:typedArrayGetLength#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetLengthMethodInfo      ,
#endif
    valueTypedArrayGetLength                ,


-- ** typedArrayGetOffset #method:typedArrayGetOffset#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetOffsetMethodInfo      ,
#endif
    valueTypedArrayGetOffset                ,


-- ** typedArrayGetSize #method:typedArrayGetSize#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetSizeMethodInfo        ,
#endif
    valueTypedArrayGetSize                  ,


-- ** typedArrayGetType #method:typedArrayGetType#

#if defined(ENABLE_OVERLOADING)
    ValueTypedArrayGetTypeMethodInfo        ,
#endif
    valueTypedArrayGetType                  ,




 -- * Properties


-- ** context #attr:context#
-- | The t'GI.JavaScriptCore.Objects.Context.Context' in which the value was created.

#if defined(ENABLE_OVERLOADING)
    ValueContextPropertyInfo                ,
#endif
    constructValueContext                   ,
    getValueContext                         ,
#if defined(ENABLE_OVERLOADING)
    valueContext                            ,
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
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Callbacks as GObject.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Flags as JavaScriptCore.Flags
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Callbacks as GObject.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Flags as JavaScriptCore.Flags
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context

#endif

-- | Memory-managed wrapper type.
newtype Value = Value (SP.ManagedPtr Value)
    deriving (Eq)

instance SP.ManagedPtrNewtype Value where
    toManagedPtr (Value p) = p

foreign import ccall "jsc_value_get_type"
    c_jsc_value_get_type :: IO B.Types.GType

instance B.Types.TypedObject Value where
    glibType = c_jsc_value_get_type

instance B.Types.GObject Value

-- | Type class for types which can be safely cast to t'Value', for instance with `toValue`.
class (SP.GObject o, O.IsDescendantOf Value o) => IsValue o
instance (SP.GObject o, O.IsDescendantOf Value o) => IsValue o

instance O.HasParentTypes Value
type instance O.ParentTypes Value = '[GObject.Object.Object]

-- | Cast to t'Value', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toValue :: (MIO.MonadIO m, IsValue o) => o -> m Value
toValue = MIO.liftIO . B.ManagedPtr.unsafeCastTo Value

-- | Convert t'Value' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Value) where
    gvalueGType_ = c_jsc_value_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Value)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Value)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Value ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveValueMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveValueMethod "arrayBufferGetData" o = ValueArrayBufferGetDataMethodInfo
    ResolveValueMethod "arrayBufferGetSize" o = ValueArrayBufferGetSizeMethodInfo
    ResolveValueMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveValueMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveValueMethod "constructorCall" o = ValueConstructorCallMethodInfo
    ResolveValueMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveValueMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveValueMethod "functionCall" o = ValueFunctionCallMethodInfo
    ResolveValueMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveValueMethod "isArray" o = ValueIsArrayMethodInfo
    ResolveValueMethod "isArrayBuffer" o = ValueIsArrayBufferMethodInfo
    ResolveValueMethod "isBoolean" o = ValueIsBooleanMethodInfo
    ResolveValueMethod "isConstructor" o = ValueIsConstructorMethodInfo
    ResolveValueMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveValueMethod "isFunction" o = ValueIsFunctionMethodInfo
    ResolveValueMethod "isNull" o = ValueIsNullMethodInfo
    ResolveValueMethod "isNumber" o = ValueIsNumberMethodInfo
    ResolveValueMethod "isObject" o = ValueIsObjectMethodInfo
    ResolveValueMethod "isString" o = ValueIsStringMethodInfo
    ResolveValueMethod "isTypedArray" o = ValueIsTypedArrayMethodInfo
    ResolveValueMethod "isUndefined" o = ValueIsUndefinedMethodInfo
    ResolveValueMethod "newTypedArrayWithBuffer" o = ValueNewTypedArrayWithBufferMethodInfo
    ResolveValueMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveValueMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveValueMethod "objectDefinePropertyAccessor" o = ValueObjectDefinePropertyAccessorMethodInfo
    ResolveValueMethod "objectDefinePropertyData" o = ValueObjectDefinePropertyDataMethodInfo
    ResolveValueMethod "objectDeleteProperty" o = ValueObjectDeletePropertyMethodInfo
    ResolveValueMethod "objectEnumerateProperties" o = ValueObjectEnumeratePropertiesMethodInfo
    ResolveValueMethod "objectGetProperty" o = ValueObjectGetPropertyMethodInfo
    ResolveValueMethod "objectGetPropertyAtIndex" o = ValueObjectGetPropertyAtIndexMethodInfo
    ResolveValueMethod "objectHasProperty" o = ValueObjectHasPropertyMethodInfo
    ResolveValueMethod "objectInvokeMethod" o = ValueObjectInvokeMethodMethodInfo
    ResolveValueMethod "objectIsInstanceOf" o = ValueObjectIsInstanceOfMethodInfo
    ResolveValueMethod "objectSetProperty" o = ValueObjectSetPropertyMethodInfo
    ResolveValueMethod "objectSetPropertyAtIndex" o = ValueObjectSetPropertyAtIndexMethodInfo
    ResolveValueMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveValueMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveValueMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveValueMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveValueMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveValueMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveValueMethod "toBoolean" o = ValueToBooleanMethodInfo
    ResolveValueMethod "toDouble" o = ValueToDoubleMethodInfo
    ResolveValueMethod "toInt32" o = ValueToInt32MethodInfo
    ResolveValueMethod "toJson" o = ValueToJsonMethodInfo
    ResolveValueMethod "toString" o = ValueToStringMethodInfo
    ResolveValueMethod "toStringAsBytes" o = ValueToStringAsBytesMethodInfo
    ResolveValueMethod "typedArrayGetBuffer" o = ValueTypedArrayGetBufferMethodInfo
    ResolveValueMethod "typedArrayGetData" o = ValueTypedArrayGetDataMethodInfo
    ResolveValueMethod "typedArrayGetLength" o = ValueTypedArrayGetLengthMethodInfo
    ResolveValueMethod "typedArrayGetOffset" o = ValueTypedArrayGetOffsetMethodInfo
    ResolveValueMethod "typedArrayGetSize" o = ValueTypedArrayGetSizeMethodInfo
    ResolveValueMethod "typedArrayGetType" o = ValueTypedArrayGetTypeMethodInfo
    ResolveValueMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveValueMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveValueMethod "getContext" o = ValueGetContextMethodInfo
    ResolveValueMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveValueMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveValueMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveValueMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveValueMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveValueMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveValueMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveValueMethod t Value, O.OverloadedMethod info Value p) => OL.IsLabel t (Value -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveValueMethod t Value, O.OverloadedMethod info Value p, R.HasField t Value p) => R.HasField t Value p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveValueMethod t Value, O.OverloadedMethodInfo info Value) => OL.IsLabel t (O.MethodProxy info Value) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "context"
   -- Type: TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@context@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' value #context
-- @
getValueContext :: (MonadIO m, IsValue o) => o -> m JavaScriptCore.Context.Context
getValueContext obj = MIO.liftIO $ checkUnexpectedNothing "getValueContext" $ B.Properties.getObjectPropertyObject obj "context" JavaScriptCore.Context.Context

-- | Construct a t'GValueConstruct' with valid value for the “@context@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructValueContext :: (IsValue o, MIO.MonadIO m, JavaScriptCore.Context.IsContext a) => a -> m (GValueConstruct o)
constructValueContext val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "context" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ValueContextPropertyInfo
instance AttrInfo ValueContextPropertyInfo where
    type AttrAllowedOps ValueContextPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ValueContextPropertyInfo = IsValue
    type AttrSetTypeConstraint ValueContextPropertyInfo = JavaScriptCore.Context.IsContext
    type AttrTransferTypeConstraint ValueContextPropertyInfo = JavaScriptCore.Context.IsContext
    type AttrTransferType ValueContextPropertyInfo = JavaScriptCore.Context.Context
    type AttrGetType ValueContextPropertyInfo = JavaScriptCore.Context.Context
    type AttrLabel ValueContextPropertyInfo = "context"
    type AttrOrigin ValueContextPropertyInfo = Value
    attrGet = getValueContext
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo JavaScriptCore.Context.Context v
    attrConstruct = constructValueContext
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.context"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#g:attr:context"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Value
type instance O.AttributeList Value = ValueAttributeList
type ValueAttributeList = ('[ '("context", ValueContextPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
valueContext :: AttrLabelProxy "context"
valueContext = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Value = ValueSignalList
type ValueSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Value::new_array_buffer
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
--                 { rawDocText = Just "A #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Pointer to a region of memory."
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
--           { argCName = "size"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Size in bytes of the memory region."
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
--                 { rawDocText = Just "destroy notifier for @user_data."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
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
--                 { rawDocText = Just "user data." , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_new_array_buffer" jsc_value_new_array_buffer :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr () ->                               -- data : TBasicType TPtr
    FCT.CSize ->                            -- size : TBasicType TSize
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO (Ptr Value)

-- | Creates a new @/ArrayBuffer/@ from existing /@data@/ in memory.
-- 
-- The /@data@/ is not copied: while this allows sharing data with JavaScript
-- efficiently, the caller must ensure that the memory region remains valid
-- until the newly created object is released by JSC.
-- 
-- Optionally, a /@destroyNotify@/ callback can be provided, which will be
-- invoked with /@userData@/ as parameter when the @/ArrayBuffer/@ object is
-- released. This is intended to be used for freeing resources related to
-- the memory region which contains the data:
-- 
-- 
-- 	
-- >!<-- language="C" -->
-- >GMappedFile *f = g_mapped_file_new (file_path, TRUE, NULL);
-- >JSCValue *value = jsc_value_new_array_buffer (context,
-- >    g_mapped_file_get_contents (f), g_mapped_file_get_length (f),
-- >    (GDestroyNotify) g_mapped_file_unref, f);
-- 
-- 
-- Note that the /@userData@/ can be the same value as /@data@/:
-- 
-- 
-- 	
-- >!<-- language="C" -->
-- >void *bytes = g_malloc0 (100);
-- >JSCValue *value = jsc_value_new_array_buffer (context, bytes, 100, g_free, bytes);
-- 
-- 
-- /Since: 2.38/
valueNewArrayBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: A t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@data@/: Pointer to a region of memory.
    -> FCT.CSize
    -- ^ /@size@/: Size in bytes of the memory region.
    -> Maybe (GLib.Callbacks.DestroyNotify)
    -- ^ /@destroyNotify@/: destroy notifier for /@userData@/.
    -> m (Maybe Value)
    -- ^ __Returns:__ A t'GI.JavaScriptCore.Objects.Value.Value', or 'P.Nothing' in case of exception.
valueNewArrayBuffer context data_ size destroyNotify = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeDestroyNotify <- case destroyNotify of
        Nothing -> return FP.nullFunPtr
        Just jDestroyNotify -> do
            ptrdestroyNotify <- callocMem :: IO (Ptr (FunPtr GLib.Callbacks.C_DestroyNotify))
            jDestroyNotify' <- GLib.Callbacks.mk_DestroyNotify (GLib.Callbacks.wrap_DestroyNotify (Just ptrdestroyNotify) jDestroyNotify)
            poke ptrdestroyNotify jDestroyNotify'
            return jDestroyNotify'
    let userData = nullPtr
    result <- jsc_value_new_array_buffer context' data_ size maybeDestroyNotify userData
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Value) result'
        return result''
    touchManagedPtr context
    return maybeResult

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_array_from_garray
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
--           { argCName = "array"
--           , argType =
--               TPtrArray
--                 (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
--           , argCType = Just "GPtrArray*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GPtrArray" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_new_array_from_garray" jsc_value_new_array_from_garray :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr (GPtrArray (Ptr Value)) ->          -- array : TPtrArray (TInterface (Name {namespace = "JavaScriptCore", name = "Value"}))
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' referencing an array with the items from /@array@/. If /@array@/
-- is 'P.Nothing' or empty a new empty array will be created. Elements of /@array@/ should be
-- pointers to a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewArrayFromGarray ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Maybe ([Value])
    -- ^ /@array@/: a t'GI.GLib.Structs.PtrArray.PtrArray'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewArrayFromGarray context array = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeArray <- case array of
        Nothing -> return FP.nullPtr
        Just jArray -> do
            jArray' <- mapM unsafeManagedPtrCastPtr jArray
            jArray'' <- packGPtrArray jArray'
            return jArray''
    result <- jsc_value_new_array_from_garray context' maybeArray
    checkUnexpectedReturnNULL "valueNewArrayFromGarray" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    whenJust array (mapM_ touchManagedPtr)
    unrefPtrArray maybeArray
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_array_from_strv
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
--           { argCName = "strv"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const char* const*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a %NULL-terminated array of strings"
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

foreign import ccall "jsc_value_new_array_from_strv" jsc_value_new_array_from_strv :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr CString ->                          -- strv : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' referencing an array of strings with the items from /@strv@/. If /@array@/
-- is 'P.Nothing' or empty a new empty array will be created.
valueNewArrayFromStrv ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> [T.Text]
    -- ^ /@strv@/: a 'P.Nothing'-terminated array of strings
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewArrayFromStrv context strv = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    strv' <- packZeroTerminatedUTF8CArray strv
    result <- jsc_value_new_array_from_strv context' strv'
    checkUnexpectedReturnNULL "valueNewArrayFromStrv" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    mapZeroTerminatedCArray freeMem strv'
    freeMem strv'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_boolean
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
--           { argCName = "value"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #gboolean" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_new_boolean" jsc_value_new_boolean :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CInt ->                                 -- value : TBasicType TBoolean
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' from /@value@/
valueNewBoolean ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Bool
    -- ^ /@value@/: a t'P.Bool'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewBoolean context value = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let value' = (P.fromIntegral . P.fromEnum) value
    result <- jsc_value_new_boolean context' value'
    checkUnexpectedReturnNULL "valueNewBoolean" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_from_json
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
--           { argCName = "json"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the JSON string to be parsed"
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

foreign import ccall "jsc_value_new_from_json" jsc_value_new_from_json :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- json : TBasicType TUTF8
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' referencing a new value created by parsing /@json@/.
-- 
-- /Since: 2.28/
valueNewFromJson ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> T.Text
    -- ^ /@json@/: the JSON string to be parsed
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewFromJson context json = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    json' <- textToCString json
    result <- jsc_value_new_from_json context' json'
    checkUnexpectedReturnNULL "valueNewFromJson" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    freeMem json'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_function_variadic
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the function name or %NULL"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCallback." , sinceVersion = Nothing }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
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
--                 { rawDocText = Just "user data to pass to @callback."
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
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GType of the function return value, or %G_TYPE_NONE if the function is void."
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

foreign import ccall "jsc_value_new_function_variadic" jsc_value_new_function_variadic :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    IO (Ptr Value)

-- | Create a function in /@context@/. If /@name@/ is 'P.Nothing' an anonymous function will be created.
-- When the function is called by JavaScript or @/jsc_value_function_call()/@, /@callback@/ is called
-- receiving an t'GI.GLib.Structs.PtrArray.PtrArray' of t'GI.JavaScriptCore.Objects.Value.Value's with the arguments and then /@userData@/ as last parameter.
-- When the function is cleared in /@context@/, /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- Note that the value returned by /@callback@/ must be fully transferred. In case of boxed types, you could use
-- @/G_TYPE_POINTER/@ instead of the actual boxed t'GType' to ensure that the instance owned by t'GI.JavaScriptCore.Objects.Class.Class' is used.
-- If you really want to return a new copy of the boxed type, use @/JSC_TYPE_VALUE/@ and return a t'GI.JavaScriptCore.Objects.Value.Value' created
-- with 'GI.JavaScriptCore.Objects.Value.valueNewObject' that receives the copy as instance parameter.
valueNewFunctionVariadic ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Maybe (T.Text)
    -- ^ /@name@/: the function name or 'P.Nothing'
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback'.
    -> GType
    -- ^ /@returnType@/: the t'GType' of the function return value, or @/G_TYPE_NONE/@ if the function is void.
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewFunctionVariadic context name callback returnType = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeName <- case name of
        Nothing -> return FP.nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    result <- jsc_value_new_function_variadic context' maybeName callback' userData destroyNotify returnType'
    checkUnexpectedReturnNULL "valueNewFunctionVariadic" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    freeMem maybeName
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_function
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the function name or %NULL"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCallback." , sinceVersion = Nothing }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
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
--                 { rawDocText = Just "user data to pass to @callback."
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
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GType of the function return value, or %G_TYPE_NONE if the function is void."
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
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of parameters"
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
--           { argCName = "parameter_types"
--           , argType = TCArray False (-1) 6 (TBasicType TGType)
--           , argCType = Just "GType*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a list of #GType<!-- -->s, one for each parameter, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of parameters"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_new_functionv" jsc_value_new_functionv :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr CGType ->                           -- parameter_types : TCArray False (-1) 6 (TBasicType TGType)
    IO (Ptr Value)

-- | Create a function in /@context@/. If /@name@/ is 'P.Nothing' an anonymous function will be created.
-- When the function is called by JavaScript or @/jsc_value_function_call()/@, /@callback@/ is called
-- receiving the function parameters and then /@userData@/ as last parameter. When the function is
-- cleared in /@context@/, /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- Note that the value returned by /@callback@/ must be fully transferred. In case of boxed types, you could use
-- @/G_TYPE_POINTER/@ instead of the actual boxed t'GType' to ensure that the instance owned by t'GI.JavaScriptCore.Objects.Class.Class' is used.
-- If you really want to return a new copy of the boxed type, use @/JSC_TYPE_VALUE/@ and return a t'GI.JavaScriptCore.Objects.Value.Value' created
-- with 'GI.JavaScriptCore.Objects.Value.valueNewObject' that receives the copy as instance parameter.
valueNewFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Maybe (T.Text)
    -- ^ /@name@/: the function name or 'P.Nothing'
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback'.
    -> GType
    -- ^ /@returnType@/: the t'GType' of the function return value, or @/G_TYPE_NONE/@ if the function is void.
    -> Maybe ([GType])
    -- ^ /@parameterTypes@/: a list of t'GType's, one for each parameter, or 'P.Nothing'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewFunction context name callback returnType parameterTypes = liftIO $ do
    let nParameters = case parameterTypes of
            Nothing -> 0
            Just jParameterTypes -> fromIntegral $ P.length jParameterTypes
    context' <- unsafeManagedPtrCastPtr context
    maybeName <- case name of
        Nothing -> return FP.nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    maybeParameterTypes <- case parameterTypes of
        Nothing -> return FP.nullPtr
        Just jParameterTypes -> do
            jParameterTypes' <- (packMapStorableArray gtypeToCGType) jParameterTypes
            return jParameterTypes'
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    result <- jsc_value_new_functionv context' maybeName callback' userData destroyNotify returnType' nParameters maybeParameterTypes
    checkUnexpectedReturnNULL "valueNewFunction" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    freeMem maybeName
    freeMem maybeParameterTypes
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_null
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_new_null" jsc_value_new_null :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' referencing \<function>null\<\/function> in /@context@/.
valueNewNull ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewNull context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- jsc_value_new_null context'
    checkUnexpectedReturnNULL "valueNewNull" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_number
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
--           { argCName = "number"
--           , argType = TBasicType TDouble
--           , argCType = Just "double"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a number" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_new_number" jsc_value_new_number :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CDouble ->                              -- number : TBasicType TDouble
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' from /@number@/.
valueNewNumber ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Double
    -- ^ /@number@/: a number
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewNumber context number = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let number' = realToFrac number
    result <- jsc_value_new_number context' number'
    checkUnexpectedReturnNULL "valueNewNumber" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_object
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
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an object instance or %NULL"
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
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #JSCClass of @instance"
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

foreign import ccall "jsc_value_new_object" jsc_value_new_object :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr () ->                               -- instance : TBasicType TPtr
    Ptr JavaScriptCore.Class.Class ->       -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' from /@instance@/. If /@instance@/ is 'P.Nothing' a new empty object is created.
-- When /@instance@/ is provided, /@jscClass@/ must be provided too. /@jscClass@/ takes ownership of
-- /@instance@/ that will be freed by the t'GI.GLib.Callbacks.DestroyNotify' passed to 'GI.JavaScriptCore.Objects.Context.contextRegisterClass'.
valueNewObject ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a, JavaScriptCore.Class.IsClass b) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: an object instance or 'P.Nothing'
    -> Maybe (b)
    -- ^ /@jscClass@/: the t'GI.JavaScriptCore.Objects.Class.Class' of /@instance@/
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewObject context instance_ jscClass = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeJscClass <- case jscClass of
        Nothing -> return FP.nullPtr
        Just jJscClass -> do
            jJscClass' <- unsafeManagedPtrCastPtr jJscClass
            return jJscClass'
    result <- jsc_value_new_object context' instance_ maybeJscClass
    checkUnexpectedReturnNULL "valueNewObject" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    whenJust jscClass touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_promise
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
--           { argCName = "executor"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Executor" }
--           , argCType = Just "JSCExecutor"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an initialization callback"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeCall
--           , argClosure = 2
--           , argDestroy = -1
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
--                 { rawDocText = Just "user data passed in @executor"
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

foreign import ccall "jsc_value_new_promise" jsc_value_new_promise :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    FunPtr JavaScriptCore.Callbacks.C_Executor -> -- executor : TInterface (Name {namespace = "JavaScriptCore", name = "Executor"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO (Ptr Value)

-- | Creates a new Promise. /@executor@/ will be invoked during promise initialization
-- and it receives the /@resolve@/ and /@reject@/ objects than can be called to resolve
-- or reject the promise. It is called like a JavaScript function, so exceptions raised
-- during the executor invocation will not be propagated to the context, but
-- handled by the promise causing a rejection.
-- 
-- /Since: 2.48/
valueNewPromise ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> JavaScriptCore.Callbacks.Executor
    -- ^ /@executor@/: an initialization callback
    -> m Value
    -- ^ __Returns:__ a deferred promise object
valueNewPromise context executor = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    executor' <- JavaScriptCore.Callbacks.mk_Executor (JavaScriptCore.Callbacks.wrap_Executor Nothing (JavaScriptCore.Callbacks.drop_closures_Executor executor))
    let userData = nullPtr
    result <- jsc_value_new_promise context' executor' userData
    checkUnexpectedReturnNULL "valueNewPromise" result
    result' <- (wrapObject Value) result
    safeFreeFunPtr $ castFunPtrToPtr executor'
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_string
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
--           { argCName = "string"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a null-terminated string"
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

foreign import ccall "jsc_value_new_string" jsc_value_new_string :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CString ->                              -- string : TBasicType TUTF8
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' from /@string@/. If you need to create a t'GI.JavaScriptCore.Objects.Value.Value' from a
-- string containing null characters, use 'GI.JavaScriptCore.Objects.Value.valueNewStringFromBytes' instead.
valueNewString ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Maybe (T.Text)
    -- ^ /@string@/: a null-terminated string
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewString context string = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeString <- case string of
        Nothing -> return FP.nullPtr
        Just jString -> do
            jString' <- textToCString jString
            return jString'
    result <- jsc_value_new_string context' maybeString
    checkUnexpectedReturnNULL "valueNewString" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    freeMem maybeString
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_string_from_bytes
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
--           { argCName = "bytes"
--           , argType = TInterface Name { namespace = "GLib" , name = "Bytes" }
--           , argCType = Just "GBytes*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GBytes" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_new_string_from_bytes" jsc_value_new_string_from_bytes :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    Ptr GLib.Bytes.Bytes ->                 -- bytes : TInterface (Name {namespace = "GLib", name = "Bytes"})
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' from /@bytes@/.
valueNewStringFromBytes ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Maybe (GLib.Bytes.Bytes)
    -- ^ /@bytes@/: a t'GI.GLib.Structs.Bytes.Bytes'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewStringFromBytes context bytes = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    maybeBytes <- case bytes of
        Nothing -> return FP.nullPtr
        Just jBytes -> do
            jBytes' <- unsafeManagedPtrGetPtr jBytes
            return jBytes'
    result <- jsc_value_new_string_from_bytes context' maybeBytes
    checkUnexpectedReturnNULL "valueNewStringFromBytes" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    whenJust bytes touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_typed_array
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
--           { argCName = "type"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "TypedArrayType" }
--           , argCType = Just "JSCTypedArrayType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the type of array elements"
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
--           , argType = TBasicType TSize
--           , argCType = Just "gsize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of elements in the array"
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

foreign import ccall "jsc_value_new_typed_array" jsc_value_new_typed_array :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    CUInt ->                                -- type : TInterface (Name {namespace = "JavaScriptCore", name = "TypedArrayType"})
    FCT.CSize ->                            -- length : TBasicType TSize
    IO (Ptr Value)

-- | Create a new typed array containing a given amount of elements.
-- 
-- Create a t'GI.JavaScriptCore.Objects.Value.Value' referencing a new typed array with space for /@length@/
-- elements of a given /@type@/. As all typed arrays must have an associated
-- @ArrayBuffer@, a new one of suitable size will be allocated to store
-- the elements, which will be initialized to zero.
-- 
-- The /@type@/ must *not* be 'GI.JavaScriptCore.Enums.TypedArrayTypeNone'.
-- 
-- /Since: 2.38/
valueNewTypedArray ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> JavaScriptCore.Enums.TypedArrayType
    -- ^ /@type@/: the type of array elements
    -> FCT.CSize
    -- ^ /@length@/: number of elements in the array
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'
valueNewTypedArray context type_ length_ = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let type_' = (fromIntegral . fromEnum) type_
    result <- jsc_value_new_typed_array context' type_' length_
    checkUnexpectedReturnNULL "valueNewTypedArray" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::new_undefined
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_new_undefined" jsc_value_new_undefined :: 
    Ptr JavaScriptCore.Context.Context ->   -- context : TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
    IO (Ptr Value)

-- | Create a new t'GI.JavaScriptCore.Objects.Value.Value' referencing \<function>undefined\<\/function> in /@context@/.
valueNewUndefined ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a) =>
    a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'.
valueNewUndefined context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- jsc_value_new_undefined context'
    checkUnexpectedReturnNULL "valueNewUndefined" result
    result' <- (wrapObject Value) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Value::array_buffer_get_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #JSCValue" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location where to store the size of the memory region."
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
-- Lengths: [ Arg
--              { argCName = "size"
--              , argType = TBasicType TSize
--              , argCType = Just "gsize*"
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just "location where to store the size of the memory region."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt8))
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_array_buffer_get_data" jsc_value_array_buffer_get_data :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Ptr FCT.CSize ->                        -- size : TBasicType TSize
    IO (Ptr Word8)

-- | Gets a pointer to memory that contains the array buffer data.
-- 
-- Obtains a pointer to the memory region that holds the contents of the
-- @/ArrayBuffer/@; modifications done to the data will be visible to JavaScript
-- code. If /@size@/ is not 'P.Nothing', the size in bytes of the memory region
-- will also be stored in the pointed location.
-- 
-- Note that the pointer returned by this function is not guaranteed to remain
-- the same after calls to other JSC API functions. If you plan to access the
-- data of the @/ArrayBuffer/@ later, you can keep a reference to the /@value@/ and
-- obtain the data pointer at a later point. Keep in mind that if JavaScript
-- code has a chance to run, for example due to main loop events that result
-- in JSC being called, the contents of the memory region might be modified in
-- the meantime. Consider taking a copy of the data and using the copy instead
-- in asynchronous code.
-- 
-- /Since: 2.38/
valueArrayBufferGetData ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: A t'GI.JavaScriptCore.Objects.Value.Value'
    -> m ByteString
    -- ^ __Returns:__ 
    --   pointer to memory.
valueArrayBufferGetData value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    size <- allocMem :: IO (Ptr FCT.CSize)
    result <- jsc_value_array_buffer_get_data value' size
    size' <- peek size
    checkUnexpectedReturnNULL "valueArrayBufferGetData" result
    result' <- (unpackByteStringWithLength size') result
    touchManagedPtr value
    freeMem size
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueArrayBufferGetDataMethodInfo
instance (signature ~ (m ByteString), MonadIO m, IsValue a) => O.OverloadedMethod ValueArrayBufferGetDataMethodInfo a signature where
    overloadedMethod = valueArrayBufferGetData

instance O.OverloadedMethodInfo ValueArrayBufferGetDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueArrayBufferGetData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueArrayBufferGetData"
        })


#endif

-- method Value::array_buffer_get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #JSCValue" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TSize)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_array_buffer_get_size" jsc_value_array_buffer_get_size :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO FCT.CSize

-- | Gets the size in bytes of the array buffer.
-- 
-- Obtains the size in bytes of the memory region that holds the contents of
-- an @/ArrayBuffer/@.
-- 
-- /Since: 2.38/
valueArrayBufferGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: A t'GI.JavaScriptCore.Objects.Value.Value'
    -> m FCT.CSize
    -- ^ __Returns:__ size, in bytes.
valueArrayBufferGetSize value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_array_buffer_get_size value'
    touchManagedPtr value
    return result

#if defined(ENABLE_OVERLOADING)
data ValueArrayBufferGetSizeMethodInfo
instance (signature ~ (m FCT.CSize), MonadIO m, IsValue a) => O.OverloadedMethod ValueArrayBufferGetSizeMethodInfo a signature where
    overloadedMethod = valueArrayBufferGetSize

instance O.OverloadedMethodInfo ValueArrayBufferGetSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueArrayBufferGetSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueArrayBufferGetSize"
        })


#endif

-- method Value::constructor_call
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of parameters"
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
--           { argCName = "parameters"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 1
--                 (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
--           , argCType = Just "JSCValue**"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #JSCValue<!-- -->s to pass as parameters to the constructor, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of parameters"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_constructor_callv" jsc_value_constructor_callv :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr (Ptr Value) ->                      -- parameters : TCArray False (-1) 1 (TInterface (Name {namespace = "JavaScriptCore", name = "Value"}))
    IO (Ptr Value)

-- | Invoke \<function>new\<\/function> with constructor referenced by /@value@/. If /@nParameters@/
-- is 0 no parameters will be passed to the constructor.
valueConstructorCall ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> Maybe ([Value])
    -- ^ /@parameters@/: the t'GI.JavaScriptCore.Objects.Value.Value's to pass as parameters to the constructor, or 'P.Nothing'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' referencing the newly created object instance.
valueConstructorCall value parameters = liftIO $ do
    let nParameters = case parameters of
            Nothing -> 0
            Just jParameters -> fromIntegral $ P.length jParameters
    value' <- unsafeManagedPtrCastPtr value
    maybeParameters <- case parameters of
        Nothing -> return FP.nullPtr
        Just jParameters -> do
            jParameters' <- mapM unsafeManagedPtrCastPtr jParameters
            jParameters'' <- packPtrArray jParameters'
            return jParameters''
    result <- jsc_value_constructor_callv value' nParameters maybeParameters
    checkUnexpectedReturnNULL "valueConstructorCall" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    whenJust parameters (mapM_ touchManagedPtr)
    freeMem maybeParameters
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueConstructorCallMethodInfo
instance (signature ~ (Maybe ([Value]) -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueConstructorCallMethodInfo a signature where
    overloadedMethod = valueConstructorCall

instance O.OverloadedMethodInfo ValueConstructorCallMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueConstructorCall",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueConstructorCall"
        })


#endif

-- method Value::function_call
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of parameters"
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
--           { argCName = "parameters"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 1
--                 (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
--           , argCType = Just "JSCValue**"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #JSCValue<!-- -->s to pass as parameters to the function, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of parameters"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_function_callv" jsc_value_function_callv :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr (Ptr Value) ->                      -- parameters : TCArray False (-1) 1 (TInterface (Name {namespace = "JavaScriptCore", name = "Value"}))
    IO (Ptr Value)

-- | Call function referenced by /@value@/, passing the given /@parameters@/. If /@nParameters@/
-- is 0 no parameters will be passed to the function.
-- 
-- This function always returns a t'GI.JavaScriptCore.Objects.Value.Value', in case of void functions a t'GI.JavaScriptCore.Objects.Value.Value' referencing
-- \<function>undefined\<\/function> is returned
valueFunctionCall ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> Maybe ([Value])
    -- ^ /@parameters@/: the t'GI.JavaScriptCore.Objects.Value.Value's to pass as parameters to the function, or 'P.Nothing'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' with the return value of the function.
valueFunctionCall value parameters = liftIO $ do
    let nParameters = case parameters of
            Nothing -> 0
            Just jParameters -> fromIntegral $ P.length jParameters
    value' <- unsafeManagedPtrCastPtr value
    maybeParameters <- case parameters of
        Nothing -> return FP.nullPtr
        Just jParameters -> do
            jParameters' <- mapM unsafeManagedPtrCastPtr jParameters
            jParameters'' <- packPtrArray jParameters'
            return jParameters''
    result <- jsc_value_function_callv value' nParameters maybeParameters
    checkUnexpectedReturnNULL "valueFunctionCall" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    whenJust parameters (mapM_ touchManagedPtr)
    freeMem maybeParameters
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueFunctionCallMethodInfo
instance (signature ~ (Maybe ([Value]) -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueFunctionCallMethodInfo a signature where
    overloadedMethod = valueFunctionCall

instance O.OverloadedMethodInfo ValueFunctionCallMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueFunctionCall",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueFunctionCall"
        })


#endif

-- method Value::get_context
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "Context" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_get_context" jsc_value_get_context :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr JavaScriptCore.Context.Context)

-- | Get the t'GI.JavaScriptCore.Objects.Context.Context' in which /@value@/ was created.
valueGetContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m JavaScriptCore.Context.Context
    -- ^ __Returns:__ the t'GI.JavaScriptCore.Objects.Value.Value' context.
valueGetContext value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_get_context value'
    checkUnexpectedReturnNULL "valueGetContext" result
    result' <- (newObject JavaScriptCore.Context.Context) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueGetContextMethodInfo
instance (signature ~ (m JavaScriptCore.Context.Context), MonadIO m, IsValue a) => O.OverloadedMethod ValueGetContextMethodInfo a signature where
    overloadedMethod = valueGetContext

instance O.OverloadedMethodInfo ValueGetContextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueGetContext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueGetContext"
        })


#endif

-- method Value::is_array
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_array" jsc_value_is_array :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is an array.
valueIsArray ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is an array.
valueIsArray value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_array value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsArrayMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsArrayMethodInfo a signature where
    overloadedMethod = valueIsArray

instance O.OverloadedMethodInfo ValueIsArrayMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsArray",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsArray"
        })


#endif

-- method Value::is_array_buffer
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #JSCValue." , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_is_array_buffer" jsc_value_is_array_buffer :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Check whether the /@value@/ is an @/ArrayBuffer/@.
-- 
-- /Since: 2.38/
valueIsArrayBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: A t'GI.JavaScriptCore.Objects.Value.Value'.
    -> m Bool
    -- ^ __Returns:__ whether the value is an @/ArrayBuffer/@
valueIsArrayBuffer value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_array_buffer value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsArrayBufferMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsArrayBufferMethodInfo a signature where
    overloadedMethod = valueIsArrayBuffer

instance O.OverloadedMethodInfo ValueIsArrayBufferMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsArrayBuffer",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsArrayBuffer"
        })


#endif

-- method Value::is_boolean
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_boolean" jsc_value_is_boolean :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is a boolean.
valueIsBoolean ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is a boolean.
valueIsBoolean value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_boolean value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsBooleanMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsBooleanMethodInfo a signature where
    overloadedMethod = valueIsBoolean

instance O.OverloadedMethodInfo ValueIsBooleanMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsBoolean",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsBoolean"
        })


#endif

-- method Value::is_constructor
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_constructor" jsc_value_is_constructor :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is a constructor.
valueIsConstructor ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is a constructor.
valueIsConstructor value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_constructor value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsConstructorMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsConstructorMethodInfo a signature where
    overloadedMethod = valueIsConstructor

instance O.OverloadedMethodInfo ValueIsConstructorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsConstructor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsConstructor"
        })


#endif

-- method Value::is_function
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_function" jsc_value_is_function :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is a function
valueIsFunction ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is a function.
valueIsFunction value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_function value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsFunctionMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsFunctionMethodInfo a signature where
    overloadedMethod = valueIsFunction

instance O.OverloadedMethodInfo ValueIsFunctionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsFunction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsFunction"
        })


#endif

-- method Value::is_null
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_null" jsc_value_is_null :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is \<function>null\<\/function>.
valueIsNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is null.
valueIsNull value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_null value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsNullMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsNullMethodInfo a signature where
    overloadedMethod = valueIsNull

instance O.OverloadedMethodInfo ValueIsNullMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsNull",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsNull"
        })


#endif

-- method Value::is_number
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_number" jsc_value_is_number :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is a number.
valueIsNumber ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is a number.
valueIsNumber value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_number value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsNumberMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsNumberMethodInfo a signature where
    overloadedMethod = valueIsNumber

instance O.OverloadedMethodInfo ValueIsNumberMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsNumber",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsNumber"
        })


#endif

-- method Value::is_object
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_object" jsc_value_is_object :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is an object.
valueIsObject ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is an object.
valueIsObject value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_object value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsObjectMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsObjectMethodInfo a signature where
    overloadedMethod = valueIsObject

instance O.OverloadedMethodInfo ValueIsObjectMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsObject",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsObject"
        })


#endif

-- method Value::is_string
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_string" jsc_value_is_string :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is a string
valueIsString ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is a string
valueIsString value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_string value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsStringMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsStringMethodInfo a signature where
    overloadedMethod = valueIsString

instance O.OverloadedMethodInfo ValueIsStringMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsString",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsString"
        })


#endif

-- method Value::is_typed_array
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_typed_array" jsc_value_is_typed_array :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Determines whether a value is a typed array.
-- 
-- /Since: 2.38/
valueIsTypedArray ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ Whether /@value@/ is a typed array.
valueIsTypedArray value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_typed_array value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsTypedArrayMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsTypedArrayMethodInfo a signature where
    overloadedMethod = valueIsTypedArray

instance O.OverloadedMethodInfo ValueIsTypedArrayMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsTypedArray",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsTypedArray"
        })


#endif

-- method Value::is_undefined
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_is_undefined" jsc_value_is_undefined :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Get whether the value referenced by /@value@/ is \<function>undefined\<\/function>.
valueIsUndefined ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ whether the value is undefined.
valueIsUndefined value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_is_undefined value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueIsUndefinedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueIsUndefinedMethodInfo a signature where
    overloadedMethod = valueIsUndefined

instance O.OverloadedMethodInfo ValueIsUndefinedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueIsUndefined",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueIsUndefined"
        })


#endif

-- method Value::new_typed_array_with_buffer
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array_buffer"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCValue." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "TypedArrayType" }
--           , argCType = Just "JSCTypedArrayType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "type of array elements."
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
--           { argCName = "offset"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "offset, in bytes." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "number of array elements, or `-1`."
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

foreign import ccall "jsc_value_new_typed_array_with_buffer" jsc_value_new_typed_array_with_buffer :: 
    Ptr Value ->                            -- array_buffer : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CUInt ->                                -- type : TInterface (Name {namespace = "JavaScriptCore", name = "TypedArrayType"})
    FCT.CSize ->                            -- offset : TBasicType TSize
    DI.Int64 ->                             -- length : TBasicType TSSize
    IO (Ptr Value)

-- | Create a new typed array value with elements from an array buffer.
-- 
-- Create a t'GI.JavaScriptCore.Objects.Value.Value' referencing a new typed array value containing
-- elements of the given /@type@/, where the elements are stored at the memory
-- region represented by the /@arrayBuffer@/.
-- 
-- The /@type@/ must *not* be 'GI.JavaScriptCore.Enums.TypedArrayTypeNone'.
-- 
-- The /@offset@/ and /@length@/ parameters can be used to indicate which part of
-- the array buffer can be accessed through the typed array. If both are
-- omitted (passing zero as /@offset@/, and @-1@ as /@length@/), the whole
-- /@arrayBuffer@/ is exposed through the typed array. Omitting the /@length@/
-- with a non-zero /@offset@/ will expose the remainder of the /@arrayBuffer@/
-- starting at the indicated offset.
-- 
-- /Since: 2.38/
valueNewTypedArrayWithBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@arrayBuffer@/: a t'GI.JavaScriptCore.Objects.Value.Value'.
    -> JavaScriptCore.Enums.TypedArrayType
    -- ^ /@type@/: type of array elements.
    -> FCT.CSize
    -- ^ /@offset@/: offset, in bytes.
    -> DI.Int64
    -- ^ /@length@/: number of array elements, or @-1@.
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value'
valueNewTypedArrayWithBuffer arrayBuffer type_ offset length_ = liftIO $ do
    arrayBuffer' <- unsafeManagedPtrCastPtr arrayBuffer
    let type_' = (fromIntegral . fromEnum) type_
    result <- jsc_value_new_typed_array_with_buffer arrayBuffer' type_' offset length_
    checkUnexpectedReturnNULL "valueNewTypedArrayWithBuffer" result
    result' <- (wrapObject Value) result
    touchManagedPtr arrayBuffer
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueNewTypedArrayWithBufferMethodInfo
instance (signature ~ (JavaScriptCore.Enums.TypedArrayType -> FCT.CSize -> DI.Int64 -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueNewTypedArrayWithBufferMethodInfo a signature where
    overloadedMethod = valueNewTypedArrayWithBuffer

instance O.OverloadedMethodInfo ValueNewTypedArrayWithBufferMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueNewTypedArrayWithBuffer",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueNewTypedArrayWithBuffer"
        })


#endif

-- XXX Could not generate method Value::object_define_property_accessor
{-  Not implemented: Closure for multiple callbacks unsupportedArg
      { argCName = "setter"
      , argType =
          TInterface Name { namespace = "GObject" , name = "Callback" }
      , argCType = Just "GCallback"
      , direction = DirectionIn
      , mayBeNull = True
      , argDoc =
          Documentation
            { rawDocText =
                Just "a #GCallback to be called to set the property value"
            , sinceVersion = Nothing
            }
      , argScope = ScopeTypeNotified
      , argClosure = 6
      , argDestroy = 7
      , argCallerAllocates = False
      , argCallbackUserData = False
      , transfer = TransferNothing
      }
    Callable
      { returnType = Nothing
      , returnMayBeNull = False
      , returnTransfer = TransferNothing
      , returnDocumentation =
          Documentation { rawDocText = Nothing , sinceVersion = Nothing }
      , args =
          [ Arg
              { argCName = "value"
              , argType =
                  TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
              , argCType = Just "JSCValue*"
              , direction = DirectionIn
              , mayBeNull = False
              , argDoc =
                  Documentation
                    { rawDocText = Just "a #JSCValue" , sinceVersion = Nothing }
              , argScope = ScopeTypeInvalid
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "property_name"
              , argType = TBasicType TUTF8
              , argCType = Just "const char*"
              , direction = DirectionIn
              , mayBeNull = False
              , argDoc =
                  Documentation
                    { rawDocText = Just "the name of the property to define"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeInvalid
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "flags"
              , argType =
                  TInterface
                    Name { namespace = "JavaScriptCore" , name = "ValuePropertyFlags" }
              , argCType = Just "JSCValuePropertyFlags"
              , direction = DirectionIn
              , mayBeNull = False
              , argDoc =
                  Documentation
                    { rawDocText = Just "#JSCValuePropertyFlags"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeInvalid
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "property_type"
              , argType = TBasicType TGType
              , argCType = Just "GType"
              , direction = DirectionIn
              , mayBeNull = False
              , argDoc =
                  Documentation
                    { rawDocText = Just "the #GType of the property"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeInvalid
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "getter"
              , argType =
                  TInterface Name { namespace = "GObject" , name = "Callback" }
              , argCType = Just "GCallback"
              , direction = DirectionIn
              , mayBeNull = True
              , argDoc =
                  Documentation
                    { rawDocText =
                        Just "a #GCallback to be called to get the property value"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeAsync
              , argClosure = 6
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "setter"
              , argType =
                  TInterface Name { namespace = "GObject" , name = "Callback" }
              , argCType = Just "GCallback"
              , direction = DirectionIn
              , mayBeNull = True
              , argDoc =
                  Documentation
                    { rawDocText =
                        Just "a #GCallback to be called to set the property value"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeNotified
              , argClosure = 6
              , argDestroy = 7
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "user_data"
              , argType = TBasicType TPtr
              , argCType = Just "gpointer"
              , direction = DirectionIn
              , mayBeNull = True
              , argDoc =
                  Documentation
                    { rawDocText = Just "user data to pass to @getter and @setter"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeInvalid
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          , Arg
              { argCName = "destroy_notify"
              , argType =
                  TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
              , argCType = Just "GDestroyNotify"
              , direction = DirectionIn
              , mayBeNull = True
              , argDoc =
                  Documentation
                    { rawDocText = Just "destroy notifier for @user_data"
                    , sinceVersion = Nothing
                    }
              , argScope = ScopeTypeAsync
              , argClosure = -1
              , argDestroy = -1
              , argCallerAllocates = False
              , argCallbackUserData = False
              , transfer = TransferNothing
              }
          ]
      , skipReturn = False
      , callableThrows = False
      , callableDeprecated = Nothing
      , callableDocumentation =
          Documentation
            { rawDocText =
                Just
                  "Define or modify a property with @property_name in object referenced by @value. When the\nproperty value is read or set, @getter and @setter callbacks will be called.\nWhen the property is cleared in the #JSCClass context, @destroy_notify is called with\n@user_data as parameter. This is equivalent to JavaScript <function>Object.defineProperty()</function>\nwhen used with an accessor descriptor.\n\nNote that the value returned by @getter must be fully transferred. In case of boxed types, you could use\n%G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.\nIf you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created\nwith jsc_value_new_object() that receives the copy as instance parameter.\n\nNote that @getter and @setter are called as functions and not methods, so they don't receive an instance as\nfirst parameter. Use jsc_class_add_property() if you want to add property accessor invoked as a method."
            , sinceVersion = Nothing
            }
      , callableResolvable = Just True
      }
-}
#if defined(ENABLE_OVERLOADING)
-- XXX: Dummy instance, since code generation failed.
-- Please file a bug at http://github.com/haskell-gi/haskell-gi.
data ValueObjectDefinePropertyAccessorMethodInfo
instance (p ~ (), o ~ O.UnsupportedMethodError "objectDefinePropertyAccessor" Value) => O.OverloadedMethod ValueObjectDefinePropertyAccessorMethodInfo o p where
    overloadedMethod = undefined

instance (o ~ O.UnsupportedMethodError "objectDefinePropertyAccessor" Value) => O.OverloadedMethodInfo ValueObjectDefinePropertyAccessorMethodInfo o where
    overloadedMethodInfo = undefined

#endif

-- method Value::object_define_property_data
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "property_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the property to define"
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
--           { argCName = "flags"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "ValuePropertyFlags" }
--           , argCType = Just "JSCValuePropertyFlags"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#JSCValuePropertyFlags"
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
--           { argCName = "property_value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the default property value"
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

foreign import ccall "jsc_value_object_define_property_data" jsc_value_object_define_property_data :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- property_name : TBasicType TUTF8
    CUInt ->                                -- flags : TInterface (Name {namespace = "JavaScriptCore", name = "ValuePropertyFlags"})
    Ptr Value ->                            -- property_value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO ()

-- | Define or modify a property with /@propertyName@/ in object referenced by /@value@/. This is equivalent to
-- JavaScript \<function>Object.@/defineProperty()/@\<\/function> when used with a data descriptor.
valueObjectDefinePropertyData ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a, IsValue b) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@propertyName@/: the name of the property to define
    -> [JavaScriptCore.Flags.ValuePropertyFlags]
    -- ^ /@flags@/: t'GI.JavaScriptCore.Flags.ValuePropertyFlags'
    -> Maybe (b)
    -- ^ /@propertyValue@/: the default property value
    -> m ()
valueObjectDefinePropertyData value propertyName flags propertyValue = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    propertyName' <- textToCString propertyName
    let flags' = gflagsToWord flags
    maybePropertyValue <- case propertyValue of
        Nothing -> return FP.nullPtr
        Just jPropertyValue -> do
            jPropertyValue' <- unsafeManagedPtrCastPtr jPropertyValue
            return jPropertyValue'
    jsc_value_object_define_property_data value' propertyName' flags' maybePropertyValue
    touchManagedPtr value
    whenJust propertyValue touchManagedPtr
    freeMem propertyName'
    return ()

#if defined(ENABLE_OVERLOADING)
data ValueObjectDefinePropertyDataMethodInfo
instance (signature ~ (T.Text -> [JavaScriptCore.Flags.ValuePropertyFlags] -> Maybe (b) -> m ()), MonadIO m, IsValue a, IsValue b) => O.OverloadedMethod ValueObjectDefinePropertyDataMethodInfo a signature where
    overloadedMethod = valueObjectDefinePropertyData

instance O.OverloadedMethodInfo ValueObjectDefinePropertyDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectDefinePropertyData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectDefinePropertyData"
        })


#endif

-- method Value::object_delete_property
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property name" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_object_delete_property" jsc_value_object_delete_property :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    IO CInt

-- | Try to delete property with /@name@/ from /@value@/. This function will return 'P.False' if
-- the property was defined without 'GI.JavaScriptCore.Flags.ValuePropertyFlagsConfigurable' flag.
valueObjectDeleteProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: the property name
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the property was deleted, or 'P.False' otherwise.
valueObjectDeleteProperty value name = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    result <- jsc_value_object_delete_property value' name'
    let result' = (/= 0) result
    touchManagedPtr value
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectDeletePropertyMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectDeletePropertyMethodInfo a signature where
    overloadedMethod = valueObjectDeleteProperty

instance O.OverloadedMethodInfo ValueObjectDeletePropertyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectDeleteProperty",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectDeleteProperty"
        })


#endif

-- method Value::object_enumerate_properties
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_object_enumerate_properties" jsc_value_object_enumerate_properties :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr CString)

-- | Get the list of property names of /@value@/. Only properties defined with 'GI.JavaScriptCore.Flags.ValuePropertyFlagsEnumerable'
-- flag will be collected.
valueObjectEnumerateProperties ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ a 'P.Nothing'-terminated array of strings containing the
    --    property names, or 'P.Nothing' if /@value@/ doesn\'t have enumerable properties.  Use 'GI.GLib.Functions.strfreev' to free.
valueObjectEnumerateProperties value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_object_enumerate_properties value'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr value
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ValueObjectEnumeratePropertiesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectEnumeratePropertiesMethodInfo a signature where
    overloadedMethod = valueObjectEnumerateProperties

instance O.OverloadedMethodInfo ValueObjectEnumeratePropertiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectEnumerateProperties",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectEnumerateProperties"
        })


#endif

-- method Value::object_get_property
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property name" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_object_get_property" jsc_value_object_get_property :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr Value)

-- | Get property with /@name@/ from /@value@/.
valueObjectGetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: the property name
    -> m Value
    -- ^ __Returns:__ the property t'GI.JavaScriptCore.Objects.Value.Value'.
valueObjectGetProperty value name = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    result <- jsc_value_object_get_property value' name'
    checkUnexpectedReturnNULL "valueObjectGetProperty" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectGetPropertyMethodInfo
instance (signature ~ (T.Text -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectGetPropertyMethodInfo a signature where
    overloadedMethod = valueObjectGetProperty

instance O.OverloadedMethodInfo ValueObjectGetPropertyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectGetProperty",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectGetProperty"
        })


#endif

-- method Value::object_get_property_at_index
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "index"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property index" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_object_get_property_at_index" jsc_value_object_get_property_at_index :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Word32 ->                               -- index : TBasicType TUInt
    IO (Ptr Value)

-- | Get property at /@index@/ from /@value@/.
valueObjectGetPropertyAtIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> Word32
    -- ^ /@index@/: the property index
    -> m Value
    -- ^ __Returns:__ the property t'GI.JavaScriptCore.Objects.Value.Value'.
valueObjectGetPropertyAtIndex value index = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_object_get_property_at_index value' index
    checkUnexpectedReturnNULL "valueObjectGetPropertyAtIndex" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectGetPropertyAtIndexMethodInfo
instance (signature ~ (Word32 -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectGetPropertyAtIndexMethodInfo a signature where
    overloadedMethod = valueObjectGetPropertyAtIndex

instance O.OverloadedMethodInfo ValueObjectGetPropertyAtIndexMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectGetPropertyAtIndex",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectGetPropertyAtIndex"
        })


#endif

-- method Value::object_has_property
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property name" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_object_has_property" jsc_value_object_has_property :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    IO CInt

-- | Get whether /@value@/ has property with /@name@/.
valueObjectHasProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: the property name
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@value@/ has a property with /@name@/, or 'P.False' otherwise
valueObjectHasProperty value name = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    result <- jsc_value_object_has_property value' name'
    let result' = (/= 0) result
    touchManagedPtr value
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectHasPropertyMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectHasPropertyMethodInfo a signature where
    overloadedMethod = valueObjectHasProperty

instance O.OverloadedMethodInfo ValueObjectHasPropertyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectHasProperty",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectHasProperty"
        })


#endif

-- method Value::object_invoke_method
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the method name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of parameters"
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
--           { argCName = "parameters"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
--           , argCType = Just "JSCValue**"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #JSCValue<!-- -->s to pass as parameters to the method, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of parameters"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_object_invoke_methodv" jsc_value_object_invoke_methodv :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr (Ptr Value) ->                      -- parameters : TCArray False (-1) 2 (TInterface (Name {namespace = "JavaScriptCore", name = "Value"}))
    IO (Ptr Value)

-- | Invoke method with /@name@/ on object referenced by /@value@/, passing the given /@parameters@/. If
-- /@nParameters@/ is 0 no parameters will be passed to the method.
-- The object instance will be handled automatically even when the method is a custom one
-- registered with @/jsc_class_add_method()/@, so it should never be passed explicitly as parameter
-- of this function.
-- 
-- This function always returns a t'GI.JavaScriptCore.Objects.Value.Value', in case of void methods a t'GI.JavaScriptCore.Objects.Value.Value' referencing
-- \<function>undefined\<\/function> is returned.
valueObjectInvokeMethod ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: the method name
    -> Maybe ([Value])
    -- ^ /@parameters@/: the t'GI.JavaScriptCore.Objects.Value.Value's to pass as parameters to the method, or 'P.Nothing'
    -> m Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' with the return value of the method.
valueObjectInvokeMethod value name parameters = liftIO $ do
    let nParameters = case parameters of
            Nothing -> 0
            Just jParameters -> fromIntegral $ P.length jParameters
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    maybeParameters <- case parameters of
        Nothing -> return FP.nullPtr
        Just jParameters -> do
            jParameters' <- mapM unsafeManagedPtrCastPtr jParameters
            jParameters'' <- packPtrArray jParameters'
            return jParameters''
    result <- jsc_value_object_invoke_methodv value' name' nParameters maybeParameters
    checkUnexpectedReturnNULL "valueObjectInvokeMethod" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    whenJust parameters (mapM_ touchManagedPtr)
    freeMem name'
    freeMem maybeParameters
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectInvokeMethodMethodInfo
instance (signature ~ (T.Text -> Maybe ([Value]) -> m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectInvokeMethodMethodInfo a signature where
    overloadedMethod = valueObjectInvokeMethod

instance O.OverloadedMethodInfo ValueObjectInvokeMethodMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectInvokeMethod",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectInvokeMethod"
        })


#endif

-- method Value::object_is_instance_of
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a class name" , sinceVersion = Nothing }
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

foreign import ccall "jsc_value_object_is_instance_of" jsc_value_object_is_instance_of :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    IO CInt

-- | Get whether the value referenced by /@value@/ is an instance of class /@name@/.
valueObjectIsInstanceOf ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: a class name
    -> m Bool
    -- ^ __Returns:__ whether the value is an object instance of class /@name@/.
valueObjectIsInstanceOf value name = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    result <- jsc_value_object_is_instance_of value' name'
    let result' = (/= 0) result
    touchManagedPtr value
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueObjectIsInstanceOfMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueObjectIsInstanceOfMethodInfo a signature where
    overloadedMethod = valueObjectIsInstanceOf

instance O.OverloadedMethodInfo ValueObjectIsInstanceOfMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectIsInstanceOf",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectIsInstanceOf"
        })


#endif

-- method Value::object_set_property
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #JSCValue to set"
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

foreign import ccall "jsc_value_object_set_property" jsc_value_object_set_property :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr Value ->                            -- property : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO ()

-- | Set /@property@/ with /@name@/ on /@value@/.
valueObjectSetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a, IsValue b) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> T.Text
    -- ^ /@name@/: the property name
    -> b
    -- ^ /@property@/: the t'GI.JavaScriptCore.Objects.Value.Value' to set
    -> m ()
valueObjectSetProperty value name property = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    name' <- textToCString name
    property' <- unsafeManagedPtrCastPtr property
    jsc_value_object_set_property value' name' property'
    touchManagedPtr value
    touchManagedPtr property
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data ValueObjectSetPropertyMethodInfo
instance (signature ~ (T.Text -> b -> m ()), MonadIO m, IsValue a, IsValue b) => O.OverloadedMethod ValueObjectSetPropertyMethodInfo a signature where
    overloadedMethod = valueObjectSetProperty

instance O.OverloadedMethodInfo ValueObjectSetPropertyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectSetProperty",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectSetProperty"
        })


#endif

-- method Value::object_set_property_at_index
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "index"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property index" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #JSCValue to set"
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

foreign import ccall "jsc_value_object_set_property_at_index" jsc_value_object_set_property_at_index :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Word32 ->                               -- index : TBasicType TUInt
    Ptr Value ->                            -- property : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO ()

-- | Set /@property@/ at /@index@/ on /@value@/.
valueObjectSetPropertyAtIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a, IsValue b) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> Word32
    -- ^ /@index@/: the property index
    -> b
    -- ^ /@property@/: the t'GI.JavaScriptCore.Objects.Value.Value' to set
    -> m ()
valueObjectSetPropertyAtIndex value index property = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    property' <- unsafeManagedPtrCastPtr property
    jsc_value_object_set_property_at_index value' index property'
    touchManagedPtr value
    touchManagedPtr property
    return ()

#if defined(ENABLE_OVERLOADING)
data ValueObjectSetPropertyAtIndexMethodInfo
instance (signature ~ (Word32 -> b -> m ()), MonadIO m, IsValue a, IsValue b) => O.OverloadedMethod ValueObjectSetPropertyAtIndexMethodInfo a signature where
    overloadedMethod = valueObjectSetPropertyAtIndex

instance O.OverloadedMethodInfo ValueObjectSetPropertyAtIndexMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueObjectSetPropertyAtIndex",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueObjectSetPropertyAtIndex"
        })


#endif

-- method Value::to_boolean
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_to_boolean" jsc_value_to_boolean :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CInt

-- | Convert /@value@/ to a boolean.
valueToBoolean ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Bool
    -- ^ __Returns:__ a t'P.Bool' result of the conversion.
valueToBoolean value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_boolean value'
    let result' = (/= 0) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueToBooleanMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsValue a) => O.OverloadedMethod ValueToBooleanMethodInfo a signature where
    overloadedMethod = valueToBoolean

instance O.OverloadedMethodInfo ValueToBooleanMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToBoolean",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToBoolean"
        })


#endif

-- method Value::to_double
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_to_double" jsc_value_to_double :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CDouble

-- | Convert /@value@/ to a double.
valueToDouble ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Double
    -- ^ __Returns:__ a @/gdouble/@ result of the conversion.
valueToDouble value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_double value'
    let result' = realToFrac result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueToDoubleMethodInfo
instance (signature ~ (m Double), MonadIO m, IsValue a) => O.OverloadedMethod ValueToDoubleMethodInfo a signature where
    overloadedMethod = valueToDouble

instance O.OverloadedMethodInfo ValueToDoubleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToDouble",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToDouble"
        })


#endif

-- method Value::to_int32
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_to_int32" jsc_value_to_int32 :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO Int32

-- | Convert /@value@/ to a @/gint32/@.
valueToInt32 ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Int32
    -- ^ __Returns:__ a @/gint32/@ result of the conversion.
valueToInt32 value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_int32 value'
    touchManagedPtr value
    return result

#if defined(ENABLE_OVERLOADING)
data ValueToInt32MethodInfo
instance (signature ~ (m Int32), MonadIO m, IsValue a) => O.OverloadedMethod ValueToInt32MethodInfo a signature where
    overloadedMethod = valueToInt32

instance O.OverloadedMethodInfo ValueToInt32MethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToInt32",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToInt32"
        })


#endif

-- method Value::to_json
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "indent"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of spaces to indent when nesting."
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

foreign import ccall "jsc_value_to_json" jsc_value_to_json :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Word32 ->                               -- indent : TBasicType TUInt
    IO CString

-- | Create a JSON string of /@value@/ serialization. If /@indent@/ is 0, the resulting JSON will
-- not contain newlines. The size of the indent is clamped to 10 spaces.
-- 
-- /Since: 2.28/
valueToJson ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> Word32
    -- ^ /@indent@/: The number of spaces to indent when nesting.
    -> m T.Text
    -- ^ __Returns:__ a null-terminated JSON string with serialization of /@value@/
valueToJson value indent = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_json value' indent
    checkUnexpectedReturnNULL "valueToJson" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueToJsonMethodInfo
instance (signature ~ (Word32 -> m T.Text), MonadIO m, IsValue a) => O.OverloadedMethod ValueToJsonMethodInfo a signature where
    overloadedMethod = valueToJson

instance O.OverloadedMethodInfo ValueToJsonMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToJson",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToJson"
        })


#endif

-- method Value::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_to_string" jsc_value_to_string :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CString

-- | Convert /@value@/ to a string. Use 'GI.JavaScriptCore.Objects.Value.valueToStringAsBytes' instead, if you need to
-- handle strings containing null characters.
valueToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m T.Text
    -- ^ __Returns:__ a null-terminated string result of the conversion.
valueToString value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_string value'
    checkUnexpectedReturnNULL "valueToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsValue a) => O.OverloadedMethod ValueToStringMethodInfo a signature where
    overloadedMethod = valueToString

instance O.OverloadedMethodInfo ValueToStringMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToString",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToString"
        })


#endif

-- method Value::to_string_as_bytes
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TInterface Name { namespace = "GLib" , name = "Bytes" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_to_string_as_bytes" jsc_value_to_string_as_bytes :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr GLib.Bytes.Bytes)

-- | Convert /@value@/ to a string and return the results as t'GI.GLib.Structs.Bytes.Bytes'. This is needed
-- to handle strings with null characters.
valueToStringAsBytes ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m GLib.Bytes.Bytes
    -- ^ __Returns:__ a t'GI.GLib.Structs.Bytes.Bytes' with the result of the conversion.
valueToStringAsBytes value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_to_string_as_bytes value'
    checkUnexpectedReturnNULL "valueToStringAsBytes" result
    result' <- (wrapBoxed GLib.Bytes.Bytes) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueToStringAsBytesMethodInfo
instance (signature ~ (m GLib.Bytes.Bytes), MonadIO m, IsValue a) => O.OverloadedMethod ValueToStringAsBytesMethodInfo a signature where
    overloadedMethod = valueToStringAsBytes

instance O.OverloadedMethodInfo ValueToStringAsBytesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueToStringAsBytes",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueToStringAsBytes"
        })


#endif

-- method Value::typed_array_get_buffer
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_buffer" jsc_value_typed_array_get_buffer :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr Value)

-- | Obtain the @/ArrayBuffer/@ for the memory region of the typed array elements.
-- 
-- /Since: 2.38/
valueTypedArrayGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m Value
    -- ^ __Returns:__ A t'GI.JavaScriptCore.Objects.Value.Value'
valueTypedArrayGetBuffer value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_typed_array_get_buffer value'
    checkUnexpectedReturnNULL "valueTypedArrayGetBuffer" result
    result' <- (wrapObject Value) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetBufferMethodInfo
instance (signature ~ (m Value), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetBufferMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetBuffer

instance O.OverloadedMethodInfo ValueTypedArrayGetBufferMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetBuffer",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetBuffer"
        })


#endif

-- method Value::typed_array_get_data
-- method type : OrdinaryMethod
-- Args: [ Arg
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
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize*"
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to return the number of elements contained"
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
-- returnType: Just (TBasicType TPtr)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_data" jsc_value_typed_array_get_data :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    Ptr FCT.CSize ->                        -- length : TBasicType TSize
    IO (Ptr ())

-- | Obtains a pointer to the memory region that holds the elements of the typed
-- array; modifications done to them will be visible to JavaScript code. If
-- /@length@/ is not 'P.Nothing', the number of elements contained in the typed array
-- are also stored in the pointed location.
-- 
-- The returned pointer needs to be casted to the appropriate type (see
-- t'GI.JavaScriptCore.Enums.TypedArrayType'), and has the @offset@ over the underlying array
-- buffer data applied—that is, points to the first element of the typed
-- array:
-- 
-- 
-- === /C code/
-- >
-- >if (jsc_value_typed_array_get_type(value) != JSC_TYPED_ARRAY_UINT32)
-- >    g_error ("Only arrays of uint32_t are supported");
-- >
-- >gsize count = 0;
-- >uint32_t *elements = jsc_value_typed_array_get_contents (value, &count);
-- >for (gsize i = 0; i < count; i++)
-- >     g_print ("index %zu, value %" PRIu32 "\n", i, elements[i]);
-- 
-- 
-- Note that the pointer returned by this function is not guaranteed to remain
-- the same after calls to other JSC API functions. See
-- 'GI.JavaScriptCore.Objects.Value.valueArrayBufferGetData' for details.
-- 
-- /Since: 2.38/
valueTypedArrayGetData ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m ((Ptr (), FCT.CSize))
    -- ^ __Returns:__ pointer to memory.
valueTypedArrayGetData value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    length_ <- allocMem :: IO (Ptr FCT.CSize)
    result <- jsc_value_typed_array_get_data value' length_
    length_' <- peek length_
    touchManagedPtr value
    freeMem length_
    return (result, length_')

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetDataMethodInfo
instance (signature ~ (m ((Ptr (), FCT.CSize))), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetDataMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetData

instance O.OverloadedMethodInfo ValueTypedArrayGetDataMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetData",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetData"
        })


#endif

-- method Value::typed_array_get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TSize)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_length" jsc_value_typed_array_get_length :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO FCT.CSize

-- | Gets the number of elements in a typed array.
-- 
-- /Since: 2.38/
valueTypedArrayGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m FCT.CSize
    -- ^ __Returns:__ number of elements.
valueTypedArrayGetLength value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_typed_array_get_length value'
    touchManagedPtr value
    return result

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetLengthMethodInfo
instance (signature ~ (m FCT.CSize), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetLengthMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetLength

instance O.OverloadedMethodInfo ValueTypedArrayGetLengthMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetLength",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetLength"
        })


#endif

-- method Value::typed_array_get_offset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #JSCValue" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TSize)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_offset" jsc_value_typed_array_get_offset :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO FCT.CSize

-- | Gets the offset over the underlying array buffer data.
-- 
-- /Since: 2.38/
valueTypedArrayGetOffset ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: A t'GI.JavaScriptCore.Objects.Value.Value'
    -> m FCT.CSize
    -- ^ __Returns:__ offset, in bytes.
valueTypedArrayGetOffset value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_typed_array_get_offset value'
    touchManagedPtr value
    return result

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetOffsetMethodInfo
instance (signature ~ (m FCT.CSize), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetOffsetMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetOffset

instance O.OverloadedMethodInfo ValueTypedArrayGetOffsetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetOffset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetOffset"
        })


#endif

-- method Value::typed_array_get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just (TBasicType TSize)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_size" jsc_value_typed_array_get_size :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO FCT.CSize

-- | Gets the size of a typed array.
-- 
-- /Since: 2.38/
valueTypedArrayGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m FCT.CSize
    -- ^ __Returns:__ size, in bytes.
valueTypedArrayGetSize value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_typed_array_get_size value'
    touchManagedPtr value
    return result

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetSizeMethodInfo
instance (signature ~ (m FCT.CSize), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetSizeMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetSize

instance O.OverloadedMethodInfo ValueTypedArrayGetSizeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetSize",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetSize"
        })


#endif

-- method Value::typed_array_get_type
-- method type : OrdinaryMethod
-- Args: [ Arg
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "TypedArrayType" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_value_typed_array_get_type" jsc_value_typed_array_get_type :: 
    Ptr Value ->                            -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO CUInt

-- | Gets the type of elements contained in a typed array.
-- 
-- /Since: 2.38/
valueTypedArrayGetType ::
    (B.CallStack.HasCallStack, MonadIO m, IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m JavaScriptCore.Enums.TypedArrayType
    -- ^ __Returns:__ type of the elements, or 'GI.JavaScriptCore.Enums.TypedArrayTypeNone' if /@value@/ is not a typed array.
valueTypedArrayGetType value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_value_typed_array_get_type value'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetTypeMethodInfo
instance (signature ~ (m JavaScriptCore.Enums.TypedArrayType), MonadIO m, IsValue a) => O.OverloadedMethod ValueTypedArrayGetTypeMethodInfo a signature where
    overloadedMethod = valueTypedArrayGetType

instance O.OverloadedMethodInfo ValueTypedArrayGetTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Value.valueTypedArrayGetType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Value.html#v:valueTypedArrayGetType"
        })


#endif


