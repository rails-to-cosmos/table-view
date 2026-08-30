

-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Functions
    ( 

 -- * Methods


-- ** getMajorVersion #method:getMajorVersion#

    getMajorVersion                         ,


-- ** getMicroVersion #method:getMicroVersion#

    getMicroVersion                         ,


-- ** getMinorVersion #method:getMinorVersion#

    getMinorVersion                         ,


-- ** mediaKeySystemPermissionGetName #method:mediaKeySystemPermissionGetName#

    mediaKeySystemPermissionGetName         ,


-- ** uriForDisplay #method:uriForDisplay#

    uriForDisplay                           ,


-- ** userMediaPermissionIsForAudioDevice #method:userMediaPermissionIsForAudioDevice#

    userMediaPermissionIsForAudioDevice     ,


-- ** userMediaPermissionIsForDisplayDevice #method:userMediaPermissionIsForDisplayDevice#

    userMediaPermissionIsForDisplayDevice   ,


-- ** userMediaPermissionIsForVideoDevice #method:userMediaPermissionIsForVideoDevice#

    userMediaPermissionIsForVideoDevice     ,




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
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.MediaKeySystemPermissionRequest as WebKit2.MediaKeySystemPermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMediaPermissionRequest as WebKit2.UserMediaPermissionRequest

#else
import {-# SOURCE #-} qualified GI.WebKit2.Objects.MediaKeySystemPermissionRequest as WebKit2.MediaKeySystemPermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMediaPermissionRequest as WebKit2.UserMediaPermissionRequest

#endif

-- function user_media_permission_is_for_video_device
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2" , name = "UserMediaPermissionRequest" }
--           , argCType = Just "WebKitUserMediaPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMediaPermissionRequest"
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

foreign import ccall "webkit_user_media_permission_is_for_video_device" webkit_user_media_permission_is_for_video_device :: 
    Ptr WebKit2.UserMediaPermissionRequest.UserMediaPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "UserMediaPermissionRequest"})
    IO CInt

-- | Check whether the permission request is for a video device.
-- 
-- /Since: 2.8/
userMediaPermissionIsForVideoDevice ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.UserMediaPermissionRequest.IsUserMediaPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.UserMediaPermissionRequest.UserMediaPermissionRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if access to a video device was requested.
userMediaPermissionIsForVideoDevice request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_user_media_permission_is_for_video_device request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'


-- function user_media_permission_is_for_display_device
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2" , name = "UserMediaPermissionRequest" }
--           , argCType = Just "WebKitUserMediaPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMediaPermissionRequest"
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

foreign import ccall "webkit_user_media_permission_is_for_display_device" webkit_user_media_permission_is_for_display_device :: 
    Ptr WebKit2.UserMediaPermissionRequest.UserMediaPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "UserMediaPermissionRequest"})
    IO CInt

-- | Check whether the permission request is for a display device.
-- 
-- /Since: 2.34/
userMediaPermissionIsForDisplayDevice ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.UserMediaPermissionRequest.IsUserMediaPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.UserMediaPermissionRequest.UserMediaPermissionRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if access to a display device was requested.
userMediaPermissionIsForDisplayDevice request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_user_media_permission_is_for_display_device request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'


-- function user_media_permission_is_for_audio_device
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2" , name = "UserMediaPermissionRequest" }
--           , argCType = Just "WebKitUserMediaPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMediaPermissionRequest"
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

foreign import ccall "webkit_user_media_permission_is_for_audio_device" webkit_user_media_permission_is_for_audio_device :: 
    Ptr WebKit2.UserMediaPermissionRequest.UserMediaPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "UserMediaPermissionRequest"})
    IO CInt

-- | Check whether the permission request is for an audio device.
-- 
-- /Since: 2.8/
userMediaPermissionIsForAudioDevice ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.UserMediaPermissionRequest.IsUserMediaPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.UserMediaPermissionRequest.UserMediaPermissionRequest'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if access to an audio device was requested.
userMediaPermissionIsForAudioDevice request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_user_media_permission_is_for_audio_device request'
    let result' = (/= 0) result
    touchManagedPtr request
    return result'


