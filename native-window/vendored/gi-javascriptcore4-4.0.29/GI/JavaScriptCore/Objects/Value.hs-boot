#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.JavaScriptCore.Objects.Value where

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

newtype Value = Value (SP.ManagedPtr Value)
instance SP.ManagedPtrNewtype Value where
instance B.Types.TypedObject Value where
instance B.Types.GObject Value
class (SP.GObject o, O.IsDescendantOf Value o) => IsValue o
instance (SP.GObject o, O.IsDescendantOf Value o) => IsValue o
instance O.HasParentTypes Value
toValue :: (MIO.MonadIO m, IsValue o) => o -> m Value
instance B.GValue.IsGValue (Maybe Value) where
#if defined(ENABLE_OVERLOADING)
data ValueContextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueArrayBufferGetDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueArrayBufferGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueConstructorCallMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueFunctionCallMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueGetContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsArrayMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsArrayBufferMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsBooleanMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsConstructorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsFunctionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsNullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsNumberMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsObjectMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsTypedArrayMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueIsUndefinedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueNewTypedArrayWithBufferMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectDefinePropertyAccessorMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectDefinePropertyDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectDeletePropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectEnumeratePropertiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectGetPropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectGetPropertyAtIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectHasPropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectInvokeMethodMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectIsInstanceOfMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectSetPropertyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueObjectSetPropertyAtIndexMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToBooleanMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToDoubleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToInt32MethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToJsonMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueToStringAsBytesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetBufferMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetLengthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetOffsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ValueTypedArrayGetTypeMethodInfo
#endif
