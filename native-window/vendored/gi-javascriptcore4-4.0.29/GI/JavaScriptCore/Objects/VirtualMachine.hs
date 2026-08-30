{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- JSCVirtualMachine represents a group of JSCContexts. It allows
-- concurrent JavaScript execution by creating a different instance of
-- JSCVirtualMachine in each thread.
-- 
-- To create a group of JSCContexts pass the same JSCVirtualMachine
-- instance to every JSCContext constructor.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.VirtualMachine
    ( 

-- * Exported types
    VirtualMachine(..)                      ,
    IsVirtualMachine                        ,
    toVirtualMachine                        ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveVirtualMachineMethod             ,
#endif

-- ** new #method:new#

    virtualMachineNew                       ,




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
newtype VirtualMachine = VirtualMachine (SP.ManagedPtr VirtualMachine)
    deriving (Eq)

instance SP.ManagedPtrNewtype VirtualMachine where
    toManagedPtr (VirtualMachine p) = p

foreign import ccall "jsc_virtual_machine_get_type"
    c_jsc_virtual_machine_get_type :: IO B.Types.GType

instance B.Types.TypedObject VirtualMachine where
    glibType = c_jsc_virtual_machine_get_type

instance B.Types.GObject VirtualMachine

-- | Type class for types which can be safely cast to t'VirtualMachine', for instance with `toVirtualMachine`.
class (SP.GObject o, O.IsDescendantOf VirtualMachine o) => IsVirtualMachine o
instance (SP.GObject o, O.IsDescendantOf VirtualMachine o) => IsVirtualMachine o

instance O.HasParentTypes VirtualMachine
type instance O.ParentTypes VirtualMachine = '[GObject.Object.Object]

-- | Cast to t'VirtualMachine', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toVirtualMachine :: (MIO.MonadIO m, IsVirtualMachine o) => o -> m VirtualMachine
toVirtualMachine = MIO.liftIO . B.ManagedPtr.unsafeCastTo VirtualMachine

-- | Convert t'VirtualMachine' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe VirtualMachine) where
    gvalueGType_ = c_jsc_virtual_machine_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr VirtualMachine)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr VirtualMachine)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject VirtualMachine ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveVirtualMachineMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveVirtualMachineMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveVirtualMachineMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveVirtualMachineMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveVirtualMachineMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveVirtualMachineMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveVirtualMachineMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveVirtualMachineMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveVirtualMachineMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveVirtualMachineMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveVirtualMachineMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveVirtualMachineMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveVirtualMachineMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveVirtualMachineMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveVirtualMachineMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveVirtualMachineMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveVirtualMachineMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveVirtualMachineMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveVirtualMachineMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveVirtualMachineMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveVirtualMachineMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveVirtualMachineMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveVirtualMachineMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveVirtualMachineMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveVirtualMachineMethod t VirtualMachine, O.OverloadedMethod info VirtualMachine p) => OL.IsLabel t (VirtualMachine -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveVirtualMachineMethod t VirtualMachine, O.OverloadedMethod info VirtualMachine p, R.HasField t VirtualMachine p) => R.HasField t VirtualMachine p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveVirtualMachineMethod t VirtualMachine, O.OverloadedMethodInfo info VirtualMachine) => OL.IsLabel t (O.MethodProxy info VirtualMachine) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList VirtualMachine
type instance O.AttributeList VirtualMachine = VirtualMachineAttributeList
type VirtualMachineAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList VirtualMachine = VirtualMachineSignalList
type VirtualMachineSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method VirtualMachine::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "JavaScriptCore" , name = "VirtualMachine" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_virtual_machine_new" jsc_virtual_machine_new :: 
    IO (Ptr VirtualMachine)

-- | Create a new t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine'.
virtualMachineNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m VirtualMachine
    -- ^ __Returns:__ the newly created t'GI.JavaScriptCore.Objects.VirtualMachine.VirtualMachine'.
virtualMachineNew  = liftIO $ do
    result <- jsc_virtual_machine_new
    checkUnexpectedReturnNULL "virtualMachineNew" result
    result' <- (wrapObject VirtualMachine) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


