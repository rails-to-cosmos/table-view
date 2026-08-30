

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Callbacks
    ( 

 -- * Signals


-- ** ClassDeletePropertyFunction #signal:ClassDeletePropertyFunction#

    C_ClassDeletePropertyFunction           ,
    ClassDeletePropertyFunction             ,
    dynamic_ClassDeletePropertyFunction     ,
    genClosure_ClassDeletePropertyFunction  ,
    mk_ClassDeletePropertyFunction          ,
    noClassDeletePropertyFunction           ,
    wrap_ClassDeletePropertyFunction        ,


-- ** ClassEnumeratePropertiesFunction #signal:ClassEnumeratePropertiesFunction#

    C_ClassEnumeratePropertiesFunction      ,
    ClassEnumeratePropertiesFunction        ,
    dynamic_ClassEnumeratePropertiesFunction,
    genClosure_ClassEnumeratePropertiesFunction,
    mk_ClassEnumeratePropertiesFunction     ,
    noClassEnumeratePropertiesFunction      ,
    wrap_ClassEnumeratePropertiesFunction   ,


-- ** ClassGetPropertyFunction #signal:ClassGetPropertyFunction#

    C_ClassGetPropertyFunction              ,
    ClassGetPropertyFunction                ,
    dynamic_ClassGetPropertyFunction        ,
    genClosure_ClassGetPropertyFunction     ,
    mk_ClassGetPropertyFunction             ,
    noClassGetPropertyFunction              ,
    wrap_ClassGetPropertyFunction           ,


-- ** ClassHasPropertyFunction #signal:ClassHasPropertyFunction#

    C_ClassHasPropertyFunction              ,
    ClassHasPropertyFunction                ,
    dynamic_ClassHasPropertyFunction        ,
    genClosure_ClassHasPropertyFunction     ,
    mk_ClassHasPropertyFunction             ,
    noClassHasPropertyFunction              ,
    wrap_ClassHasPropertyFunction           ,


-- ** ClassSetPropertyFunction #signal:ClassSetPropertyFunction#

    C_ClassSetPropertyFunction              ,
    ClassSetPropertyFunction                ,
    dynamic_ClassSetPropertyFunction        ,
    genClosure_ClassSetPropertyFunction     ,
    mk_ClassSetPropertyFunction             ,
    noClassSetPropertyFunction              ,
    wrap_ClassSetPropertyFunction           ,


-- ** ExceptionHandler #signal:ExceptionHandler#

    C_ExceptionHandler                      ,
    ExceptionHandler                        ,
    ExceptionHandler_WithClosures           ,
    drop_closures_ExceptionHandler          ,
    dynamic_ExceptionHandler                ,
    genClosure_ExceptionHandler             ,
    mk_ExceptionHandler                     ,
    noExceptionHandler                      ,
    noExceptionHandler_WithClosures         ,
    wrap_ExceptionHandler                   ,


-- ** Executor #signal:Executor#

    C_Executor                              ,
    Executor                                ,
    Executor_WithClosures                   ,
    drop_closures_Executor                  ,
    dynamic_Executor                        ,
    genClosure_Executor                     ,
    mk_Executor                             ,
    noExecutor                              ,
    noExecutor_WithClosures                 ,
    wrap_Executor                           ,


-- ** OptionsFunc #signal:OptionsFunc#

    C_OptionsFunc                           ,
    OptionsFunc                             ,
    OptionsFunc_WithClosures                ,
    drop_closures_OptionsFunc               ,
    dynamic_OptionsFunc                     ,
    genClosure_OptionsFunc                  ,
    mk_OptionsFunc                          ,
    noOptionsFunc                           ,
    noOptionsFunc_WithClosures              ,
    wrap_OptionsFunc                        ,




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
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Flags as JavaScriptCore.Flags
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.VirtualMachine as JavaScriptCore.VirtualMachine
import {-# SOURCE #-} qualified GI.JavaScriptCore.Structs.ClassVTable as JavaScriptCore.ClassVTable

#else
import {-# SOURCE #-} qualified GI.JavaScriptCore.Enums as JavaScriptCore.Enums
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Class as JavaScriptCore.Class
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Context as JavaScriptCore.Context
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Exception as JavaScriptCore.Exception
import {-# SOURCE #-} qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value

#endif

-- callback OptionsFunc
{- Callable
  { returnType = Just (TBasicType TBoolean)
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just "%TRUE to stop the iteration, or %FALSE otherwise"
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "option"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the option name" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "type"
          , argType =
              TInterface
                Name { namespace = "JavaScriptCore" , name = "OptionType" }
          , argCType = Just "JSCOptionType"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the option #JSCOptionType"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "description"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the option description, or %NULL"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "user_data"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "user data" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = True
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "Function used to iterate options.\n\nNot that @description string is not localized."
        , sinceVersion = Just "2.24"
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_OptionsFunc =
    CString ->
    CUInt ->
    CString ->
    Ptr () ->
    IO CInt

-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option name" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "OptionType" }
--           , argCType = Just "JSCOptionType"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option #JSCOptionType"
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
--           { argCName = "description"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option description, or %NULL"
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
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_OptionsFunc :: FunPtr C_OptionsFunc -> C_OptionsFunc

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_OptionsFunc ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    FunPtr C_OptionsFunc
    -> T.Text
    -- ^ /@option@/: the option name
    -> JavaScriptCore.Enums.OptionType
    -- ^ /@type@/: the option t'GI.JavaScriptCore.Enums.OptionType'
    -> Maybe (T.Text)
    -- ^ /@description@/: the option description, or 'P.Nothing'
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> m Bool
    -- ^ __Returns:__ 'P.True' to stop the iteration, or 'P.False' otherwise
dynamic_OptionsFunc __funPtr option type_ description userData = liftIO $ do
    option' <- textToCString option
    let type_' = (fromIntegral . fromEnum) type_
    maybeDescription <- case description of
        Nothing -> return FP.nullPtr
        Just jDescription -> do
            jDescription' <- textToCString jDescription
            return jDescription'
    result <- (__dynamic_C_OptionsFunc __funPtr) option' type_' maybeDescription userData
    let result' = (/= 0) result
    freeMem option'
    freeMem maybeDescription
    return result'

-- | Generate a function pointer callable from C code, from a `C_OptionsFunc`.
foreign import ccall "wrapper"
    mk_OptionsFunc :: C_OptionsFunc -> IO (FunPtr C_OptionsFunc)

-- | Function used to iterate options.
-- 
-- Not that /@description@/ string is not localized.
-- 
-- /Since: 2.24/
type OptionsFunc =
    T.Text
    -- ^ /@option@/: the option name
    -> JavaScriptCore.Enums.OptionType
    -- ^ /@type@/: the option t'GI.JavaScriptCore.Enums.OptionType'
    -> Maybe T.Text
    -- ^ /@description@/: the option description, or 'P.Nothing'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop the iteration, or 'P.False' otherwise

-- | A convenience synonym for @`Nothing` :: `Maybe` `OptionsFunc`@.
noOptionsFunc :: Maybe OptionsFunc
noOptionsFunc = Nothing

-- | Function used to iterate options.
-- 
-- Not that /@description@/ string is not localized.
-- 
-- /Since: 2.24/
type OptionsFunc_WithClosures =
    T.Text
    -- ^ /@option@/: the option name
    -> JavaScriptCore.Enums.OptionType
    -- ^ /@type@/: the option t'GI.JavaScriptCore.Enums.OptionType'
    -> Maybe T.Text
    -- ^ /@description@/: the option description, or 'P.Nothing'
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop the iteration, or 'P.False' otherwise

-- | A convenience synonym for @`Nothing` :: `Maybe` `OptionsFunc_WithClosures`@.
noOptionsFunc_WithClosures :: Maybe OptionsFunc_WithClosures
noOptionsFunc_WithClosures = Nothing

-- | A simple wrapper that ignores the closure arguments.
drop_closures_OptionsFunc :: OptionsFunc -> OptionsFunc_WithClosures
drop_closures_OptionsFunc _f option type_ description _ = _f option type_ description

-- | Wrap the callback into a `GClosure`.
genClosure_OptionsFunc :: MonadIO m => OptionsFunc -> m (GClosure C_OptionsFunc)
genClosure_OptionsFunc cb = liftIO $ do
    let cb' = drop_closures_OptionsFunc cb
    let cb'' = wrap_OptionsFunc Nothing cb'
    mk_OptionsFunc cb'' >>= B.GClosure.newGClosure


-- | Wrap a `OptionsFunc` into a `C_OptionsFunc`.
wrap_OptionsFunc :: 
    Maybe (Ptr (FunPtr C_OptionsFunc)) ->
    OptionsFunc_WithClosures ->
    C_OptionsFunc
wrap_OptionsFunc gi'funptrptr gi'cb option type_ description userData = do
    option' <- cstringToText option
    let type_' = (toEnum . fromIntegral) type_
    maybeDescription <-
        if description == FP.nullPtr
        then return Nothing
        else do
            description' <- cstringToText description
            return $ Just description'
    result <- gi'cb  option' type_' maybeDescription userData
    maybeReleaseFunPtr gi'funptrptr
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- callback Executor
{- Callable
  { returnType = Nothing
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation { rawDocText = Nothing , sinceVersion = Nothing }
  , args =
      [ Arg
          { argCName = "resolve"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
          , argCType = Just "JSCValue*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText =
                    Just "#JSCValue function to call to resolve the promise"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "reject"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
          , argCType = Just "JSCValue*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText =
                    Just "#JSCValue function to call to reject the promise"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "user_data"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "user data" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = True
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "A function passed to @jsc_value_new_promise called during initialization\n\nIt is called like a JavaScript function, so exceptions raised will not be propagated\nto the context, but handled by the promise causing a rejection.\n@resolve and @reject can be reffed for later use to handle async task completion."
        , sinceVersion = Just "2.48"
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_Executor =
    Ptr JavaScriptCore.Value.Value ->
    Ptr JavaScriptCore.Value.Value ->
    Ptr () ->
    IO ()

-- Args: [ Arg
--           { argCName = "resolve"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "#JSCValue function to call to resolve the promise"
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
--           { argCName = "reject"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "#JSCValue function to call to reject the promise"
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
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_Executor :: FunPtr C_Executor -> C_Executor

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_Executor ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Value.IsValue a, JavaScriptCore.Value.IsValue b) =>
    FunPtr C_Executor
    -> a
    -- ^ /@resolve@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to resolve the promise
    -> b
    -- ^ /@reject@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to reject the promise
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> m ()
dynamic_Executor __funPtr resolve reject userData = liftIO $ do
    resolve' <- unsafeManagedPtrCastPtr resolve
    reject' <- unsafeManagedPtrCastPtr reject
    (__dynamic_C_Executor __funPtr) resolve' reject' userData
    touchManagedPtr resolve
    touchManagedPtr reject
    return ()

-- | Generate a function pointer callable from C code, from a `C_Executor`.
foreign import ccall "wrapper"
    mk_Executor :: C_Executor -> IO (FunPtr C_Executor)

-- | A function passed to /@jscValueNewPromise@/ called during initialization
-- 
-- It is called like a JavaScript function, so exceptions raised will not be propagated
-- to the context, but handled by the promise causing a rejection.
-- /@resolve@/ and /@reject@/ can be reffed for later use to handle async task completion.
-- 
-- /Since: 2.48/
type Executor =
    JavaScriptCore.Value.Value
    -- ^ /@resolve@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to resolve the promise
    -> JavaScriptCore.Value.Value
    -- ^ /@reject@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to reject the promise
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `Executor`@.
noExecutor :: Maybe Executor
noExecutor = Nothing

-- | A function passed to /@jscValueNewPromise@/ called during initialization
-- 
-- It is called like a JavaScript function, so exceptions raised will not be propagated
-- to the context, but handled by the promise causing a rejection.
-- /@resolve@/ and /@reject@/ can be reffed for later use to handle async task completion.
-- 
-- /Since: 2.48/
type Executor_WithClosures =
    JavaScriptCore.Value.Value
    -- ^ /@resolve@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to resolve the promise
    -> JavaScriptCore.Value.Value
    -- ^ /@reject@/: t'GI.JavaScriptCore.Objects.Value.Value' function to call to reject the promise
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `Executor_WithClosures`@.
noExecutor_WithClosures :: Maybe Executor_WithClosures
noExecutor_WithClosures = Nothing

-- | A simple wrapper that ignores the closure arguments.
drop_closures_Executor :: Executor -> Executor_WithClosures
drop_closures_Executor _f resolve reject _ = _f resolve reject

-- | Wrap the callback into a `GClosure`.
genClosure_Executor :: MonadIO m => Executor -> m (GClosure C_Executor)
genClosure_Executor cb = liftIO $ do
    let cb' = drop_closures_Executor cb
    let cb'' = wrap_Executor Nothing cb'
    mk_Executor cb'' >>= B.GClosure.newGClosure


-- | Wrap a `Executor` into a `C_Executor`.
wrap_Executor :: 
    Maybe (Ptr (FunPtr C_Executor)) ->
    Executor_WithClosures ->
    C_Executor
wrap_Executor gi'funptrptr gi'cb resolve reject userData = do
    resolve' <- (newObject JavaScriptCore.Value.Value) resolve
    reject' <- (newObject JavaScriptCore.Value.Value) reject
    gi'cb  resolve' reject' userData
    maybeReleaseFunPtr gi'funptrptr


-- callback ExceptionHandler
{- Callable
  { returnType = Nothing
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation { rawDocText = Nothing , sinceVersion = Nothing }
  , args =
      [ Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "exception"
          , argType =
              TInterface
                Name { namespace = "JavaScriptCore" , name = "Exception" }
          , argCType = Just "JSCException*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "user_data"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "user data" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = True
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "Function used to handle JavaScript exceptions in a #JSCContext."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ExceptionHandler =
    Ptr JavaScriptCore.Context.Context ->
    Ptr JavaScriptCore.Exception.Exception ->
    Ptr () ->
    IO ()

-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "exception"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "Exception" }
--           , argCType = Just "JSCException*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCException" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
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
--                 { rawDocText = Just "user data" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_ExceptionHandler :: FunPtr C_ExceptionHandler -> C_ExceptionHandler

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ExceptionHandler ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Context.IsContext a, JavaScriptCore.Exception.IsException b) =>
    FunPtr C_ExceptionHandler
    -> a
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> b
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> m ()
dynamic_ExceptionHandler __funPtr context exception userData = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    exception' <- unsafeManagedPtrCastPtr exception
    (__dynamic_C_ExceptionHandler __funPtr) context' exception' userData
    touchManagedPtr context
    touchManagedPtr exception
    return ()

-- | Generate a function pointer callable from C code, from a `C_ExceptionHandler`.
foreign import ccall "wrapper"
    mk_ExceptionHandler :: C_ExceptionHandler -> IO (FunPtr C_ExceptionHandler)

-- | Function used to handle JavaScript exceptions in a t'GI.JavaScriptCore.Objects.Context.Context'.
type ExceptionHandler =
    JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> JavaScriptCore.Exception.Exception
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ExceptionHandler`@.
noExceptionHandler :: Maybe ExceptionHandler
noExceptionHandler = Nothing

-- | Function used to handle JavaScript exceptions in a t'GI.JavaScriptCore.Objects.Context.Context'.
type ExceptionHandler_WithClosures =
    JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> JavaScriptCore.Exception.Exception
    -- ^ /@exception@/: a t'GI.JavaScriptCore.Objects.Exception.Exception'
    -> Ptr ()
    -- ^ /@userData@/: user data
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ExceptionHandler_WithClosures`@.
noExceptionHandler_WithClosures :: Maybe ExceptionHandler_WithClosures
noExceptionHandler_WithClosures = Nothing

-- | A simple wrapper that ignores the closure arguments.
drop_closures_ExceptionHandler :: ExceptionHandler -> ExceptionHandler_WithClosures
drop_closures_ExceptionHandler _f context exception _ = _f context exception

-- | Wrap the callback into a `GClosure`.
genClosure_ExceptionHandler :: MonadIO m => ExceptionHandler -> m (GClosure C_ExceptionHandler)
genClosure_ExceptionHandler cb = liftIO $ do
    let cb' = drop_closures_ExceptionHandler cb
    let cb'' = wrap_ExceptionHandler Nothing cb'
    mk_ExceptionHandler cb'' >>= B.GClosure.newGClosure


-- | Wrap a `ExceptionHandler` into a `C_ExceptionHandler`.
wrap_ExceptionHandler :: 
    Maybe (Ptr (FunPtr C_ExceptionHandler)) ->
    ExceptionHandler_WithClosures ->
    C_ExceptionHandler
wrap_ExceptionHandler gi'funptrptr gi'cb context exception userData = do
    context' <- (newObject JavaScriptCore.Context.Context) context
    exception' <- (newObject JavaScriptCore.Exception.Exception) exception
    gi'cb  context' exception' userData
    maybeReleaseFunPtr gi'funptrptr


-- callback ClassSetPropertyFunction
{- Callable
  { returnType = Just (TBasicType TBoolean)
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just
              "%TRUE if handled or %FALSE to forward the request to the parent class or prototype chain."
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "jsc_class"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
          , argCType = Just "JSCClass*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "instance"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the @jsc_class instance"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "name"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the property name" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "value"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
          , argCType = Just "JSCValue*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the #JSCValue to set"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "The type of set_property in #JSCClassVTable. This is only required when you need to handle\nexternal properties not added to the prototype."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ClassSetPropertyFunction =
    Ptr JavaScriptCore.Class.Class ->
    Ptr JavaScriptCore.Context.Context ->
    Ptr () ->
    CString ->
    Ptr JavaScriptCore.Value.Value ->
    IO CInt

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
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the @jsc_class instance"
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
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Value" }
--           , argCType = Just "JSCValue*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #JSCValue to set"
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

foreign import ccall "dynamic" __dynamic_C_ClassSetPropertyFunction :: FunPtr C_ClassSetPropertyFunction -> C_ClassSetPropertyFunction

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ClassSetPropertyFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Class.IsClass a, JavaScriptCore.Context.IsContext b, JavaScriptCore.Value.IsValue c) =>
    FunPtr C_ClassSetPropertyFunction
    -> a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> b
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> c
    -- ^ /@value@/: the t'GI.JavaScriptCore.Objects.Value.Value' to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if handled or 'P.False' to forward the request to the parent class or prototype chain.
dynamic_ClassSetPropertyFunction __funPtr jscClass context instance_ name value = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    value' <- unsafeManagedPtrCastPtr value
    result <- (__dynamic_C_ClassSetPropertyFunction __funPtr) jscClass' context' instance_ name' value'
    let result' = (/= 0) result
    touchManagedPtr jscClass
    touchManagedPtr context
    touchManagedPtr value
    freeMem name'
    return result'

-- | Generate a function pointer callable from C code, from a `C_ClassSetPropertyFunction`.
foreign import ccall "wrapper"
    mk_ClassSetPropertyFunction :: C_ClassSetPropertyFunction -> IO (FunPtr C_ClassSetPropertyFunction)

-- | The type of set_property in t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable'. This is only required when you need to handle
-- external properties not added to the prototype.
type ClassSetPropertyFunction =
    JavaScriptCore.Class.Class
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> JavaScriptCore.Value.Value
    -- ^ /@value@/: the t'GI.JavaScriptCore.Objects.Value.Value' to set
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if handled or 'P.False' to forward the request to the parent class or prototype chain.

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClassSetPropertyFunction`@.
noClassSetPropertyFunction :: Maybe ClassSetPropertyFunction
noClassSetPropertyFunction = Nothing

-- | Wrap the callback into a `GClosure`.
genClosure_ClassSetPropertyFunction :: MonadIO m => ClassSetPropertyFunction -> m (GClosure C_ClassSetPropertyFunction)
genClosure_ClassSetPropertyFunction cb = liftIO $ do
    let cb' = wrap_ClassSetPropertyFunction Nothing cb
    mk_ClassSetPropertyFunction cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClassSetPropertyFunction` into a `C_ClassSetPropertyFunction`.
wrap_ClassSetPropertyFunction :: 
    Maybe (Ptr (FunPtr C_ClassSetPropertyFunction)) ->
    ClassSetPropertyFunction ->
    C_ClassSetPropertyFunction
wrap_ClassSetPropertyFunction gi'funptrptr gi'cb jscClass context instance_ name value = do
    jscClass' <- (newObject JavaScriptCore.Class.Class) jscClass
    context' <- (newObject JavaScriptCore.Context.Context) context
    name' <- cstringToText name
    value' <- (newObject JavaScriptCore.Value.Value) value
    result <- gi'cb  jscClass' context' instance_ name' value'
    maybeReleaseFunPtr gi'funptrptr
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- callback ClassHasPropertyFunction
{- Callable
  { returnType = Just (TBasicType TBoolean)
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just
              "%TRUE if @instance has a property with @name or %FALSE to forward the request\n   to the parent class or prototype chain."
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "jsc_class"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
          , argCType = Just "JSCClass*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "instance"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the @jsc_class instance"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "name"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the property name" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "The type of has_property in #JSCClassVTable. This is only required when you need to handle\nexternal properties not added to the prototype."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ClassHasPropertyFunction =
    Ptr JavaScriptCore.Class.Class ->
    Ptr JavaScriptCore.Context.Context ->
    Ptr () ->
    CString ->
    IO CInt

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
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the @jsc_class instance"
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
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_ClassHasPropertyFunction :: FunPtr C_ClassHasPropertyFunction -> C_ClassHasPropertyFunction

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ClassHasPropertyFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Class.IsClass a, JavaScriptCore.Context.IsContext b) =>
    FunPtr C_ClassHasPropertyFunction
    -> a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> b
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@instance@/ has a property with /@name@/ or 'P.False' to forward the request
    --    to the parent class or prototype chain.
dynamic_ClassHasPropertyFunction __funPtr jscClass context instance_ name = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    result <- (__dynamic_C_ClassHasPropertyFunction __funPtr) jscClass' context' instance_ name'
    let result' = (/= 0) result
    touchManagedPtr jscClass
    touchManagedPtr context
    freeMem name'
    return result'

-- | Generate a function pointer callable from C code, from a `C_ClassHasPropertyFunction`.
foreign import ccall "wrapper"
    mk_ClassHasPropertyFunction :: C_ClassHasPropertyFunction -> IO (FunPtr C_ClassHasPropertyFunction)

-- | The type of has_property in t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable'. This is only required when you need to handle
-- external properties not added to the prototype.
type ClassHasPropertyFunction =
    JavaScriptCore.Class.Class
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if /@instance@/ has a property with /@name@/ or 'P.False' to forward the request
    --    to the parent class or prototype chain.

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClassHasPropertyFunction`@.
noClassHasPropertyFunction :: Maybe ClassHasPropertyFunction
noClassHasPropertyFunction = Nothing

-- | Wrap the callback into a `GClosure`.
genClosure_ClassHasPropertyFunction :: MonadIO m => ClassHasPropertyFunction -> m (GClosure C_ClassHasPropertyFunction)
genClosure_ClassHasPropertyFunction cb = liftIO $ do
    let cb' = wrap_ClassHasPropertyFunction Nothing cb
    mk_ClassHasPropertyFunction cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClassHasPropertyFunction` into a `C_ClassHasPropertyFunction`.
wrap_ClassHasPropertyFunction :: 
    Maybe (Ptr (FunPtr C_ClassHasPropertyFunction)) ->
    ClassHasPropertyFunction ->
    C_ClassHasPropertyFunction
wrap_ClassHasPropertyFunction gi'funptrptr gi'cb jscClass context instance_ name = do
    jscClass' <- (newObject JavaScriptCore.Class.Class) jscClass
    context' <- (newObject JavaScriptCore.Context.Context) context
    name' <- cstringToText name
    result <- gi'cb  jscClass' context' instance_ name'
    maybeReleaseFunPtr gi'funptrptr
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- callback ClassGetPropertyFunction
{- Callable
  { returnType =
      Just
        (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
  , returnMayBeNull = True
  , returnTransfer = TransferEverything
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just
              "a #JSCValue or %NULL to forward the request to\n   the parent class or prototype chain"
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "jsc_class"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
          , argCType = Just "JSCClass*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "instance"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the @jsc_class instance"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "name"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the property name" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "The type of get_property in #JSCClassVTable. This is only required when you need to handle\nexternal properties not added to the prototype."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ClassGetPropertyFunction =
    Ptr JavaScriptCore.Class.Class ->
    Ptr JavaScriptCore.Context.Context ->
    Ptr () ->
    CString ->
    IO (Ptr JavaScriptCore.Value.Value)

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
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the @jsc_class instance"
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_ClassGetPropertyFunction :: FunPtr C_ClassGetPropertyFunction -> C_ClassGetPropertyFunction

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ClassGetPropertyFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Class.IsClass a, JavaScriptCore.Context.IsContext b) =>
    FunPtr C_ClassGetPropertyFunction
    -> a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> b
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> m (Maybe JavaScriptCore.Value.Value)
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' or 'P.Nothing' to forward the request to
    --    the parent class or prototype chain
dynamic_ClassGetPropertyFunction __funPtr jscClass context instance_ name = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    result <- (__dynamic_C_ClassGetPropertyFunction __funPtr) jscClass' context' instance_ name'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject JavaScriptCore.Value.Value) result'
        return result''
    touchManagedPtr jscClass
    touchManagedPtr context
    freeMem name'
    return maybeResult

-- | Generate a function pointer callable from C code, from a `C_ClassGetPropertyFunction`.
foreign import ccall "wrapper"
    mk_ClassGetPropertyFunction :: C_ClassGetPropertyFunction -> IO (FunPtr C_ClassGetPropertyFunction)

-- | The type of get_property in t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable'. This is only required when you need to handle
-- external properties not added to the prototype.
type ClassGetPropertyFunction =
    JavaScriptCore.Class.Class
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> IO (Maybe JavaScriptCore.Value.Value)
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' or 'P.Nothing' to forward the request to
    --    the parent class or prototype chain

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClassGetPropertyFunction`@.
noClassGetPropertyFunction :: Maybe ClassGetPropertyFunction
noClassGetPropertyFunction = Nothing

-- | Wrap the callback into a `GClosure`.
genClosure_ClassGetPropertyFunction :: MonadIO m => ClassGetPropertyFunction -> m (GClosure C_ClassGetPropertyFunction)
genClosure_ClassGetPropertyFunction cb = liftIO $ do
    let cb' = wrap_ClassGetPropertyFunction Nothing cb
    mk_ClassGetPropertyFunction cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClassGetPropertyFunction` into a `C_ClassGetPropertyFunction`.
wrap_ClassGetPropertyFunction :: 
    Maybe (Ptr (FunPtr C_ClassGetPropertyFunction)) ->
    ClassGetPropertyFunction ->
    C_ClassGetPropertyFunction
wrap_ClassGetPropertyFunction gi'funptrptr gi'cb jscClass context instance_ name = do
    jscClass' <- (newObject JavaScriptCore.Class.Class) jscClass
    context' <- (newObject JavaScriptCore.Context.Context) context
    name' <- cstringToText name
    result <- gi'cb  jscClass' context' instance_ name'
    maybeReleaseFunPtr gi'funptrptr
    maybeM FP.nullPtr result $ \result' -> do
        result'' <- B.ManagedPtr.disownObject result'
        return result''


-- callback ClassEnumeratePropertiesFunction
{- Callable
  { returnType = Just (TCArray True (-1) (-1) (TBasicType TUTF8))
  , returnMayBeNull = True
  , returnTransfer = TransferEverything
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just
              "a %NULL-terminated array of strings\n   containing the property names, or %NULL if @instance doesn't have enumerable properties."
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "jsc_class"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
          , argCType = Just "JSCClass*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "instance"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the @jsc_class instance"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "The type of enumerate_properties in #JSCClassVTable. This is only required when you need to handle\nexternal properties not added to the prototype."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ClassEnumeratePropertiesFunction =
    Ptr JavaScriptCore.Class.Class ->
    Ptr JavaScriptCore.Context.Context ->
    Ptr () ->
    IO (Ptr CString)

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
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the @jsc_class instance"
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_ClassEnumeratePropertiesFunction :: FunPtr C_ClassEnumeratePropertiesFunction -> C_ClassEnumeratePropertiesFunction

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ClassEnumeratePropertiesFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Class.IsClass a, JavaScriptCore.Context.IsContext b) =>
    FunPtr C_ClassEnumeratePropertiesFunction
    -> a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> b
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ a 'P.Nothing'-terminated array of strings
    --    containing the property names, or 'P.Nothing' if /@instance@/ doesn\'t have enumerable properties.
dynamic_ClassEnumeratePropertiesFunction __funPtr jscClass context instance_ = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    context' <- unsafeManagedPtrCastPtr context
    result <- (__dynamic_C_ClassEnumeratePropertiesFunction __funPtr) jscClass' context' instance_
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr jscClass
    touchManagedPtr context
    return maybeResult

-- | Generate a function pointer callable from C code, from a `C_ClassEnumeratePropertiesFunction`.
foreign import ccall "wrapper"
    mk_ClassEnumeratePropertiesFunction :: C_ClassEnumeratePropertiesFunction -> IO (FunPtr C_ClassEnumeratePropertiesFunction)

-- | The type of enumerate_properties in t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable'. This is only required when you need to handle
-- external properties not added to the prototype.
type ClassEnumeratePropertiesFunction =
    JavaScriptCore.Class.Class
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> IO (Maybe [T.Text])
    -- ^ __Returns:__ a 'P.Nothing'-terminated array of strings
    --    containing the property names, or 'P.Nothing' if /@instance@/ doesn\'t have enumerable properties.

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClassEnumeratePropertiesFunction`@.
noClassEnumeratePropertiesFunction :: Maybe ClassEnumeratePropertiesFunction
noClassEnumeratePropertiesFunction = Nothing

-- | Wrap the callback into a `GClosure`.
genClosure_ClassEnumeratePropertiesFunction :: MonadIO m => ClassEnumeratePropertiesFunction -> m (GClosure C_ClassEnumeratePropertiesFunction)
genClosure_ClassEnumeratePropertiesFunction cb = liftIO $ do
    let cb' = wrap_ClassEnumeratePropertiesFunction Nothing cb
    mk_ClassEnumeratePropertiesFunction cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClassEnumeratePropertiesFunction` into a `C_ClassEnumeratePropertiesFunction`.
wrap_ClassEnumeratePropertiesFunction :: 
    Maybe (Ptr (FunPtr C_ClassEnumeratePropertiesFunction)) ->
    ClassEnumeratePropertiesFunction ->
    C_ClassEnumeratePropertiesFunction
wrap_ClassEnumeratePropertiesFunction gi'funptrptr gi'cb jscClass context instance_ = do
    jscClass' <- (newObject JavaScriptCore.Class.Class) jscClass
    context' <- (newObject JavaScriptCore.Context.Context) context
    result <- gi'cb  jscClass' context' instance_
    maybeReleaseFunPtr gi'funptrptr
    maybeM FP.nullPtr result $ \result' -> do
        result'' <- packZeroTerminatedUTF8CArray result'
        return result''


-- callback ClassDeletePropertyFunction
{- Callable
  { returnType = Just (TBasicType TBoolean)
  , returnMayBeNull = False
  , returnTransfer = TransferNothing
  , returnDocumentation =
      Documentation
        { rawDocText =
            Just
              "%TRUE if handled or %FALSE to to forward the request to the parent class or prototype chain."
        , sinceVersion = Nothing
        }
  , args =
      [ Arg
          { argCName = "jsc_class"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Class" }
          , argCType = Just "JSCClass*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCClass" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "context"
          , argType =
              TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
          , argCType = Just "JSCContext*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "instance"
          , argType = TBasicType TPtr
          , argCType = Just "gpointer"
          , direction = DirectionIn
          , mayBeNull = True
          , argDoc =
              Documentation
                { rawDocText = Just "the @jsc_class instance"
                , sinceVersion = Nothing
                }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      , Arg
          { argCName = "name"
          , argType = TBasicType TUTF8
          , argCType = Just "const char*"
          , direction = DirectionIn
          , mayBeNull = False
          , argDoc =
              Documentation
                { rawDocText = Just "the property name" , sinceVersion = Nothing }
          , argScope = ScopeTypeInvalid
          , argClosure = -1
          , argDestroy = -1
          , argCallerAllocates = False
          , argCallbackUserData = False
          , transfer = TransferNothing
          }
      ]
  , skipReturn = False
  , callableThrows = False
  , callableDeprecated = Nothing
  , callableDocumentation =
      Documentation
        { rawDocText =
            Just
              "The type of delete_property in #JSCClassVTable. This is only required when you need to handle\nexternal properties not added to the prototype."
        , sinceVersion = Nothing
        }
  , callableResolvable = Nothing
  }
-}
-- | Type for the callback on the (unwrapped) C side.
type C_ClassDeletePropertyFunction =
    Ptr JavaScriptCore.Class.Class ->
    Ptr JavaScriptCore.Context.Context ->
    Ptr () ->
    CString ->
    IO CInt

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
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "JavaScriptCore" , name = "Context" }
--           , argCType = Just "JSCContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCContext" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "instance"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the @jsc_class instance"
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
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "dynamic" __dynamic_C_ClassDeletePropertyFunction :: FunPtr C_ClassDeletePropertyFunction -> C_ClassDeletePropertyFunction

-- | Given a pointer to a foreign C function, wrap it into a function callable from Haskell.
dynamic_ClassDeletePropertyFunction ::
    (B.CallStack.HasCallStack, MonadIO m, JavaScriptCore.Class.IsClass a, JavaScriptCore.Context.IsContext b) =>
    FunPtr C_ClassDeletePropertyFunction
    -> a
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> b
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> m Bool
    -- ^ __Returns:__ 'P.True' if handled or 'P.False' to to forward the request to the parent class or prototype chain.
dynamic_ClassDeletePropertyFunction __funPtr jscClass context instance_ name = liftIO $ do
    jscClass' <- unsafeManagedPtrCastPtr jscClass
    context' <- unsafeManagedPtrCastPtr context
    name' <- textToCString name
    result <- (__dynamic_C_ClassDeletePropertyFunction __funPtr) jscClass' context' instance_ name'
    let result' = (/= 0) result
    touchManagedPtr jscClass
    touchManagedPtr context
    freeMem name'
    return result'

-- | Generate a function pointer callable from C code, from a `C_ClassDeletePropertyFunction`.
foreign import ccall "wrapper"
    mk_ClassDeletePropertyFunction :: C_ClassDeletePropertyFunction -> IO (FunPtr C_ClassDeletePropertyFunction)

-- | The type of delete_property in t'GI.JavaScriptCore.Structs.ClassVTable.ClassVTable'. This is only required when you need to handle
-- external properties not added to the prototype.
type ClassDeletePropertyFunction =
    JavaScriptCore.Class.Class
    -- ^ /@jscClass@/: a t'GI.JavaScriptCore.Objects.Class.Class'
    -> JavaScriptCore.Context.Context
    -- ^ /@context@/: a t'GI.JavaScriptCore.Objects.Context.Context'
    -> Ptr ()
    -- ^ /@instance@/: the /@jscClass@/ instance
    -> T.Text
    -- ^ /@name@/: the property name
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if handled or 'P.False' to to forward the request to the parent class or prototype chain.

-- | A convenience synonym for @`Nothing` :: `Maybe` `ClassDeletePropertyFunction`@.
noClassDeletePropertyFunction :: Maybe ClassDeletePropertyFunction
noClassDeletePropertyFunction = Nothing

-- | Wrap the callback into a `GClosure`.
genClosure_ClassDeletePropertyFunction :: MonadIO m => ClassDeletePropertyFunction -> m (GClosure C_ClassDeletePropertyFunction)
genClosure_ClassDeletePropertyFunction cb = liftIO $ do
    let cb' = wrap_ClassDeletePropertyFunction Nothing cb
    mk_ClassDeletePropertyFunction cb' >>= B.GClosure.newGClosure


-- | Wrap a `ClassDeletePropertyFunction` into a `C_ClassDeletePropertyFunction`.
wrap_ClassDeletePropertyFunction :: 
    Maybe (Ptr (FunPtr C_ClassDeletePropertyFunction)) ->
    ClassDeletePropertyFunction ->
    C_ClassDeletePropertyFunction
wrap_ClassDeletePropertyFunction gi'funptrptr gi'cb jscClass context instance_ name = do
    jscClass' <- (newObject JavaScriptCore.Class.Class) jscClass
    context' <- (newObject JavaScriptCore.Context.Context) context
    name' <- cstringToText name
    result <- gi'cb  jscClass' context' instance_ name'
    maybeReleaseFunPtr gi'funptrptr
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'



