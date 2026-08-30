

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Flags
    ( 

 -- * Flags


-- ** ValuePropertyFlags #flag:ValuePropertyFlags#

    ValuePropertyFlags(..)                  ,




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

-- Flags ValuePropertyFlags
-- | Flags used when defining properties with 'GI.JavaScriptCore.Objects.Value.valueObjectDefinePropertyData' and
-- 'GI.JavaScriptCore.Objects.Value.valueObjectDefinePropertyAccessor'.
data ValuePropertyFlags = 
      ValuePropertyFlagsConfigurable
    -- ^ the type of the property descriptor may be changed and the
    --  property may be deleted from the corresponding object.
    | ValuePropertyFlagsEnumerable
    -- ^ the property shows up during enumeration of the properties on
    --  the corresponding object.
    | ValuePropertyFlagsWritable
    -- ^ the value associated with the property may be changed with an
    --  assignment operator. This doesn\'t have any effect when passed to 'GI.JavaScriptCore.Objects.Value.valueObjectDefinePropertyAccessor'.
    | AnotherValuePropertyFlags Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum ValuePropertyFlags where
    fromEnum ValuePropertyFlagsConfigurable = 1
    fromEnum ValuePropertyFlagsEnumerable = 2
    fromEnum ValuePropertyFlagsWritable = 4
    fromEnum (AnotherValuePropertyFlags k) = k

    toEnum 1 = ValuePropertyFlagsConfigurable
    toEnum 2 = ValuePropertyFlagsEnumerable
    toEnum 4 = ValuePropertyFlagsWritable
    toEnum k = AnotherValuePropertyFlags k

instance P.Ord ValuePropertyFlags where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance IsGFlag ValuePropertyFlags


