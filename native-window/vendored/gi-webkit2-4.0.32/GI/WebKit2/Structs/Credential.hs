{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Groups information used for user authentication.
-- 
-- /Since: 2.2/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Structs.Credential
    ( 

-- * Exported types
    Credential(..)                          ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [copy]("GI.WebKit2.Structs.Credential#g:method:copy"), [free]("GI.WebKit2.Structs.Credential#g:method:free"), [hasPassword]("GI.WebKit2.Structs.Credential#g:method:hasPassword").
-- 
-- ==== Getters
-- [getCertificate]("GI.WebKit2.Structs.Credential#g:method:getCertificate"), [getPassword]("GI.WebKit2.Structs.Credential#g:method:getPassword"), [getPersistence]("GI.WebKit2.Structs.Credential#g:method:getPersistence"), [getUsername]("GI.WebKit2.Structs.Credential#g:method:getUsername").
-- 
-- ==== Setters
-- /None/.

#if defined(ENABLE_OVERLOADING)
    ResolveCredentialMethod                 ,
#endif

-- ** copy #method:copy#

#if defined(ENABLE_OVERLOADING)
    CredentialCopyMethodInfo                ,
#endif
    credentialCopy                          ,


-- ** free #method:free#

#if defined(ENABLE_OVERLOADING)
    CredentialFreeMethodInfo                ,
#endif
    credentialFree                          ,


-- ** getCertificate #method:getCertificate#

#if defined(ENABLE_OVERLOADING)
    CredentialGetCertificateMethodInfo      ,
#endif
    credentialGetCertificate                ,


-- ** getPassword #method:getPassword#

#if defined(ENABLE_OVERLOADING)
    CredentialGetPasswordMethodInfo         ,
#endif
    credentialGetPassword                   ,


-- ** getPersistence #method:getPersistence#

#if defined(ENABLE_OVERLOADING)
    CredentialGetPersistenceMethodInfo      ,
#endif
    credentialGetPersistence                ,


-- ** getUsername #method:getUsername#

#if defined(ENABLE_OVERLOADING)
    CredentialGetUsernameMethodInfo         ,
#endif
    credentialGetUsername                   ,


-- ** hasPassword #method:hasPassword#

#if defined(ENABLE_OVERLOADING)
    CredentialHasPasswordMethodInfo         ,
#endif
    credentialHasPassword                   ,


-- ** new #method:new#

    credentialNew                           ,


-- ** newForCertificate #method:newForCertificate#

    credentialNewForCertificate             ,


-- ** newForCertificatePin #method:newForCertificatePin#

    credentialNewForCertificatePin          ,




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
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#else
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums

#endif

-- | Memory-managed wrapper type.
newtype Credential = Credential (SP.ManagedPtr Credential)
    deriving (Eq)

instance SP.ManagedPtrNewtype Credential where
    toManagedPtr (Credential p) = p

foreign import ccall "webkit_credential_get_type" c_webkit_credential_get_type :: 
    IO GType

type instance O.ParentTypes Credential = '[]
instance O.HasParentTypes Credential

instance B.Types.TypedObject Credential where
    glibType = c_webkit_credential_get_type

instance B.Types.GBoxed Credential

-- | Convert t'Credential' to and from 'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe Credential) where
    gvalueGType_ = c_webkit_credential_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_boxed gv (FP.nullPtr :: FP.Ptr Credential)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_boxed gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_boxed gv :: IO (Ptr Credential)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newBoxed Credential ptr
        else return P.Nothing
        
    


#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Credential
type instance O.AttributeList Credential = CredentialAttributeList
type CredentialAttributeList = ('[ ] :: [(Symbol, DK.Type)])
#endif

-- method Credential::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "username"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The username for the new credential"
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
--           { argCName = "password"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The password for the new credential"
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
--           { argCName = "persistence"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "CredentialPersistence" }
--           , argCType = Just "WebKitCredentialPersistence"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #WebKitCredentialPersistence of the new credential"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Credential" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_new" webkit_credential_new :: 
    CString ->                              -- username : TBasicType TUTF8
    CString ->                              -- password : TBasicType TUTF8
    CUInt ->                                -- persistence : TInterface (Name {namespace = "WebKit2", name = "CredentialPersistence"})
    IO (Ptr Credential)

-- | Create a new credential from the provided username, password and persistence mode.
-- 
-- /Since: 2.2/
credentialNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@username@/: The username for the new credential
    -> T.Text
    -- ^ /@password@/: The password for the new credential
    -> WebKit2.Enums.CredentialPersistence
    -- ^ /@persistence@/: The t'GI.WebKit2.Enums.CredentialPersistence' of the new credential
    -> m Credential
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.Credential.Credential'.
credentialNew username password persistence = liftIO $ do
    username' <- textToCString username
    password' <- textToCString password
    let persistence' = (fromIntegral . fromEnum) persistence
    result <- webkit_credential_new username' password' persistence'
    checkUnexpectedReturnNULL "credentialNew" result
    result' <- (wrapBoxed Credential) result
    freeMem username'
    freeMem password'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Credential::new_for_certificate
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "certificate"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "TlsCertificate" }
--           , argCType = Just "GTlsCertificate*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GTlsCertificate, or %NULL"
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
--           { argCName = "persistence"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "CredentialPersistence" }
--           , argCType = Just "WebKitCredentialPersistence"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #WebKitCredentialPersistence of the new credential"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Credential" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_new_for_certificate" webkit_credential_new_for_certificate :: 
    Ptr Gio.TlsCertificate.TlsCertificate -> -- certificate : TInterface (Name {namespace = "Gio", name = "TlsCertificate"})
    CUInt ->                                -- persistence : TInterface (Name {namespace = "WebKit2", name = "CredentialPersistence"})
    IO (Ptr Credential)

-- | Create a new credential from the /@certificate@/ and persistence mode.
-- 
-- Note that 'GI.WebKit2.Enums.CredentialPersistencePermanent' is not supported for certificate credentials.
-- 
-- /Since: 2.34/
credentialNewForCertificate ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.TlsCertificate.IsTlsCertificate a) =>
    Maybe (a)
    -- ^ /@certificate@/: The t'GI.Gio.Objects.TlsCertificate.TlsCertificate', or 'P.Nothing'
    -> WebKit2.Enums.CredentialPersistence
    -- ^ /@persistence@/: The t'GI.WebKit2.Enums.CredentialPersistence' of the new credential
    -> m Credential
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.Credential.Credential'.
credentialNewForCertificate certificate persistence = liftIO $ do
    maybeCertificate <- case certificate of
        Nothing -> return FP.nullPtr
        Just jCertificate -> do
            jCertificate' <- unsafeManagedPtrCastPtr jCertificate
            return jCertificate'
    let persistence' = (fromIntegral . fromEnum) persistence
    result <- webkit_credential_new_for_certificate maybeCertificate persistence'
    checkUnexpectedReturnNULL "credentialNewForCertificate" result
    result' <- (wrapBoxed Credential) result
    whenJust certificate touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Credential::new_for_certificate_pin
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "pin"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The PIN for the new credential"
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
--           { argCName = "persistence"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "CredentialPersistence" }
--           , argCType = Just "WebKitCredentialPersistence"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #WebKitCredentialPersistence of the new credential"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Credential" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_new_for_certificate_pin" webkit_credential_new_for_certificate_pin :: 
    CString ->                              -- pin : TBasicType TUTF8
    CUInt ->                                -- persistence : TInterface (Name {namespace = "WebKit2", name = "CredentialPersistence"})
    IO (Ptr Credential)

-- | Create a new credential from the provided PIN and persistence mode.
-- 
-- Note that 'GI.WebKit2.Enums.CredentialPersistencePermanent' is not supported for certificate pin credentials.
-- 
-- /Since: 2.34/
credentialNewForCertificatePin ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@pin@/: The PIN for the new credential
    -> WebKit2.Enums.CredentialPersistence
    -- ^ /@persistence@/: The t'GI.WebKit2.Enums.CredentialPersistence' of the new credential
    -> m Credential
    -- ^ __Returns:__ A t'GI.WebKit2.Structs.Credential.Credential'.
credentialNewForCertificatePin pin persistence = liftIO $ do
    pin' <- textToCString pin
    let persistence' = (fromIntegral . fromEnum) persistence
    result <- webkit_credential_new_for_certificate_pin pin' persistence'
    checkUnexpectedReturnNULL "credentialNewForCertificatePin" result
    result' <- (wrapBoxed Credential) result
    freeMem pin'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Credential::copy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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
--               (TInterface Name { namespace = "WebKit2" , name = "Credential" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_copy" webkit_credential_copy :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO (Ptr Credential)

-- | Make a copy of the t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
credentialCopy ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m Credential
    -- ^ __Returns:__ A copy of passed in t'GI.WebKit2.Structs.Credential.Credential'
credentialCopy credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_copy credential'
    checkUnexpectedReturnNULL "credentialCopy" result
    result' <- (wrapBoxed Credential) result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialCopyMethodInfo
instance (signature ~ (m Credential), MonadIO m) => O.OverloadedMethod CredentialCopyMethodInfo Credential signature where
    overloadedMethod = credentialCopy

instance O.OverloadedMethodInfo CredentialCopyMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialCopy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialCopy"
        })


#endif

-- method Credential::free
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #WebKitCredential"
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

foreign import ccall "webkit_credential_free" webkit_credential_free :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO ()

-- | Free the t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
credentialFree ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: A t'GI.WebKit2.Structs.Credential.Credential'
    -> m ()
credentialFree credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    webkit_credential_free credential'
    touchManagedPtr credential
    return ()

#if defined(ENABLE_OVERLOADING)
data CredentialFreeMethodInfo
instance (signature ~ (m ()), MonadIO m) => O.OverloadedMethod CredentialFreeMethodInfo Credential signature where
    overloadedMethod = credentialFree

instance O.OverloadedMethodInfo CredentialFreeMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialFree",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialFree"
        })


