{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Provides details about interaction resulting in a resource load.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.NavigationAction
    ( 

-- * Exported types
    NavigationAction(..)                    ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.NavigationAction#g:method:copy"), [free]("GI.WebKit2.Structs.NavigationAction#g:method:free"), [isRedirect]("GI.WebKit2.Structs.NavigationAction#g:method:isRedirect"), [isUserGesture]("GI.WebKit2.Structs.NavigationAction#g:method:isUserGesture").
-- 
-- ==== Getters
-- [getFrameName]("GI.WebKit2.Structs.NavigationAction#g:method:getFrameName"), [getModifiers]("GI.WebKit2.Structs.NavigationAction#g:method:getModifiers"), [getMouseButton]("GI.WebKit2.Structs.NavigationAction#g:method:getMouseButton"), [getNavigationType]("GI.WebKit2.Structs.NavigationAction#g:method:getNavigationType"), [getRequest]("GI.WebKit2.Structs.NavigationAction#g:method:getRequest").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveNavigationActionMethod           ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    NavigationActionCopyMethodInfo          ,
#endif
    navigationActionCopy                    ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    NavigationActionFreeMethodInfo          ,
#endif
    navigationActionFree                    ,


-- ** getFrameName #method:getFrameName#

#if defined(ENABLE_OVERLOADING)
    NavigationActionGetFrameNameMethodInfo  ,
#endif
    navigationActionGetFrameName            ,


-- ** getModifiers #method:getModifiers#

#if defined(ENABLE_OVERLOADING)
    NavigationActionGetModifiersMethodInfo  ,
#endif
    navigationActionGetModifiers            ,


-- ** getMouseButton #method:getMouseButton#

#if defined(ENABLE_OVERLOADING)
    NavigationActionGetMouseButtonMethodInfo,
#endif
    navigationActionGetMouseButton          ,


-- ** getNavigationType #method:getNavigationType#

#if defined(ENABLE_OVERLOADING)
    NavigationActionGetNavigationTypeMethodInfo,
#endif
    navigationActionGetNavigationType       ,


-- ** getRequest #method:getRequest#

#if defined(ENABLE_OVERLOADING)
    NavigationActionGetRequestMethodInfo    ,
#endif
    navigationActionGetRequest              ,


-- ** isRedirect #method:isRedirect#

#if defined(ENABLE_OVERLOADING)
    NavigationActionIsRedirectMethodInfo    ,
#endif
    navigationActionIsRedirect              ,


-- ** isUserGesture #method:isUserGesture#

#if defined(ENABLE_OVERLOADING)
    NavigationActionIsUserGestureMethodInfo ,
#endif
    navigationActionIsUserGesture           ,




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
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest

#else
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest

#endif

-- | Memory-managed wrapper type.
newtype NavigationAction = NavigationAction (SP.ManagedPtr NavigationAction)
    deriving (Eq)

instance SP.ManagedPtrNewtype NavigationAction where
    toManagedPtr (NavigationAction p) = p

foreign import ccall "webkit_navigation_action_get_type" c_webkit_navigation_action_get_type :: 
    IO GType

type instance O.ParentTypes NavigationAction = '[]
instance O.HasParentTypes NavigationAction

instance B.Types.TypedObject NavigationAction where
    glibType = c_webkit_navigation_action_get_type

instance B.Types.GBoxed NavigationAction

-- | Convert t'NavigationAction' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe NavigationAction) where
    gvalueGType_ = c_webkit_navigation_action_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr NavigationAction)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr NavigationAction)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed NavigationAction ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NavigationAction
type instance O.AttributeList NavigationAction = NavigationActionAttributeList
type NavigationActionAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method NavigationAction::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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
--                  Name { namespace = "WebKit2" , name = "NavigationAction" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_action_copy" webkit_navigation_action_copy :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO (Ptr NavigationAction)

-- | Make a copy of /@navigation@/.
-- 
-- /Since: 2.6/
navigationActionCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m NavigationAction
    -- ^ __Returns:__ A copy of passed in t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
navigationActionCopy navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_copy navigation'
    checkUnexpectedReturnNULL "navigationActionCopy" result
    result' <- (wrapBoxed NavigationAction) result
    touchManagedPtr navigation
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationActionCopyMethodInfo
instance (signature ~ (m NavigationAction), MonadIO m) => O.OverloadedMethod NavigationActionCopyMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionCopy

instance O.OverloadedMethodInfo NavigationActionCopyMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionCopy"
        })


#endif

-- method NavigationAction::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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

