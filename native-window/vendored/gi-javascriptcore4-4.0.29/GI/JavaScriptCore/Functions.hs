

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Functions
    ( 

 -- * Methods


-- ** getMajorVersion #method:getMajorVersion#

    getMajorVersion                         ,


-- ** getMicroVersion #method:getMicroVersion#

    getMicroVersion                         ,


-- ** getMinorVersion #method:getMinorVersion#

    getMinorVersion                         ,


-- ** optionsForeach #method:optionsForeach#

    optionsForeach                          ,


-- ** optionsGetBoolean #method:optionsGetBoolean#

    optionsGetBoolean                       ,


-- ** optionsGetDouble #method:optionsGetDouble#

    optionsGetDouble                        ,


-- ** optionsGetInt #method:optionsGetInt#

    optionsGetInt                           ,


-- ** optionsGetOptionGroup #method:optionsGetOptionGroup#

    optionsGetOptionGroup                   ,


-- ** optionsGetRangeString #method:optionsGetRangeString#

    optionsGetRangeString                   ,


-- ** optionsGetSize #method:optionsGetSize#

    optionsGetSize                          ,


-- ** optionsGetString #method:optionsGetString#

    optionsGetString                        ,


-- ** optionsGetUint #method:optionsGetUint#

    optionsGetUint                          ,


-- ** optionsSetBoolean #method:optionsSetBoolean#

    optionsSetBoolean                       ,


-- ** optionsSetDouble #method:optionsSetDouble#

    optionsSetDouble                        ,


-- ** optionsSetInt #method:optionsSetInt#

    optionsSetInt                           ,


-- ** optionsSetRangeString #method:optionsSetRangeString#

    optionsSetRangeString                   ,


-- ** optionsSetSize #method:optionsSetSize#

    optionsSetSize                          ,


-- ** optionsSetString #method:optionsSetString#

    optionsSetString                        ,


-- ** optionsSetUint #method:optionsSetUint#

    optionsSetUint                          ,




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
import qualified GI.GLib.Structs.OptionGroup as GLib.OptionGroup
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks

#else
import qualified GI.GLib.Structs.OptionGroup as GLib.OptionGroup
import qualified GI.JavaScriptCore.Callbacks as JavaScriptCore.Callbacks

#endif

-- function options_set_uint
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_uint" jsc_options_set_uint :: 
    CString ->                              -- option : TBasicType TUTF8
    Word32 ->                               -- value : TBasicType TUInt
    IO CInt

-- | Set /@option@/ as a @/guint/@ value.
-- 
-- /Since: 2.24/
optionsSetUint ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> Word32
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetUint option value = liftIO $ do
    option' <- textToCString option
    result <- jsc_options_set_uint option' value
    let result' = (/= 0) result
    freeMem option'
    return result'


-- function options_set_string
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_string" jsc_options_set_string :: 
    CString ->                              -- option : TBasicType TUTF8
    CString ->                              -- value : TBasicType TUTF8
    IO CInt

-- | Set /@option@/ as a string.
-- 
-- /Since: 2.24/
optionsSetString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> T.Text
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetString option value = liftIO $ do
    option' <- textToCString option
    value' <- textToCString value
    result <- jsc_options_set_string option' value'
    let result' = (/= 0) result
    freeMem option'
    freeMem value'
    return result'


-- function options_set_size
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_size" jsc_options_set_size :: 
    CString ->                              -- option : TBasicType TUTF8
    FCT.CSize ->                            -- value : TBasicType TSize
    IO CInt

-- | Set /@option@/ as a @/gsize/@ value.
-- 
-- /Since: 2.24/
optionsSetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> FCT.CSize
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetSize option value = liftIO $ do
    option' <- textToCString option
    result <- jsc_options_set_size option' value
    let result' = (/= 0) result
    freeMem option'
    return result'


-- function options_set_range_string
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_range_string" jsc_options_set_range_string :: 
    CString ->                              -- option : TBasicType TUTF8
    CString ->                              -- value : TBasicType TUTF8
    IO CInt

-- | Set /@option@/ as a range string. The string must be in the
-- format \<emphasis>[!]&lt;low&gt;[:&lt;high&gt;]\<\/emphasis> where low and high are @/guint/@ values.
-- Values between low and high (both included) will be considered in
-- the range, unless \<emphasis>!\<\/emphasis> is used to invert the range.
-- 
-- /Since: 2.24/
optionsSetRangeString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> T.Text
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetRangeString option value = liftIO $ do
    option' <- textToCString option
    value' <- textToCString value
    result <- jsc_options_set_range_string option' value'
    let result' = (/= 0) result
    freeMem option'
    freeMem value'
    return result'


-- function options_set_int
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TInt
--           , argCType = Just "gint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_int" jsc_options_set_int :: 
    CString ->                              -- option : TBasicType TUTF8
    Int32 ->                                -- value : TBasicType TInt
    IO CInt

-- | Set /@option@/ as a @/gint/@ value.
-- 
-- /Since: 2.24/
optionsSetInt ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> Int32
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetInt option value = liftIO $ do
    option' <- textToCString option
    result <- jsc_options_set_int option' value
    let result' = (/= 0) result
    freeMem option'
    return result'


-- function options_set_double
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_double" jsc_options_set_double :: 
    CString ->                              -- option : TBasicType TUTF8
    CDouble ->                              -- value : TBasicType TDouble
    IO CInt

-- | Set /@option@/ as a @/gdouble/@ value.
-- 
-- /Since: 2.24/
optionsSetDouble ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> Double
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetDouble option value = liftIO $ do
    option' <- textToCString option
    let value' = realToFrac value
    result <- jsc_options_set_double option' value'
    let result' = (/= 0) result
    freeMem option'
    return result'


-- function options_set_boolean
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_set_boolean" jsc_options_set_boolean :: 
    CString ->                              -- option : TBasicType TUTF8
    CInt ->                                 -- value : TBasicType TBoolean
    IO CInt

-- | Set /@option@/ as a t'P.Bool' value.
-- 
-- /Since: 2.24/
optionsSetBoolean ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> Bool
    -- ^ /@value@/: the value to set
    -> m Bool
    -- ^ __Returns:__ 'P.True' if option was correctly set or 'P.False' otherwise.
optionsSetBoolean option value = liftIO $ do
    option' <- textToCString option
    let value' = (P.fromIntegral . P.fromEnum) value
    result <- jsc_options_set_boolean option' value'
    let result' = (/= 0) result
    freeMem option'
    return result'


-- function options_get_uint
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_uint" jsc_options_get_uint :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr Word32 ->                           -- value : TBasicType TUInt
    IO CInt

-- | Get /@option@/ as a @/guint/@ value.
-- 
-- /Since: 2.24/
optionsGetUint ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, Word32))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetUint option = liftIO $ do
    option' <- textToCString option
    value <- allocMem :: IO (Ptr Word32)
    result <- jsc_options_get_uint option' value
    let result' = (/= 0) result
    value' <- peek value
    freeMem option'
    freeMem value
    return (result', value')


