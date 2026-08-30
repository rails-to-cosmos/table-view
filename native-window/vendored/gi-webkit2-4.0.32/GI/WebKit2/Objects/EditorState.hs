{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Web editor state.
-- 
-- WebKitEditorState represents the state of a t'GI.WebKit2.Objects.WebView.WebView' editor.
-- Use 'GI.WebKit2.Objects.WebView.webViewGetEditorState' to get the WebKitEditorState
-- of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- /Since: 2.10/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.EditorState
    ( 

-- * Exported types
    EditorState(..)                         ,
    IsEditorState                           ,
    toEditorState                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isCopyAvailable]("GI.WebKit2.Objects.EditorState#g:method:isCopyAvailable"), [isCutAvailable]("GI.WebKit2.Objects.EditorState#g:method:isCutAvailable"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isPasteAvailable]("GI.WebKit2.Objects.EditorState#g:method:isPasteAvailable"), [isRedoAvailable]("GI.WebKit2.Objects.EditorState#g:method:isRedoAvailable"), [isUndoAvailable]("GI.WebKit2.Objects.EditorState#g:method:isUndoAvailable"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getTypingAttributes]("GI.WebKit2.Objects.EditorState#g:method:getTypingAttributes").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveEditorStateMethod                ,
#endif

-- ** getTypingAttributes #method:getTypingAttributes#

#if defined(ENABLE_OVERLOADING)
    EditorStateGetTypingAttributesMethodInfo,
#endif
    editorStateGetTypingAttributes          ,


-- ** isCopyAvailable #method:isCopyAvailable#

#if defined(ENABLE_OVERLOADING)
    EditorStateIsCopyAvailableMethodInfo    ,
#endif
    editorStateIsCopyAvailable              ,


-- ** isCutAvailable #method:isCutAvailable#

#if defined(ENABLE_OVERLOADING)
    EditorStateIsCutAvailableMethodInfo     ,
#endif
    editorStateIsCutAvailable               ,


-- ** isPasteAvailable #method:isPasteAvailable#

#if defined(ENABLE_OVERLOADING)
    EditorStateIsPasteAvailableMethodInfo   ,
#endif
    editorStateIsPasteAvailable             ,


-- ** isRedoAvailable #method:isRedoAvailable#

#if defined(ENABLE_OVERLOADING)
    EditorStateIsRedoAvailableMethodInfo    ,
#endif
    editorStateIsRedoAvailable              ,


-- ** isUndoAvailable #method:isUndoAvailable#

#if defined(ENABLE_OVERLOADING)
    EditorStateIsUndoAvailableMethodInfo    ,
#endif
    editorStateIsUndoAvailable              ,




 -- * Properties


-- ** typingAttributes #attr:typingAttributes#
-- | Bitmask of t'GI.WebKit2.Flags.EditorTypingAttributes' flags.
-- See 'GI.WebKit2.Objects.EditorState.editorStateGetTypingAttributes' for more information.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    EditorStateTypingAttributesPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    editorStateTypingAttributes             ,
#endif
    getEditorStateTypingAttributes          ,




 -- * Signals


-- ** changed #signal:changed#

    EditorStateChangedCallback              ,
#if defined(ENABLE_OVERLOADING)
    EditorStateChangedSignalInfo            ,
#endif
    afterEditorStateChanged                 ,
    onEditorStateChanged                    ,




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
newtype EditorState = EditorState (SP.ManagedPtr EditorState)
    deriving (Eq)

instance SP.ManagedPtrNewtype EditorState where
    toManagedPtr (EditorState p) = p

foreign import ccall "webkit_editor_state_get_type"
    c_webkit_editor_state_get_type :: IO B.Types.GType

instance B.Types.TypedObject EditorState where
    glibType = c_webkit_editor_state_get_type

instance B.Types.GObject EditorState

-- | Type class for types which can be safely cast to t'EditorState', for instance with `toEditorState`.
class (SP.GObject o, O.IsDescendantOf EditorState o) => IsEditorState o
instance (SP.GObject o, O.IsDescendantOf EditorState o) => IsEditorState o

instance O.HasParentTypes EditorState
type instance O.ParentTypes EditorState = '[GObject.Object.Object]

-- | Cast to t'EditorState', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toEditorState :: (MIO.MonadIO m, IsEditorState o) => o -> m EditorState
toEditorState = MIO.liftIO . B.ManagedPtr.unsafeCastTo EditorState

-- | Convert t'EditorState' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe EditorState) where
    gvalueGType_ = c_webkit_editor_state_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr EditorState)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr EditorState)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject EditorState ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveEditorStateMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveEditorStateMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEditorStateMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEditorStateMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEditorStateMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEditorStateMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEditorStateMethod "isCopyAvailable" o = EditorStateIsCopyAvailableMethodInfo
    ResolveEditorStateMethod "isCutAvailable" o = EditorStateIsCutAvailableMethodInfo
    ResolveEditorStateMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEditorStateMethod "isPasteAvailable" o = EditorStateIsPasteAvailableMethodInfo
    ResolveEditorStateMethod "isRedoAvailable" o = EditorStateIsRedoAvailableMethodInfo
    ResolveEditorStateMethod "isUndoAvailable" o = EditorStateIsUndoAvailableMethodInfo
    ResolveEditorStateMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEditorStateMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEditorStateMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEditorStateMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEditorStateMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEditorStateMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEditorStateMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEditorStateMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEditorStateMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEditorStateMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEditorStateMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEditorStateMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEditorStateMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEditorStateMethod "getTypingAttributes" o = EditorStateGetTypingAttributesMethodInfo
    ResolveEditorStateMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEditorStateMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEditorStateMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEditorStateMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEditorStateMethod t EditorState, O.OverloadedMethod info EditorState p) => OL.IsLabel t (EditorState -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveEditorStateMethod t EditorState, O.OverloadedMethod info EditorState p, R.HasField t EditorState p) => R.HasField t EditorState p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveEditorStateMethod t EditorState, O.OverloadedMethodInfo info EditorState) => OL.IsLabel t (O.MethodProxy info EditorState) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal EditorState::changed
