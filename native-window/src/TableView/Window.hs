{-# LANGUAGE CPP #-}
{-# LANGUAGE ScopedTypeVariables #-}

module TableView.Window
  ( nativeAvailable
  , nativeWindow
  , fileFeed
  , zoomAsked
  ) where

import Data.Text (Text)
import Text.Read (readMaybe)

#ifdef NATIVE_WINDOW

import Control.Exception (SomeException, throwIO, try)
import Control.Monad (unless, void, when)
import Data.GI.Base (castTo)
import Data.IORef (IORef, newIORef, readIORef, writeIORef)
import Data.Time.Clock.POSIX (POSIXTime)
import Data.Word (Word32)
import System.IO (BufferMode (LineBuffering), hSetBuffering, stdout)
import System.Posix.Files (FileStatus, getFileStatus, modificationTimeHiRes)
import System.Posix.Signals (Handler (Catch), installHandler, sigINT)

import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified Data.Text.IO as TIO
import qualified GI.Gdk as Gdk
import qualified GI.Gio as Gio
import qualified GI.GLib as GLib
import qualified GI.Gtk as Gtk
import qualified GI.JavaScriptCore as JSC
import qualified GI.WebKit2 as WK

#endif

nativeAvailable :: Bool

nativeWindow :: (Int, Int) -> String -> String
             -> Maybe (Int, IO (Maybe Text))   -- ^ streaming feed: (poll ms, next payload)
             -> (Text -> IO ())                 -- ^ the page's quit reason (closes the window)
             -> (Text -> IO ())                 -- ^ a page action (window stays open)
             -> IO ()

fileFeed :: FilePath -> IO (IO (Maybe Text))

zoomAsked :: (Int, Int) -> String -> Maybe Double
zoomAsked (low, high) said = do
  level <- readMaybe said
  if isNaN level || isInfinite level
    then Nothing
    else Just (max (asLevel low) (min (asLevel high) level))
  where asLevel percent = fromIntegral percent / 100

#ifdef NATIVE_WINDOW

nativeAvailable = True

nativeWindow band title url feed onQuit onAction = do
  hSetBuffering stdout LineBuffering
  (started, _args) <- Gtk.initCheck Nothing
  unless started (throwIO (userError "GTK could not open a display"))
  paintBlack
  win <- Gtk.windowNew Gtk.WindowTypeToplevel
  Gtk.windowSetTitle win (T.pack title)
  Gtk.windowSetDefaultSize win 1200 800
  view <- WK.webViewNew
  rgba <- black
  WK.webViewSetBackgroundColor view rgba
  Gtk.containerAdd win view
  _ <- Gtk.onWidgetDestroy win Gtk.mainQuit
  _ <- WK.onWebViewDecidePolicy view (elsewhere win)
  ucm <- WK.webViewGetUserContentManager view
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just handlerName) (openMessage win)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm handlerName
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just quitName) (quitMessage onQuit win)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm quitName
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just actionName) (actionMessage onAction)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm actionName
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just zoomName)
         (zoomMessage band view)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm zoomName
  override <- WK.userScriptNew openOverride
                WK.UserContentInjectedFramesTopFrame
                WK.UserScriptInjectionTimeStart Nothing Nothing
  WK.userContentManagerAddScript ucm override
  Gtk.widgetShowAll win
  ready <- newIORef False
  _ <- WK.onWebViewLoadChanged view $ \ev ->
         when (ev == WK.LoadEventFinished) (writeIORef ready True)
  WK.webViewLoadUri view (T.pack url)
  startFeed view ready feed
  previous <- installHandler sigINT (Catch quitLoop) Nothing
  Gtk.main
  void (installHandler sigINT previous Nothing)

startFeed :: WK.WebView -> IORef Bool -> Maybe (Int, IO (Maybe Text)) -> IO ()
startFeed _ _ Nothing = pure ()
startFeed view ready (Just (ms, next)) = do
  _ <- GLib.timeoutAdd GLib.PRIORITY_DEFAULT (fromIntegral ms) (tick view ready next)
  pure ()

tick :: WK.WebView -> IORef Bool -> IO (Maybe Text) -> IO Bool
tick view ready next = do
  loaded <- readIORef ready
  when loaded (next >>= mapM_ inject)
  pure True
  where
    inject payload = WK.webViewRunJavascript view
      (T.concat [T.pack "window.__ingest && window.__ingest(", payload, T.pack ")"])
      (Nothing :: Maybe Gio.Cancellable)
      Nothing

readIfChanged :: IORef (Maybe POSIXTime) -> FilePath -> IO (Maybe Text)
readIfChanged seen path = do
  estat <- try (getFileStatus path)
  case estat of
    Left (_ :: SomeException) -> pure Nothing
    Right (s :: FileStatus) -> do
      let m = modificationTimeHiRes s
      prev <- readIORef seen
      if prev == Just m
        then pure Nothing
        else do
          etxt <- try (TIO.readFile path)
          case etxt of
            Left (_ :: SomeException) -> pure Nothing
            Right payload             -> writeIORef seen (Just m) >> pure (Just payload)

fileFeed path = do
  seen <- newIORef Nothing
  pure (readIfChanged seen path)

elsewhere :: Gtk.Window -> WK.PolicyDecision -> WK.PolicyDecisionType -> IO Bool
elsewhere win decision kind
  | kind /= WK.PolicyDecisionTypeNewWindowAction = pure False
  | otherwise = do
      uri <- navigationUri decision
      WK.policyDecisionIgnore decision
      case uri of
        Just u | webby u -> popupOpen win u
        Just u           -> systemOpen win u
        Nothing          -> pure ()
      pure True

