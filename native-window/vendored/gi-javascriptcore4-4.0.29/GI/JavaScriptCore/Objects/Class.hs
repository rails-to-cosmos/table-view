{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A JSSClass represents a custom JavaScript class registered by the user in a t'GI.JavaScriptCore.Objects.Context.Context'.
-- It allows to create new JavaScripts objects whose instances are created by the user using
-- this API.
-- It\'s possible to add constructors, properties and methods for a JSSClass by providing
-- t'GI.GObject.Callbacks.Callback's to implement them.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Objects.Class
    ( 

-- * Exported types
    Class(..)                               ,
    IsClass                                 ,
    toClass                                 ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [addConstructor]("GI.JavaScriptCore.Objects.Class#g:method:addConstructor"), [addConstructorVariadic]("GI.JavaScriptCore.Objects.Class#g:method:addConstructorVariadic"), [addMethod]("GI.JavaScriptCore.Objects.Class#g:method:addMethod"), [addMethodVariadic]("GI.JavaScriptCore.Objects.Class#g:method:addMethodVariadic"), [addProperty]("GI.JavaScriptCore.Objects.Class#g:method:addProperty"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getData]("GI.GObject.Objects.Object#g:method:getData"), [getName]("GI.JavaScriptCore.Objects.Class#g:method:getName"), [getParent]("GI.JavaScriptCore.Objects.Class#g:method:getParent"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata").
-- 
-- ==== Setters
-- [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty").

#if defined(ENABLE_OVERLOADING)
    ResolveClassMethod                      ,
#endif

-- ** addConstructor #method:addConstructor#

#if defined(ENABLE_OVERLOADING)
    ClassAddConstructorMethodInfo           ,
#endif
    classAddConstructor                     ,


-- ** addConstructorVariadic #method:addConstructorVariadic#

#if defined(ENABLE_OVERLOADING)
    ClassAddConstructorVariadicMethodInfo   ,
#endif
    classAddConstructorVariadic             ,


-- ** addMethod #method:addMethod#

#if defined(ENABLE_OVERLOADING)
    ClassAddMethodMethodInfo                ,
#endif
    classAddMethod                          ,


-- ** addMethodVariadic #method:addMethodVariadic#

#if defined(ENABLE_OVERLOADING)
    ClassAddMethodVariadicMethodInfo        ,
#endif
    classAddMethodVariadic                  ,


-- ** addProperty #method:addProperty#

#if defined(ENABLE_OVERLOADING)
    ClassAddPropertyMethodInfo              ,
#endif
    classAddProperty                        ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    ClassGetNameMethodInfo                  ,
#endif
    classGetName                            ,


-- ** getParent #method:getParent#

#if defined(ENABLE_OVERLOADING)
    ClassGetParentMethodInfo                ,
#endif
    classGetParent                          ,




 -- * Properties


-- ** context #attr:context#
-- | The t'GI.JavaScriptCore.Objects.Context.Context' in which the class was registered.

#if defined(ENABLE_OVERLOADING)
    ClassContextPropertyInfo                ,
#endif
#if defined(ENABLE_OVERLOADING)
    classContext                            ,
#endif
    constructClassContext                   ,


-- ** name #attr:name#
-- | The name of the class.

#if defined(ENABLE_OVERLOADING)
    ClassNamePropertyInfo                   ,
#endif
#if defined(ENABLE_OVERLOADING)
    className                               ,
#endif
    constructClassName                      ,
    getClassName                            ,


-- ** parent #attr:parent#
-- | The parent class or 'P.Nothing' in case of final classes.

#if defined(ENABLE_OVERLOADING)
    ClassParentPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    classParent                             ,
#endif
    constructClassParent                    ,
    getClassParent                          ,




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
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Callbacks as GObject.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value

#endif

-- | Memory-managed wrapper type.
newtype Class = Class (SP.ManagedPtr Class)
    deriving (Eq)

instance SP.ManagedPtrNewtype Class where
    toManagedPtr (Class p) = p

foreign import ccall "jsc_class_get_type"
    c_jsc_class_get_type :: IO B.Types.GType

instance B.Types.TypedObject Class where
    glibType = c_jsc_class_get_type

instance B.Types.GObject Class

-- | Type class for types which can be safely cast to t'Class', for instance with `toClass`.
class (SP.GObject o, O.IsDescendantOf Class o) => IsClass o
instance (SP.GObject o, O.IsDescendantOf Class o) => IsClass o

instance O.HasParentTypes Class
type instance O.ParentTypes Class = '[GObject.Object.Object]

-- | Cast to t'Class', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toClass :: (MIO.MonadIO m, IsClass o) => o -> m Class
toClass = MIO.liftIO . B.ManagedPtr.unsafeCastTo Class

-- | Convert t'Class' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Class) where
    gvalueGType_ = c_jsc_class_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr Class)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr Class)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject Class ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveClassMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveClassMethod "addConstructor" o = ClassAddConstructorMethodInfo
    ResolveClassMethod "addConstructorVariadic" o = ClassAddConstructorVariadicMethodInfo
    ResolveClassMethod "addMethod" o = ClassAddMethodMethodInfo
    ResolveClassMethod "addMethodVariadic" o = ClassAddMethodVariadicMethodInfo
    ResolveClassMethod "addProperty" o = ClassAddPropertyMethodInfo
    ResolveClassMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveClassMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveClassMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveClassMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveClassMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveClassMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveClassMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveClassMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveClassMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveClassMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveClassMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveClassMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveClassMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveClassMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveClassMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveClassMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveClassMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveClassMethod "getName" o = ClassGetNameMethodInfo
    ResolveClassMethod "getParent" o = ClassGetParentMethodInfo
    ResolveClassMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveClassMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveClassMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveClassMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveClassMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveClassMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveClassMethod t Class, O.OverloadedMethod info Class p) => OL.IsLabel t (Class -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveClassMethod t Class, O.OverloadedMethod info Class p, R.HasField t Class p) => R.HasField t Class p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveClassMethod t Class, O.OverloadedMethodInfo info Class) => OL.IsLabel t (O.MethodProxy info Class) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- VVV Prop "context"
   -- Type: TInterface (Name {namespace = "JavaScriptCore", name = "Context"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@context@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructClassContext :: (IsClass o, MIO.MonadIO m, JavaScriptCore.Context.IsContext a) => a -> m (GValueConstruct o)
constructClassContext val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "context" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ClassContextPropertyInfo
instance AttrInfo ClassContextPropertyInfo where
    type AttrAllowedOps ClassContextPropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint ClassContextPropertyInfo = IsClass
    type AttrSetTypeConstraint ClassContextPropertyInfo = JavaScriptCore.Context.IsContext
    type AttrTransferTypeConstraint ClassContextPropertyInfo = JavaScriptCore.Context.IsContext
    type AttrTransferType ClassContextPropertyInfo = JavaScriptCore.Context.Context
    type AttrGetType ClassContextPropertyInfo = ()
    type AttrLabel ClassContextPropertyInfo = "context"
    type AttrOrigin ClassContextPropertyInfo = Class
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo JavaScriptCore.Context.Context v
    attrConstruct = constructClassContext
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.context"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#g:attr:context"
        })
