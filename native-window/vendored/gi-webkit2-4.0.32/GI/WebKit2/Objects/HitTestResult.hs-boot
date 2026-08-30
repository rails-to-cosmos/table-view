#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.HitTestResult where

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

newtype HitTestResult = HitTestResult (SP.ManagedPtr HitTestResult)
instance SP.ManagedPtrNewtype HitTestResult where
instance B.Types.TypedObject HitTestResult where
instance B.Types.GObject HitTestResult
class (SP.GObject o, O.IsDescendantOf HitTestResult o) => IsHitTestResult o
instance (SP.GObject o, O.IsDescendantOf HitTestResult o) => IsHitTestResult o
instance O.HasParentTypes HitTestResult
toHitTestResult :: (MIO.MonadIO m, IsHitTestResult o) => o -> m HitTestResult
instance B.GValue.IsGValue (Maybe HitTestResult) where
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultImageUriPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkLabelPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkTitlePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkUriPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultMediaUriPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsEditableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsImageMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsLinkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsMediaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsScrollbarMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsSelectionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetContextMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetImageUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkLabelMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkTitleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkUriMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data HitTestResultGetMediaUriMethodInfo
#endif
