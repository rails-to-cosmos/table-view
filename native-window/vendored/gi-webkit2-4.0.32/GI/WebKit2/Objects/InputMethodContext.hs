{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Base class for input method contexts.
-- 
-- WebKitInputMethodContext defines the interface to implement WebKit input methods.
-- The input methods are used by WebKit, when editable content is focused, to map from
-- key events to Unicode character strings.
-- 
-- An input method may consume multiple key events in sequence and finally
-- output the composed result. This is called preediting, and an input method
-- may provide feedback about this process by displaying the intermediate
-- composition states as preedit text.
-- 
-- /Since: 2.28/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.InputMethodContext
    ( 

-- * Exported types
    InputMethodContext(..)                  ,
    IsInputMethodContext                    ,
    toInputMethodContext                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [filterKeyEvent]("GI.WebKit2.Objects.InputMethodContext#g:method:filterKeyEvent"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [notifyCursorArea]("GI.WebKit2.Objects.InputMethodContext#g:method:notifyCursorArea"), [notifyFocusIn]("GI.WebKit2.Objects.InputMethodContext#g:method:notifyFocusIn"), [notifyFocusOut]("GI.WebKit2.Objects.InputMethodContext#g:method:notifyFocusOut"), [notifySurrounding]("GI.WebKit2.Objects.InputMethodContext#g:method:notifySurrounding"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [reset]("GI.WebKit2.Objects.InputMethodContext#g:method:reset"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getInputHints]("GI.WebKit2.Objects.InputMethodContext#g:method:getInputHints"), [getInputPurpose]("GI.WebKit2.Objects.InputMethodContext#g:method:getInputPurpose"), [getPreedit]("GI.WebKit2.Objects.InputMethodContext#g:method:getPreedit"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setEnablePreedit]("GI.WebKit2.Objects.InputMethodContext#g:method:setEnablePreedit"), [setInputHints]("GI.WebKit2.Objects.InputMethodContext#g:method:setInputHints"), [setInputPurpose]("GI.WebKit2.Objects.InputMethodContext#g:method:setInputPurpose"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveInputMethodContextMethod         ,
#endif

-- ** filterKeyEvent #method:filterKeyEvent#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextFilterKeyEventMethodInfo,
#endif
    inputMethodContextFilterKeyEvent        ,


-- ** getInputHints #method:getInputHints#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextGetInputHintsMethodInfo,
#endif
    inputMethodContextGetInputHints         ,


-- ** getInputPurpose #method:getInputPurpose#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextGetInputPurposeMethodInfo,
#endif
    inputMethodContextGetInputPurpose       ,


-- ** getPreedit #method:getPreedit#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextGetPreeditMethodInfo  ,
#endif
    inputMethodContextGetPreedit            ,


-- ** notifyCursorArea #method:notifyCursorArea#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextNotifyCursorAreaMethodInfo,
#endif
    inputMethodContextNotifyCursorArea      ,


-- ** notifyFocusIn #method:notifyFocusIn#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextNotifyFocusInMethodInfo,
#endif
    inputMethodContextNotifyFocusIn         ,


-- ** notifyFocusOut #method:notifyFocusOut#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextNotifyFocusOutMethodInfo,
#endif
    inputMethodContextNotifyFocusOut        ,


-- ** notifySurrounding #method:notifySurrounding#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextNotifySurroundingMethodInfo,
#endif
    inputMethodContextNotifySurrounding     ,


-- ** reset #method:reset#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextResetMethodInfo       ,
#endif
    inputMethodContextReset                 ,


-- ** setEnablePreedit #method:setEnablePreedit#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextSetEnablePreeditMethodInfo,
#endif
    inputMethodContextSetEnablePreedit      ,


-- ** setInputHints #method:setInputHints#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextSetInputHintsMethodInfo,
#endif
    inputMethodContextSetInputHints         ,


-- ** setInputPurpose #method:setInputPurpose#

#if defined(ENABLE_OVERLOADING)
    InputMethodContextSetInputPurposeMethodInfo,
#endif
    inputMethodContextSetInputPurpose       ,




 -- * Properties


-- ** inputHints #attr:inputHints#
-- | The t'GI.WebKit2.Flags.InputHints' of the input associated with this context.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    InputMethodContextInputHintsPropertyInfo,
#endif
    constructInputMethodContextInputHints   ,
    getInputMethodContextInputHints         ,
#if defined(ENABLE_OVERLOADING)
    inputMethodContextInputHints            ,
#endif
    setInputMethodContextInputHints         ,


-- ** inputPurpose #attr:inputPurpose#
-- | The t'GI.WebKit2.Enums.InputPurpose' of the input associated with this context.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    InputMethodContextInputPurposePropertyInfo,
#endif
    constructInputMethodContextInputPurpose ,
    getInputMethodContextInputPurpose       ,
#if defined(ENABLE_OVERLOADING)
    inputMethodContextInputPurpose          ,
#endif
    setInputMethodContextInputPurpose       ,




 -- * Signals


-- ** committed #signal:committed#

    InputMethodContextCommittedCallback     ,
#if defined(ENABLE_OVERLOADING)
    InputMethodContextCommittedSignalInfo   ,
#endif
    afterInputMethodContextCommitted        ,
    onInputMethodContextCommitted           ,


-- ** deleteSurrounding #signal:deleteSurrounding#

    InputMethodContextDeleteSurroundingCallback,
#if defined(ENABLE_OVERLOADING)
    InputMethodContextDeleteSurroundingSignalInfo,
#endif
    afterInputMethodContextDeleteSurrounding,
    onInputMethodContextDeleteSurrounding   ,


-- ** preeditChanged #signal:preeditChanged#

    InputMethodContextPreeditChangedCallback,
#if defined(ENABLE_OVERLOADING)
    InputMethodContextPreeditChangedSignalInfo,
#endif
    afterInputMethodContextPreeditChanged   ,
    onInputMethodContextPreeditChanged      ,


-- ** preeditFinished #signal:preeditFinished#

    InputMethodContextPreeditFinishedCallback,
#if defined(ENABLE_OVERLOADING)
    InputMethodContextPreeditFinishedSignalInfo,
#endif
    afterInputMethodContextPreeditFinished  ,
    onInputMethodContextPreeditFinished     ,


-- ** preeditStarted #signal:preeditStarted#

    InputMethodContextPreeditStartedCallback,
#if defined(ENABLE_OVERLOADING)
    InputMethodContextPreeditStartedSignalInfo,
#endif
    afterInputMethodContextPreeditStarted   ,
    onInputMethodContextPreeditStarted      ,




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
import qualified GI.Gdk.Structs.EventKey as Gdk.EventKey
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Structs.InputMethodUnderline as WebKit2.InputMethodUnderline

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.EventKey as Gdk.EventKey
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Structs.InputMethodUnderline as WebKit2.InputMethodUnderline

#endif

-- | Memory-managed wrapper type.
newtype InputMethodContext = InputMethodContext (SP.ManagedPtr InputMethodContext)
    deriving (Eq)

instance SP.ManagedPtrNewtype InputMethodContext where
    toManagedPtr (InputMethodContext p) = p

foreign import ccall "webkit_input_method_context_get_type"
    c_webkit_input_method_context_get_type :: IO B.Types.GType

instance B.Types.TypedObject InputMethodContext where
    glibType = c_webkit_input_method_context_get_type

instance B.Types.GObject InputMethodContext

-- | Type class for types which can be safely cast to t'InputMethodContext', for instance with `toInputMethodContext`.
class (SP.GObject o, O.IsDescendantOf InputMethodContext o) => IsInputMethodContext o
instance (SP.GObject o, O.IsDescendantOf InputMethodContext o) => IsInputMethodContext o

instance O.HasParentTypes InputMethodContext
type instance O.ParentTypes InputMethodContext = '[GObject.Object.Object]

-- | Cast to t'InputMethodContext', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toInputMethodContext :: (MIO.MonadIO m, IsInputMethodContext o) => o -> m InputMethodContext
toInputMethodContext = MIO.liftIO . B.ManagedPtr.unsafeCastTo InputMethodContext

-- | Convert t'InputMethodContext' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe InputMethodContext) where
    gvalueGType_ = c_webkit_input_method_context_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr InputMethodContext)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr InputMethodContext)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject InputMethodContext ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveInputMethodContextMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveInputMethodContextMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInputMethodContextMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInputMethodContextMethod "filterKeyEvent" o = InputMethodContextFilterKeyEventMethodInfo
    ResolveInputMethodContextMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInputMethodContextMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInputMethodContextMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInputMethodContextMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInputMethodContextMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInputMethodContextMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInputMethodContextMethod "notifyCursorArea" o = InputMethodContextNotifyCursorAreaMethodInfo
    ResolveInputMethodContextMethod "notifyFocusIn" o = InputMethodContextNotifyFocusInMethodInfo
    ResolveInputMethodContextMethod "notifyFocusOut" o = InputMethodContextNotifyFocusOutMethodInfo
    ResolveInputMethodContextMethod "notifySurrounding" o = InputMethodContextNotifySurroundingMethodInfo
    ResolveInputMethodContextMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInputMethodContextMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInputMethodContextMethod "reset" o = InputMethodContextResetMethodInfo
    ResolveInputMethodContextMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInputMethodContextMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInputMethodContextMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInputMethodContextMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInputMethodContextMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInputMethodContextMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInputMethodContextMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInputMethodContextMethod "getInputHints" o = InputMethodContextGetInputHintsMethodInfo
    ResolveInputMethodContextMethod "getInputPurpose" o = InputMethodContextGetInputPurposeMethodInfo
    ResolveInputMethodContextMethod "getPreedit" o = InputMethodContextGetPreeditMethodInfo
    ResolveInputMethodContextMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInputMethodContextMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInputMethodContextMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInputMethodContextMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInputMethodContextMethod "setEnablePreedit" o = InputMethodContextSetEnablePreeditMethodInfo
    ResolveInputMethodContextMethod "setInputHints" o = InputMethodContextSetInputHintsMethodInfo
    ResolveInputMethodContextMethod "setInputPurpose" o = InputMethodContextSetInputPurposeMethodInfo
    ResolveInputMethodContextMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInputMethodContextMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInputMethodContextMethod t InputMethodContext, O.OverloadedMethod info InputMethodContext p) => OL.IsLabel t (InputMethodContext -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveInputMethodContextMethod t InputMethodContext, O.OverloadedMethod info InputMethodContext p, R.HasField t InputMethodContext p) => R.HasField t InputMethodContext p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveInputMethodContextMethod t InputMethodContext, O.OverloadedMethodInfo info InputMethodContext) => OL.IsLabel t (O.MethodProxy info InputMethodContext) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal InputMethodContext::committed