#endif

-- VVV Prop "name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' class #name
-- @
getClassName :: (MonadIO m, IsClass o) => o -> m T.Text
getClassName obj = MIO.liftIO $ checkUnexpectedNothing "getClassName" $ B.Properties.getObjectPropertyString obj "name"

-- | Construct a t'GValueConstruct' with valid value for the “@name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructClassName :: (IsClass o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructClassName val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "name" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ClassNamePropertyInfo
instance AttrInfo ClassNamePropertyInfo where
    type AttrAllowedOps ClassNamePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ClassNamePropertyInfo = IsClass
    type AttrSetTypeConstraint ClassNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ClassNamePropertyInfo = (~) T.Text
    type AttrTransferType ClassNamePropertyInfo = T.Text
    type AttrGetType ClassNamePropertyInfo = T.Text
    type AttrLabel ClassNamePropertyInfo = "name"
    type AttrOrigin ClassNamePropertyInfo = Class
    attrGet = getClassName
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructClassName
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.name"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#g:attr:name"
        })
#endif

-- VVV Prop "parent"
   -- Type: TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@parent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' class #parent
-- @
getClassParent :: (MonadIO m, IsClass o) => o -> m Class
getClassParent obj = MIO.liftIO $ checkUnexpectedNothing "getClassParent" $ B.Properties.getObjectPropertyObject obj "parent" Class

