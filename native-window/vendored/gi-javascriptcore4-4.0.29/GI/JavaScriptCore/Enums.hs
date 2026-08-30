

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Enums
    ( 

 -- * Enumerations


-- ** CheckSyntaxMode #enum:CheckSyntaxMode#

    CheckSyntaxMode(..)                     ,


-- ** CheckSyntaxResult #enum:CheckSyntaxResult#

    CheckSyntaxResult(..)                   ,


-- ** OptionType #enum:OptionType#

    OptionType(..)                          ,


-- ** TypedArrayType #enum:TypedArrayType#

    TypedArrayType(..)                      ,




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

-- Enum TypedArrayType
-- | Possible types of the elements contained in a typed array.
-- 
-- /Since: 2.38/
data TypedArrayType = 
      TypedArrayTypeNone
    -- ^ Not a typed array, or type unsupported.
    | TypedArrayTypeInt8
    -- ^ Array elements are 8-bit signed integers (int8_t).
    | TypedArrayTypeInt16
    -- ^ Array elements are 16-bit signed integers (int16_t).
    | TypedArrayTypeInt32
    -- ^ Array elements are 32-bit signed integers (int32_t).
    | TypedArrayTypeInt64
    -- ^ Array elements are 64-bit signed integers (int64_t).
    | TypedArrayTypeUint8
    -- ^ Array elements are 8-bit unsigned integers (uint8_t).
    | TypedArrayTypeUint8Clamped
    -- ^ Array elements are 8-bit unsigned integers (uint8_t).
    | TypedArrayTypeUint16
    -- ^ Array elements are 16-bit unsigned integers (uint16_t).
    | TypedArrayTypeUint32
    -- ^ Array elements are 32-bit unsigned integers (uint32_t).
    | TypedArrayTypeUint64
    -- ^ Array elements are 64-bit unsigned integers (uint64_t).
    | TypedArrayTypeFloat32
    -- ^ Array elements are 32-bit floating point numbers (float).
    | TypedArrayTypeFloat64
    -- ^ Array elements are 64-bit floating point numbers (double).
    | AnotherTypedArrayType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum TypedArrayType where
    fromEnum TypedArrayTypeNone = 0
    fromEnum TypedArrayTypeInt8 = 1
    fromEnum TypedArrayTypeInt16 = 2
    fromEnum TypedArrayTypeInt32 = 3
    fromEnum TypedArrayTypeInt64 = 4
    fromEnum TypedArrayTypeUint8 = 5
    fromEnum TypedArrayTypeUint8Clamped = 6
    fromEnum TypedArrayTypeUint16 = 7
    fromEnum TypedArrayTypeUint32 = 8
    fromEnum TypedArrayTypeUint64 = 9
    fromEnum TypedArrayTypeFloat32 = 10
    fromEnum TypedArrayTypeFloat64 = 11
    fromEnum (AnotherTypedArrayType k) = k

    toEnum 0 = TypedArrayTypeNone
    toEnum 1 = TypedArrayTypeInt8
    toEnum 2 = TypedArrayTypeInt16
    toEnum 3 = TypedArrayTypeInt32
    toEnum 4 = TypedArrayTypeInt64
    toEnum 5 = TypedArrayTypeUint8
    toEnum 6 = TypedArrayTypeUint8Clamped
    toEnum 7 = TypedArrayTypeUint16
    toEnum 8 = TypedArrayTypeUint32
    toEnum 9 = TypedArrayTypeUint64
    toEnum 10 = TypedArrayTypeFloat32
    toEnum 11 = TypedArrayTypeFloat64
    toEnum k = AnotherTypedArrayType k

instance P.Ord TypedArrayType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

-- Enum OptionType
-- | Enum values for options types.
-- 
-- /Since: 2.24/
data OptionType = 
      OptionTypeBoolean
    -- ^ A t'P.Bool' option type.
    | OptionTypeInt
    -- ^ A @/gint/@ option type.
    | OptionTypeUint
    -- ^ A @/guint/@ option type.
    | OptionTypeSize
    -- ^ A @/gsize/@ options type.
    | OptionTypeDouble
    -- ^ A @/gdouble/@ options type.
    | OptionTypeString
    -- ^ A string option type.
    | OptionTypeRangeString
    -- ^ A range string option type.
    | AnotherOptionType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum OptionType where
    fromEnum OptionTypeBoolean = 0
    fromEnum OptionTypeInt = 1
    fromEnum OptionTypeUint = 2
    fromEnum OptionTypeSize = 3
    fromEnum OptionTypeDouble = 4
    fromEnum OptionTypeString = 5
    fromEnum OptionTypeRangeString = 6
    fromEnum (AnotherOptionType k) = k

    toEnum 0 = OptionTypeBoolean
    toEnum 1 = OptionTypeInt
    toEnum 2 = OptionTypeUint
    toEnum 3 = OptionTypeSize
    toEnum 4 = OptionTypeDouble
    toEnum 5 = OptionTypeString
    toEnum 6 = OptionTypeRangeString
    toEnum k = AnotherOptionType k

instance P.Ord OptionType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

-- Enum CheckSyntaxResult
-- | Enum values to specify the result of 'GI.JavaScriptCore.Objects.Context.contextCheckSyntax'.
data CheckSyntaxResult = 
      CheckSyntaxResultSuccess
    -- ^ no errors
    | CheckSyntaxResultRecoverableError
    -- ^ recoverable syntax error
    | CheckSyntaxResultIrrecoverableError
    -- ^ irrecoverable syntax error
    | CheckSyntaxResultUnterminatedLiteralError
    -- ^ unterminated literal error
    | CheckSyntaxResultOutOfMemoryError
    -- ^ out of memory error
    | CheckSyntaxResultStackOverflowError
    -- ^ stack overflow error
    | AnotherCheckSyntaxResult Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CheckSyntaxResult where
    fromEnum CheckSyntaxResultSuccess = 0
    fromEnum CheckSyntaxResultRecoverableError = 1
    fromEnum CheckSyntaxResultIrrecoverableError = 2
    fromEnum CheckSyntaxResultUnterminatedLiteralError = 3
    fromEnum CheckSyntaxResultOutOfMemoryError = 4
    fromEnum CheckSyntaxResultStackOverflowError = 5
    fromEnum (AnotherCheckSyntaxResult k) = k

    toEnum 0 = CheckSyntaxResultSuccess
    toEnum 1 = CheckSyntaxResultRecoverableError
    toEnum 2 = CheckSyntaxResultIrrecoverableError
    toEnum 3 = CheckSyntaxResultUnterminatedLiteralError
    toEnum 4 = CheckSyntaxResultOutOfMemoryError
    toEnum 5 = CheckSyntaxResultStackOverflowError
    toEnum k = AnotherCheckSyntaxResult k

instance P.Ord CheckSyntaxResult where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

-- Enum CheckSyntaxMode
-- | Enum values to specify a mode to check for syntax errors in 'GI.JavaScriptCore.Objects.Context.contextCheckSyntax'.
data CheckSyntaxMode = 
      CheckSyntaxModeScript
    -- ^ mode to check syntax of a script
    | CheckSyntaxModeModule
    -- ^ mode to check syntax of a module
    | AnotherCheckSyntaxMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CheckSyntaxMode where
    fromEnum CheckSyntaxModeScript = 0
    fromEnum CheckSyntaxModeModule = 1
    fromEnum (AnotherCheckSyntaxMode k) = k

    toEnum 0 = CheckSyntaxModeScript
    toEnum 1 = CheckSyntaxModeModule
    toEnum k = AnotherCheckSyntaxMode k

instance P.Ord CheckSyntaxMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)


