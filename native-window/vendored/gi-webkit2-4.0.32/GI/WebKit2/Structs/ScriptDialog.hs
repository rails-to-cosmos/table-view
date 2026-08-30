{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Carries details to be shown in user-facing dialogs.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.ScriptDialog
    ( 

-- * Exported types
    ScriptDialog(..)                        ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [close]("GI.WebKit2.Structs.ScriptDialog#g:method:close"), [confirmSetConfirmed]("GI.WebKit2.Structs.ScriptDialog#g:method:confirmSetConfirmed"), [promptGetDefaultText]("GI.WebKit2.Structs.ScriptDialog#g:method:promptGetDefaultText"), [promptSetText]("GI.WebKit2.Structs.ScriptDialog#g:method:promptSetText"), [ref]("GI.WebKit2.Structs.ScriptDialog#g:method:ref"), [unref]("GI.WebKit2.Structs.ScriptDialog#g:method:unref").
-- 
-- ==== Getters
-- [getDialogType]("GI.WebKit2.Structs.ScriptDialog#g:method:getDialogType"), [getMessage]("GI.WebKit2.Structs.ScriptDialog#g:method:getMessage").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveScriptDialogMethod               ,
#endif

-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogCloseMethodInfo             ,
#endif
    scriptDialogClose                       ,


-- ** confirmSetConfirmed #method:confirmSetConfirmed#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogConfirmSetConfirmedMethodInfo,
#endif
    scriptDialogConfirmSetConfirmed         ,


-- ** getDialogType #method:getDialogType#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogGetDialogTypeMethodInfo     ,
#endif
    scriptDialogGetDialogType               ,


-- ** getMessage #method:getMessage#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogGetMessageMethodInfo        ,
#endif
    scriptDialogGetMessage                  ,


-- ** promptGetDefaultText #method:promptGetDefaultText#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogPromptGetDefaultTextMethodInfo,
#endif
    scriptDialogPromptGetDefaultText        ,


-- ** promptSetText #method:promptSetText#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogPromptSetTextMethodInfo     ,
#endif
    scriptDialogPromptSetText               ,


-- ** ref #method:ref#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogRefMethodInfo               ,
#endif
    scriptDialogRef                         ,


-- ** unref #method:unref#

#if defined(ENABLE_OVERLOADING)
    ScriptDialogUnrefMethodInfo             ,
#endif
    scriptDialogUnref                       ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#else
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#endif

-- | Memory-managed wrapper type.
newtype ScriptDialog = ScriptDialog (SP.ManagedPtr ScriptDialog)
    deriving (Eq)

instance SP.ManagedPtrNewtype ScriptDialog where
    toManagedPtr (ScriptDialog p) = p

foreign import ccall "webkit_script_dialog_get_type" c_webkit_script_dialog_get_type :: 
    IO GType

type instance O.ParentTypes ScriptDialog = '[]
instance O.HasParentTypes ScriptDialog

instance B.Types.TypedObject ScriptDialog where
    glibType = c_webkit_script_dialog_get_type

instance B.Types.GBoxed ScriptDialog

-- | Convert t'ScriptDialog' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe ScriptDialog) where
    gvalueGType_ = c_webkit_script_dialog_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr ScriptDialog)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr ScriptDialog)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed ScriptDialog ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScriptDialog
type instance O.AttributeList ScriptDialog = ScriptDialogAttributeList
type ScriptDialogAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method ScriptDialog::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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

foreign import ccall "webkit_script_dialog_close" webkit_script_dialog_close :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO ()

-- | Close /@dialog@/.
-- 
-- When handling a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' asynchronously ('GI.WebKit2.Structs.ScriptDialog.scriptDialogRef'
-- was called in [WebView::scriptDialog]("GI.WebKit2.Objects.WebView#g:signal:scriptDialog") callback), this function needs to be called to notify
-- that we are done with the script dialog. The dialog will be closed on destruction if this function
-- hasn\'t been called before.
-- 
-- /Since: 2.24/
scriptDialogClose ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m ()
scriptDialogClose dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    webkit_script_dialog_close dialog'
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptDialogCloseMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ScriptDialogCloseMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogClose

instance O.OverloadedMethodInfo ScriptDialogCloseMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogClose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogClose"
        })


#endif