foreign import ccall "webkit_navigation_action_free" webkit_navigation_action_free :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
-- 
-- /Since: 2.6/
navigationActionFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m ()
navigationActionFree navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    webkit_navigation_action_free navigation'
    touchManagedPtr navigation
    return ()

#if defined(ENABLE_OVERLOADING)
data NavigationActionFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod NavigationActionFreeMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionFree

instance O.OverloadedMethodInfo NavigationActionFreeMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionFree"
        })


#endif

-- method NavigationAction::get_frame_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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

foreign import ccall "webkit_navigation_action_get_frame_name" webkit_navigation_action_get_frame_name :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO CString

-- | Gets the /@navigation@/ target frame name. For example if navigation was triggered by clicking a
-- link with a target attribute equal to \"_blank\", this will return the value of that attribute.
-- In all other cases this function will return 'P.Nothing'.
-- 
-- /Since: 2.40/
navigationActionGetFrameName ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The name of the new frame this navigation action targets or 'P.Nothing'
navigationActionGetFrameName navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_get_frame_name navigation'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr navigation
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NavigationActionGetFrameNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m) => O.OverloadedMethod NavigationActionGetFrameNameMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionGetFrameName

instance O.OverloadedMethodInfo NavigationActionGetFrameNameMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionGetFrameName",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionGetFrameName"
        })


#endif

-- method NavigationAction::get_modifiers
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_action_get_modifiers" webkit_navigation_action_get_modifiers :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO Word32

-- | Return the modifier keys.
-- 
-- Return a bitmask of t'GI.Gdk.Flags.ModifierType' values describing the modifier keys that were in effect
-- when the navigation was requested
-- 
-- /Since: 2.6/
navigationActionGetModifiers ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m Word32
    -- ^ __Returns:__ the modifier keys
navigationActionGetModifiers navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_get_modifiers navigation'
    touchManagedPtr navigation
    return result

#if defined(ENABLE_OVERLOADING)
data NavigationActionGetModifiersMethodInfo
instance (signature ~ (m Word32), MonadIO m) => O.OverloadedMethod NavigationActionGetModifiersMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionGetModifiers

instance O.OverloadedMethodInfo NavigationActionGetModifiersMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionGetModifiers",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionGetModifiers"
        })


#endif

-- method NavigationAction::get_mouse_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_action_get_mouse_button" webkit_navigation_action_get_mouse_button :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO Word32

-- | Return the number of the mouse button that triggered the navigation.
-- 
-- Return the number of the mouse button that triggered the navigation, or 0 if
-- the navigation was not started by a mouse event.
-- 
-- /Since: 2.6/
navigationActionGetMouseButton ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m Word32
    -- ^ __Returns:__ the mouse button number or 0
navigationActionGetMouseButton navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_get_mouse_button navigation'
    touchManagedPtr navigation
    return result

#if defined(ENABLE_OVERLOADING)
data NavigationActionGetMouseButtonMethodInfo
instance (signature ~ (m Word32), MonadIO m) => O.OverloadedMethod NavigationActionGetMouseButtonMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionGetMouseButton

instance O.OverloadedMethodInfo NavigationActionGetMouseButtonMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionGetMouseButton",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionGetMouseButton"
        })


#endif

-- method NavigationAction::get_navigation_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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
--                  Name { namespace = "WebKit2" , name = "NavigationType" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_action_get_navigation_type" webkit_navigation_action_get_navigation_type :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO CUInt

-- | Return the type of action that triggered the navigation.
-- 
-- /Since: 2.6/
navigationActionGetNavigationType ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m WebKit2.Enums.NavigationType
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.NavigationType'
navigationActionGetNavigationType navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_get_navigation_type navigation'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr navigation
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationActionGetNavigationTypeMethodInfo
instance (signature ~ (m WebKit2.Enums.NavigationType), MonadIO m) => O.OverloadedMethod NavigationActionGetNavigationTypeMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionGetNavigationType

instance O.OverloadedMethodInfo NavigationActionGetNavigationTypeMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionGetNavigationType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionGetNavigationType"
        })


#endif

