{-# LANGUAGE PatternSynonyms, ScopedTypeVariables, ViewPatterns #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.JavaScriptCore.Constants
    ( 
    pattern OPTIONS_USE_LLINT               ,
    pattern OPTIONS_USE_JIT                 ,
    pattern OPTIONS_USE_FTL                 ,
    pattern OPTIONS_USE_DFG                 ,
    pattern MINOR_VERSION                   ,
    pattern MICRO_VERSION                   ,
    pattern MAJOR_VERSION                   ,

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

-- | Allows the LLINT to be used if 'P.True'.
-- Option type: 'GI.JavaScriptCore.Enums.OptionTypeBoolean'
-- Default value: 'P.True'.
-- 
-- /Since: 2.24/
pattern OPTIONS_USE_LLINT = "useLLInt" :: T.Text

-- | Allows the executable pages to be allocated for JIT and thunks if 'P.True'.
-- Option type: 'GI.JavaScriptCore.Enums.OptionTypeBoolean'
-- Default value: 'P.True'.
-- 
-- /Since: 2.24/
pattern OPTIONS_USE_JIT = "useJIT" :: T.Text

-- | Allows the FTL JIT to be used if 'P.True'.
-- Option type: 'GI.JavaScriptCore.Enums.OptionTypeBoolean'
-- Default value: 'P.True'.
-- 
-- /Since: 2.24/
pattern OPTIONS_USE_FTL = "useFTLJIT" :: T.Text

-- | Allows the DFG JIT to be used if 'P.True'.
-- Option type: 'GI.JavaScriptCore.Enums.OptionTypeBoolean'
-- Default value: 'P.True'.
-- 
-- /Since: 2.24/
pattern OPTIONS_USE_DFG = "useDFGJIT" :: T.Text

-- | Like 'GI.JavaScriptCore.Functions.getMinorVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MINOR_VERSION = 52 :: Int32

-- | Like 'GI.JavaScriptCore.Functions.getMicroVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MICRO_VERSION = 6 :: Int32

-- | Like 'GI.JavaScriptCore.Functions.getMajorVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MAJOR_VERSION = 2 :: Int32