-- | Construct a t'GValueConstruct' with valid value for the “@parent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructClassParent :: (IsClass o, MIO.MonadIO m, IsClass a) => a -> m (GValueConstruct o)
constructClassParent val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "parent" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ClassParentPropertyInfo
instance AttrInfo ClassParentPropertyInfo where
    type AttrAllowedOps ClassParentPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ClassParentPropertyInfo = IsClass
    type AttrSetTypeConstraint ClassParentPropertyInfo = IsClass
    type AttrTransferTypeConstraint ClassParentPropertyInfo = IsClass
    type AttrTransferType ClassParentPropertyInfo = Class
    type AttrGetType ClassParentPropertyInfo = Class
    type AttrLabel ClassParentPropertyInfo = "parent"
    type AttrOrigin ClassParentPropertyInfo = Class
    attrGet = getClassParent
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo Class v
    attrConstruct = constructClassParent
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.parent"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#g:attr:parent"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Class
type instance O.AttributeList Class = ClassAttributeList
type ClassAttributeList = ('[ '("context", ClassContextPropertyInfo), '("name", ClassNamePropertyInfo), '("parent", ClassParentPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
classContext :: AttrLabelProxy "context"
classContext = AttrLabelProxy

className :: AttrLabelProxy "name"
className = AttrLabelProxy

classParent :: AttrLabelProxy "parent"
classParent = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Class = ClassSignalList
type ClassSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method Class::add_constructor_variadic
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the constructor name or %NULL"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GCallback to be called to create an instance of @jsc_class"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @callback"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GType of the constructor return value"
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_class_add_constructor_variadic" jsc_class_add_constructor_variadic :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    IO (Ptr JavaScriptCore.Value.Value)

-- | Add a constructor to /@jscClass@/. If /@name@/ is 'P.Nothing', the class name will be used. When \<function>new\<\/function>
-- is used with the constructor or @/jsc_value_constructor_call()/@ is called, /@callback@/ is invoked receiving
-- a t'GI.GLib.Structs.PtrArray.PtrArray' of t'GI.JavaScriptCore.Objects.Value.Value's as arguments and /@userData@/ as the last parameter. When the constructor object
-- is cleared in the t'GI.JavaScriptCore.Objects.Class.Class' context, /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- This function creates the constructor, which needs to be added to an object as a property to be able to use it. Use
-- 'GI.JavaScriptCore.Objects.Context.contextSetValue' to make the constructor available in the global object.
-- 
-- Note that the value returned by /@callback@/ is adopted by /@jscClass@/, and the t'GI.GLib.Callbacks.DestroyNotify' passed to
-- 'GI.JavaScriptCore.Objects.Context.contextRegisterClass' is responsible for disposing of it.
classAddConstructorVariadic ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> Maybe (T.Text)
    -- ^ /@name@/: the constructor name or 'P.Nothing'
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback' to be called to create an instance of /@jscClass@/
    -> GType
    -- ^ /@returnType@/: the t'GType' of the constructor return value
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' representing the class constructor.
classAddConstructorVariadic jscClass name callback returnType = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    maybeName <- case name of
        Nothing -> return FP.nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    result <- jsc_class_add_constructor_variadic jscClass' maybeName callback' userData destroyNotify returnType'
    checkUnexpectedReturnNULL "classAddConstructorVariadic" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr jscClass
    freeMem maybeName
    return result'

#if defined(ENABLE_OVERLOADING)
data ClassAddConstructorVariadicMethodInfo
instance (signature ~ (Maybe (T.Text) -> GObject.Callbacks.Callback -> GType -> m JavaScriptCore.Value.Value), MonadIO m, IsClass a) => O.OverloadedMethod ClassAddConstructorVariadicMethodInfo a signature where
    overloadedMethod = classAddConstructorVariadic

instance O.OverloadedMethodInfo ClassAddConstructorVariadicMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classAddConstructorVariadic",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classAddConstructorVariadic"
        })


