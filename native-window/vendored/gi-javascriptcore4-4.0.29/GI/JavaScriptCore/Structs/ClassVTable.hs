{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Virtual table for a JSCClass. This can be optionally used when registering a t'GI.JavaScriptCore.Objects.Class.Class' in a t'GI.JavaScriptCore.Objects.Context.Context'
-- to provide a custom implementation for the class. All virtual functions are optional and can be set to
-- 'P.Nothing' to fallback to the default implementation.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Structs.ClassVTable
    ( 

-- * Exported types
    ClassVTable(..)                         ,
    newZeroClassVTable                      ,


 -- * Methods

#if defined(ENABLE_OVERLOADING)
    ResolveClassVTableMethod                ,
#endif



 -- * Properties


-- ** deleteProperty #attr:deleteProperty#
-- | a t'GI.JavaScriptCore.Callbacks.ClassDeletePropertyFunction' for deleting a property.

#if defined(ENABLE_OVERLOADING)
    classVTable_deleteProperty              ,
#endif
    clearClassVTableDeleteProperty          ,
    getClassVTableDeleteProperty            ,
    setClassVTableDeleteProperty            ,


-- ** enumerateProperties #attr:enumerateProperties#
-- | a t'GI.JavaScriptCore.Callbacks.ClassEnumeratePropertiesFunction' for enumerating properties.

#if defined(ENABLE_OVERLOADING)
    classVTable_enumerateProperties         ,
#endif
    clearClassVTableEnumerateProperties     ,
    getClassVTableEnumerateProperties       ,
    setClassVTableEnumerateProperties       ,


-- ** getProperty #attr:getProperty#
-- | a t'GI.JavaScriptCore.Callbacks.ClassGetPropertyFunction' for getting a property.

#if defined(ENABLE_OVERLOADING)
    classVTable_getProperty                 ,
#endif
    clearClassVTableGetProperty             ,
    getClassVTableGetProperty               ,
    setClassVTableGetProperty               ,


-- ** hasProperty #attr:hasProperty#
-- | a t'GI.JavaScriptCore.Callbacks.ClassHasPropertyFunction' for querying a property.

#if defined(ENABLE_OVERLOADING)
    classVTable_hasProperty                 ,
#endif
    clearClassVTableHasProperty             ,
    getClassVTableHasProperty               ,
    setClassVTableHasProperty               ,


-- ** setProperty #attr:setProperty#
-- | a t'GI.JavaScriptCore.Callbacks.ClassSetPropertyFunction' for setting a property.

#if defined(ENABLE_OVERLOADING)
    classVTable_setProperty                 ,
#endif
    clearClassVTableSetProperty             ,
    getClassVTableSetProperty               ,
    setClassVTableSetProperty               ,




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
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks

#else
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks

#endif

-- | Memory-managed wrapper type.
newtype ClassVTable = ClassVTable (SP.ManagedPtr ClassVTable)
    deriving (Eq)

instance SP.ManagedPtrNewtype ClassVTable where
    toManagedPtr (ClassVTable p) = p

instance BoxedPtr ClassVTable where
    boxedPtrCopy = \p -> B.ManagedPtr.withManagedPtr p (copyBytes 72 >=> B.ManagedPtr.wrapPtr ClassVTable)
    boxedPtrFree = \x -> SP.withManagedPtr x SP.freeMem
instance CallocPtr ClassVTable where
    boxedPtrCalloc = callocBytes 72


-- | Construct a t'ClassVTable' struct initialized to zero.
newZeroClassVTable :: MonadIO m => m ClassVTable
newZeroClassVTable = liftIO $ boxedPtrCalloc >>= wrapPtr ClassVTable

instance tag ~ 'AttrSet => Constructible ClassVTable tag where
    new _ attrs = do
        o <- newZeroClassVTable
        GI.Attributes.set o attrs
        return o


-- | Get the value of the “@get_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' classVTable #getProperty
-- @
getClassVTableGetProperty :: MonadIO m => ClassVTable -> m (Maybe JavaScriptCore.Callbacks.ClassGetPropertyFunction)
getClassVTableGetProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 0) :: IO (FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction)
    result <- SP.convertFunPtrIfNonNull val $ \val' -> do
        let val'' = JavaScriptCore.Callbacks.dynamic_ClassGetPropertyFunction val'
        return val''
    return result

-- | Set the value of the “@get_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' classVTable [ #getProperty 'Data.GI.Base.Attributes.:=' value ]
-- @
setClassVTableGetProperty :: MonadIO m => ClassVTable -> FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction -> m ()
setClassVTableGetProperty s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (val :: FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction)

-- | Set the value of the “@get_property@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #getProperty
-- @
clearClassVTableGetProperty :: MonadIO m => ClassVTable -> m ()
clearClassVTableGetProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 0) (FP.nullFunPtr :: FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction)