-- | Emitted when a complete input sequence has been entered by the user.
-- This can be a single character immediately after a key press or the
-- final result of preediting.
-- 
-- /Since: 2.28/
type InputMethodContextCommittedCallback =
    T.Text
    -- ^ /@text@/: the string result
    -> IO ()

type C_InputMethodContextCommittedCallback =
    Ptr InputMethodContext ->               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InputMethodContextCommittedCallback`.
foreign import ccall "wrapper"
    mk_InputMethodContextCommittedCallback :: C_InputMethodContextCommittedCallback -> IO (FunPtr C_InputMethodContextCommittedCallback)

wrap_InputMethodContextCommittedCallback :: 
    GObject a => (a -> InputMethodContextCommittedCallback) ->
    C_InputMethodContextCommittedCallback
wrap_InputMethodContextCommittedCallback gi'cb gi'selfPtr text _ = do
    text' <- cstringToText text
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  text'


-- | Connect a signal handler for the [committed](#signal:committed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' inputMethodContext #committed callback
-- @
-- 
-- 
onInputMethodContextCommitted :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextCommittedCallback) -> m SignalHandlerId
onInputMethodContextCommitted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextCommittedCallback wrapped
    wrapped'' <- mk_InputMethodContextCommittedCallback wrapped'
    connectSignalFunPtr obj "committed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [committed](#signal:committed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' inputMethodContext #committed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterInputMethodContextCommitted :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextCommittedCallback) -> m SignalHandlerId
afterInputMethodContextCommitted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextCommittedCallback wrapped
    wrapped'' <- mk_InputMethodContextCommittedCallback wrapped'
    connectSignalFunPtr obj "committed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InputMethodContextCommittedSignalInfo
instance SignalInfo InputMethodContextCommittedSignalInfo where
    type HaskellCallbackType InputMethodContextCommittedSignalInfo = InputMethodContextCommittedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InputMethodContextCommittedCallback cb
        cb'' <- mk_InputMethodContextCommittedCallback cb'
        connectSignalFunPtr obj "committed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext::committed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:signal:committed"})

#endif

-- signal InputMethodContext::delete-surrounding
-- | Emitted when the input method wants to delete the context surrounding the cursor.
-- If /@offset@/ is a negative value, it means a position before the cursor.
-- 
-- /Since: 2.28/
type InputMethodContextDeleteSurroundingCallback =
    Int32
    -- ^ /@offset@/: the character offset from the cursor position of the text to be deleted.
    -> Word32
    -- ^ /@nChars@/: the number of characters to be deleted
    -> IO ()

type C_InputMethodContextDeleteSurroundingCallback =
    Ptr InputMethodContext ->               -- object
    Int32 ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InputMethodContextDeleteSurroundingCallback`.
foreign import ccall "wrapper"
    mk_InputMethodContextDeleteSurroundingCallback :: C_InputMethodContextDeleteSurroundingCallback -> IO (FunPtr C_InputMethodContextDeleteSurroundingCallback)

wrap_InputMethodContextDeleteSurroundingCallback :: 
    GObject a => (a -> InputMethodContextDeleteSurroundingCallback) ->
    C_InputMethodContextDeleteSurroundingCallback
wrap_InputMethodContextDeleteSurroundingCallback gi'cb gi'selfPtr offset nChars _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  offset nChars


-- | Connect a signal handler for the [deleteSurrounding](#signal:deleteSurrounding) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' inputMethodContext #deleteSurrounding callback
-- @
-- 
-- 
onInputMethodContextDeleteSurrounding :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextDeleteSurroundingCallback) -> m SignalHandlerId
onInputMethodContextDeleteSurrounding obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextDeleteSurroundingCallback wrapped
    wrapped'' <- mk_InputMethodContextDeleteSurroundingCallback wrapped'
    connectSignalFunPtr obj "delete-surrounding" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [deleteSurrounding](#signal:deleteSurrounding) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' inputMethodContext #deleteSurrounding callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterInputMethodContextDeleteSurrounding :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextDeleteSurroundingCallback) -> m SignalHandlerId
afterInputMethodContextDeleteSurrounding obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextDeleteSurroundingCallback wrapped
    wrapped'' <- mk_InputMethodContextDeleteSurroundingCallback wrapped'
    connectSignalFunPtr obj "delete-surrounding" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InputMethodContextDeleteSurroundingSignalInfo
instance SignalInfo InputMethodContextDeleteSurroundingSignalInfo where
    type HaskellCallbackType InputMethodContextDeleteSurroundingSignalInfo = InputMethodContextDeleteSurroundingCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InputMethodContextDeleteSurroundingCallback cb
        cb'' <- mk_InputMethodContextDeleteSurroundingCallback cb'
        connectSignalFunPtr obj "delete-surrounding" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext::delete-surrounding"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:signal:deleteSurrounding"})

#endif

-- signal InputMethodContext::preedit-changed
-- | Emitted whenever the preedit sequence currently being entered has changed.
-- It is also emitted at the end of a preedit sequence, in which case
-- 'GI.WebKit2.Objects.InputMethodContext.inputMethodContextGetPreedit' returns the empty string.
-- 
-- /Since: 2.28/
type InputMethodContextPreeditChangedCallback =
    IO ()

type C_InputMethodContextPreeditChangedCallback =
    Ptr InputMethodContext ->               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InputMethodContextPreeditChangedCallback`.
foreign import ccall "wrapper"
    mk_InputMethodContextPreeditChangedCallback :: C_InputMethodContextPreeditChangedCallback -> IO (FunPtr C_InputMethodContextPreeditChangedCallback)

wrap_InputMethodContextPreeditChangedCallback :: 
    GObject a => (a -> InputMethodContextPreeditChangedCallback) ->
    C_InputMethodContextPreeditChangedCallback
wrap_InputMethodContextPreeditChangedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [preeditChanged](#signal:preeditChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' inputMethodContext #preeditChanged callback
-- @
-- 
-- 
onInputMethodContextPreeditChanged :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditChangedCallback) -> m SignalHandlerId
onInputMethodContextPreeditChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditChangedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditChangedCallback wrapped'
    connectSignalFunPtr obj "preedit-changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [preeditChanged](#signal:preeditChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' inputMethodContext #preeditChanged callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterInputMethodContextPreeditChanged :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditChangedCallback) -> m SignalHandlerId
afterInputMethodContextPreeditChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditChangedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditChangedCallback wrapped'
    connectSignalFunPtr obj "preedit-changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InputMethodContextPreeditChangedSignalInfo
instance SignalInfo InputMethodContextPreeditChangedSignalInfo where
    type HaskellCallbackType InputMethodContextPreeditChangedSignalInfo = InputMethodContextPreeditChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InputMethodContextPreeditChangedCallback cb
        cb'' <- mk_InputMethodContextPreeditChangedCallback cb'
        connectSignalFunPtr obj "preedit-changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext::preedit-changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:signal:preeditChanged"})

#endif

-- signal InputMethodContext::preedit-finished
-- | Emitted when a preediting sequence has been completed or canceled.
-- 
-- /Since: 2.28/
type InputMethodContextPreeditFinishedCallback =
    IO ()

type C_InputMethodContextPreeditFinishedCallback =
    Ptr InputMethodContext ->               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InputMethodContextPreeditFinishedCallback`.
foreign import ccall "wrapper"
    mk_InputMethodContextPreeditFinishedCallback :: C_InputMethodContextPreeditFinishedCallback -> IO (FunPtr C_InputMethodContextPreeditFinishedCallback)

wrap_InputMethodContextPreeditFinishedCallback :: 
    GObject a => (a -> InputMethodContextPreeditFinishedCallback) ->
    C_InputMethodContextPreeditFinishedCallback
wrap_InputMethodContextPreeditFinishedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [preeditFinished](#signal:preeditFinished) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' inputMethodContext #preeditFinished callback
-- @
-- 
-- 
onInputMethodContextPreeditFinished :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditFinishedCallback) -> m SignalHandlerId
onInputMethodContextPreeditFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditFinishedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditFinishedCallback wrapped'
    connectSignalFunPtr obj "preedit-finished" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [preeditFinished](#signal:preeditFinished) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' inputMethodContext #preeditFinished callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterInputMethodContextPreeditFinished :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditFinishedCallback) -> m SignalHandlerId
afterInputMethodContextPreeditFinished obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditFinishedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditFinishedCallback wrapped'
    connectSignalFunPtr obj "preedit-finished" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InputMethodContextPreeditFinishedSignalInfo
instance SignalInfo InputMethodContextPreeditFinishedSignalInfo where
    type HaskellCallbackType InputMethodContextPreeditFinishedSignalInfo = InputMethodContextPreeditFinishedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InputMethodContextPreeditFinishedCallback cb
        cb'' <- mk_InputMethodContextPreeditFinishedCallback cb'
        connectSignalFunPtr obj "preedit-finished" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext::preedit-finished"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:signal:preeditFinished"})

#endif

-- signal InputMethodContext::preedit-started
-- | Emitted when a new preediting sequence starts.
-- 
-- /Since: 2.28/
type InputMethodContextPreeditStartedCallback =
    IO ()

