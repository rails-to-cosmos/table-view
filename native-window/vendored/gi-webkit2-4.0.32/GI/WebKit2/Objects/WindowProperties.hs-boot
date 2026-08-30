#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.WebKit2.Objects.WindowProperties where

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

newtype WindowProperties = WindowProperties (SP.ManagedPtr WindowProperties)
instance SP.ManagedPtrNewtype WindowProperties where
instance B.Types.TypedObject WindowProperties where
instance B.Types.GObject WindowProperties
class (SP.GObject o, O.IsDescendantOf WindowProperties o) => IsWindowProperties o
instance (SP.GObject o, O.IsDescendantOf WindowProperties o) => IsWindowProperties o
instance O.HasParentTypes WindowProperties
toWindowProperties :: (MIO.MonadIO m, IsWindowProperties o) => o -> m WindowProperties
instance B.GValue.IsGValue (Maybe WindowProperties) where
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesFullscreenPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGeometryPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesLocationbarVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesMenubarVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesResizablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesScrollbarsVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesStatusbarVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesToolbarVisiblePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetFullscreenMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetGeometryMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetLocationbarVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetMenubarVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetResizableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetScrollbarsVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetStatusbarVisibleMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data WindowPropertiesGetToolbarVisibleMethodInfo
#endif