#endif

-- method Credential::get_certificate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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
--               (TInterface Name { namespace = "Gio" , name = "TlsCertificate" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_get_certificate" webkit_credential_get_certificate :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO (Ptr Gio.TlsCertificate.TlsCertificate)

-- | Get the certificate currently held by this t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.34/
credentialGetCertificate ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m Gio.TlsCertificate.TlsCertificate
    -- ^ __Returns:__ a t'GI.Gio.Objects.TlsCertificate.TlsCertificate', or 'P.Nothing'
credentialGetCertificate credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_get_certificate credential'
    checkUnexpectedReturnNULL "credentialGetCertificate" result
    result' <- (newObject Gio.TlsCertificate.TlsCertificate) result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialGetCertificateMethodInfo
instance (signature ~ (m Gio.TlsCertificate.TlsCertificate), MonadIO m) => O.OverloadedMethod CredentialGetCertificateMethodInfo Credential signature where
    overloadedMethod = credentialGetCertificate

instance O.OverloadedMethodInfo CredentialGetCertificateMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialGetCertificate",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialGetCertificate"
        })


#endif

-- method Credential::get_password
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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

foreign import ccall "webkit_credential_get_password" webkit_credential_get_password :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO CString

-- | Get the password currently held by this t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
credentialGetPassword ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m T.Text
    -- ^ __Returns:__ The password stored in the t'GI.WebKit2.Structs.Credential.Credential'.