type C_InputMethodContextPreeditStartedCallback =
    Ptr InputMethodContext ->               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InputMethodContextPreeditStartedCallback`.
foreign import ccall "wrapper"
    mk_InputMethodContextPreeditStartedCallback :: C_InputMethodContextPreeditStartedCallback -> IO (FunPtr C_InputMethodContextPreeditStartedCallback)

wrap_InputMethodContextPreeditStartedCallback :: 
    GObject a => (a -> InputMethodContextPreeditStartedCallback) ->
    C_InputMethodContextPreeditStartedCallback
wrap_InputMethodContextPreeditStartedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [preeditStarted](#signal:preeditStarted) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' inputMethodContext #preeditStarted callback
-- @
-- 
-- 
onInputMethodContextPreeditStarted :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditStartedCallback) -> m SignalHandlerId
onInputMethodContextPreeditStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditStartedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditStartedCallback wrapped'
    connectSignalFunPtr obj "preedit-started" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [preeditStarted](#signal:preeditStarted) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' inputMethodContext #preeditStarted callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterInputMethodContextPreeditStarted :: (IsInputMethodContext a, MonadIO m) => a -> ((?self :: a) => InputMethodContextPreeditStartedCallback) -> m SignalHandlerId
afterInputMethodContextPreeditStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_InputMethodContextPreeditStartedCallback wrapped
    wrapped'' <- mk_InputMethodContextPreeditStartedCallback wrapped'
    connectSignalFunPtr obj "preedit-started" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InputMethodContextPreeditStartedSignalInfo
instance SignalInfo InputMethodContextPreeditStartedSignalInfo where
    type HaskellCallbackType InputMethodContextPreeditStartedSignalInfo = InputMethodContextPreeditStartedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InputMethodContextPreeditStartedCallback cb
        cb'' <- mk_InputMethodContextPreeditStartedCallback cb'
        connectSignalFunPtr obj "preedit-started" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext::preedit-started"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:signal:preeditStarted"})

#endif

-- VVV Prop "input-hints"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "InputHints"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@input-hints@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' inputMethodContext #inputHints
-- @
getInputMethodContextInputHints :: (MonadIO m, IsInputMethodContext o) => o -> m [WebKit2.Flags.InputHints]
getInputMethodContextInputHints obj = MIO.liftIO $ B.Properties.getObjectPropertyFlags obj "input-hints"

-- | Set the value of the “@input-hints@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' inputMethodContext [ #inputHints 'Data.GI.Base.Attributes.:=' value ]
-- @
setInputMethodContextInputHints :: (MonadIO m, IsInputMethodContext o) => o -> [WebKit2.Flags.InputHints] -> m ()
setInputMethodContextInputHints obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyFlags obj "input-hints" val

-- | Construct a t'GValueConstruct' with valid value for the “@input-hints@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInputMethodContextInputHints :: (IsInputMethodContext o, MIO.MonadIO m) => [WebKit2.Flags.InputHints] -> m (GValueConstruct o)
constructInputMethodContextInputHints val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyFlags "input-hints" val

#if defined(ENABLE_OVERLOADING)
data InputMethodContextInputHintsPropertyInfo
instance AttrInfo InputMethodContextInputHintsPropertyInfo where
    type AttrAllowedOps InputMethodContextInputHintsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint InputMethodContextInputHintsPropertyInfo = IsInputMethodContext
    type AttrSetTypeConstraint InputMethodContextInputHintsPropertyInfo = (~) [WebKit2.Flags.InputHints]
    type AttrTransferTypeConstraint InputMethodContextInputHintsPropertyInfo = (~) [WebKit2.Flags.InputHints]
    type AttrTransferType InputMethodContextInputHintsPropertyInfo = [WebKit2.Flags.InputHints]
    type AttrGetType InputMethodContextInputHintsPropertyInfo = [WebKit2.Flags.InputHints]
    type AttrLabel InputMethodContextInputHintsPropertyInfo = "input-hints"
    type AttrOrigin InputMethodContextInputHintsPropertyInfo = InputMethodContext
    attrGet = getInputMethodContextInputHints
    attrSet = setInputMethodContextInputHints
    attrPut = setInputMethodContextInputHints
    attrTransfer _ v = do
        return v
    attrConstruct = constructInputMethodContextInputHints
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputHints"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:attr:inputHints"
        })
#endif

-- VVV Prop "input-purpose"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "InputPurpose"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@input-purpose@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' inputMethodContext #inputPurpose
-- @
getInputMethodContextInputPurpose :: (MonadIO m, IsInputMethodContext o) => o -> m WebKit2.Enums.InputPurpose
getInputMethodContextInputPurpose obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "input-purpose"

-- | Set the value of the “@input-purpose@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' inputMethodContext [ #inputPurpose 'Data.GI.Base.Attributes.:=' value ]
-- @
setInputMethodContextInputPurpose :: (MonadIO m, IsInputMethodContext o) => o -> WebKit2.Enums.InputPurpose -> m ()
setInputMethodContextInputPurpose obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyEnum obj "input-purpose" val

-- | Construct a t'GValueConstruct' with valid value for the “@input-purpose@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInputMethodContextInputPurpose :: (IsInputMethodContext o, MIO.MonadIO m) => WebKit2.Enums.InputPurpose -> m (GValueConstruct o)
constructInputMethodContextInputPurpose val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "input-purpose" val

#if defined(ENABLE_OVERLOADING)
data InputMethodContextInputPurposePropertyInfo
instance AttrInfo InputMethodContextInputPurposePropertyInfo where
    type AttrAllowedOps InputMethodContextInputPurposePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint InputMethodContextInputPurposePropertyInfo = IsInputMethodContext
    type AttrSetTypeConstraint InputMethodContextInputPurposePropertyInfo = (~) WebKit2.Enums.InputPurpose
    type AttrTransferTypeConstraint InputMethodContextInputPurposePropertyInfo = (~) WebKit2.Enums.InputPurpose
    type AttrTransferType InputMethodContextInputPurposePropertyInfo = WebKit2.Enums.InputPurpose
    type AttrGetType InputMethodContextInputPurposePropertyInfo = WebKit2.Enums.InputPurpose
    type AttrLabel InputMethodContextInputPurposePropertyInfo = "input-purpose"
    type AttrOrigin InputMethodContextInputPurposePropertyInfo = InputMethodContext
    attrGet = getInputMethodContextInputPurpose
    attrSet = setInputMethodContextInputPurpose
    attrPut = setInputMethodContextInputPurpose
    attrTransfer _ v = do
        return v
    attrConstruct = constructInputMethodContextInputPurpose
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputPurpose"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#g:attr:inputPurpose"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList InputMethodContext
type instance O.AttributeList InputMethodContext = InputMethodContextAttributeList
type InputMethodContextAttributeList = ('[ '("inputHints", InputMethodContextInputHintsPropertyInfo), '("inputPurpose", InputMethodContextInputPurposePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
inputMethodContextInputHints :: AttrLabelProxy "inputHints"
inputMethodContextInputHints = AttrLabelProxy

inputMethodContextInputPurpose :: AttrLabelProxy "inputPurpose"
inputMethodContextInputPurpose = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList InputMethodContext = InputMethodContextSignalList
type InputMethodContextSignalList = ('[ '("committed", InputMethodContextCommittedSignalInfo), '("deleteSurrounding", InputMethodContextDeleteSurroundingSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("preeditChanged", InputMethodContextPreeditChangedSignalInfo), '("preeditFinished", InputMethodContextPreeditFinishedSignalInfo), '("preeditStarted", InputMethodContextPreeditStartedSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method InputMethodContext::filter_key_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "key_event"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventKey" }
--           , argCType = Just "GdkEventKey*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the key event to filter"
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

foreign import ccall "webkit_input_method_context_filter_key_event" webkit_input_method_context_filter_key_event :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    Ptr Gdk.EventKey.EventKey ->            -- key_event : TInterface (Name {namespace = "Gdk", name = "EventKey"})
    IO CInt

-- | Allow /@keyEvent@/ to be handled by the input method.
-- 
-- If 'P.True' is returned, then no further processing should be
-- done for the key event.
-- 
-- /Since: 2.28/
inputMethodContextFilterKeyEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> Gdk.EventKey.EventKey
    -- ^ /@keyEvent@/: the key event to filter
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the key event was handled, or 'P.False' otherwise
inputMethodContextFilterKeyEvent context keyEvent = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    keyEvent' <- unsafeManagedPtrGetPtr keyEvent
    result <- webkit_input_method_context_filter_key_event context' keyEvent'
    let result' = (/= 0) result
    touchManagedPtr context
    touchManagedPtr keyEvent
    return result'

#if defined(ENABLE_OVERLOADING)
data InputMethodContextFilterKeyEventMethodInfo
instance (signature ~ (Gdk.EventKey.EventKey -> m Bool), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextFilterKeyEventMethodInfo a signature where
    overloadedMethod = inputMethodContextFilterKeyEvent

instance O.OverloadedMethodInfo InputMethodContextFilterKeyEventMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextFilterKeyEvent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextFilterKeyEvent"
        })


#endif

-- method InputMethodContext::get_input_hints
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
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
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "InputHints" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_get_input_hints" webkit_input_method_context_get_input_hints :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO CUInt

-- | Get the value of the [InputMethodContext:inputHints]("GI.WebKit2.Objects.InputMethodContext#g:attr:inputHints") property.
-- 
-- /Since: 2.28/
inputMethodContextGetInputHints ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m [WebKit2.Flags.InputHints]
    -- ^ __Returns:__ the t'GI.WebKit2.Flags.InputHints' of the input associated with /@context@/
inputMethodContextGetInputHints context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_input_method_context_get_input_hints context'
    let result' = wordToGFlags result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data InputMethodContextGetInputHintsMethodInfo
instance (signature ~ (m [WebKit2.Flags.InputHints]), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextGetInputHintsMethodInfo a signature where
    overloadedMethod = inputMethodContextGetInputHints

instance O.OverloadedMethodInfo InputMethodContextGetInputHintsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextGetInputHints",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextGetInputHints"
        })


#endif

-- method InputMethodContext::get_input_purpose
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
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
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "InputPurpose" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_get_input_purpose" webkit_input_method_context_get_input_purpose :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO CUInt

-- | Get the value of the [InputMethodContext:inputPurpose]("GI.WebKit2.Objects.InputMethodContext#g:attr:inputPurpose") property.
-- 
-- /Since: 2.28/
inputMethodContextGetInputPurpose ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m WebKit2.Enums.InputPurpose
    -- ^ __Returns:__ the t'GI.WebKit2.Enums.InputPurpose' of the input associated with /@context@/
inputMethodContextGetInputPurpose context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_input_method_context_get_input_purpose context'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
data InputMethodContextGetInputPurposeMethodInfo
instance (signature ~ (m WebKit2.Enums.InputPurpose), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextGetInputPurposeMethodInfo a signature where
    overloadedMethod = inputMethodContextGetInputPurpose

instance O.OverloadedMethodInfo InputMethodContextGetInputPurposeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextGetInputPurpose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextGetInputPurpose"
        })


#endif

-- method InputMethodContext::get_preedit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , argCType = Just "char**"
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to store the preedit string"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "underlines"
--           , argType =
--               TGList
--                 (TInterface
--                    Name { namespace = "WebKit2" , name = "InputMethodUnderline" })
--           , argCType = Just "GList**"
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the underlines as a #GList of #WebKitInputMethodUnderline"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "cursor_offset"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint*"
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store the position of cursor in preedit string"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_get_preedit" webkit_input_method_context_get_preedit :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    Ptr CString ->                          -- text : TBasicType TUTF8
    Ptr (Ptr (GList (Ptr WebKit2.InputMethodUnderline.InputMethodUnderline))) -> -- underlines : TGList (TInterface (Name {namespace = "WebKit2", name = "InputMethodUnderline"}))
    Ptr Word32 ->                           -- cursor_offset : TBasicType TUInt
    IO ()

-- | Get the pre-edit string and a list of WebKitInputMethodUnderline.
-- 
-- Get the current pre-edit string for the /@context@/, and a list of WebKitInputMethodUnderline to apply to the string.
-- The string will be displayed inserted at /@cursorOffset@/.
-- 
-- /Since: 2.28/
inputMethodContextGetPreedit ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m ((Maybe T.Text, [WebKit2.InputMethodUnderline.InputMethodUnderline], Word32))
inputMethodContextGetPreedit context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    text <- callocMem :: IO (Ptr CString)
    underlines <- callocMem :: IO (Ptr (Ptr (GList (Ptr WebKit2.InputMethodUnderline.InputMethodUnderline))))
    cursorOffset <- allocMem :: IO (Ptr Word32)
    webkit_input_method_context_get_preedit context' text underlines cursorOffset
    text' <- peek text
    maybeText' <- convertIfNonNull text' $ \text'' -> do
        text''' <- cstringToText text''
        return text'''
    freeMem text'
    underlines' <- peek underlines
    underlines'' <- unpackGList underlines'
    underlines''' <- mapM (wrapBoxed WebKit2.InputMethodUnderline.InputMethodUnderline) underlines''
    g_list_free underlines'
    cursorOffset' <- peek cursorOffset
    touchManagedPtr context
    freeMem text
    freeMem underlines
    freeMem cursorOffset
    return (maybeText', underlines''', cursorOffset')

#if defined(ENABLE_OVERLOADING)
data InputMethodContextGetPreeditMethodInfo
instance (signature ~ (m ((Maybe T.Text, [WebKit2.InputMethodUnderline.InputMethodUnderline], Word32))), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextGetPreeditMethodInfo a signature where
    overloadedMethod = inputMethodContextGetPreedit

instance O.OverloadedMethodInfo InputMethodContextGetPreeditMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextGetPreedit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextGetPreedit"
        })


#endif

-- method InputMethodContext::notify_cursor_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , argCType = Just "int"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the x coordinate of cursor location"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , argCType = Just "int"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the y coordinate of cursor location"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TInt
--           , argCType = Just "int"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the width of cursor area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , argCType = Just "int"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the height of cursor area"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_notify_cursor_area" webkit_input_method_context_notify_cursor_area :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    Int32 ->                                -- width : TBasicType TInt
    Int32 ->                                -- height : TBasicType TInt
    IO ()

-- | Notify /@context@/ that cursor area changed in input associated.
-- 
-- /Since: 2.28/
inputMethodContextNotifyCursorArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> Int32
    -- ^ /@x@/: the x coordinate of cursor location
    -> Int32
    -- ^ /@y@/: the y coordinate of cursor location
    -> Int32
    -- ^ /@width@/: the width of cursor area
    -> Int32
    -- ^ /@height@/: the height of cursor area
    -> m ()
inputMethodContextNotifyCursorArea context x y width height = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_input_method_context_notify_cursor_area context' x y width height
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextNotifyCursorAreaMethodInfo
instance (signature ~ (Int32 -> Int32 -> Int32 -> Int32 -> m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextNotifyCursorAreaMethodInfo a signature where
    overloadedMethod = inputMethodContextNotifyCursorArea

instance O.OverloadedMethodInfo InputMethodContextNotifyCursorAreaMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextNotifyCursorArea",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextNotifyCursorArea"
        })


#endif

-- method InputMethodContext::notify_focus_in
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_notify_focus_in" webkit_input_method_context_notify_focus_in :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO ()

-- | Notify /@context@/ that input associated has gained focus.
-- 
-- /Since: 2.28/
inputMethodContextNotifyFocusIn ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m ()
inputMethodContextNotifyFocusIn context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_input_method_context_notify_focus_in context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextNotifyFocusInMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextNotifyFocusInMethodInfo a signature where
    overloadedMethod = inputMethodContextNotifyFocusIn

instance O.OverloadedMethodInfo InputMethodContextNotifyFocusInMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextNotifyFocusIn",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextNotifyFocusIn"
        })


#endif

-- method InputMethodContext::notify_focus_out
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_notify_focus_out" webkit_input_method_context_notify_focus_out :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO ()

-- | Notify /@context@/ that input associated has lost focus.
-- 
-- /Since: 2.28/
inputMethodContextNotifyFocusOut ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m ()
inputMethodContextNotifyFocusOut context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_input_method_context_notify_focus_out context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextNotifyFocusOutMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextNotifyFocusOutMethodInfo a signature where
    overloadedMethod = inputMethodContextNotifyFocusOut

instance O.OverloadedMethodInfo InputMethodContextNotifyFocusOutMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextNotifyFocusOut",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextNotifyFocusOut"
        })


#endif

-- method InputMethodContext::notify_surrounding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text surrounding the insertion point"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt
--           , argCType = Just "int"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the length of @text, or -1 if @text is nul-terminated"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cursor_index"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the byte index of the insertion cursor within @text."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "selection_index"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the byte index of the selection cursor within @text."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_notify_surrounding" webkit_input_method_context_notify_surrounding :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    CString ->                              -- text : TBasicType TUTF8
    Int32 ->                                -- length : TBasicType TInt
    Word32 ->                               -- cursor_index : TBasicType TUInt
    Word32 ->                               -- selection_index : TBasicType TUInt
    IO ()

-- | Notify /@context@/ that the context surrounding the cursor has changed.
-- 
-- If there\'s no selection /@selectionIndex@/ is the same as /@cursorIndex@/.
-- 
-- /Since: 2.28/
inputMethodContextNotifySurrounding ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> T.Text
    -- ^ /@text@/: text surrounding the insertion point
    -> Int32
    -- ^ /@length@/: the length of /@text@/, or -1 if /@text@/ is nul-terminated
    -> Word32
    -- ^ /@cursorIndex@/: the byte index of the insertion cursor within /@text@/.
    -> Word32
    -- ^ /@selectionIndex@/: the byte index of the selection cursor within /@text@/.
    -> m ()
inputMethodContextNotifySurrounding context text length_ cursorIndex selectionIndex = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    text' <- textToCString text
    webkit_input_method_context_notify_surrounding context' text' length_ cursorIndex selectionIndex
    touchManagedPtr context
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextNotifySurroundingMethodInfo
instance (signature ~ (T.Text -> Int32 -> Word32 -> Word32 -> m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextNotifySurroundingMethodInfo a signature where
    overloadedMethod = inputMethodContextNotifySurrounding

instance O.OverloadedMethodInfo InputMethodContextNotifySurroundingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextNotifySurrounding",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextNotifySurrounding"
        })


#endif

-- method InputMethodContext::reset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_reset" webkit_input_method_context_reset :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO ()

-- | Reset the /@context@/.
-- 
-- This will typically cause the input to clear the preedit state.
-- 
-- /Since: 2.28/
inputMethodContextReset ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> m ()
inputMethodContextReset context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    webkit_input_method_context_reset context'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextResetMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextResetMethodInfo a signature where
    overloadedMethod = inputMethodContextReset

instance O.OverloadedMethodInfo InputMethodContextResetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextReset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextReset"
        })


#endif

-- method InputMethodContext::set_enable_preedit
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "enabled"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to enable preedit"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_set_enable_preedit" webkit_input_method_context_set_enable_preedit :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    CInt ->                                 -- enabled : TBasicType TBoolean
    IO ()

-- | Set whether /@context@/ should enable preedit to display feedback.
-- 
-- /Since: 2.28/
inputMethodContextSetEnablePreedit ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> Bool
    -- ^ /@enabled@/: whether to enable preedit
    -> m ()
inputMethodContextSetEnablePreedit context enabled = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let enabled' = (P.fromIntegral . P.fromEnum) enabled
    webkit_input_method_context_set_enable_preedit context' enabled'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextSetEnablePreeditMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextSetEnablePreeditMethodInfo a signature where
    overloadedMethod = inputMethodContextSetEnablePreedit

instance O.OverloadedMethodInfo InputMethodContextSetEnablePreeditMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextSetEnablePreedit",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextSetEnablePreedit"
        })


#endif

-- method InputMethodContext::set_input_hints
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hints"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "InputHints" }
--           , argCType = Just "WebKitInputHints"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputHints"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_set_input_hints" webkit_input_method_context_set_input_hints :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    CUInt ->                                -- hints : TInterface (Name {namespace = "WebKit2", name = "InputHints"})
    IO ()

-- | Set the value of the [InputMethodContext:inputHints]("GI.WebKit2.Objects.InputMethodContext#g:attr:inputHints") property.
-- 
-- /Since: 2.28/
inputMethodContextSetInputHints ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> [WebKit2.Flags.InputHints]
    -- ^ /@hints@/: a t'GI.WebKit2.Flags.InputHints'
    -> m ()
inputMethodContextSetInputHints context hints = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let hints' = gflagsToWord hints
    webkit_input_method_context_set_input_hints context' hints'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextSetInputHintsMethodInfo
instance (signature ~ ([WebKit2.Flags.InputHints] -> m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextSetInputHintsMethodInfo a signature where
    overloadedMethod = inputMethodContextSetInputHints

instance O.OverloadedMethodInfo InputMethodContextSetInputHintsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextSetInputHints",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextSetInputHints"
        })


#endif

-- method InputMethodContext::set_input_purpose
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodContext"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "purpose"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "InputPurpose" }
--           , argCType = Just "WebKitInputPurpose"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputPurpose"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_context_set_input_purpose" webkit_input_method_context_set_input_purpose :: 
    Ptr InputMethodContext ->               -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    CUInt ->                                -- purpose : TInterface (Name {namespace = "WebKit2", name = "InputPurpose"})
    IO ()

-- | Set the value of the [InputMethodContext:inputPurpose]("GI.WebKit2.Objects.InputMethodContext#g:attr:inputPurpose") property.
-- 
-- /Since: 2.28/
inputMethodContextSetInputPurpose ::
    (B.CallStack.HasCallStack, MonadIO m, IsInputMethodContext a) =>
    a
    -- ^ /@context@/: a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext'
    -> WebKit2.Enums.InputPurpose
    -- ^ /@purpose@/: a t'GI.WebKit2.Enums.InputPurpose'
    -> m ()
inputMethodContextSetInputPurpose context purpose = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    let purpose' = (fromIntegral . fromEnum) purpose
    webkit_input_method_context_set_input_purpose context' purpose'
    touchManagedPtr context
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodContextSetInputPurposeMethodInfo
instance (signature ~ (WebKit2.Enums.InputPurpose -> m ()), MonadIO m, IsInputMethodContext a) => O.OverloadedMethod InputMethodContextSetInputPurposeMethodInfo a signature where
    overloadedMethod = inputMethodContextSetInputPurpose

instance O.OverloadedMethodInfo InputMethodContextSetInputPurposeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.InputMethodContext.inputMethodContextSetInputPurpose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-InputMethodContext.html#v:inputMethodContextSetInputPurpose"
        })


#endif