-- method NavigationAction::get_request
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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
--               (TInterface Name { namespace = "WebKit2" , name = "URIRequest" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_navigation_action_get_request" webkit_navigation_action_get_request :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO (Ptr WebKit2.URIRequest.URIRequest)

-- | Return the t'GI.WebKit2.Objects.URIRequest.URIRequest' associated with the navigation action.
-- 
-- Modifications to the returned object are \<emphasis>not\<\/emphasis> taken
-- into account when the request is sent over the network, and is intended
-- only to aid in evaluating whether a navigation action should be taken or
-- not. To modify requests before they are sent over the network the
-- @/WebKitPage::send-request/@ signal can be used instead.
-- 
-- /Since: 2.6/
navigationActionGetRequest ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m WebKit2.URIRequest.URIRequest
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.URIRequest.URIRequest'
navigationActionGetRequest navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_get_request navigation'
    checkUnexpectedReturnNULL "navigationActionGetRequest" result
    result' <- (newObject WebKit2.URIRequest.URIRequest) result
    touchManagedPtr navigation
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationActionGetRequestMethodInfo
instance (signature ~ (m WebKit2.URIRequest.URIRequest), MonadIO m) => O.OverloadedMethod NavigationActionGetRequestMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionGetRequest

instance O.OverloadedMethodInfo NavigationActionGetRequestMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionGetRequest",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionGetRequest"
        })


#endif

-- method NavigationAction::is_redirect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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

foreign import ccall "webkit_navigation_action_is_redirect" webkit_navigation_action_is_redirect :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO CInt

-- | Returns whether the /@navigation@/ was redirected.
-- 
-- /Since: 2.20/
navigationActionIsRedirect ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the original navigation was redirected, 'P.False' otherwise.
navigationActionIsRedirect navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_is_redirect navigation'
    let result' = (/= 0) result
    touchManagedPtr navigation
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationActionIsRedirectMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod NavigationActionIsRedirectMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionIsRedirect

instance O.OverloadedMethodInfo NavigationActionIsRedirectMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionIsRedirect",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionIsRedirect"
        })


#endif

-- method NavigationAction::is_user_gesture
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "navigation"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "NavigationAction" }
--           , argCType = Just "WebKitNavigationAction*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitNavigationAction"
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

foreign import ccall "webkit_navigation_action_is_user_gesture" webkit_navigation_action_is_user_gesture :: 
    Ptr NavigationAction ->                 -- navigation : TInterface (Name {namespace = "WebKit2", name = "NavigationAction"})
    IO CInt

-- | Return whether the navigation was triggered by a user gesture like a mouse click.
-- 
-- /Since: 2.6/
navigationActionIsUserGesture ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    NavigationAction
    -- ^ /@navigation@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> m Bool
    -- ^ __Returns:__ whether navigation action is a user gesture
navigationActionIsUserGesture navigation = liftIO $ do
    navigation' <- unsafeManagedPtrGetPtr navigation
    result <- webkit_navigation_action_is_user_gesture navigation'
    let result' = (/= 0) result
    touchManagedPtr navigation
    return result'

#if defined(ENABLE_OVERLOADING)
data NavigationActionIsUserGestureMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod NavigationActionIsUserGestureMethodInfo NavigationAction signature where
    overloadedMethod = navigationActionIsUserGesture

instance O.OverloadedMethodInfo NavigationActionIsUserGestureMethodInfo NavigationAction where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.NavigationAction.navigationActionIsUserGesture",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-NavigationAction.html#v:navigationActionIsUserGesture"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveNavigationActionMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveNavigationActionMethod "copy" o = NavigationActionCopyMethodInfo
    ResolveNavigationActionMethod "free" o = NavigationActionFreeMethodInfo
    ResolveNavigationActionMethod "isRedirect" o = NavigationActionIsRedirectMethodInfo
    ResolveNavigationActionMethod "isUserGesture" o = NavigationActionIsUserGestureMethodInfo
    ResolveNavigationActionMethod "getFrameName" o = NavigationActionGetFrameNameMethodInfo
    ResolveNavigationActionMethod "getModifiers" o = NavigationActionGetModifiersMethodInfo
    ResolveNavigationActionMethod "getMouseButton" o = NavigationActionGetMouseButtonMethodInfo
    ResolveNavigationActionMethod "getNavigationType" o = NavigationActionGetNavigationTypeMethodInfo
    ResolveNavigationActionMethod "getRequest" o = NavigationActionGetRequestMethodInfo
    ResolveNavigationActionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNavigationActionMethod t NavigationAction, O.OverloadedMethod info NavigationAction p) => OL.IsLabel t (NavigationAction -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveNavigationActionMethod t NavigationAction, O.OverloadedMethod info NavigationAction p, R.HasField t NavigationAction p) => R.HasField t NavigationAction p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveNavigationActionMethod t NavigationAction, O.OverloadedMethodInfo info NavigationAction) => OL.IsLabel t (O.MethodProxy info NavigationAction) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