credentialGetPassword credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_get_password credential'
    checkUnexpectedReturnNULL "credentialGetPassword" result
    result' <- cstringToText result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialGetPasswordMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod CredentialGetPasswordMethodInfo Credential signature where
    overloadedMethod = credentialGetPassword

instance O.OverloadedMethodInfo CredentialGetPasswordMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialGetPassword",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialGetPassword"
        })


#endif

-- method Credential::get_persistence
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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
--                  Name { namespace = "WebKit2" , name = "CredentialPersistence" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_credential_get_persistence" webkit_credential_get_persistence :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO CUInt

-- | Get the persistence mode currently held by this t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
credentialGetPersistence ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m WebKit2.Enums.CredentialPersistence
    -- ^ __Returns:__ The t'GI.WebKit2.Enums.CredentialPersistence' stored in the t'GI.WebKit2.Structs.Credential.Credential'.
credentialGetPersistence credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_get_persistence credential'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialGetPersistenceMethodInfo
instance (signature ~ (m WebKit2.Enums.CredentialPersistence), MonadIO m) => O.OverloadedMethod CredentialGetPersistenceMethodInfo Credential signature where
    overloadedMethod = credentialGetPersistence

instance O.OverloadedMethodInfo CredentialGetPersistenceMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialGetPersistence",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialGetPersistence"
        })


