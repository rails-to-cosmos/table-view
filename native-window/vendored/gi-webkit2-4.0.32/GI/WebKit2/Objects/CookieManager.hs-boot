#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.CookieManager where

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

newtype CookieManager = CookieManager (SP.ManagedPtr CookieManager)
instance SP.ManagedPtrNewtype CookieManager where
instance B.Types.TypedObject CookieManager where
instance B.Types.GObject CookieManager
class (SP.GObject o, O.IsDescendantOf CookieManager o) => IsCookieManager o
instance (SP.GObject o, O.IsDescendantOf CookieManager o) => IsCookieManager o
instance O.HasParentTypes CookieManager
toCookieManager :: (MIO.MonadIO m, IsCookieManager o) => o -> m CookieManager
instance B.GValue.IsGValue (Maybe CookieManager) where
#if defined(ENABLE_OVERLOADING)
data CookieManagerChangedSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerAddCookieMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerAddCookieFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteAllCookiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookieMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookieFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerDeleteCookiesForDomainMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAcceptPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAcceptPolicyFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAllCookiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetAllCookiesFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetCookiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetCookiesFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetDomainsWithCookiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerGetDomainsWithCookiesFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerReplaceCookiesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerReplaceCookiesFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerSetAcceptPolicyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CookieManagerSetPersistentStorageMethodInfo
#endif