#endif

-- method Class::add_constructor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the constructor name or %NULL"
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
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GCallback to be called to create an instance of @jsc_class"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @callback"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GType of the constructor return value"
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
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of parameters"
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
--           { argCName = "parameter_types"
--           , argType = TCArray False (-1) 6 (TBasicType TGType)
--           , argCType = Just "GType*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a list of #GType<!-- -->s, one for each parameter, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of parameters"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_class_add_constructorv" jsc_class_add_constructorv :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr CGType ->                           -- parameter_types : TCArray False (-1) 6 (TBasicType TGType)
    IO (Ptr JavaScriptCore.Value.Value)

-- | Add a constructor to /@jscClass@/. If /@name@/ is 'P.Nothing', the class name will be used. When \<function>new\<\/function>
-- is used with the constructor or @/jsc_value_constructor_call()/@ is called, /@callback@/ is invoked receiving the
-- parameters and /@userData@/ as the last parameter. When the constructor object is cleared in the t'GI.JavaScriptCore.Objects.Class.Class' context,
-- /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- This function creates the constructor, which needs to be added to an object as a property to be able to use it. Use
-- 'GI.JavaScriptCore.Objects.Context.contextSetValue' to make the constructor available in the global object.
-- 
-- Note that the value returned by /@callback@/ is adopted by /@jscClass@/, and the t'GI.GLib.Callbacks.DestroyNotify' passed to
-- 'GI.JavaScriptCore.Objects.Context.contextRegisterClass' is responsible for disposing of it.
classAddConstructor ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> Maybe (T.Text)
    -- ^ /@name@/: the constructor name or 'P.Nothing'
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback' to be called to create an instance of /@jscClass@/
    -> GType
    -- ^ /@returnType@/: the t'GType' of the constructor return value
    -> Maybe ([GType])
    -- ^ /@parameterTypes@/: a list of t'GType's, one for each parameter, or 'P.Nothing'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' representing the class constructor.
classAddConstructor jscClass name callback returnType parameterTypes = liftIO $ do
    let nParameters = case parameterTypes of
            Nothing -> 0
            Just jParameterTypes -> fromIntegral $ P.length jParameterTypes
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    maybeName <- case name of
        Nothing -> return FP.nullPtr
        Just jName -> do
            jName' <- textToCString jName
            return jName'
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    maybeParameterTypes <- case parameterTypes of
        Nothing -> return FP.nullPtr
        Just jParameterTypes -> do
            jParameterTypes' <- (packMapStorableArray gtypeToCGType) jParameterTypes
            return jParameterTypes'
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    result <- jsc_class_add_constructorv jscClass' maybeName callback' userData destroyNotify returnType' nParameters maybeParameterTypes
    checkUnexpectedReturnNULL "classAddConstructor" result
    result' <- (wrapObject JavaScriptCore.Value.Value) result
    touchManagedPtr jscClass
    freeMem maybeName
    freeMem maybeParameterTypes
    return result'

#if defined(ENABLE_OVERLOADING)
data ClassAddConstructorMethodInfo
instance (signature ~ (Maybe (T.Text) -> GObject.Callbacks.Callback -> GType -> Maybe ([GType]) -> m JavaScriptCore.Value.Value), MonadIO m, IsClass a) => O.OverloadedMethod ClassAddConstructorMethodInfo a signature where
    overloadedMethod = classAddConstructor

instance O.OverloadedMethodInfo ClassAddConstructorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classAddConstructor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classAddConstructor"
        })


#endif

-- method Class::add_method_variadic
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the method name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GCallback to be called to invoke method @name of @jsc_class"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @callback"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GType of the method return value, or %G_TYPE_NONE if the method is void."
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

foreign import ccall "jsc_class_add_method_variadic" jsc_class_add_method_variadic :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    IO ()