#if defined(ENABLE_OVERLOADING)
data ClassVTableGetPropertyFieldInfo
instance AttrInfo ClassVTableGetPropertyFieldInfo where
    type AttrBaseTypeConstraint ClassVTableGetPropertyFieldInfo = (~) ClassVTable
    type AttrAllowedOps ClassVTableGetPropertyFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint ClassVTableGetPropertyFieldInfo = (~) (FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction)
    type AttrTransferTypeConstraint ClassVTableGetPropertyFieldInfo = (~)JavaScriptCore.Callbacks.ClassGetPropertyFunction
    type AttrTransferType ClassVTableGetPropertyFieldInfo = (FunPtr JavaScriptCore.Callbacks.C_ClassGetPropertyFunction)
    type AttrGetType ClassVTableGetPropertyFieldInfo = Maybe JavaScriptCore.Callbacks.ClassGetPropertyFunction
    type AttrLabel ClassVTableGetPropertyFieldInfo = "get_property"
    type AttrOrigin ClassVTableGetPropertyFieldInfo = ClassVTable
    attrGet = getClassVTableGetProperty
    attrSet = setClassVTableGetProperty
    attrConstruct = undefined
    attrClear = clearClassVTableGetProperty
    attrTransfer _ v = do
        JavaScriptCore.Callbacks.mk_ClassGetPropertyFunction (JavaScriptCore.Callbacks.wrap_ClassGetPropertyFunction Nothing v)
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Structs.ClassVTable.getProperty"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Structs-ClassVTable.html#g:attr:getProperty"
        })

classVTable_getProperty :: AttrLabelProxy "getProperty"
classVTable_getProperty = AttrLabelProxy

#endif


-- | Get the value of the “@set_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' classVTable #setProperty
-- @
getClassVTableSetProperty :: MonadIO m => ClassVTable -> m (Maybe JavaScriptCore.Callbacks.ClassSetPropertyFunction)
getClassVTableSetProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 8) :: IO (FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction)
    result <- SP.convertFunPtrIfNonNull val $ \val' -> do
        let val'' = JavaScriptCore.Callbacks.dynamic_ClassSetPropertyFunction val'
        return val''
    return result

-- | Set the value of the “@set_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' classVTable [ #setProperty 'Data.GI.Base.Attributes.:=' value ]
-- @
setClassVTableSetProperty :: MonadIO m => ClassVTable -> FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction -> m ()
setClassVTableSetProperty s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 8) (val :: FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction)

-- | Set the value of the “@set_property@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #setProperty
-- @
clearClassVTableSetProperty :: MonadIO m => ClassVTable -> m ()
clearClassVTableSetProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 8) (FP.nullFunPtr :: FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction)

#if defined(ENABLE_OVERLOADING)
data ClassVTableSetPropertyFieldInfo
instance AttrInfo ClassVTableSetPropertyFieldInfo where
    type AttrBaseTypeConstraint ClassVTableSetPropertyFieldInfo = (~) ClassVTable
    type AttrAllowedOps ClassVTableSetPropertyFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint ClassVTableSetPropertyFieldInfo = (~) (FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction)
    type AttrTransferTypeConstraint ClassVTableSetPropertyFieldInfo = (~)JavaScriptCore.Callbacks.ClassSetPropertyFunction
    type AttrTransferType ClassVTableSetPropertyFieldInfo = (FunPtr JavaScriptCore.Callbacks.C_ClassSetPropertyFunction)
    type AttrGetType ClassVTableSetPropertyFieldInfo = Maybe JavaScriptCore.Callbacks.ClassSetPropertyFunction
    type AttrLabel ClassVTableSetPropertyFieldInfo = "set_property"
    type AttrOrigin ClassVTableSetPropertyFieldInfo = ClassVTable
    attrGet = getClassVTableSetProperty
    attrSet = setClassVTableSetProperty
    attrConstruct = undefined
    attrClear = clearClassVTableSetProperty
    attrTransfer _ v = do
        JavaScriptCore.Callbacks.mk_ClassSetPropertyFunction (JavaScriptCore.Callbacks.wrap_ClassSetPropertyFunction Nothing v)
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Structs.ClassVTable.setProperty"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Structs-ClassVTable.html#g:attr:setProperty"
        })

classVTable_setProperty :: AttrLabelProxy "setProperty"
classVTable_setProperty = AttrLabelProxy

#endif


-- | Get the value of the “@has_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' classVTable #hasProperty
-- @
getClassVTableHasProperty :: MonadIO m => ClassVTable -> m (Maybe JavaScriptCore.Callbacks.ClassHasPropertyFunction)
getClassVTableHasProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 16) :: IO (FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction)
    result <- SP.convertFunPtrIfNonNull val $ \val' -> do
        let val'' = JavaScriptCore.Callbacks.dynamic_ClassHasPropertyFunction val'
        return val''
    return result