-- method ScriptDialog::confirm_set_confirmed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
--           { argCName = "confirmed"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether user confirmed the dialog"
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

foreign import ccall "webkit_script_dialog_confirm_set_confirmed" webkit_script_dialog_confirm_set_confirmed :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    CInt ->                                 -- confirmed : TBasicType TBoolean
    IO ()

-- | Set whether the user confirmed the dialog.
-- 
-- This method is used for 'GI.WebKit2.Enums.ScriptDialogTypeConfirm' and 'GI.WebKit2.Enums.ScriptDialogTypeBeforeUnloadConfirm' dialogs when
-- [WebView::scriptDialog]("GI.WebKit2.Objects.WebView#g:signal:scriptDialog") signal is emitted to set whether the user
-- confirmed the dialog or not. The default implementation of [WebView::scriptDialog]("GI.WebKit2.Objects.WebView#g:signal:scriptDialog")
-- signal sets 'P.True' when the OK or Stay buttons are clicked and 'P.False' otherwise.
-- It\'s an error to use this method with a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' that is not of type
-- 'GI.WebKit2.Enums.ScriptDialogTypeConfirm' or 'GI.WebKit2.Enums.ScriptDialogTypeBeforeUnloadConfirm'
scriptDialogConfirmSetConfirmed ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> Bool
    -- ^ /@confirmed@/: whether user confirmed the dialog
    -> m ()
scriptDialogConfirmSetConfirmed dialog confirmed = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    let confirmed' = (P.fromIntegral . P.fromEnum) confirmed
    webkit_script_dialog_confirm_set_confirmed dialog' confirmed'
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptDialogConfirmSetConfirmedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m) => O.OverloadedMethod ScriptDialogConfirmSetConfirmedMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogConfirmSetConfirmed

instance O.OverloadedMethodInfo ScriptDialogConfirmSetConfirmedMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogConfirmSetConfirmed",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogConfirmSetConfirmed"
        })


#endif

-- method ScriptDialog::get_dialog_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "ScriptDialogType" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_script_dialog_get_dialog_type" webkit_script_dialog_get_dialog_type :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO CUInt

-- | Get the dialog type of a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'.
scriptDialogGetDialogType ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m WebKit2.Enums.ScriptDialogType
    -- ^ __Returns:__ the t'GI.WebKit2.Enums.ScriptDialogType' of /@dialog@/
scriptDialogGetDialogType dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    result <- webkit_script_dialog_get_dialog_type dialog'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data ScriptDialogGetDialogTypeMethodInfo
instance (signature ~ (m WebKit2.Enums.ScriptDialogType), MonadIO m) => O.OverloadedMethod ScriptDialogGetDialogTypeMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogGetDialogType

instance O.OverloadedMethodInfo ScriptDialogGetDialogTypeMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogGetDialogType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogGetDialogType"
        })


#endif

-- method ScriptDialog::get_message
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_script_dialog_get_message" webkit_script_dialog_get_message :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO CString

-- | Get the message of a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'.
scriptDialogGetMessage ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m T.Text
    -- ^ __Returns:__ the message of /@dialog@/.
scriptDialogGetMessage dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    result <- webkit_script_dialog_get_message dialog'
    checkUnexpectedReturnNULL "scriptDialogGetMessage" result
    result' <- cstringToText result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data ScriptDialogGetMessageMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod ScriptDialogGetMessageMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogGetMessage

instance O.OverloadedMethodInfo ScriptDialogGetMessageMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogGetMessage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogGetMessage"
        })


#endif

-- method ScriptDialog::prompt_get_default_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_script_dialog_prompt_get_default_text" webkit_script_dialog_prompt_get_default_text :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO CString

-- | Get the default text of a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' of type 'GI.WebKit2.Enums.ScriptDialogTypePrompt'.
-- 
-- It\'s an error to use this method with a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' that is not of type
-- 'GI.WebKit2.Enums.ScriptDialogTypePrompt'.
scriptDialogPromptGetDefaultText ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m T.Text
    -- ^ __Returns:__ the default text of /@dialog@/
scriptDialogPromptGetDefaultText dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    result <- webkit_script_dialog_prompt_get_default_text dialog'
    checkUnexpectedReturnNULL "scriptDialogPromptGetDefaultText" result
    result' <- cstringToText result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data ScriptDialogPromptGetDefaultTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod ScriptDialogPromptGetDefaultTextMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogPromptGetDefaultText

instance O.OverloadedMethodInfo ScriptDialogPromptGetDefaultTextMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogPromptGetDefaultText",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogPromptGetDefaultText"
        })


#endif

-- method ScriptDialog::prompt_set_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
--                 { rawDocText = Just "the text to set" , sinceVersion = Nothing }
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

foreign import ccall "webkit_script_dialog_prompt_set_text" webkit_script_dialog_prompt_set_text :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