-- | Add method with /@name@/ to /@jscClass@/. When the method is called by JavaScript or @/jsc_value_object_invoke_method()/@,
-- /@callback@/ is called receiving the class instance as first parameter, followed by a t'GI.GLib.Structs.PtrArray.PtrArray' of t'GI.JavaScriptCore.Objects.Value.Value's
-- with the method arguments and then /@userData@/ as last parameter. When the method is cleared in the t'GI.JavaScriptCore.Objects.Class.Class' context,
-- /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- Note that the value returned by /@callback@/ must be transfer full. In case of non-refcounted boxed types, you should use
-- @/G_TYPE_POINTER/@ instead of the actual boxed t'GType' to ensure that the instance owned by t'GI.JavaScriptCore.Objects.Class.Class' is used.
-- If you really want to return a new copy of the boxed type, use @/JSC_TYPE_VALUE/@ and return a t'GI.JavaScriptCore.Objects.Value.Value' created
-- with 'GI.JavaScriptCore.Objects.Value.valueNewObject' that receives the copy as the instance parameter.
classAddMethodVariadic ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> T.Text
    -- ^ /@name@/: the method name
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback' to be called to invoke method /@name@/ of /@jscClass@/
    -> GType
    -- ^ /@returnType@/: the t'GType' of the method return value, or @/G_TYPE_NONE/@ if the method is void.
    -> m ()
classAddMethodVariadic jscClass name callback returnType = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    name' <- textToCString name
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    jsc_class_add_method_variadic jscClass' name' callback' userData destroyNotify returnType'
    touchManagedPtr jscClass
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data ClassAddMethodVariadicMethodInfo
instance (signature ~ (T.Text -> GObject.Callbacks.Callback -> GType -> m ()), MonadIO m, IsClass a) => O.OverloadedMethod ClassAddMethodVariadicMethodInfo a signature where
    overloadedMethod = classAddMethodVariadic

instance O.OverloadedMethodInfo ClassAddMethodVariadicMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classAddMethodVariadic",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classAddMethodVariadic"
        })


#endif

