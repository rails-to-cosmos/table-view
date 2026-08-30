

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Flags
    ( 

 -- * Flags


-- ** EditorTypingAttributes #flag:EditorTypingAttributes#

    EditorTypingAttributes(..)              ,


-- ** FindOptions #flag:FindOptions#

    FindOptions(..)                         ,


-- ** HitTestResultContext #flag:HitTestResultContext#

    HitTestResultContext(..)                ,


-- ** InputHints #flag:InputHints#

    InputHints(..)                          ,


-- ** SnapshotOptions #flag:SnapshotOptions#

    SnapshotOptions(..)                     ,


-- ** WebsiteDataTypes #flag:WebsiteDataTypes#

    WebsiteDataTypes(..)                    ,


-- ** XRSessionFeatures #flag:XRSessionFeatures#

    XRSessionFeatures(..)                   ,




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

-- Flags XRSessionFeatures
-- | Enum values representing the XR session features.
-- 
-- See \<https:\/\/immersive-web.github.io\/webxr\/@/xrreferencespace/@-interface>.
-- And, see \<https:\/\/immersive-web.github.io\/webxr-hand-input\/> for hand tracking.
-- 
-- /Since: 2.52/
data XRSessionFeatures = 
      XRSessionFeaturesViewer
    -- ^ viewer feature.
    | XRSessionFeaturesLocal
    -- ^ local feature.
    | XRSessionFeaturesLocalFloor
    -- ^ local-floor feature.
    | XRSessionFeaturesBoundedFloor
    -- ^ bounded-floor feature.
    | XRSessionFeaturesUnbounded
    -- ^ unbounded feature.
    | XRSessionFeaturesHandTracking
    -- ^ hand tracking feature.
    | XRSessionFeaturesHitTest
    -- ^ hit test feature.
    | XRSessionFeaturesLayers
    -- ^ WebXR Layers feature.
    | AnotherXRSessionFeatures Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum XRSessionFeatures where
    fromEnum XRSessionFeaturesViewer = 1
    fromEnum XRSessionFeaturesLocal = 2
    fromEnum XRSessionFeaturesLocalFloor = 4
    fromEnum XRSessionFeaturesBoundedFloor = 8
    fromEnum XRSessionFeaturesUnbounded = 16
    fromEnum XRSessionFeaturesHandTracking = 32
    fromEnum XRSessionFeaturesHitTest = 64
    fromEnum XRSessionFeaturesLayers = 128
    fromEnum (AnotherXRSessionFeatures k) = k

    toEnum 1 = XRSessionFeaturesViewer
    toEnum 2 = XRSessionFeaturesLocal
    toEnum 4 = XRSessionFeaturesLocalFloor
    toEnum 8 = XRSessionFeaturesBoundedFloor
    toEnum 16 = XRSessionFeaturesUnbounded
    toEnum 32 = XRSessionFeaturesHandTracking
    toEnum 64 = XRSessionFeaturesHitTest
    toEnum 128 = XRSessionFeaturesLayers
    toEnum k = AnotherXRSessionFeatures k

instance P.Ord XRSessionFeatures where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes XRSessionFeatures = '[]
instance O.HasParentTypes XRSessionFeatures

foreign import ccall "webkit_xr_session_features_get_type" c_webkit_xr_session_features_get_type :: 
    IO GType

instance B.Types.TypedObject XRSessionFeatures where
    glibType = c_webkit_xr_session_features_get_type

instance B.Types.BoxedFlags XRSessionFeatures

instance IsGFlag XRSessionFeatures

-- Flags WebsiteDataTypes
-- | Enum values with flags representing types of Website data.
-- 
-- /Since: 2.16/
data WebsiteDataTypes = 
      WebsiteDataTypesMemoryCache
    -- ^ Memory cache.
    | WebsiteDataTypesDiskCache
    -- ^ HTTP disk cache.
    | WebsiteDataTypesOfflineApplicationCache
    -- ^ Offline web application cache.
    | WebsiteDataTypesSessionStorage
    -- ^ Session storage data.
    | WebsiteDataTypesLocalStorage
    -- ^ Local storage data.
    | WebsiteDataTypesWebsqlDatabases
    -- ^ WebSQL databases. Deprecated 2.24
    | WebsiteDataTypesIndexeddbDatabases
    -- ^ IndexedDB databases.
    | WebsiteDataTypesPluginData
    -- ^ Plugins data. Deprecated 2.32
    | WebsiteDataTypesCookies
    -- ^ Cookies.
    | WebsiteDataTypesDeviceIdHashSalt
    -- ^ Hash salt used to generate the device ids used by webpages. Since 2.24
    | WebsiteDataTypesHstsCache
    -- ^ HSTS cache. Since 2.26
    | WebsiteDataTypesItp
    -- ^ Intelligent Tracking Prevention data. Since 2.30.
    | WebsiteDataTypesServiceWorkerRegistrations
    -- ^ Service worker registrations. Since 2.30
    | WebsiteDataTypesDomCache
    -- ^ DOM (CacheStorage) cache. Since 2.30
    | WebsiteDataTypesAll
    -- ^ All types.
    | AnotherWebsiteDataTypes Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum WebsiteDataTypes where
    fromEnum WebsiteDataTypesMemoryCache = 1
    fromEnum WebsiteDataTypesDiskCache = 2
    fromEnum WebsiteDataTypesOfflineApplicationCache = 4
    fromEnum WebsiteDataTypesSessionStorage = 8
    fromEnum WebsiteDataTypesLocalStorage = 16
    fromEnum WebsiteDataTypesWebsqlDatabases = 32
    fromEnum WebsiteDataTypesIndexeddbDatabases = 64
    fromEnum WebsiteDataTypesPluginData = 128
    fromEnum WebsiteDataTypesCookies = 256
    fromEnum WebsiteDataTypesDeviceIdHashSalt = 512
    fromEnum WebsiteDataTypesHstsCache = 1024
    fromEnum WebsiteDataTypesItp = 2048
    fromEnum WebsiteDataTypesServiceWorkerRegistrations = 4096
    fromEnum WebsiteDataTypesDomCache = 8192
    fromEnum WebsiteDataTypesAll = 16383
    fromEnum (AnotherWebsiteDataTypes k) = k

    toEnum 1 = WebsiteDataTypesMemoryCache
    toEnum 2 = WebsiteDataTypesDiskCache
    toEnum 4 = WebsiteDataTypesOfflineApplicationCache
    toEnum 8 = WebsiteDataTypesSessionStorage
    toEnum 16 = WebsiteDataTypesLocalStorage
    toEnum 32 = WebsiteDataTypesWebsqlDatabases
    toEnum 64 = WebsiteDataTypesIndexeddbDatabases
    toEnum 128 = WebsiteDataTypesPluginData
    toEnum 256 = WebsiteDataTypesCookies
    toEnum 512 = WebsiteDataTypesDeviceIdHashSalt
    toEnum 1024 = WebsiteDataTypesHstsCache
    toEnum 2048 = WebsiteDataTypesItp
    toEnum 4096 = WebsiteDataTypesServiceWorkerRegistrations
    toEnum 8192 = WebsiteDataTypesDomCache
    toEnum 16383 = WebsiteDataTypesAll
    toEnum k = AnotherWebsiteDataTypes k

instance P.Ord WebsiteDataTypes where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes WebsiteDataTypes = '[]
instance O.HasParentTypes WebsiteDataTypes

foreign import ccall "webkit_website_data_types_get_type" c_webkit_website_data_types_get_type :: 
    IO GType

instance B.Types.TypedObject WebsiteDataTypes where
    glibType = c_webkit_website_data_types_get_type

instance B.Types.BoxedFlags WebsiteDataTypes

instance IsGFlag WebsiteDataTypes

-- Flags SnapshotOptions
-- | Enum values used to specify options when taking a snapshot
-- from a t'GI.WebKit2.Objects.WebView.WebView'.
data SnapshotOptions = 
      SnapshotOptionsNone
    -- ^ Do not include any special options.
    | SnapshotOptionsIncludeSelectionHighlighting
    -- ^ Whether to include in the
    -- snapshot the highlight of the selected content.
    | SnapshotOptionsTransparentBackground
    -- ^ Do not fill the background with white before
    -- rendering the snapshot. Since 2.8
    | AnotherSnapshotOptions Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum SnapshotOptions where
    fromEnum SnapshotOptionsNone = 0
    fromEnum SnapshotOptionsIncludeSelectionHighlighting = 1
    fromEnum SnapshotOptionsTransparentBackground = 2
    fromEnum (AnotherSnapshotOptions k) = k

    toEnum 0 = SnapshotOptionsNone
    toEnum 1 = SnapshotOptionsIncludeSelectionHighlighting
    toEnum 2 = SnapshotOptionsTransparentBackground
    toEnum k = AnotherSnapshotOptions k

instance P.Ord SnapshotOptions where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes SnapshotOptions = '[]
instance O.HasParentTypes SnapshotOptions

foreign import ccall "webkit_snapshot_options_get_type" c_webkit_snapshot_options_get_type :: 
    IO GType

instance B.Types.TypedObject SnapshotOptions where
    glibType = c_webkit_snapshot_options_get_type

instance B.Types.BoxedFlags SnapshotOptions

instance IsGFlag SnapshotOptions

-- Flags InputHints
-- | Enum values used to describe hints that might be taken into account by input methods.
-- 
-- /Since: 2.28/
data InputHints = 
      InputHintsNone
    -- ^ No special behavior suggested
    | InputHintsSpellcheck
    -- ^ Suggest spell checking
    | InputHintsLowercase
    -- ^ Suggest to not autocapitlize
    | InputHintsUppercaseChars
    -- ^ Suggest to capitalize all text
    | InputHintsUppercaseWords
    -- ^ Suggest to capitalize the first character of each word
    | InputHintsUppercaseSentences
    -- ^ Suggest to capitalize the first word of each sentence
    | InputHintsInhibitOsk
    -- ^ Suggest to not show an onscreen keyboard
    | AnotherInputHints Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum InputHints where
    fromEnum InputHintsNone = 0
    fromEnum InputHintsSpellcheck = 1
    fromEnum InputHintsLowercase = 2
    fromEnum InputHintsUppercaseChars = 4
    fromEnum InputHintsUppercaseWords = 8
    fromEnum InputHintsUppercaseSentences = 16
    fromEnum InputHintsInhibitOsk = 32
    fromEnum (AnotherInputHints k) = k

    toEnum 0 = InputHintsNone
    toEnum 1 = InputHintsSpellcheck
    toEnum 2 = InputHintsLowercase
    toEnum 4 = InputHintsUppercaseChars
    toEnum 8 = InputHintsUppercaseWords
    toEnum 16 = InputHintsUppercaseSentences
    toEnum 32 = InputHintsInhibitOsk
    toEnum k = AnotherInputHints k

instance P.Ord InputHints where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes InputHints = '[]
instance O.HasParentTypes InputHints

foreign import ccall "webkit_input_hints_get_type" c_webkit_input_hints_get_type :: 
    IO GType

instance B.Types.TypedObject InputHints where
    glibType = c_webkit_input_hints_get_type

instance B.Types.BoxedFlags InputHints

instance IsGFlag InputHints

-- Flags HitTestResultContext
-- | Enum values with flags representing the context of a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'.
data HitTestResultContext = 
      HitTestResultContextDocument
    -- ^ anywhere in the document.
    | HitTestResultContextLink
    -- ^ a hyperlink element.
    | HitTestResultContextImage
    -- ^ an image element.
    | HitTestResultContextMedia
    -- ^ a video or audio element.
    | HitTestResultContextEditable
    -- ^ an editable element
    | HitTestResultContextScrollbar
    -- ^ a scrollbar element.
    | HitTestResultContextSelection
    -- ^ a selected element. Since 2.8
    | AnotherHitTestResultContext Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum HitTestResultContext where
    fromEnum HitTestResultContextDocument = 2
    fromEnum HitTestResultContextLink = 4
    fromEnum HitTestResultContextImage = 8
    fromEnum HitTestResultContextMedia = 16
    fromEnum HitTestResultContextEditable = 32
    fromEnum HitTestResultContextScrollbar = 64
    fromEnum HitTestResultContextSelection = 128
    fromEnum (AnotherHitTestResultContext k) = k

    toEnum 2 = HitTestResultContextDocument
    toEnum 4 = HitTestResultContextLink
    toEnum 8 = HitTestResultContextImage
    toEnum 16 = HitTestResultContextMedia
    toEnum 32 = HitTestResultContextEditable
    toEnum 64 = HitTestResultContextScrollbar
    toEnum 128 = HitTestResultContextSelection
    toEnum k = AnotherHitTestResultContext k

instance P.Ord HitTestResultContext where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes HitTestResultContext = '[]
instance O.HasParentTypes HitTestResultContext

foreign import ccall "webkit_hit_test_result_context_get_type" c_webkit_hit_test_result_context_get_type :: 
    IO GType

instance B.Types.TypedObject HitTestResultContext where
    glibType = c_webkit_hit_test_result_context_get_type

instance B.Types.BoxedFlags HitTestResultContext

instance IsGFlag HitTestResultContext

-- Flags FindOptions
-- | Enum values used to specify search options.
data FindOptions = 
      FindOptionsNone
    -- ^ no search flags, this means a case
    --   sensitive, no wrap, forward only search.
    | FindOptionsCaseInsensitive
    -- ^ case insensitive search.
    | FindOptionsAtWordStarts
    -- ^ search text only at the
    --   begining of the words.
    | FindOptionsTreatMedialCapitalAsWordStart
    -- ^ treat
    --   capital letters in the middle of words as word start.
    | FindOptionsBackwards
    -- ^ search backwards.
    | FindOptionsWrapAround
    -- ^ if not present search will stop
    --   at the end of the document.
    | AnotherFindOptions Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum FindOptions where
    fromEnum FindOptionsNone = 0
    fromEnum FindOptionsCaseInsensitive = 1
    fromEnum FindOptionsAtWordStarts = 2
    fromEnum FindOptionsTreatMedialCapitalAsWordStart = 4
    fromEnum FindOptionsBackwards = 8
    fromEnum FindOptionsWrapAround = 16
    fromEnum (AnotherFindOptions k) = k

    toEnum 0 = FindOptionsNone
    toEnum 1 = FindOptionsCaseInsensitive
    toEnum 2 = FindOptionsAtWordStarts
    toEnum 4 = FindOptionsTreatMedialCapitalAsWordStart
    toEnum 8 = FindOptionsBackwards
    toEnum 16 = FindOptionsWrapAround
    toEnum k = AnotherFindOptions k

instance P.Ord FindOptions where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes FindOptions = '[]
instance O.HasParentTypes FindOptions

foreign import ccall "webkit_find_options_get_type" c_webkit_find_options_get_type :: 
    IO GType

instance B.Types.TypedObject FindOptions where
    glibType = c_webkit_find_options_get_type

instance B.Types.BoxedFlags FindOptions

instance IsGFlag FindOptions

-- Flags EditorTypingAttributes
-- | Enum values with flags representing typing attributes.
-- 
-- /Since: 2.10/
data EditorTypingAttributes = 
      EditorTypingAttributesNone
    -- ^ No typing attributes.
    | EditorTypingAttributesBold
    -- ^ Bold typing attribute.
    | EditorTypingAttributesItalic
    -- ^ Italic typing attribute.
    | EditorTypingAttributesUnderline
    -- ^ Underline typing attribute.
    | EditorTypingAttributesStrikethrough
    -- ^ Strikethrough typing attribute.
    | AnotherEditorTypingAttributes Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum EditorTypingAttributes where
    fromEnum EditorTypingAttributesNone = 2
    fromEnum EditorTypingAttributesBold = 4
    fromEnum EditorTypingAttributesItalic = 8
    fromEnum EditorTypingAttributesUnderline = 16
    fromEnum EditorTypingAttributesStrikethrough = 32
    fromEnum (AnotherEditorTypingAttributes k) = k

    toEnum 2 = EditorTypingAttributesNone
    toEnum 4 = EditorTypingAttributesBold
    toEnum 8 = EditorTypingAttributesItalic
    toEnum 16 = EditorTypingAttributesUnderline
    toEnum 32 = EditorTypingAttributesStrikethrough
    toEnum k = AnotherEditorTypingAttributes k

instance P.Ord EditorTypingAttributes where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

type instance O.ParentTypes EditorTypingAttributes = '[]
instance O.HasParentTypes EditorTypingAttributes

foreign import ccall "webkit_editor_typing_attributes_get_type" c_webkit_editor_typing_attributes_get_type :: 
    IO GType

instance B.Types.TypedObject EditorTypingAttributes where
    glibType = c_webkit_editor_typing_attributes_get_type

instance B.Types.BoxedFlags EditorTypingAttributes

instance IsGFlag EditorTypingAttributes