#endif

-- method Credential::get_username
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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

foreign import ccall "webkit_credential_get_username" webkit_credential_get_username :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO CString

-- | Get the username currently held by this t'GI.WebKit2.Structs.Credential.Credential'.
-- 
-- /Since: 2.2/
credentialGetUsername ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m T.Text
    -- ^ __Returns:__ The username stored in the t'GI.WebKit2.Structs.Credential.Credential'.
credentialGetUsername credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_get_username credential'
    checkUnexpectedReturnNULL "credentialGetUsername" result
    result' <- cstringToText result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialGetUsernameMethodInfo
instance (signature ~ (m T.Text), MonadIO m) => O.OverloadedMethod CredentialGetUsernameMethodInfo Credential signature where
    overloadedMethod = credentialGetUsername

instance O.OverloadedMethodInfo CredentialGetUsernameMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialGetUsername",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialGetUsername"
        })


#endif

-- method Credential::has_password
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "credential"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Credential" }
--           , argCType = Just "WebKitCredential*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitCredential"
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

foreign import ccall "webkit_credential_has_password" webkit_credential_has_password :: 
    Ptr Credential ->                       -- credential : TInterface (Name {namespace = "WebKit2", name = "Credential"})
    IO CInt

-- | Determine whether this credential has a password stored.
-- 
-- /Since: 2.2/
credentialHasPassword ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Credential
    -- ^ /@credential@/: a t'GI.WebKit2.Structs.Credential.Credential'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the credential has a password or 'P.False' otherwise.
credentialHasPassword credential = liftIO $ do
    credential' <- unsafeManagedPtrGetPtr credential
    result <- webkit_credential_has_password credential'
    let result' = (/= 0) result
    touchManagedPtr credential
    return result'

#if defined(ENABLE_OVERLOADING)
data CredentialHasPasswordMethodInfo
instance (signature ~ (m Bool), MonadIO m) => O.OverloadedMethod CredentialHasPasswordMethodInfo Credential signature where
    overloadedMethod = credentialHasPassword

instance O.OverloadedMethodInfo CredentialHasPasswordMethodInfo Credential where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Structs.Credential.credentialHasPassword",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Structs-Credential.html#v:credentialHasPassword"
        })


#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveCredentialMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveCredentialMethod "copy" o = CredentialCopyMethodInfo
    ResolveCredentialMethod "free" o = CredentialFreeMethodInfo
    ResolveCredentialMethod "hasPassword" o = CredentialHasPasswordMethodInfo
    ResolveCredentialMethod "getCertificate" o = CredentialGetCertificateMethodInfo
    ResolveCredentialMethod "getPassword" o = CredentialGetPasswordMethodInfo
    ResolveCredentialMethod "getPersistence" o = CredentialGetPersistenceMethodInfo
    ResolveCredentialMethod "getUsername" o = CredentialGetUsernameMethodInfo
    ResolveCredentialMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCredentialMethod t Credential, O.OverloadedMethod info Credential p) => OL.IsLabel t (Credential -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveCredentialMethod t Credential, O.OverloadedMethod info Credential p, R.HasField t Credential p) => R.HasField t Credential p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveCredentialMethod t Credential, O.OverloadedMethodInfo info Credential) => OL.IsLabel t (O.MethodProxy info Credential) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif


