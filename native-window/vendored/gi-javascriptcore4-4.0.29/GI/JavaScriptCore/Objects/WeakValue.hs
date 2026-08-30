{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- JSCWeakValue represents a weak reference to a value in a t'GI.JavaScriptCore.Objects.Context.Context'. It can be used
-- to keep a reference to a JavaScript value without protecting it from being garbage
-- collected and without referencing the t'GI.JavaScriptCore.Objects.Context.Context' either.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.WeakValue
    ( 

-- * Exported types
    WeakValue(..)                           ,
    IsWeakValue                             ,
    toWeakValue                             ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getValue]("GI.JavaScriptCore.Objects.WeakValue#g:method:getValue").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveWeakValueMethod                  ,
#endif

-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    WeakValueGetValueMethodInfo             ,
#endif
    weakValueGetValue                       ,


-- ** new #method:new#

    weakValueNew                            ,




 -- * Properties


-- ** value #attr:value#
-- | The t'GI.JavaScriptCore.Objects.Value.Value' referencing the JavaScript value.

#if defined(ENABLE_OVERLOADING)
    WeakValueValuePropertyInfo              ,
#endif
    constructWeakValueValue                 ,
#if defined(ENABLE_OVERLOADING)
    weakValueValue                          ,
#endif




 -- * Signals


-- ** cleared #signal:cleared#

    WeakValueClearedCallback                ,
#if defined(ENABLE_OVERLOADING)
    WeakValueClearedSignalInfo              ,
#endif
    afterWeakValueCleared                   ,
    onWeakValueCleared                      ,




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
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Callbacks as GObject.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Flags as JavaScriptCore.Flags
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value

#endif

-- | Memory-managed wrapper type.
newtype WeakValue = WeakValue (SP.ManagedPtr WeakValue)
    deriving (Eq)

instance SP.ManagedPtrNewtype WeakValue where
    toManagedPtr (WeakValue p) = p

foreign import ccall "jsc_weak_value_get_type"
    c_jsc_weak_value_get_type :: IO B.Types.GType

instance B.Types.TypedObject WeakValue where
    glibType = c_jsc_weak_value_get_type

instance B.Types.GObject WeakValue

-- | Type class for types which can be safely cast to t'WeakValue', for instance with `toWeakValue`.
class (SP.GObject o, O.IsDescendantOf WeakValue o) => IsWeakValue o
instance (SP.GObject o, O.IsDescendantOf WeakValue o) => IsWeakValue o

instance O.HasParentTypes WeakValue
type instance O.ParentTypes WeakValue = '[GObject.Object.Object]

-- | Cast to t'WeakValue', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWeakValue :: (MIO.MonadIO m, IsWeakValue o) => o -> m WeakValue
toWeakValue = MIO.liftIO . B.ManagedPtr.unsafeCastTo WeakValue

-- | Convert t'WeakValue' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WeakValue) where
    gvalueGType_ = c_jsc_weak_value_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WeakValue)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WeakValue)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WeakValue ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWeakValueMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWeakValueMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWeakValueMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWeakValueMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWeakValueMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWeakValueMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWeakValueMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWeakValueMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWeakValueMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWeakValueMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWeakValueMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWeakValueMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWeakValueMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWeakValueMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWeakValueMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWeakValueMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWeakValueMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWeakValueMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWeakValueMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWeakValueMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWeakValueMethod "getValue" o = WeakValueGetValueMethodInfo
    ResolveWeakValueMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWeakValueMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWeakValueMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWeakValueMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWeakValueMethod t WeakValue, O.OverloadedMethod info WeakValue p) => OL.IsLabel t (WeakValue -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWeakValueMethod t WeakValue, O.OverloadedMethod info WeakValue p, R.HasField t WeakValue p) => R.HasField t WeakValue p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWeakValueMethod t WeakValue, O.OverloadedMethodInfo info WeakValue) => OL.IsLabel t (O.MethodProxy info WeakValue) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal WeakValue::cleared
-- | This signal is emitted when the JavaScript value is destroyed.
type WeakValueClearedCallback =
    IO ()