-- function options_get_string
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUTF8
--           , argCType = Just "char**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_string" jsc_options_get_string :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr CString ->                          -- value : TBasicType TUTF8
    IO CInt

-- | Get /@option@/ as a string.
-- 
-- /Since: 2.24/
optionsGetString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, T.Text))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetString option = liftIO $ do
    option' <- textToCString option
    value <- callocMem :: IO (Ptr CString)
    result <- jsc_options_get_string option' value
    let result' = (/= 0) result
    value' <- peek value
    value'' <- cstringToText value'
    freeMem value'
    freeMem option'
    freeMem value
    return (result', value'')


-- function options_get_size
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TSize
--           , argCType = Just "gsize*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_size" jsc_options_get_size :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr FCT.CSize ->                        -- value : TBasicType TSize
    IO CInt

-- | Get /@option@/ as a @/gsize/@ value.
-- 
-- /Since: 2.24/
optionsGetSize ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, FCT.CSize))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetSize option = liftIO $ do
    option' <- textToCString option
    value <- allocMem :: IO (Ptr FCT.CSize)
    result <- jsc_options_get_size option' value
    let result' = (/= 0) result
    value' <- peek value
    freeMem option'
    freeMem value
    return (result', value')


-- function options_get_range_string
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TUTF8
--           , argCType = Just "char**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_range_string" jsc_options_get_range_string :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr CString ->                          -- value : TBasicType TUTF8
    IO CInt

-- | Get /@option@/ as a range string. The string must be in the
-- format \<emphasis>[!]&lt;low&gt;[:&lt;high&gt;]\<\/emphasis> where low and high are @/guint/@ values.
-- Values between low and high (both included) will be considered in
-- the range, unless \<emphasis>!\<\/emphasis> is used to invert the range.
-- 
-- /Since: 2.24/
optionsGetRangeString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, T.Text))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetRangeString option = liftIO $ do
    option' <- textToCString option
    value <- callocMem :: IO (Ptr CString)
    result <- jsc_options_get_range_string option' value
    let result' = (/= 0) result
    value' <- peek value
    value'' <- cstringToText value'
    freeMem value'
    freeMem option'
    freeMem value
    return (result', value'')


-- function options_get_option_group
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "GLib" , name = "OptionGroup" })
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_option_group" jsc_options_get_option_group :: 
    IO (Ptr GLib.OptionGroup.OptionGroup)

-- | Create a t'GI.GLib.Structs.OptionGroup.OptionGroup' to handle JSCOptions as command line arguments.
-- The options will be exposed as command line arguments with the form
-- \<emphasis>--jsc-&lt;option&gt;=&lt;value&gt;\<\/emphasis>.
-- Each entry in the returned t'GI.GLib.Structs.OptionGroup.OptionGroup' is configured to apply the
-- corresponding option during command line parsing. Applications only need to
-- pass the returned group to 'GI.GLib.Structs.OptionContext.optionContextAddGroup', and the rest will
-- be taken care for automatically.
-- 
-- /Since: 2.24/
optionsGetOptionGroup ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m GLib.OptionGroup.OptionGroup
    -- ^ __Returns:__ a t'GI.GLib.Structs.OptionGroup.OptionGroup' for the JSCOptions
optionsGetOptionGroup  = liftIO $ do
    result <- jsc_options_get_option_group
    checkUnexpectedReturnNULL "optionsGetOptionGroup" result
    result' <- (wrapBoxed GLib.OptionGroup.OptionGroup) result
    return result'


-- function options_get_int
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TInt
--           , argCType = Just "gint*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_int" jsc_options_get_int :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr Int32 ->                            -- value : TBasicType TInt
    IO CInt

-- | Get /@option@/ as a @/gint/@ value.
-- 
-- /Since: 2.24/
optionsGetInt ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, Int32))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetInt option = liftIO $ do
    option' <- textToCString option
    value <- allocMem :: IO (Ptr Int32)
    result <- jsc_options_get_int option' value
    let result' = (/= 0) result
    value' <- peek value
    freeMem option'
    freeMem value
    return (result', value')


-- function options_get_double
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_double" jsc_options_get_double :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr CDouble ->                          -- value : TBasicType TDouble
    IO CInt

-- | Get /@option@/ as a @/gdouble/@ value.
-- 
-- /Since: 2.24/
optionsGetDouble ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, Double))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetDouble option = liftIO $ do
    option' <- textToCString option
    value <- allocMem :: IO (Ptr CDouble)
    result <- jsc_options_get_double option' value
    let result' = (/= 0) result
    value' <- peek value
    let value'' = realToFrac value'
    freeMem option'
    freeMem value
    return (result', value'')


-- function options_get_boolean
-- Args: [ Arg
--           { argCName = "option"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the option identifier"
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
--           { argCName = "value"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the option value"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_options_get_boolean" jsc_options_get_boolean :: 
    CString ->                              -- option : TBasicType TUTF8
    Ptr CInt ->                             -- value : TBasicType TBoolean
    IO CInt

-- | Get /@option@/ as a t'P.Bool' value.
-- 
-- /Since: 2.24/
optionsGetBoolean ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@option@/: the option identifier
    -> m ((Bool, Bool))
    -- ^ __Returns:__ 'P.True' if /@value@/ has been set or 'P.False' if the option doesn\'t exist
optionsGetBoolean option = liftIO $ do
    option' <- textToCString option
    value <- allocMem :: IO (Ptr CInt)
    result <- jsc_options_get_boolean option' value
    let result' = (/= 0) result
    value' <- peek value
    let value'' = (/= 0) value'
    freeMem option'
    freeMem value
    return (result', value'')


-- function options_foreach
-- Args: [ Arg
--           { argCName = "function"
--           , argType =
--               TInterface
--                 Name { namespace = "JavaScriptCore" , name = "OptionsFunc" }
--           , argCType = Just "JSCOptionsFunc"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #JSCOptionsFunc callback"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeCall
--           , argClosure = 1
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
--                 { rawDocText = Just "callback user data" , sinceVersion = Nothing }
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

foreign import ccall "jsc_options_foreach" jsc_options_foreach :: 
    FunPtr JavaScriptCore.Callbacks.C_OptionsFunc -> -- function : TInterface (Name {namespace = "JavaScriptCore", name = "OptionsFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Iterates all available options calling /@function@/ for each one. Iteration can
-- stop early if /@function@/ returns 'P.False'.
-- 
-- /Since: 2.24/
optionsForeach ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    JavaScriptCore.Callbacks.OptionsFunc
    -- ^ /@function@/: a t'GI.JavaScriptCore.Callbacks.OptionsFunc' callback
    -> m ()
optionsForeach function = liftIO $ do
    function' <- JavaScriptCore.Callbacks.mk_OptionsFunc (JavaScriptCore.Callbacks.wrap_OptionsFunc Nothing (JavaScriptCore.Callbacks.drop_closures_OptionsFunc function))
    let userData = nullPtr
    jsc_options_foreach function' userData
    safeFreeFunPtr $ castFunPtrToPtr function'
    return ()


-- function get_minor_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_get_minor_version" jsc_get_minor_version :: 
    IO Word32

-- | Returns the minor version number of the JavaScriptCore library.
-- (e.g. in JavaScriptCore version 1.8.3 this is 8.)
-- 
-- This function is in the library, so it represents the JavaScriptCore library
-- your code is running against. Contrast with the 'GI.JavaScriptCore.Constants.MINOR_VERSION'
-- macro, which represents the minor version of the JavaScriptCore headers you
-- have included when compiling your code.
getMinorVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the minor version number of the JavaScriptCore library
getMinorVersion  = liftIO $ do
    result <- jsc_get_minor_version
    return result


-- function get_micro_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_get_micro_version" jsc_get_micro_version :: 
    IO Word32

-- | Returns the micro version number of the JavaScriptCore library.
-- (e.g. in JavaScriptCore version 1.8.3 this is 3.)
-- 
-- This function is in the library, so it represents the JavaScriptCore library
-- your code is running against. Contrast with the 'GI.JavaScriptCore.Constants.MICRO_VERSION'
-- macro, which represents the micro version of the JavaScriptCore headers you
-- have included when compiling your code.
getMicroVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the micro version number of the JavaScriptCore library
getMicroVersion  = liftIO $ do
    result <- jsc_get_micro_version
    return result


-- function get_major_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "jsc_get_major_version" jsc_get_major_version :: 
    IO Word32

-- | Returns the major version number of the JavaScriptCore library.
-- (e.g. in JavaScriptCore version 1.8.3 this is 1.)
-- 
-- This function is in the library, so it represents the JavaScriptCore library
-- your code is running against. Contrast with the 'GI.JavaScriptCore.Constants.MAJOR_VERSION'
-- macro, which represents the major version of the JavaScriptCore headers you
-- have included when compiling your code.
getMajorVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the major version number of the JavaScriptCore library
getMajorVersion  = liftIO $ do
    result <- jsc_get_major_version
    return result



