#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.FindController where

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

newtype FindController = FindController (SP.ManagedPtr FindController)
instance SP.ManagedPtrNewtype FindController where
instance B.Types.TypedObject FindController where
instance B.Types.GObject FindController
class (SP.GObject o, O.IsDescendantOf FindController o) => IsFindController o
instance (SP.GObject o, O.IsDescendantOf FindController o) => IsFindController o
instance O.HasParentTypes FindController
toFindController :: (MIO.MonadIO m, IsFindController o) => o -> m FindController
instance B.GValue.IsGValue (Maybe FindController) where
#if defined(ENABLE_OVERLOADING)
data FindControllerCountedMatchesSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerFailedToFindTextSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerFoundTextSignalInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerMaxMatchCountPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerOptionsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerTextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerWebViewPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerCountMatchesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerGetMaxMatchCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerGetOptionsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerGetSearchTextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerGetWebViewMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerSearchMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerSearchFinishMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerSearchNextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FindControllerSearchPreviousMethodInfo
#endif