-- | Emitted when the @/WebKitEdtorState/@ is changed.
-- 
-- /Since: 2.44/
type EditorStateChangedCallback =
    IO ()

type C_EditorStateChangedCallback =
    Ptr EditorState ->                      -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EditorStateChangedCallback`.
foreign import ccall "wrapper"
    mk_EditorStateChangedCallback :: C_EditorStateChangedCallback -> IO (FunPtr C_EditorStateChangedCallback)

wrap_EditorStateChangedCallback :: 
    GObject a => (a -> EditorStateChangedCallback) ->
    C_EditorStateChangedCallback
wrap_EditorStateChangedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' editorState #changed callback
-- @
-- 
-- 
onEditorStateChanged :: (IsEditorState a, MonadIO m) => a -> ((?self :: a) => EditorStateChangedCallback) -> m SignalHandlerId
onEditorStateChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_EditorStateChangedCallback wrapped
    wrapped'' <- mk_EditorStateChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' editorState #changed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterEditorStateChanged :: (IsEditorState a, MonadIO m) => a -> ((?self :: a) => EditorStateChangedCallback) -> m SignalHandlerId
afterEditorStateChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_EditorStateChangedCallback wrapped
    wrapped'' <- mk_EditorStateChangedCallback wrapped'
    connectSignalFunPtr obj "changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EditorStateChangedSignalInfo
instance SignalInfo EditorStateChangedSignalInfo where
    type HaskellCallbackType EditorStateChangedSignalInfo = EditorStateChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EditorStateChangedCallback cb
        cb'' <- mk_EditorStateChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState::changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#g:signal:changed"})

#endif

-- VVV Prop "typing-attributes"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@typing-attributes@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' editorState #typingAttributes
-- @
getEditorStateTypingAttributes :: (MonadIO m, IsEditorState o) => o -> m Word32
getEditorStateTypingAttributes obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt32 obj "typing-attributes"

#if defined(ENABLE_OVERLOADING)
data EditorStateTypingAttributesPropertyInfo
instance AttrInfo EditorStateTypingAttributesPropertyInfo where
    type AttrAllowedOps EditorStateTypingAttributesPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint EditorStateTypingAttributesPropertyInfo = IsEditorState
    type AttrSetTypeConstraint EditorStateTypingAttributesPropertyInfo = (~) ()
    type AttrTransferTypeConstraint EditorStateTypingAttributesPropertyInfo = (~) ()
    type AttrTransferType EditorStateTypingAttributesPropertyInfo = ()
    type AttrGetType EditorStateTypingAttributesPropertyInfo = Word32
    type AttrLabel EditorStateTypingAttributesPropertyInfo = "typing-attributes"
    type AttrOrigin EditorStateTypingAttributesPropertyInfo = EditorState
    attrGet = getEditorStateTypingAttributes
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.typingAttributes"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#g:attr:typingAttributes"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EditorState
type instance O.AttributeList EditorState = EditorStateAttributeList
type EditorStateAttributeList = ('[ '("typingAttributes", EditorStateTypingAttributesPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
editorStateTypingAttributes :: AttrLabelProxy "typingAttributes"
editorStateTypingAttributes = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EditorState = EditorStateSignalList
type EditorStateSignalList = ('[ '("changed", EditorStateChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method EditorState::get_typing_attributes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_get_typing_attributes" webkit_editor_state_get_typing_attributes :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO Word32

-- | Gets the typing attributes at the current cursor position.
-- 
-- If there is a selection, this returns the typing attributes
-- of the selected text. Note that in case of a selection,
-- typing attributes are considered active only when they are
-- present throughout the selection.
-- 
-- /Since: 2.10/
editorStateGetTypingAttributes ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Word32
    -- ^ __Returns:__ a bitmask of t'GI.WebKit2.Flags.EditorTypingAttributes' flags
editorStateGetTypingAttributes editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_get_typing_attributes editorState'
    touchManagedPtr editorState
    return result

#if defined(ENABLE_OVERLOADING)
data EditorStateGetTypingAttributesMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateGetTypingAttributesMethodInfo a signature where
    overloadedMethod = editorStateGetTypingAttributes

instance O.OverloadedMethodInfo EditorStateGetTypingAttributesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateGetTypingAttributes",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateGetTypingAttributes"
        })


#endif

-- method EditorState::is_copy_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_is_copy_available" webkit_editor_state_is_copy_available :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO CInt

-- | Gets whether a copy command can be issued.
-- 
-- /Since: 2.20/
editorStateIsCopyAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if copy is currently available
editorStateIsCopyAvailable editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_is_copy_available editorState'
    let result' = (/= 0) result
    touchManagedPtr editorState
    return result'

#if defined(ENABLE_OVERLOADING)
data EditorStateIsCopyAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateIsCopyAvailableMethodInfo a signature where
    overloadedMethod = editorStateIsCopyAvailable

instance O.OverloadedMethodInfo EditorStateIsCopyAvailableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateIsCopyAvailable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateIsCopyAvailable"
        })


#endif

-- method EditorState::is_cut_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_is_cut_available" webkit_editor_state_is_cut_available :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO CInt

-- | Gets whether a cut command can be issued.
-- 
-- /Since: 2.20/
editorStateIsCutAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if cut is currently available
editorStateIsCutAvailable editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_is_cut_available editorState'
    let result' = (/= 0) result
    touchManagedPtr editorState
    return result'

#if defined(ENABLE_OVERLOADING)
data EditorStateIsCutAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateIsCutAvailableMethodInfo a signature where
    overloadedMethod = editorStateIsCutAvailable

instance O.OverloadedMethodInfo EditorStateIsCutAvailableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateIsCutAvailable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateIsCutAvailable"
        })


#endif

-- method EditorState::is_paste_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_is_paste_available" webkit_editor_state_is_paste_available :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO CInt

-- | Gets whether a paste command can be issued.
-- 
-- /Since: 2.20/
editorStateIsPasteAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if paste is currently available
editorStateIsPasteAvailable editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_is_paste_available editorState'
    let result' = (/= 0) result
    touchManagedPtr editorState
    return result'

#if defined(ENABLE_OVERLOADING)
data EditorStateIsPasteAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateIsPasteAvailableMethodInfo a signature where
    overloadedMethod = editorStateIsPasteAvailable

instance O.OverloadedMethodInfo EditorStateIsPasteAvailableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateIsPasteAvailable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateIsPasteAvailable"
        })


#endif

-- method EditorState::is_redo_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_is_redo_available" webkit_editor_state_is_redo_available :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO CInt

-- | Gets whether a redo command can be issued.
-- 
-- /Since: 2.20/
editorStateIsRedoAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if redo is currently available
editorStateIsRedoAvailable editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_is_redo_available editorState'
    let result' = (/= 0) result
    touchManagedPtr editorState
    return result'

#if defined(ENABLE_OVERLOADING)
data EditorStateIsRedoAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateIsRedoAvailableMethodInfo a signature where
    overloadedMethod = editorStateIsRedoAvailable

instance O.OverloadedMethodInfo EditorStateIsRedoAvailableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateIsRedoAvailable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateIsRedoAvailable"
        })


#endif

-- method EditorState::is_undo_available
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "editor_state"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "EditorState" }
--           , argCType = Just "WebKitEditorState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitEditorState"
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

foreign import ccall "webkit_editor_state_is_undo_available" webkit_editor_state_is_undo_available :: 
    Ptr EditorState ->                      -- editor_state : TInterface (Name {namespace = "WebKit2", name = "EditorState"})
    IO CInt

-- | Gets whether an undo command can be issued.
-- 
-- /Since: 2.20/
editorStateIsUndoAvailable ::
    (B.CallStack.HasCallStack, MonadIO m, IsEditorState a) =>
    a
    -- ^ /@editorState@/: a t'GI.WebKit2.Objects.EditorState.EditorState'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if undo is currently available
editorStateIsUndoAvailable editorState = liftIO $ do
    editorState' <- unsafeManagedPtrCastPtr editorState
    result <- webkit_editor_state_is_undo_available editorState'
    let result' = (/= 0) result
    touchManagedPtr editorState
    return result'

#if defined(ENABLE_OVERLOADING)
data EditorStateIsUndoAvailableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEditorState a) => O.OverloadedMethod EditorStateIsUndoAvailableMethodInfo a signature where
    overloadedMethod = editorStateIsUndoAvailable

instance O.OverloadedMethodInfo EditorStateIsUndoAvailableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.EditorState.editorStateIsUndoAvailable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-EditorState.html#v:editorStateIsUndoAvailable"
        })


#endif