-- | Set the text entered by the user in the dialog.
-- 
-- This method is used for 'GI.WebKit2.Enums.ScriptDialogTypePrompt' dialogs when
-- [WebView::scriptDialog]("GI.WebKit2.Objects.WebView#g:signal:scriptDialog") signal is emitted to set the text
-- entered by the user. The default implementation of [WebView::scriptDialog]("GI.WebKit2.Objects.WebView#g:signal:scriptDialog")
-- signal sets the text of the entry form when OK button is clicked, otherwise 'P.Nothing' is set.
-- It\'s an error to use this method with a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' that is not of type
-- 'GI.WebKit2.Enums.ScriptDialogTypePrompt'.
scriptDialogPromptSetText ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> T.Text
    -- ^ /@text@/: the text to set
    -> m ()
scriptDialogPromptSetText dialog text = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    text' <- textToCString text
    webkit_script_dialog_prompt_set_text dialog' text'
    touchManagedPtr dialog
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptDialogPromptSetTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m) => O.OverloadedMethod ScriptDialogPromptSetTextMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogPromptSetText

instance O.OverloadedMethodInfo ScriptDialogPromptSetTextMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogPromptSetText",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogPromptSetText"
        })


#endif

-- method ScriptDialog::ref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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
--               (TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_script_dialog_ref" webkit_script_dialog_ref :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO (Ptr ScriptDialog)

-- | Atomically increments the reference count of /@dialog@/ by one.
-- 
-- This
-- function is MT-safe and may be called from any thread.
-- 
-- /Since: 2.24/
scriptDialogRef ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m ScriptDialog
    -- ^ __Returns:__ The passed in t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
scriptDialogRef dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    result <- webkit_script_dialog_ref dialog'
    checkUnexpectedReturnNULL "scriptDialogRef" result
    result' <- (wrapBoxed ScriptDialog) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data ScriptDialogRefMethodInfo
instance (signature ~ (m ScriptDialog), MonadIO m) => O.OverloadedMethod ScriptDialogRefMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogRef

instance O.OverloadedMethodInfo ScriptDialogRefMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogRef",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogRef"
        })


#endif

-- method ScriptDialog::unref
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "ScriptDialog" }
--           , argCType = Just "WebKitScriptDialog*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitScriptDialog"
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

foreign import ccall "webkit_script_dialog_unref" webkit_script_dialog_unref :: 
    Ptr ScriptDialog ->                     -- dialog : TInterface (Name {namespace = "WebKit2", name = "ScriptDialog"})
    IO ()

-- | Atomically decrements the reference count of /@dialog@/ by one.
-- 
-- If the
-- reference count drops to 0, all memory allocated by the @/WebKitScriptdialog/@ is
-- released. This function is MT-safe and may be called from any
-- thread.
-- 
-- /Since: 2.24/
scriptDialogUnref ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ScriptDialog
    -- ^ /@dialog@/: a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog'
    -> m ()
scriptDialogUnref dialog = liftIO $ do
    dialog' <- unsafeManagedPtrGetPtr dialog
    webkit_script_dialog_unref dialog'
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data ScriptDialogUnrefMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod ScriptDialogUnrefMethodInfo ScriptDialog signature where
    overloadedMethod = scriptDialogUnref

instance O.OverloadedMethodInfo ScriptDialogUnrefMethodInfo ScriptDialog where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.ScriptDialog.scriptDialogUnref",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-ScriptDialog.html#v:scriptDialogUnref"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveScriptDialogMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveScriptDialogMethod "close" o = ScriptDialogCloseMethodInfo
    ResolveScriptDialogMethod "confirmSetConfirmed" o = ScriptDialogConfirmSetConfirmedMethodInfo
    ResolveScriptDialogMethod "promptGetDefaultText" o = ScriptDialogPromptGetDefaultTextMethodInfo
    ResolveScriptDialogMethod "promptSetText" o = ScriptDialogPromptSetTextMethodInfo
    ResolveScriptDialogMethod "ref" o = ScriptDialogRefMethodInfo
    ResolveScriptDialogMethod "unref" o = ScriptDialogUnrefMethodInfo
    ResolveScriptDialogMethod "getDialogType" o = ScriptDialogGetDialogTypeMethodInfo
    ResolveScriptDialogMethod "getMessage" o = ScriptDialogGetMessageMethodInfo
    ResolveScriptDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScriptDialogMethod t ScriptDialog, O.OverloadedMethod info ScriptDialog p) => OL.IsLabel t (ScriptDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveScriptDialogMethod t ScriptDialog, O.OverloadedMethod info ScriptDialog p, R.HasField t ScriptDialog p) => R.HasField t ScriptDialog p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveScriptDialogMethod t ScriptDialog, O.OverloadedMethodInfo info ScriptDialog) => OL.IsLabel t (O.MethodProxy info ScriptDialog) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