-- | Set the value of the “@has_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' classVTable [ #hasProperty 'Data.GI.Base.Attributes.:=' value ]
-- @
setClassVTableHasProperty :: MonadIO m => ClassVTable -> FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction -> m ()
setClassVTableHasProperty s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 16) (val :: FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction)

-- | Set the value of the “@has_property@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #hasProperty
-- @
clearClassVTableHasProperty :: MonadIO m => ClassVTable -> m ()
clearClassVTableHasProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 16) (FP.nullFunPtr :: FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction)

#if defined(ENABLE_OVERLOADING)
data ClassVTableHasPropertyFieldInfo
instance AttrInfo ClassVTableHasPropertyFieldInfo where
    type AttrBaseTypeConstraint ClassVTableHasPropertyFieldInfo = (~) ClassVTable
    type AttrAllowedOps ClassVTableHasPropertyFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint ClassVTableHasPropertyFieldInfo = (~) (FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction)
    type AttrTransferTypeConstraint ClassVTableHasPropertyFieldInfo = (~)JavaScriptCore.Callbacks.ClassHasPropertyFunction
    type AttrTransferType ClassVTableHasPropertyFieldInfo = (FunPtr JavaScriptCore.Callbacks.C_ClassHasPropertyFunction)
    type AttrGetType ClassVTableHasPropertyFieldInfo = Maybe JavaScriptCore.Callbacks.ClassHasPropertyFunction
    type AttrLabel ClassVTableHasPropertyFieldInfo = "has_property"
    type AttrOrigin ClassVTableHasPropertyFieldInfo = ClassVTable
    attrGet = getClassVTableHasProperty
    attrSet = setClassVTableHasProperty
    attrConstruct = undefined
    attrClear = clearClassVTableHasProperty
    attrTransfer _ v = do
        JavaScriptCore.Callbacks.mk_ClassHasPropertyFunction (JavaScriptCore.Callbacks.wrap_ClassHasPropertyFunction Nothing v)
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Structs.ClassVTable.hasProperty"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Structs-ClassVTable.html#g:attr:hasProperty"
        })

classVTable_hasProperty :: AttrLabelProxy "hasProperty"
classVTable_hasProperty = AttrLabelProxy

#endif


-- | Get the value of the “@delete_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' classVTable #deleteProperty
-- @
getClassVTableDeleteProperty :: MonadIO m => ClassVTable -> m (Maybe JavaScriptCore.Callbacks.ClassDeletePropertyFunction)
getClassVTableDeleteProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 24) :: IO (FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction)
    result <- SP.convertFunPtrIfNonNull val $ \val' -> do
        let val'' = JavaScriptCore.Callbacks.dynamic_ClassDeletePropertyFunction val'
        return val''
    return result

-- | Set the value of the “@delete_property@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' classVTable [ #deleteProperty 'Data.GI.Base.Attributes.:=' value ]
-- @
setClassVTableDeleteProperty :: MonadIO m => ClassVTable -> FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction -> m ()
setClassVTableDeleteProperty s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 24) (val :: FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction)

-- | Set the value of the “@delete_property@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #deleteProperty
-- @
clearClassVTableDeleteProperty :: MonadIO m => ClassVTable -> m ()
clearClassVTableDeleteProperty s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 24) (FP.nullFunPtr :: FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction)

#if defined(ENABLE_OVERLOADING)
data ClassVTableDeletePropertyFieldInfo
instance AttrInfo ClassVTableDeletePropertyFieldInfo where
    type AttrBaseTypeConstraint ClassVTableDeletePropertyFieldInfo = (~) ClassVTable
    type AttrAllowedOps ClassVTableDeletePropertyFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint ClassVTableDeletePropertyFieldInfo = (~) (FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction)
    type AttrTransferTypeConstraint ClassVTableDeletePropertyFieldInfo = (~)JavaScriptCore.Callbacks.ClassDeletePropertyFunction
    type AttrTransferType ClassVTableDeletePropertyFieldInfo = (FunPtr JavaScriptCore.Callbacks.C_ClassDeletePropertyFunction)
    type AttrGetType ClassVTableDeletePropertyFieldInfo = Maybe JavaScriptCore.Callbacks.ClassDeletePropertyFunction
    type AttrLabel ClassVTableDeletePropertyFieldInfo = "delete_property"
    type AttrOrigin ClassVTableDeletePropertyFieldInfo = ClassVTable
    attrGet = getClassVTableDeleteProperty
    attrSet = setClassVTableDeleteProperty
    attrConstruct = undefined
    attrClear = clearClassVTableDeleteProperty
    attrTransfer _ v = do
        JavaScriptCore.Callbacks.mk_ClassDeletePropertyFunction (JavaScriptCore.Callbacks.wrap_ClassDeletePropertyFunction Nothing v)
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Structs.ClassVTable.deleteProperty"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Structs-ClassVTable.html#g:attr:deleteProperty"
        })

