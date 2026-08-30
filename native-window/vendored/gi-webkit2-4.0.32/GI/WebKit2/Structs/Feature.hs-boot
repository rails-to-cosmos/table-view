#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Structs.Feature where

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

newtype Feature = Feature (SP.ManagedPtr Feature)
instance SP.ManagedPtrNewtype Feature where
instance O.HasParentTypes Feature
instance B.Types.TypedObject Feature where
instance B.Types.GBoxed Feature
instance B.GValue.IsGValue (Maybe Feature) where
#if defined(ENABLE_OVERLOADING)
data FeatureGetCategoryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureGetDefaultValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureGetDetailsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureGetIdentifierMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureGetNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureGetStatusMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureRefMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatureUnrefMethodInfo
#endif