-- function uri_for_display
-- Args: [ Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI to be converted"
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

foreign import ccall "webkit_uri_for_display" webkit_uri_for_display :: 
    CString ->                              -- uri : TBasicType TUTF8
    IO CString

-- | Use this function to format a URI for display.
-- 
-- The URIs used internally by
-- WebKit may contain percent-encoded characters or Punycode, which are not
-- generally suitable to display to users. This function provides protection
-- against IDN homograph attacks, so in some cases the host part of the returned
-- URI may be in Punycode if the safety check fails.
-- 
-- /Since: 2.24/
uriForDisplay ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@uri@/: the URI to be converted
    -> m (Maybe T.Text)
    -- ^ __Returns:__ /@uri@/ suitable for display, or 'P.Nothing' in
    --    case of error.
uriForDisplay uri = liftIO $ do
    uri' <- textToCString uri
    result <- webkit_uri_for_display uri'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    freeMem uri'
    return maybeResult


-- function media_key_system_permission_get_name
-- Args: [ Arg
--           { argCName = "request"
--           , argType =
--               TInterface
--                 Name
--                   { namespace = "WebKit2"
--                   , name = "MediaKeySystemPermissionRequest"
--                   }
--           , argCType = Just "WebKitMediaKeySystemPermissionRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMediaKeySystemPermissionRequest"
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

foreign import ccall "webkit_media_key_system_permission_get_name" webkit_media_key_system_permission_get_name :: 
    Ptr WebKit2.MediaKeySystemPermissionRequest.MediaKeySystemPermissionRequest -> -- request : TInterface (Name {namespace = "WebKit2", name = "MediaKeySystemPermissionRequest"})
    IO CString

-- | Get the key system for which access permission is being requested.
-- 
-- /Since: 2.32/
mediaKeySystemPermissionGetName ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.MediaKeySystemPermissionRequest.IsMediaKeySystemPermissionRequest a) =>
    a
    -- ^ /@request@/: a t'GI.WebKit2.Objects.MediaKeySystemPermissionRequest.MediaKeySystemPermissionRequest'
    -> m T.Text
    -- ^ __Returns:__ the key system name for /@request@/
mediaKeySystemPermissionGetName request = liftIO $ do
    request' <- unsafeManagedPtrCastPtr request
    result <- webkit_media_key_system_permission_get_name request'
    checkUnexpectedReturnNULL "mediaKeySystemPermissionGetName" result
    result' <- cstringToText result
    touchManagedPtr request
    return result'


-- function get_minor_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_get_minor_version" webkit_get_minor_version :: 
    IO Word32

-- | Returns the minor version number of the WebKit library.
-- 
-- (e.g. in WebKit version 1.8.3 this is 8.)
-- 
-- This function is in the library, so it represents the WebKit library
-- your code is running against. Contrast with the 'GI.WebKit2.Constants.MINOR_VERSION'
-- macro, which represents the minor version of the WebKit headers you
-- have included when compiling your code.
getMinorVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the minor version number of the WebKit library
getMinorVersion  = liftIO $ do
    result <- webkit_get_minor_version
    return result


-- function get_micro_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_get_micro_version" webkit_get_micro_version :: 
    IO Word32

-- | Returns the micro version number of the WebKit library.
-- 
-- (e.g. in WebKit version 1.8.3 this is 3.)
-- 
-- This function is in the library, so it represents the WebKit library
-- your code is running against. Contrast with the 'GI.WebKit2.Constants.MICRO_VERSION'
-- macro, which represents the micro version of the WebKit headers you
-- have included when compiling your code.
getMicroVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the micro version number of the WebKit library
getMicroVersion  = liftIO $ do
    result <- webkit_get_micro_version
    return result


-- function get_major_version
-- Args: []
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_get_major_version" webkit_get_major_version :: 
    IO Word32

-- | Returns the major version number of the WebKit library.
-- 
-- (e.g. in WebKit version 1.8.3 this is 1.)
-- 
-- This function is in the library, so it represents the WebKit library
-- your code is running against. Contrast with the 'GI.WebKit2.Constants.MAJOR_VERSION'
-- macro, which represents the major version of the WebKit headers you
-- have included when compiling your code.
getMajorVersion ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Word32
    -- ^ __Returns:__ the major version number of the WebKit library
getMajorVersion  = liftIO $ do
    result <- webkit_get_major_version
    return result



