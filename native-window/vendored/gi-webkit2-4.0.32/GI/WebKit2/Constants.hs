{-# LANGUAGE PatternSynonyms, ScopedTypeVariables, ViewPatterns #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Constants
    ( 
    pattern MINOR_VERSION                   ,
    pattern MICRO_VERSION                   ,
    pattern MAJOR_VERSION                   ,
    pattern EDITING_COMMAND_UNDO            ,
    pattern EDITING_COMMAND_SELECT_ALL      ,
    pattern EDITING_COMMAND_REDO            ,
    pattern EDITING_COMMAND_PASTE_AS_PLAIN_TEXT,
    pattern EDITING_COMMAND_PASTE           ,
    pattern EDITING_COMMAND_INSERT_IMAGE    ,
    pattern EDITING_COMMAND_CUT             ,
    pattern EDITING_COMMAND_CREATE_LINK     ,
    pattern EDITING_COMMAND_COPY            ,

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

-- | Like 'GI.WebKit2.Functions.getMinorVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MINOR_VERSION = 52 :: Int32

-- | Like 'GI.WebKit2.Functions.getMicroVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MICRO_VERSION = 6 :: Int32

-- | Like 'GI.WebKit2.Functions.getMajorVersion', but from the headers used at
-- application compile time, rather than from the library linked
-- against at application run time.
pattern MAJOR_VERSION = 2 :: Int32

-- | The undo command. Undoes the last editing command in a t'GI.WebKit2.Objects.WebView.WebView'.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. It\'s only possible
-- to undo a command after a previously executed editing operation.
pattern EDITING_COMMAND_UNDO = "Undo" :: T.Text

-- | The select all command. Selects all the content of the current text field in
-- a t'GI.WebKit2.Objects.WebView.WebView'.
-- It is always possible to select all text, no matter whether the
-- t'GI.WebKit2.Objects.WebView.WebView' content is editable or not. You can still check it
-- with 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'.
pattern EDITING_COMMAND_SELECT_ALL = "SelectAll" :: T.Text

-- | The redo command. Redoes a previously undone editing command in
-- a t'GI.WebKit2.Objects.WebView.WebView'.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. It\'s only possible
-- to redo a command when it has been previously undone.
pattern EDITING_COMMAND_REDO = "Redo" :: T.Text

-- | The paste as plaintext clipboard command. Pastes the contents of the
-- clipboard to a t'GI.WebKit2.Objects.WebView.WebView', with formatting removed.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. In general it\'s possible
-- to paste from the clipboard when the t'GI.WebKit2.Objects.WebView.WebView' content is editable
-- and clipboard is not empty.
-- 
-- /Since: 2.30/
pattern EDITING_COMMAND_PASTE_AS_PLAIN_TEXT = "PasteAsPlainText" :: T.Text

-- | The paste clipboard command. Pastes the contents of the clipboard to
-- a t'GI.WebKit2.Objects.WebView.WebView'.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. In general it\'s possible
-- to paste from the clipboard when the t'GI.WebKit2.Objects.WebView.WebView' content is editable
-- and clipboard is not empty.
pattern EDITING_COMMAND_PASTE = "Paste" :: T.Text

-- | The insert image command. Creates an image element that is inserted at
-- the current cursor position. It receives an URI as argument,
-- that is used as the image source. This command should be executed with
-- 'GI.WebKit2.Objects.WebView.webViewExecuteEditingCommandWithArgument'.
-- 
-- /Since: 2.10/
pattern EDITING_COMMAND_INSERT_IMAGE = "InsertImage" :: T.Text

-- | The cut clipboard command. Copies the current selection inside
-- a t'GI.WebKit2.Objects.WebView.WebView' to the clipboard and deletes the selected content.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. In general it\'s
-- possible to cut to the clipboard when the t'GI.WebKit2.Objects.WebView.WebView' content is
-- editable and there is an active selection.
pattern EDITING_COMMAND_CUT = "Cut" :: T.Text

-- | The create link command. Creates a link element that is inserted at
-- the current cursor position. If there\'s a selection, the selected text
-- will be used as the link text, otherwise the URL itself will be used.
-- It receives the link URL as argument. This command should be executed
-- with 'GI.WebKit2.Objects.WebView.webViewExecuteEditingCommandWithArgument'
-- 
-- /Since: 2.10/
pattern EDITING_COMMAND_CREATE_LINK = "CreateLink" :: T.Text

-- | The copy clipboard command. Copies the current selection inside
-- a t'GI.WebKit2.Objects.WebView.WebView' to the clipboard.
-- You can check whether it\'s possible to execute the command with
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'. In general it\'s
-- possible to copy to the clipboard when there is an active selection
-- inside the t'GI.WebKit2.Objects.WebView.WebView'.
pattern EDITING_COMMAND_COPY = "Copy" :: T.Text


