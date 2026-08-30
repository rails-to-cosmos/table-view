#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.SecurityManager where

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

newtype SecurityManager = SecurityManager (SP.ManagedPtr SecurityManager)
instance SP.ManagedPtrNewtype SecurityManager where
instance B.Types.TypedObject SecurityManager where
instance B.Types.GObject SecurityManager
class (SP.GObject o, O.IsDescendantOf SecurityManager o) => IsSecurityManager o
instance (SP.GObject o, O.IsDescendantOf SecurityManager o) => IsSecurityManager o
instance O.HasParentTypes SecurityManager
toSecurityManager :: (MIO.MonadIO m, IsSecurityManager o) => o -> m SecurityManager
instance B.GValue.IsGValue (Maybe SecurityManager) where
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsCorsEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsDisplayIsolatedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsEmptyDocumentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsLocalMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsNoAccessMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerRegisterUriSchemeAsSecureMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsCorsEnabledMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsDisplayIsolatedMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsEmptyDocumentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsLocalMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsNoAccessMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data SecurityManagerUriSchemeIsSecureMethodInfo
#endif
