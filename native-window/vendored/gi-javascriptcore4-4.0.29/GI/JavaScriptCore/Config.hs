{-# LANGUAGE OverloadedStrings #-}
-- | Build time configuration used during code generation.
module GI.JavaScriptCore.Config ( overrides, modules ) where

import qualified Data.Text as T
import Data.Text (Text)

-- | Overrides used when generating these bindings.
overrides :: Text
overrides = T.unlines
 [ ]

-- | Modules in this package
modules :: [Text]
modules =  [ "GI.JavaScriptCore.Config"
 , "GI.JavaScriptCore"
 , "GI.JavaScriptCore.Callbacks"
 , "GI.JavaScriptCore.Constants"
 , "GI.JavaScriptCore.Enums"
 , "GI.JavaScriptCore.Flags"
 , "GI.JavaScriptCore.Functions"
 , "GI.JavaScriptCore.Objects"
 , "GI.JavaScriptCore.Objects.Class"
 , "GI.JavaScriptCore.Objects.Context"
 , "GI.JavaScriptCore.Objects.Exception"
 , "GI.JavaScriptCore.Objects.Value"
 , "GI.JavaScriptCore.Objects.VirtualMachine"
 , "GI.JavaScriptCore.Objects.WeakValue"
 , "GI.JavaScriptCore.Structs"
 , "GI.JavaScriptCore.Structs.ClassVTable"]