-- method Class::add_method
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the method name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GCallback to be called to invoke method @name of @jsc_class"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @callback"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "return_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GType of the method return value, or %G_TYPE_NONE if the method is void."
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
--           { argCName = "n_parameters"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the number of parameter types to follow or 0 if the method doesn't receive parameters."
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
--           { argCName = "parameter_types"
--           , argType = TCArray False (-1) 6 (TBasicType TGType)
--           , argCType = Just "GType*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a list of #GType<!-- -->s, one for each parameter, or %NULL"
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
-- Lengths: [ Arg
--              { argCName = "n_parameters"
--              , argType = TBasicType TUInt
--              , argCType = Just "guint"
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just
--                          "the number of parameter types to follow or 0 if the method doesn't receive parameters."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , argCallbackUserData = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "jsc_class_add_methodv" jsc_class_add_methodv :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- name : TBasicType TUTF8
    FunPtr GObject.Callbacks.C_Callback ->  -- callback : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    CGType ->                               -- return_type : TBasicType TGType
    Word32 ->                               -- n_parameters : TBasicType TUInt
    Ptr CGType ->                           -- parameter_types : TCArray False (-1) 6 (TBasicType TGType)
    IO ()

-- | Add method with /@name@/ to /@jscClass@/. When the method is called by JavaScript or @/jsc_value_object_invoke_method()/@,
-- /@callback@/ is called receiving the class instance as first parameter, followed by the method parameters and then
-- /@userData@/ as last parameter. When the method is cleared in the t'GI.JavaScriptCore.Objects.Class.Class' context, /@destroyNotify@/ is called with
-- /@userData@/ as parameter.
-- 
-- Note that the value returned by /@callback@/ must be transfer full. In case of non-refcounted boxed types, you should use
-- @/G_TYPE_POINTER/@ instead of the actual boxed t'GType' to ensure that the instance owned by t'GI.JavaScriptCore.Objects.Class.Class' is used.
-- If you really want to return a new copy of the boxed type, use @/JSC_TYPE_VALUE/@ and return a t'GI.JavaScriptCore.Objects.Value.Value' created
-- with 'GI.JavaScriptCore.Objects.Value.valueNewObject' that receives the copy as the instance parameter.
classAddMethod ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> T.Text
    -- ^ /@name@/: the method name
    -> GObject.Callbacks.Callback
    -- ^ /@callback@/: a t'GI.GObject.Callbacks.Callback' to be called to invoke method /@name@/ of /@jscClass@/
    -> GType
    -- ^ /@returnType@/: the t'GType' of the method return value, or @/G_TYPE_NONE/@ if the method is void.
    -> Maybe ([GType])
    -- ^ /@parameterTypes@/: a list of t'GType's, one for each parameter, or 'P.Nothing'
    -> m ()
classAddMethod jscClass name callback returnType parameterTypes = liftIO $ do
    let nParameters = case parameterTypes of
            Nothing -> 0
            Just jParameterTypes -> fromIntegral $ P.length jParameterTypes
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    name' <- textToCString name
    callback' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing callback)
    let returnType' = gtypeToCGType returnType
    maybeParameterTypes <- case parameterTypes of
        Nothing -> return FP.nullPtr
        Just jParameterTypes -> do
            jParameterTypes' <- (packMapStorableArray gtypeToCGType) jParameterTypes
            return jParameterTypes'
    let userData = castFunPtrToPtr callback'
    let destroyNotify = SP.safeFreeFunPtrPtr
    jsc_class_add_methodv jscClass' name' callback' userData destroyNotify returnType' nParameters maybeParameterTypes
    touchManagedPtr jscClass
    freeMem name'
    freeMem maybeParameterTypes
    return ()

#if defined(ENABLE_OVERLOADING)
data ClassAddMethodMethodInfo
instance (signature ~ (T.Text -> GObject.Callbacks.Callback -> GType -> Maybe ([GType]) -> m ()), MonadIO m, IsClass a) => O.OverloadedMethod ClassAddMethodMethodInfo a signature where
    overloadedMethod = classAddMethod

instance O.OverloadedMethodInfo ClassAddMethodMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classAddMethod",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classAddMethod"
        })


#endif

-- method Class::add_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the property name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property_type"
--           , argType = TBasicType TGType
--           , argCType = Just "GType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GType of the property value"
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
--           { argCName = "getter"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GCallback to be called to get the property value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setter"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Callback" }
--           , argCType = Just "GCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GCallback to be called to set the property value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 5
--           , argDestroy = 6
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @getter and @setter"
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
--           { argCName = "destroy_notify"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , argCType = Just "GDestroyNotify"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @user_data"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "jsc_class_add_property" jsc_class_add_property :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    CString ->                              -- name : TBasicType TUTF8
    CGType ->                               -- property_type : TBasicType TGType
    FunPtr GObject.Callbacks.C_Callback ->  -- getter : TInterface (Name {namespace = "GObject", name = "Callback"})
    FunPtr GObject.Callbacks.C_Callback ->  -- setter : TInterface (Name {namespace = "GObject", name = "Callback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy_notify : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Add a property with /@name@/ to /@jscClass@/. When the property value is read, /@getter@/ is called
-- receiving the the class instance as first parameter and /@userData@/ as last parameter. When the property
-- value needs to be set, /@setter@/ is called receiving the the class instance as first parameter, followed
-- by the value to be set and then /@userData@/ as the last parameter. When the property is cleared in the
-- t'GI.JavaScriptCore.Objects.Class.Class' context, /@destroyNotify@/ is called with /@userData@/ as parameter.
-- 
-- Note that the value returned by /@getter@/ must be transfer full. In case of non-refcounted boxed types, you should use
-- @/G_TYPE_POINTER/@ instead of the actual boxed t'GType' to ensure that the instance owned by t'GI.JavaScriptCore.Objects.Class.Class' is used.
-- If you really want to return a new copy of the boxed type, use @/JSC_TYPE_VALUE/@ and return a t'GI.JavaScriptCore.Objects.Value.Value' created
-- with 'GI.JavaScriptCore.Objects.Value.valueNewObject' that receives the copy as the instance parameter.
classAddProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> T.Text
    -- ^ /@name@/: the property name
    -> GType
    -- ^ /@propertyType@/: the t'GType' of the property value
    -> Maybe (GObject.Callbacks.Callback)
    -- ^ /@getter@/: a t'GI.GObject.Callbacks.Callback' to be called to get the property value
    -> Maybe (GObject.Callbacks.Callback)
    -- ^ /@setter@/: a t'GI.GObject.Callbacks.Callback' to be called to set the property value
    -> m ()
classAddProperty jscClass name propertyType getter setter = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    name' <- textToCString name
    let propertyType' = gtypeToCGType propertyType
    maybeGetter <- case getter of
        Nothing -> return FP.nullFunPtr
        Just jGetter -> do
            ptrgetter <- callocMem :: IO (Ptr (FunPtr GObject.Callbacks.C_Callback))
            jGetter' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback (Just ptrgetter) jGetter)
            poke ptrgetter jGetter'
            return jGetter'
    maybeSetter <- case setter of
        Nothing -> return FP.nullFunPtr
        Just jSetter -> do
            jSetter' <- GObject.Callbacks.mk_Callback (GObject.Callbacks.wrap_Callback Nothing jSetter)
            return jSetter'
    let userData = castFunPtrToPtr maybeSetter
    let destroyNotify = SP.safeFreeFunPtrPtr
    jsc_class_add_property jscClass' name' propertyType' maybeGetter maybeSetter userData destroyNotify
    touchManagedPtr jscClass
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data ClassAddPropertyMethodInfo
instance (signature ~ (T.Text -> GType -> Maybe (GObject.Callbacks.Callback) -> Maybe (GObject.Callbacks.Callback) -> m ()), MonadIO m, IsClass a) => O.OverloadedMethod ClassAddPropertyMethodInfo a signature where
    overloadedMethod = classAddProperty

instance O.OverloadedMethodInfo ClassAddPropertyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classAddProperty",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classAddProperty"
        })


#endif

-- method Class::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a @JSCClass" , sinceVersion = Nothing }
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

foreign import ccall "jsc_class_get_name" jsc_class_get_name :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    IO CString

-- | Get the class name of /@jscClass@/
classGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a /@jSCClass@/
    -> m T.Text
    -- ^ __Returns:__ the name of /@jscClass@/
classGetName jscClass = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    result <- jsc_class_get_name jscClass'
    checkUnexpectedReturnNULL "classGetName" result
    result' <- cstringToText result
    touchManagedPtr jscClass
    return result'

#if defined(ENABLE_OVERLOADING)
data ClassGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsClass a) => O.OverloadedMethod ClassGetNameMethodInfo a signature where
    overloadedMethod = classGetName

instance O.OverloadedMethodInfo ClassGetNameMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classGetName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classGetName"
        })