handlerName :: Text
handlerName = T.pack "popup"

quitName :: Text
quitName = T.pack "quit"

actionName :: Text
actionName = T.pack "action"

zoomName :: Text
zoomName = T.pack "zoom"

quitMessage :: (Text -> IO ()) -> Gtk.Window -> WK.JavascriptResult -> IO ()
quitMessage onQuit win result = do
  said <- WK.javascriptResultGetJsValue result >>= JSC.valueToString
  onQuit said
  Gtk.widgetDestroy win

actionMessage :: (Text -> IO ()) -> WK.JavascriptResult -> IO ()
actionMessage onAction result =
  WK.javascriptResultGetJsValue result >>= JSC.valueToString >>= onAction

zoomMessage :: (Int, Int) -> WK.WebView -> WK.JavascriptResult -> IO ()
zoomMessage band view result = do
  value <- WK.javascriptResultGetJsValue result
  said <- JSC.valueToString value
  maybe (pure ()) (WK.webViewSetZoomLevel view) (zoomAsked band (T.unpack said))

openOverride :: Text
openOverride = T.concat
  [ T.pack "window.open = function (u) {"
  , T.pack " window.webkit.messageHandlers.", handlerName
  , T.pack ".postMessage(String(u));"
  , T.pack " return null; };"
  ]

openMessage :: Gtk.Window -> WK.JavascriptResult -> IO ()
openMessage win result = do
  value <- WK.javascriptResultGetJsValue result
  uri <- JSC.valueToString value
  if webby uri then popupOpen win uri else systemOpen win uri

webby :: Text -> Bool
webby u = any ((`T.isPrefixOf` u) . T.pack) ["http://", "https://"]

popupOpen :: Gtk.Window -> Text -> IO ()
popupOpen win uri = do
  view <- popupShell win uri
  WK.webViewLoadUri view uri

popupShell :: Gtk.Window -> Text -> IO WK.WebView
popupShell win uri = do
  (w, h) <- Gtk.windowGetSize win
  pop <- Gtk.windowNew Gtk.WindowTypeToplevel
  Gtk.windowSetTitle pop uri
  Gtk.windowSetTransientFor pop (Just win)
  Gtk.windowSetPosition pop Gtk.WindowPositionCenterOnParent
  Gtk.windowSetDefaultSize pop (max 400 (w * 4 `div` 5)) (max 300 (h * 9 `div` 10))
  view <- WK.webViewNew
  rgba <- black
  WK.webViewSetBackgroundColor view rgba
  Gtk.containerAdd pop view
  _ <- WK.onWebViewDecidePolicy view (inPlace view)
  _ <- Gtk.onWidgetKeyPressEvent pop $ \ev -> do
         kv <- Gdk.getEventKeyKeyval ev
         if kv == Gdk.KEY_Escape
           then True <$ Gtk.widgetDestroy pop
           else pure False
  Gtk.widgetShowAll pop
  pure view

inPlace :: WK.WebView -> WK.PolicyDecision -> WK.PolicyDecisionType -> IO Bool
inPlace view decision kind
  | kind /= WK.PolicyDecisionTypeNewWindowAction = pure False
  | otherwise = do
      uri <- navigationUri decision
      WK.policyDecisionIgnore decision
      maybe (pure ()) (WK.webViewLoadUri view) uri
      pure True

navigationUri :: WK.PolicyDecision -> IO (Maybe Text)
navigationUri decision = do
  navigation <- castTo WK.NavigationPolicyDecision decision
  case navigation of
    Nothing  -> pure Nothing
    Just nav -> do
      action <- WK.navigationPolicyDecisionGetNavigationAction nav
      request <- WK.navigationActionGetRequest action
      Just <$> WK.uRIRequestGetUri request

systemOpen :: Gtk.Window -> Text -> IO ()
systemOpen win uri = do
  outcome <- try (Gtk.showUriOnWindow (Just win) uri (fromIntegral Gdk.CURRENT_TIME))
  case outcome of
    Right () -> pure ()
    Left err -> putStrLn ("  window:  could not open " <> T.unpack uri
                            <> ": " <> show (err :: SomeException))

quitLoop :: IO ()
quitLoop = void (GLib.idleAdd GLib.PRIORITY_DEFAULT (Gtk.mainQuit >> pure False))

paintBlack :: IO ()
paintBlack = do
  screen <- Gdk.screenGetDefault
  case screen of
    Nothing -> pure ()   -- No display, and 'Gtk.init' has already said so.
    Just s -> do
      css <- Gtk.cssProviderNew
      Gtk.cssProviderLoadFromData css (TE.encodeUtf8 (T.pack "window{background:#000000}"))
      Gtk.styleContextAddProviderForScreen s css appPriority
  where
    appPriority :: Word32
    appPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION

black :: IO Gdk.RGBA
black = do
  rgba <- Gdk.newZeroRGBA
  Gdk.setRGBARed rgba 0
  Gdk.setRGBAGreen rgba 0
  Gdk.setRGBABlue rgba 0
  Gdk.setRGBAAlpha rgba 1
  pure rgba

#else

nativeAvailable = False

nativeWindow _band _title url _feed _onQuit _onAction =
  putStrLn ("  window:  no native window in this build (cabal -f native-window); open "
              <> url <> " yourself")

fileFeed _ = pure (pure Nothing)

#endif
