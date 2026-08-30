{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Result of a Hit Test.
-- 
-- A Hit Test is an operation to get context information about a given
-- point in a t'GI.WebKit2.Objects.WebView.WebView'. t'GI.WebKit2.Objects.HitTestResult.HitTestResult' represents the
-- result of a Hit Test. It provides context information about what is
-- at the coordinates of the Hit Test, such as if there\'s a link,
-- an image or a media.
-- 
-- You can get the context of the HitTestResult with
-- 'GI.WebKit2.Objects.HitTestResult.hitTestResultGetContext' that returns a bitmask of
-- t'GI.WebKit2.Flags.HitTestResultContext' flags. You can also use
-- 'GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsLink', 'GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsImage' and
-- 'GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsMedia' to determine whether there\'s
-- a link, image or a media element at the coordinates of the Hit Test.
-- Note that it\'s possible that several t'GI.WebKit2.Flags.HitTestResultContext' flags
-- are active at the same time, for example if there\'s a link containing an image.
-- 
-- When the mouse is moved over a t'GI.WebKit2.Objects.WebView.WebView' a Hit Test is performed
-- for the mouse coordinates and [WebView::mouseTargetChanged]("GI.WebKit2.Objects.WebView#g:signal:mouseTargetChanged")
-- signal is emitted with a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.HitTestResult
    ( 

-- * Exported types
    HitTestResult(..)                       ,
    IsHitTestResult                         ,
    toHitTestResult                         ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [contextIsEditable]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsEditable"), [contextIsImage]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsImage"), [contextIsLink]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsLink"), [contextIsMedia]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsMedia"), [contextIsScrollbar]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsScrollbar"), [contextIsSelection]("GI.WebKit2.Objects.HitTestResult#g:method:contextIsSelection"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getContext]("GI.WebKit2.Objects.HitTestResult#g:method:getContext"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getImageUri]("GI.WebKit2.Objects.HitTestResult#g:method:getImageUri"), [getLinkLabel]("GI.WebKit2.Objects.HitTestResult#g:method:getLinkLabel"), [getLinkTitle]("GI.WebKit2.Objects.HitTestResult#g:method:getLinkTitle"), [getLinkUri]("GI.WebKit2.Objects.HitTestResult#g:method:getLinkUri"), [getMediaUri]("GI.WebKit2.Objects.HitTestResult#g:method:getMediaUri"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveHitTestResultMethod              ,
#endif

-- ** contextIsEditable #method:contextIsEditable#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsEditableMethodInfo,
#endif
    hitTestResultContextIsEditable          ,


-- ** contextIsImage #method:contextIsImage#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsImageMethodInfo   ,
#endif
    hitTestResultContextIsImage             ,


-- ** contextIsLink #method:contextIsLink#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsLinkMethodInfo    ,
#endif
    hitTestResultContextIsLink              ,


-- ** contextIsMedia #method:contextIsMedia#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsMediaMethodInfo   ,
#endif
    hitTestResultContextIsMedia             ,


-- ** contextIsScrollbar #method:contextIsScrollbar#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsScrollbarMethodInfo,
#endif
    hitTestResultContextIsScrollbar         ,


-- ** contextIsSelection #method:contextIsSelection#

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextIsSelectionMethodInfo,
#endif
    hitTestResultContextIsSelection         ,


-- ** getContext #method:getContext#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetContextMethodInfo       ,
#endif
    hitTestResultGetContext                 ,


-- ** getImageUri #method:getImageUri#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetImageUriMethodInfo      ,
#endif
    hitTestResultGetImageUri                ,


-- ** getLinkLabel #method:getLinkLabel#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetLinkLabelMethodInfo     ,
#endif
    hitTestResultGetLinkLabel               ,


-- ** getLinkTitle #method:getLinkTitle#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetLinkTitleMethodInfo     ,
#endif
    hitTestResultGetLinkTitle               ,


-- ** getLinkUri #method:getLinkUri#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetLinkUriMethodInfo       ,
#endif
    hitTestResultGetLinkUri                 ,