classVTable_deleteProperty :: AttrLabelProxy "deleteProperty"
classVTable_deleteProperty = AttrLabelProxy

#endif


-- | Get the value of the “@enumerate_properties@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' classVTable #enumerateProperties
-- @
getClassVTableEnumerateProperties :: MonadIO m => ClassVTable -> m (Maybe JavaScriptCore.Callbacks.ClassEnumeratePropertiesFunction)
getClassVTableEnumerateProperties s = liftIO $ withManagedPtr s $ \ptr -> do
    val <- peek (ptr `plusPtr` 32) :: IO (FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction)
    result <- SP.convertFunPtrIfNonNull val $ \val' -> do
        let val'' = JavaScriptCore.Callbacks.dynamic_ClassEnumeratePropertiesFunction val'
        return val''
    return result

-- | Set the value of the “@enumerate_properties@” field.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' classVTable [ #enumerateProperties 'Data.GI.Base.Attributes.:=' value ]
-- @
setClassVTableEnumerateProperties :: MonadIO m => ClassVTable -> FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction -> m ()
setClassVTableEnumerateProperties s val = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 32) (val :: FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction)

-- | Set the value of the “@enumerate_properties@” field to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #enumerateProperties
-- @
clearClassVTableEnumerateProperties :: MonadIO m => ClassVTable -> m ()
clearClassVTableEnumerateProperties s = liftIO $ withManagedPtr s $ \ptr -> do
    poke (ptr `plusPtr` 32) (FP.nullFunPtr :: FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction)

#if defined(ENABLE_OVERLOADING)
data ClassVTableEnumeratePropertiesFieldInfo
instance AttrInfo ClassVTableEnumeratePropertiesFieldInfo where
    type AttrBaseTypeConstraint ClassVTableEnumeratePropertiesFieldInfo = (~) ClassVTable
    type AttrAllowedOps ClassVTableEnumeratePropertiesFieldInfo = '[ 'AttrSet, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint ClassVTableEnumeratePropertiesFieldInfo = (~) (FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction)
    type AttrTransferTypeConstraint ClassVTableEnumeratePropertiesFieldInfo = (~)JavaScriptCore.Callbacks.ClassEnumeratePropertiesFunction
    type AttrTransferType ClassVTableEnumeratePropertiesFieldInfo = (FunPtr JavaScriptCore.Callbacks.C_ClassEnumeratePropertiesFunction)
    type AttrGetType ClassVTableEnumeratePropertiesFieldInfo = Maybe JavaScriptCore.Callbacks.ClassEnumeratePropertiesFunction
    type AttrLabel ClassVTableEnumeratePropertiesFieldInfo = "enumerate_properties"
    type AttrOrigin ClassVTableEnumeratePropertiesFieldInfo = ClassVTable
    attrGet = getClassVTableEnumerateProperties
    attrSet = setClassVTableEnumerateProperties
    attrConstruct = undefined
    attrClear = clearClassVTableEnumerateProperties
    attrTransfer _ v = do
        JavaScriptCore.Callbacks.mk_ClassEnumeratePropertiesFunction (JavaScriptCore.Callbacks.wrap_ClassEnumeratePropertiesFunction Nothing v)
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Structs.ClassVTable.enumerateProperties"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Structs-ClassVTable.html#g:attr:enumerateProperties"
        })

classVTable_enumerateProperties :: AttrLabelProxy "enumerateProperties"
classVTable_enumerateProperties = AttrLabelProxy

#endif



#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ClassVTable
type instance O.AttributeList ClassVTable = ClassVTableAttributeList
type ClassVTableAttributeList = ('[ '("getProperty", ClassVTableGetPropertyFieldInfo), '("setProperty", ClassVTableSetPropertyFieldInfo), '("hasProperty", ClassVTableHasPropertyFieldInfo), '("deleteProperty", ClassVTableDeletePropertyFieldInfo), '("enumerateProperties", ClassVTableEnumeratePropertiesFieldInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveClassVTableMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveClassVTableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveClassVTableMethod t ClassVTable, O.OverloadedMethod info ClassVTable p) => OL.IsLabel t (ClassVTable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveClassVTableMethod t ClassVTable, O.OverloadedMethod info ClassVTable p, R.HasField t ClassVTable p) => R.HasField t ClassVTable p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveClassVTableMethod t ClassVTable, O.OverloadedMethodInfo info ClassVTable) => OL.IsLabel t (O.MethodProxy info ClassVTable) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