#endif

-- method Class::get_parent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "jsc_class"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
--           , argCType = Just "JSCClass*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a @JSCClass" , sinceVersion = Nothing }
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
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Class" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_class_get_parent" jsc_class_get_parent :: 
    Ptr Class ->                            -- jsc_class : TInterface (Name {namespace = "JavaScriptCore", name = "Class"})
    IO (Ptr Class)

-- | Get the parent class of /@jscClass@/
classGetParent ::
    (B.CallStack.HasCallStack, MonadIO m, IsClass a) =>
    a
    -- ^ /@jscClass@/: a /@jSCClass@/
    -> m Class
    -- ^ __Returns:__ the parent class of /@jscClass@/
classGetParent jscClass = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    result <- jsc_class_get_parent jscClass'
    checkUnexpectedReturnNULL "classGetParent" result
    result' <- (newObject Class) result
    touchManagedPtr jscClass
    return result'

#if defined(ENABLE_OVERLOADING)
data ClassGetParentMethodInfo
instance (signature ~ (m Class), MonadIO m, IsClass a) => O.OverloadedMethod ClassGetParentMethodInfo a signature where
    overloadedMethod = classGetParent

instance O.OverloadedMethodInfo ClassGetParentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.JavaScriptCore.Objects.Class.classGetParent",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-javascriptcore4-4.0.29/docs/GI-JavaScriptCore-Objects-Class.html#v:classGetParent"
        })


#endif