-- ** getMediaUri #method:getMediaUri#

#if defined(ENABLE_OVERLOADING)
    HitTestResultGetMediaUriMethodInfo      ,
#endif
    hitTestResultGetMediaUri                ,




 -- * Properties


-- ** context #attr:context#
-- | Bitmask of t'GI.WebKit2.Flags.HitTestResultContext' flags representing
-- the context of the t'GI.WebKit2.Objects.HitTestResult.HitTestResult'.

#if defined(ENABLE_OVERLOADING)
    HitTestResultContextPropertyInfo        ,
#endif
    constructHitTestResultContext           ,
    getHitTestResultContext                 ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultContext                    ,
#endif


-- ** imageUri #attr:imageUri#
-- | The URI of the image if flag 'GI.WebKit2.Flags.HitTestResultContextImage'
-- is present in [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context")

#if defined(ENABLE_OVERLOADING)
    HitTestResultImageUriPropertyInfo       ,
#endif
    constructHitTestResultImageUri          ,
    getHitTestResultImageUri                ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultImageUri                   ,
#endif


-- ** linkLabel #attr:linkLabel#
-- | The label of the link if flag 'GI.WebKit2.Flags.HitTestResultContextLink'
-- is present in [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context")

#if defined(ENABLE_OVERLOADING)
    HitTestResultLinkLabelPropertyInfo      ,
#endif
    constructHitTestResultLinkLabel         ,
    getHitTestResultLinkLabel               ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultLinkLabel                  ,
#endif


-- ** linkTitle #attr:linkTitle#
-- | The title of the link if flag 'GI.WebKit2.Flags.HitTestResultContextLink'
-- is present in [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context")

#if defined(ENABLE_OVERLOADING)
    HitTestResultLinkTitlePropertyInfo      ,
#endif
    constructHitTestResultLinkTitle         ,
    getHitTestResultLinkTitle               ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultLinkTitle                  ,
#endif


-- ** linkUri #attr:linkUri#
-- | The URI of the link if flag 'GI.WebKit2.Flags.HitTestResultContextLink'
-- is present in [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context")

#if defined(ENABLE_OVERLOADING)
    HitTestResultLinkUriPropertyInfo        ,
#endif
    constructHitTestResultLinkUri           ,
    getHitTestResultLinkUri                 ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultLinkUri                    ,
#endif


-- ** mediaUri #attr:mediaUri#
-- | The URI of the media if flag 'GI.WebKit2.Flags.HitTestResultContextMedia'
-- is present in [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context")

#if defined(ENABLE_OVERLOADING)
    HitTestResultMediaUriPropertyInfo       ,
#endif
    constructHitTestResultMediaUri          ,
    getHitTestResultMediaUri                ,
#if defined(ENABLE_OVERLOADING)
    hitTestResultMediaUri                   ,
#endif




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
import qualified GI.GObject.Objects.Object as GObject.Object

#else
import qualified GI.GObject.Objects.Object as GObject.Object

#endif

-- | Memory-managed wrapper type.
newtype HitTestResult = HitTestResult (SP.ManagedPtr HitTestResult)
    deriving (Eq)

instance SP.ManagedPtrNewtype HitTestResult where
    toManagedPtr (HitTestResult p) = p

foreign import ccall "webkit_hit_test_result_get_type"
    c_webkit_hit_test_result_get_type :: IO B.Types.GType

instance B.Types.TypedObject HitTestResult where
    glibType = c_webkit_hit_test_result_get_type

instance B.Types.GObject HitTestResult

-- | Type class for types which can be safely cast to t'HitTestResult', for instance with `toHitTestResult`.
class (SP.GObject o, O.IsDescendantOf HitTestResult o) => IsHitTestResult o
instance (SP.GObject o, O.IsDescendantOf HitTestResult o) => IsHitTestResult o

instance O.HasParentTypes HitTestResult
type instance O.ParentTypes HitTestResult = '[GObject.Object.Object]

-- | Cast to t'HitTestResult', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toHitTestResult :: (MIO.MonadIO m, IsHitTestResult o) => o -> m HitTestResult
toHitTestResult = MIO.liftIO . B.ManagedPtr.unsafeCastTo HitTestResult

-- | Convert t'HitTestResult' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe HitTestResult) where
    gvalueGType_ = c_webkit_hit_test_result_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr HitTestResult)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr HitTestResult)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject HitTestResult ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveHitTestResultMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveHitTestResultMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHitTestResultMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHitTestResultMethod "contextIsEditable" o = HitTestResultContextIsEditableMethodInfo
    ResolveHitTestResultMethod "contextIsImage" o = HitTestResultContextIsImageMethodInfo
    ResolveHitTestResultMethod "contextIsLink" o = HitTestResultContextIsLinkMethodInfo
    ResolveHitTestResultMethod "contextIsMedia" o = HitTestResultContextIsMediaMethodInfo
    ResolveHitTestResultMethod "contextIsScrollbar" o = HitTestResultContextIsScrollbarMethodInfo
    ResolveHitTestResultMethod "contextIsSelection" o = HitTestResultContextIsSelectionMethodInfo
    ResolveHitTestResultMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHitTestResultMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHitTestResultMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHitTestResultMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHitTestResultMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHitTestResultMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHitTestResultMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHitTestResultMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHitTestResultMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHitTestResultMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHitTestResultMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHitTestResultMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHitTestResultMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHitTestResultMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHitTestResultMethod "getContext" o = HitTestResultGetContextMethodInfo
    ResolveHitTestResultMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHitTestResultMethod "getImageUri" o = HitTestResultGetImageUriMethodInfo
    ResolveHitTestResultMethod "getLinkLabel" o = HitTestResultGetLinkLabelMethodInfo
    ResolveHitTestResultMethod "getLinkTitle" o = HitTestResultGetLinkTitleMethodInfo
    ResolveHitTestResultMethod "getLinkUri" o = HitTestResultGetLinkUriMethodInfo
    ResolveHitTestResultMethod "getMediaUri" o = HitTestResultGetMediaUriMethodInfo
    ResolveHitTestResultMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHitTestResultMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHitTestResultMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHitTestResultMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHitTestResultMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHitTestResultMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHitTestResultMethod t HitTestResult, O.OverloadedMethod info HitTestResult p) => OL.IsLabel t (HitTestResult -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveHitTestResultMethod t HitTestResult, O.OverloadedMethod info HitTestResult p, R.HasField t HitTestResult p) => R.HasField t HitTestResult p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveHitTestResultMethod t HitTestResult, O.OverloadedMethodInfo info HitTestResult) => OL.IsLabel t (O.MethodProxy info HitTestResult) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "context"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@context@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #context