type C_WeakValueClearedCallback =
    Ptr WeakValue ->                        -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WeakValueClearedCallback`.
foreign import ccall "wrapper"
    mk_WeakValueClearedCallback :: C_WeakValueClearedCallback -> IO (FunPtr C_WeakValueClearedCallback)

wrap_WeakValueClearedCallback :: 
    GObject a => (a -> WeakValueClearedCallback) ->
    C_WeakValueClearedCallback
wrap_WeakValueClearedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [cleared](#signal:cleared) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' weakValue #cleared callback
-- @
-- 
-- 
onWeakValueCleared :: (IsWeakValue a, MonadIO m) => a -> ((?self :: a) => WeakValueClearedCallback) -> m SignalHandlerId
onWeakValueCleared obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WeakValueClearedCallback wrapped
    wrapped'' <- mk_WeakValueClearedCallback wrapped'
    connectSignalFunPtr obj "cleared" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cleared](#signal:cleared) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' weakValue #cleared callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWeakValueCleared :: (IsWeakValue a, MonadIO m) => a -> ((?self :: a) => WeakValueClearedCallback) -> m SignalHandlerId
afterWeakValueCleared obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WeakValueClearedCallback wrapped
    wrapped'' <- mk_WeakValueClearedCallback wrapped'
    connectSignalFunPtr obj "cleared" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WeakValueClearedSignalInfo
instance SignalInfo WeakValueClearedSignalInfo where
    type HaskellCallbackType WeakValueClearedSignalInfo = WeakValueClearedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WeakValueClearedCallback cb
        cb'' <- mk_WeakValueClearedCallback cb'
        connectSignalFunPtr obj "cleared" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.WeakValue::cleared"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-WeakValue.html#g:signal:cleared"})

#endif

-- VVV Prop "value"
   -- Type: TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@value@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWeakValueValue :: (IsWeakValue o, MIO.MonadIO m, JavaScriptCore.Value.IsValue a) => a -> m (GValueConstruct o)
constructWeakValueValue val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "value" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WeakValueValuePropertyInfo
instance AttrInfo WeakValueValuePropertyInfo where
    type AttrAllowedOps WeakValueValuePropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint WeakValueValuePropertyInfo = IsWeakValue
    type AttrSetTypeConstraint WeakValueValuePropertyInfo = JavaScriptCore.Value.IsValue
    type AttrTransferTypeConstraint WeakValueValuePropertyInfo = JavaScriptCore.Value.IsValue
    type AttrTransferType WeakValueValuePropertyInfo = JavaScriptCore.Value.Value
    type AttrGetType WeakValueValuePropertyInfo = ()
    type AttrLabel WeakValueValuePropertyInfo = "value"
    type AttrOrigin WeakValueValuePropertyInfo = WeakValue
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo JavaScriptCore.Value.Value v
    attrConstruct = constructWeakValueValue
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.WeakValue.value"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-WeakValue.html#g:attr:value"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WeakValue
type instance O.AttributeList WeakValue = WeakValueAttributeList
type WeakValueAttributeList = ('[ '("value", WeakValueValuePropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
weakValueValue :: AttrLabelProxy "value"
weakValueValue = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WeakValue = WeakValueSignalList
type WeakValueSignalList = ('[ '("cleared", WeakValueClearedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WeakValue::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCValue" , sinceVersion = Nothing }
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
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "WeakValue" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_weak_value_new" jsc_weak_value_new :: 
    Ptr JavaScriptCore.Value.Value ->       -- value : TInterface (Name {namespace = "JavaScriptCore", name = "Value"})
    IO (Ptr WeakValue)

-- | Create a new t'GI.JavaScriptCore.Objects.WeakValue.WeakValue' for the JavaScript value referenced by /@value@/.
weakValueNew ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Value.IsValue a) =>
    a
    -- ^ /@value@/: a t'GI.JavaScriptCore.Objects.Value.Value'
    -> m WeakValue
    -- ^ __Returns:__ a new t'GI.JavaScriptCore.Objects.WeakValue.WeakValue'
weakValueNew value = liftIO $ do
    value' <- unsafeManagedPtrCastPtr value
    result <- jsc_weak_value_new value'
    checkUnexpectedReturnNULL "weakValueNew" result
    result' <- (wrapObject WeakValue) result
    touchManagedPtr value
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WeakValue::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "weak_value"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "WeakValue" }
--           , argCType = Just "JSCWeakValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCWeakValue" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_weak_value_get_value" jsc_weak_value_get_value :: 
    Ptr WeakValue ->                        -- weak_value : TInterface (Name {namespace = "JavaScriptCore", name = "WeakValue"})
    IO (Ptr JavaScriptCore.Value.Value)

-- | Get a t'GI.JavaScriptCore.Objects.Value.Value' referencing the JavaScript value of /@weakValue@/.
weakValueGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsWeakValue a) =>
    a
    -- ^ /@weakValue@/: a t'GI.JavaScriptCore.Objects.WeakValue.WeakValue'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a new t'GI.JavaScriptCore.Objects.Value.Value' or 'P.Nothing' if /@weakValue@/ was cleared.
weakValueGetValue weakValue = liftIO $ do
    weakValue' <- unsafeManagedPtrCastPtr weakValue
    result <- jsc_weak_value_get_value weakValue'
    checkUnexpectedReturnNULL "weakValueGetValue" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr weakValue
    return result'

#if defined(ENABLE_OVERLOADING)
data WeakValueGetValueMethodInfo
instance (signature ~ (m JavaScriptCore.Value.Value), MonadIO m, IsWeakValue a) => O.OverloadedMethod WeakValueGetValueMethodInfo a signature where
    overloadedMethod = weakValueGetValue

instance O.OverloadedMethodInfo WeakValueGetValueMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.WeakValue.weakValueGetValue",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-WeakValue.html#v:weakValueGetValue"
        })


#endif


