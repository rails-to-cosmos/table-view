{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Range of text in an preedit string to be shown underlined.
-- 
-- /Since: 2.28/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.InputMethodUnderline
    ( 

-- * Exported types
    InputMethodUnderline(..)                ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.InputMethodUnderline#g:method:copy"), [free]("GI.WebKit2.Structs.InputMethodUnderline#g:method:free").
-- 
-- ==== Getters
-- /None/.
-- 
-- ==== Setters
-- [setColor]("GI.WebKit2.Structs.InputMethodUnderline#g:method:setColor").

#if defined(ENABLE_OVERLOADING)
    ResolveInputMethodUnderlineMethod       ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    InputMethodUnderlineCopyMethodInfo      ,
#endif
    inputMethodUnderlineCopy                ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    InputMethodUnderlineFreeMethodInfo      ,
#endif
    inputMethodUnderlineFree                ,


-- ** new #method:new#

    inputMethodUnderlineNew                 ,


-- ** setColor #method:setColor#

#if defined(ENABLE_OVERLOADING)
    InputMethodUnderlineSetColorMethodInfo  ,
#endif
    inputMethodUnderlineSetColor            ,




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
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA

#else
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA

#endif

-- | Memory-managed wrapper type.
newtype InputMethodUnderline = InputMethodUnderline (SP.ManagedPtr InputMethodUnderline)
    deriving (Eq)

instance SP.ManagedPtrNewtype InputMethodUnderline where
    toManagedPtr (InputMethodUnderline p) = p

foreign import ccall "webkit_input_method_underline_get_type" c_webkit_input_method_underline_get_type :: 
    IO GType

type instance O.ParentTypes InputMethodUnderline = '[]
instance O.HasParentTypes InputMethodUnderline

instance B.Types.TypedObject InputMethodUnderline where
    glibType = c_webkit_input_method_underline_get_type

instance B.Types.GBoxed InputMethodUnderline

-- | Convert t'InputMethodUnderline' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe InputMethodUnderline) where
    gvalueGType_ = c_webkit_input_method_underline_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr InputMethodUnderline)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr InputMethodUnderline)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed InputMethodUnderline ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList InputMethodUnderline