-- @
getHitTestResultContext :: (MonadIO m, IsHitTestResult o) => o -> m Word32
getHitTestResultContext obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "context"

-- | Construct a t'GValueConstruct' with valid value for the “@context@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultContext :: (IsHitTestResult o, MIO.MonadIO m) => Word32 -> m (GValueConstruct o)
constructHitTestResultContext val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyUInt32 "context" val

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextPropertyInfo
instance AttrInfo HitTestResultContextPropertyInfo where
    type AttrAllowedOps HitTestResultContextPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HitTestResultContextPropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultContextPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint HitTestResultContextPropertyInfo = (~) Word32
    type AttrTransferType HitTestResultContextPropertyInfo = Word32
    type AttrGetType HitTestResultContextPropertyInfo = Word32
    type AttrLabel HitTestResultContextPropertyInfo = "context"
    type AttrOrigin HitTestResultContextPropertyInfo = HitTestResult
    attrGet = getHitTestResultContext
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultContext
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.context"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:context"
        })
#endif

-- VVV Prop "image-uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@image-uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #imageUri
-- @
getHitTestResultImageUri :: (MonadIO m, IsHitTestResult o) => o -> m (Maybe T.Text)
getHitTestResultImageUri obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "image-uri"

-- | Construct a t'GValueConstruct' with valid value for the “@image-uri@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultImageUri :: (IsHitTestResult o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructHitTestResultImageUri val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "image-uri" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data HitTestResultImageUriPropertyInfo
instance AttrInfo HitTestResultImageUriPropertyInfo where
    type AttrAllowedOps HitTestResultImageUriPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HitTestResultImageUriPropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultImageUriPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HitTestResultImageUriPropertyInfo = (~) T.Text
    type AttrTransferType HitTestResultImageUriPropertyInfo = T.Text
    type AttrGetType HitTestResultImageUriPropertyInfo = (Maybe T.Text)
    type AttrLabel HitTestResultImageUriPropertyInfo = "image-uri"
    type AttrOrigin HitTestResultImageUriPropertyInfo = HitTestResult
    attrGet = getHitTestResultImageUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultImageUri
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.imageUri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:imageUri"
        })
#endif

-- VVV Prop "link-label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@link-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #linkLabel
-- @
getHitTestResultLinkLabel :: (MonadIO m, IsHitTestResult o) => o -> m (Maybe T.Text)
getHitTestResultLinkLabel obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "link-label"

-- | Construct a t'GValueConstruct' with valid value for the “@link-label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultLinkLabel :: (IsHitTestResult o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructHitTestResultLinkLabel val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "link-label" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkLabelPropertyInfo
instance AttrInfo HitTestResultLinkLabelPropertyInfo where
    type AttrAllowedOps HitTestResultLinkLabelPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HitTestResultLinkLabelPropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultLinkLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HitTestResultLinkLabelPropertyInfo = (~) T.Text
    type AttrTransferType HitTestResultLinkLabelPropertyInfo = T.Text
    type AttrGetType HitTestResultLinkLabelPropertyInfo = (Maybe T.Text)
    type AttrLabel HitTestResultLinkLabelPropertyInfo = "link-label"
    type AttrOrigin HitTestResultLinkLabelPropertyInfo = HitTestResult
    attrGet = getHitTestResultLinkLabel
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultLinkLabel
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.linkLabel"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:linkLabel"
        })
#endif

-- VVV Prop "link-title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@link-title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #linkTitle
-- @
getHitTestResultLinkTitle :: (MonadIO m, IsHitTestResult o) => o -> m (Maybe T.Text)
getHitTestResultLinkTitle obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "link-title"

-- | Construct a t'GValueConstruct' with valid value for the “@link-title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultLinkTitle :: (IsHitTestResult o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructHitTestResultLinkTitle val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "link-title" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkTitlePropertyInfo
instance AttrInfo HitTestResultLinkTitlePropertyInfo where
    type AttrAllowedOps HitTestResultLinkTitlePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HitTestResultLinkTitlePropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultLinkTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HitTestResultLinkTitlePropertyInfo = (~) T.Text
    type AttrTransferType HitTestResultLinkTitlePropertyInfo = T.Text
    type AttrGetType HitTestResultLinkTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel HitTestResultLinkTitlePropertyInfo = "link-title"
    type AttrOrigin HitTestResultLinkTitlePropertyInfo = HitTestResult
    attrGet = getHitTestResultLinkTitle
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultLinkTitle
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.linkTitle"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:linkTitle"
        })
#endif

-- VVV Prop "link-uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@link-uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #linkUri
-- @
getHitTestResultLinkUri :: (MonadIO m, IsHitTestResult o) => o -> m (Maybe T.Text)
getHitTestResultLinkUri obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "link-uri"

-- | Construct a t'GValueConstruct' with valid value for the “@link-uri@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultLinkUri :: (IsHitTestResult o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructHitTestResultLinkUri val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "link-uri" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data HitTestResultLinkUriPropertyInfo
instance AttrInfo HitTestResultLinkUriPropertyInfo where
    type AttrAllowedOps HitTestResultLinkUriPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HitTestResultLinkUriPropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultLinkUriPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HitTestResultLinkUriPropertyInfo = (~) T.Text
    type AttrTransferType HitTestResultLinkUriPropertyInfo = T.Text
    type AttrGetType HitTestResultLinkUriPropertyInfo = (Maybe T.Text)
    type AttrLabel HitTestResultLinkUriPropertyInfo = "link-uri"
    type AttrOrigin HitTestResultLinkUriPropertyInfo = HitTestResult
    attrGet = getHitTestResultLinkUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultLinkUri
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.linkUri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:linkUri"
        })
#endif

-- VVV Prop "media-uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@media-uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' hitTestResult #mediaUri
-- @
getHitTestResultMediaUri :: (MonadIO m, IsHitTestResult o) => o -> m (Maybe T.Text)
getHitTestResultMediaUri obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "media-uri"

-- | Construct a t'GValueConstruct' with valid value for the “@media-uri@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHitTestResultMediaUri :: (IsHitTestResult o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructHitTestResultMediaUri val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "media-uri" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data HitTestResultMediaUriPropertyInfo
instance AttrInfo HitTestResultMediaUriPropertyInfo where
    type AttrAllowedOps HitTestResultMediaUriPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HitTestResultMediaUriPropertyInfo = IsHitTestResult
    type AttrSetTypeConstraint HitTestResultMediaUriPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HitTestResultMediaUriPropertyInfo = (~) T.Text
    type AttrTransferType HitTestResultMediaUriPropertyInfo = T.Text
    type AttrGetType HitTestResultMediaUriPropertyInfo = (Maybe T.Text)
    type AttrLabel HitTestResultMediaUriPropertyInfo = "media-uri"
    type AttrOrigin HitTestResultMediaUriPropertyInfo = HitTestResult
    attrGet = getHitTestResultMediaUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructHitTestResultMediaUri
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.mediaUri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#g:attr:mediaUri"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HitTestResult
type instance O.AttributeList HitTestResult = HitTestResultAttributeList
type HitTestResultAttributeList = ('[ '("context", HitTestResultContextPropertyInfo), '("imageUri", HitTestResultImageUriPropertyInfo), '("linkLabel", HitTestResultLinkLabelPropertyInfo), '("linkTitle", HitTestResultLinkTitlePropertyInfo), '("linkUri", HitTestResultLinkUriPropertyInfo), '("mediaUri", HitTestResultMediaUriPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
hitTestResultContext :: AttrLabelProxy "context"
hitTestResultContext = AttrLabelProxy

hitTestResultImageUri :: AttrLabelProxy "imageUri"
hitTestResultImageUri = AttrLabelProxy

hitTestResultLinkLabel :: AttrLabelProxy "linkLabel"
hitTestResultLinkLabel = AttrLabelProxy

hitTestResultLinkTitle :: AttrLabelProxy "linkTitle"
hitTestResultLinkTitle = AttrLabelProxy

hitTestResultLinkUri :: AttrLabelProxy "linkUri"
hitTestResultLinkUri = AttrLabelProxy

hitTestResultMediaUri :: AttrLabelProxy "mediaUri"
hitTestResultMediaUri = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HitTestResult = HitTestResultSignalList
type HitTestResultSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method HitTestResult::context_is_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_editable" webkit_hit_test_result_context_is_editable :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextEditable' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
hitTestResultContextIsEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s an editable element at the coordinates of the /@hitTestResult@/,
    --    or 'P.False' otherwise
hitTestResultContextIsEditable hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_editable hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsEditableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsEditableMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsEditable

instance O.OverloadedMethodInfo HitTestResultContextIsEditableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsEditable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsEditable"
        })


#endif

-- method HitTestResult::context_is_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_image" webkit_hit_test_result_context_is_image :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextImage' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
hitTestResultContextIsImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s an image element in the coordinates of the Hit Test,
    --    or 'P.False' otherwise
hitTestResultContextIsImage hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_image hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsImageMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsImageMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsImage

instance O.OverloadedMethodInfo HitTestResultContextIsImageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsImage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsImage"
        })


#endif

-- method HitTestResult::context_is_link
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_link" webkit_hit_test_result_context_is_link :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextLink' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
hitTestResultContextIsLink ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s a link element in the coordinates of the Hit Test,
    --    or 'P.False' otherwise
hitTestResultContextIsLink hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_link hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsLinkMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsLinkMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsLink

instance O.OverloadedMethodInfo HitTestResultContextIsLinkMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsLink",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsLink"
        })


#endif

-- method HitTestResult::context_is_media
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_media" webkit_hit_test_result_context_is_media :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextMedia' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
hitTestResultContextIsMedia ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s a media element in the coordinates of the Hit Test,
    --    or 'P.False' otherwise
hitTestResultContextIsMedia hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_media hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsMediaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsMediaMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsMedia

instance O.OverloadedMethodInfo HitTestResultContextIsMediaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsMedia",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsMedia"
        })


#endif

-- method HitTestResult::context_is_scrollbar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_scrollbar" webkit_hit_test_result_context_is_scrollbar :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextScrollbar' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
hitTestResultContextIsScrollbar ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s a scrollbar element at the coordinates of the /@hitTestResult@/,
    --    or 'P.False' otherwise
hitTestResultContextIsScrollbar hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_scrollbar hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsScrollbarMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsScrollbarMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsScrollbar

instance O.OverloadedMethodInfo HitTestResultContextIsScrollbarMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsScrollbar",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsScrollbar"
        })


#endif

-- method HitTestResult::context_is_selection
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_context_is_selection" webkit_hit_test_result_context_is_selection :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CInt

-- | Gets whether 'GI.WebKit2.Flags.HitTestResultContextSelection' flag is present in
-- [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context").
-- 
-- /Since: 2.8/
hitTestResultContextIsSelection ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there\'s a selected element at the coordinates of the /@hitTestResult@/,
    --    or 'P.False' otherwise
hitTestResultContextIsSelection hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_context_is_selection hitTestResult'
    let result' = (/= 0) result
    touchManagedPtr hitTestResult
    return result'

#if defined(ENABLE_OVERLOADING)
data HitTestResultContextIsSelectionMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultContextIsSelectionMethodInfo a signature where
    overloadedMethod = hitTestResultContextIsSelection

instance O.OverloadedMethodInfo HitTestResultContextIsSelectionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultContextIsSelection",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultContextIsSelection"
        })


#endif

-- method HitTestResult::get_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_context" webkit_hit_test_result_get_context :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO Word32

-- | Gets the value of the [HitTestResult:context]("GI.WebKit2.Objects.HitTestResult#g:attr:context") property.
hitTestResultGetContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m Word32
    -- ^ __Returns:__ a bitmask of t'GI.WebKit2.Flags.HitTestResultContext' flags
hitTestResultGetContext hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_context hitTestResult'
    touchManagedPtr hitTestResult
    return result

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetContextMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetContextMethodInfo a signature where
    overloadedMethod = hitTestResultGetContext

instance O.OverloadedMethodInfo HitTestResultGetContextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetContext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetContext"
        })


#endif

-- method HitTestResult::get_image_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_image_uri" webkit_hit_test_result_get_image_uri :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CString

-- | Gets the value of the [HitTestResult:imageUri]("GI.WebKit2.Objects.HitTestResult#g:attr:imageUri") property.
hitTestResultGetImageUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the URI of the image element in the coordinates of the Hit Test,
    --    or 'P.Nothing' if there isn\'t an image element in /@hitTestResult@/ context
hitTestResultGetImageUri hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_image_uri hitTestResult'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr hitTestResult
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetImageUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetImageUriMethodInfo a signature where
    overloadedMethod = hitTestResultGetImageUri

instance O.OverloadedMethodInfo HitTestResultGetImageUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetImageUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetImageUri"
        })


#endif

-- method HitTestResult::get_link_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_link_label" webkit_hit_test_result_get_link_label :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CString

-- | Gets the value of the [HitTestResult:linkLabel]("GI.WebKit2.Objects.HitTestResult#g:attr:linkLabel") property.
hitTestResultGetLinkLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the label of the link element in the coordinates of the Hit Test,
    --    or 'P.Nothing' if there isn\'t a link element in /@hitTestResult@/ context or the
    --    link element doesn\'t have a label
hitTestResultGetLinkLabel hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_link_label hitTestResult'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr hitTestResult
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkLabelMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetLinkLabelMethodInfo a signature where
    overloadedMethod = hitTestResultGetLinkLabel

instance O.OverloadedMethodInfo HitTestResultGetLinkLabelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetLinkLabel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetLinkLabel"
        })


#endif

-- method HitTestResult::get_link_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_link_title" webkit_hit_test_result_get_link_title :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CString

-- | Gets the value of the [HitTestResult:linkTitle]("GI.WebKit2.Objects.HitTestResult#g:attr:linkTitle") property.
hitTestResultGetLinkTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the title of the link element in the coordinates of the Hit Test,
    --    or 'P.Nothing' if there isn\'t a link element in /@hitTestResult@/ context or the
    --    link element doesn\'t have a title
hitTestResultGetLinkTitle hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_link_title hitTestResult'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr hitTestResult
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkTitleMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetLinkTitleMethodInfo a signature where
    overloadedMethod = hitTestResultGetLinkTitle

instance O.OverloadedMethodInfo HitTestResultGetLinkTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetLinkTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetLinkTitle"
        })


#endif

-- method HitTestResult::get_link_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_link_uri" webkit_hit_test_result_get_link_uri :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CString

-- | Gets the value of the [HitTestResult:linkUri]("GI.WebKit2.Objects.HitTestResult#g:attr:linkUri") property.
hitTestResultGetLinkUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the URI of the link element in the coordinates of the Hit Test,
    --    or 'P.Nothing' if there isn\'t a link element in /@hitTestResult@/ context
hitTestResultGetLinkUri hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_link_uri hitTestResult'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr hitTestResult
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetLinkUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetLinkUriMethodInfo a signature where
    overloadedMethod = hitTestResultGetLinkUri

instance O.OverloadedMethodInfo HitTestResultGetLinkUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetLinkUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetLinkUri"
        })


#endif

-- method HitTestResult::get_media_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hit_test_result"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "HitTestResult" }
--           , argCType = Just "WebKitHitTestResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitHitTestResult"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_hit_test_result_get_media_uri" webkit_hit_test_result_get_media_uri :: 
    Ptr HitTestResult ->                    -- hit_test_result : TInterface (Name {namespace = "WebKit2", name = "HitTestResult"})
    IO CString

-- | Gets the value of the [HitTestResult:mediaUri]("GI.WebKit2.Objects.HitTestResult#g:attr:mediaUri") property.
hitTestResultGetMediaUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsHitTestResult a) =>
    a
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the URI of the media element in the coordinates of the Hit Test,
    --    or 'P.Nothing' if there isn\'t a media element in /@hitTestResult@/ context
hitTestResultGetMediaUri hitTestResult = liftIO $ do
    hitTestResult' <- unsafeManagedPtrCastPtr hitTestResult
    result <- webkit_hit_test_result_get_media_uri hitTestResult'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr hitTestResult
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HitTestResultGetMediaUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHitTestResult a) => O.OverloadedMethod HitTestResultGetMediaUriMethodInfo a signature where
    overloadedMethod = hitTestResultGetMediaUri

instance O.OverloadedMethodInfo HitTestResultGetMediaUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.HitTestResult.hitTestResultGetMediaUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-HitTestResult.html#v:hitTestResultGetMediaUri"
        })


#endif


