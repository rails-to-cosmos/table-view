#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.WebResource where

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

newtype WebResource = WebResource (SP.ManagedPtr WebResource)
instance SP.ManagedPtrNewtype WebResource where
instance B.Types.TypedObject WebResource where
instance B.Types.GObject WebResource
class (SP.GObject o, O.IsDescendantOf WebResource o) => IsWebResource o
instance (SP.GObject o, O.IsDescendantOf WebResource o) => IsWebResource o
instance O.HasParentTypes WebResource
toWebResource :: (MIO.MonadIO m, IsWebResource o) => o -> m WebResource
instance B.GValue.IsGValue (Maybe WebResource) where
#if defined(ENABLE_OVERLOADING)
data WebResourceFailedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceFailedWithTlsErrorsSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceFinishedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceReceivedDataSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceSentRequestSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceResponsePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceUriPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceGetDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceGetDataFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceGetResponseMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WebResourceGetUriMethodInfo
#endif