type instance O.AttributeList InputMethodUnderline = InputMethodUnderlineAttributeList
type InputMethodUnderlineAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method InputMethodUnderline::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "start_offset"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the start offset in preedit string"
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
--           { argCName = "end_offset"
--           , argType = TBasicType TUInt
--           , argCType = Just "guint"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the end offset in preedit string"
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
--                  Name { namespace = "WebKit2" , name = "InputMethodUnderline" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_underline_new" webkit_input_method_underline_new :: 
    Word32 ->                               -- start_offset : TBasicType TUInt
    Word32 ->                               -- end_offset : TBasicType TUInt
    IO (Ptr InputMethodUnderline)

-- | Create a new t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline' for the given range in preedit string
-- 
-- /Since: 2.28/
inputMethodUnderlineNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Word32
    -- ^ /@startOffset@/: the start offset in preedit string
    -> Word32
    -- ^ /@endOffset@/: the end offset in preedit string
    -> m InputMethodUnderline
    -- ^ __Returns:__ A newly created t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'
inputMethodUnderlineNew startOffset endOffset = liftIO $ do
    result <- webkit_input_method_underline_new startOffset endOffset
    checkUnexpectedReturnNULL "inputMethodUnderlineNew" result
    result' <- (wrapBoxed InputMethodUnderline) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method InputMethodUnderline::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "underline"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodUnderline" }
--           , argCType = Just "WebKitInputMethodUnderline*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodUnderline"
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
--                  Name { namespace = "WebKit2" , name = "InputMethodUnderline" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_input_method_underline_copy" webkit_input_method_underline_copy :: 
    Ptr InputMethodUnderline ->             -- underline : TInterface (Name {namespace = "WebKit2", name = "InputMethodUnderline"})
    IO (Ptr InputMethodUnderline)

-- | Make a copy of the t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'.
-- 
-- /Since: 2.28/
inputMethodUnderlineCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    InputMethodUnderline
    -- ^ /@underline@/: a t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'
    -> m InputMethodUnderline
    -- ^ __Returns:__ A copy of passed in t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'
inputMethodUnderlineCopy underline = liftIO $ do
    underline' <- unsafeManagedPtrGetPtr underline
    result <- webkit_input_method_underline_copy underline'
    checkUnexpectedReturnNULL "inputMethodUnderlineCopy" result
    result' <- (wrapBoxed InputMethodUnderline) result
    touchManagedPtr underline
    return result'

#if defined(ENABLE_OVERLOADING)
data InputMethodUnderlineCopyMethodInfo
instance (signature ~ (m InputMethodUnderline), MonadIO m) => O.OverloadedMethod InputMethodUnderlineCopyMethodInfo InputMethodUnderline signature where
    overloadedMethod = inputMethodUnderlineCopy

instance O.OverloadedMethodInfo InputMethodUnderlineCopyMethodInfo InputMethodUnderline where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.InputMethodUnderline.inputMethodUnderlineCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-InputMethodUnderline.html#v:inputMethodUnderlineCopy"
        })


#endif

-- method InputMethodUnderline::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "underline"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodUnderline" }
--           , argCType = Just "WebKitInputMethodUnderline*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitInputMethodUnderline"
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

foreign import ccall "webkit_input_method_underline_free" webkit_input_method_underline_free :: 
    Ptr InputMethodUnderline ->             -- underline : TInterface (Name {namespace = "WebKit2", name = "InputMethodUnderline"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'.
-- 
-- /Since: 2.28/
inputMethodUnderlineFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    InputMethodUnderline
    -- ^ /@underline@/: A t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'
    -> m ()
inputMethodUnderlineFree underline = liftIO $ do
    underline' <- unsafeManagedPtrGetPtr underline
    webkit_input_method_underline_free underline'
    touchManagedPtr underline
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodUnderlineFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod InputMethodUnderlineFreeMethodInfo InputMethodUnderline signature where
    overloadedMethod = inputMethodUnderlineFree

instance O.OverloadedMethodInfo InputMethodUnderlineFreeMethodInfo InputMethodUnderline where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.InputMethodUnderline.inputMethodUnderlineFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-InputMethodUnderline.html#v:inputMethodUnderlineFree"
        })


#endif

-- method InputMethodUnderline::set_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "underline"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodUnderline" }
--           , argCType = Just "WebKitInputMethodUnderline*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitInputMethodUnderline"
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
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "const GdkRGBA*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA or %NULL"
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

foreign import ccall "webkit_input_method_underline_set_color" webkit_input_method_underline_set_color :: 
    Ptr InputMethodUnderline ->             -- underline : TInterface (Name {namespace = "WebKit2", name = "InputMethodUnderline"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Set the color of the underline.
-- 
-- If /@rgba@/ is 'P.Nothing' the foreground text color will be used
-- for the underline too.
-- 
-- /Since: 2.28/
inputMethodUnderlineSetColor ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    InputMethodUnderline
    -- ^ /@underline@/: a t'GI.WebKit2.Structs.InputMethodUnderline.InputMethodUnderline'
    -> Maybe (Gdk.RGBA.RGBA)
    -- ^ /@rgba@/: a t'GI.Gdk.Structs.RGBA.RGBA' or 'P.Nothing'
    -> m ()
inputMethodUnderlineSetColor underline rgba = liftIO $ do
    underline' <- unsafeManagedPtrGetPtr underline
    maybeRgba <- case rgba of
        Nothing -> return FP.nullPtr
        Just jRgba -> do
            jRgba' <- unsafeManagedPtrGetPtr jRgba
            return jRgba'
    webkit_input_method_underline_set_color underline' maybeRgba
    touchManagedPtr underline
    whenJust rgba touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data InputMethodUnderlineSetColorMethodInfo
instance (signature ~ (Maybe (Gdk.RGBA.RGBA) -> m ()), MonadIO m) => O.OverloadedMethod InputMethodUnderlineSetColorMethodInfo InputMethodUnderline signature where
    overloadedMethod = inputMethodUnderlineSetColor

instance O.OverloadedMethodInfo InputMethodUnderlineSetColorMethodInfo InputMethodUnderline where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.InputMethodUnderline.inputMethodUnderlineSetColor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-InputMethodUnderline.html#v:inputMethodUnderlineSetColor"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveInputMethodUnderlineMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveInputMethodUnderlineMethod "copy" o = InputMethodUnderlineCopyMethodInfo
    ResolveInputMethodUnderlineMethod "free" o = InputMethodUnderlineFreeMethodInfo
    ResolveInputMethodUnderlineMethod "setColor" o = InputMethodUnderlineSetColorMethodInfo
    ResolveInputMethodUnderlineMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInputMethodUnderlineMethod t InputMethodUnderline, O.OverloadedMethod info InputMethodUnderline p) => OL.IsLabel t (InputMethodUnderline -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveInputMethodUnderlineMethod t InputMethodUnderline, O.OverloadedMethod info InputMethodUnderline p, R.HasField t InputMethodUnderline p) => R.HasField t InputMethodUnderline p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveInputMethodUnderlineMethod t InputMethodUnderline, O.OverloadedMethodInfo info InputMethodUnderline) => OL.IsLabel t (O.MethodProxy info InputMethodUnderline) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


