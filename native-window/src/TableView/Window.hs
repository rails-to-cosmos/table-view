{-# LANGUAGE CPP #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- | A @WebKitWebView@ filling a @GtkWindow@ and nothing else: the
-- native-window delivery's shell around @web/table-view.js@.  A caller hands it
-- a URL and the page owns the rows.  Lifted from glance's
-- @Glance.Desktop.WebKit@, which imports no glance module.  Built only under
-- the @native-window@ flag.
module TableView.Window
  ( nativeAvailable
  , nativeWindow
  , fileFeed
    -- * The zoom the page asks for
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

-- | Open a WebKit window on the URL and block until it closes.  @sigINT@ needs
-- the handler — the main thread sits inside @gtk_main@ — and @gtk_init@ would
-- exit the process.
--
-- THE BAND ARRIVES AS A PARAMETER: the caller's zoom clamp (the launcher's, or
-- a hosting page's own), so this layer spells no second one.
--
-- The STREAMING FEED is @Just (ms, next)@: every @ms@ milliseconds, once the
-- page has loaded, @next@ is polled on the main thread and any @Just payload@ it
-- yields is injected as @window.__ingest(payload)@.  'fileFeed' is the
-- file-backed source; an in-process producer supplies its own.  'Nothing' is a
-- static page.
--
-- ON QUIT the page's reason is handed to the callback (an empty reason is a
-- plain close), then the window closes.
nativeWindow :: (Int, Int) -> String -> String
             -> Maybe (Int, IO (Maybe Text))   -- ^ streaming feed: (poll ms, next payload)
             -> (Text -> IO ())                 -- ^ the page's quit reason
             -> IO ()

-- | A feed source that re-reads PATH whenever its mtime advances — the file
-- variant of the streaming feed, for a producer that writes a file.  The
-- producer must write atomically (temp + rename); a torn read is swallowed.
fileFeed :: FilePath -> IO (IO (Maybe Text))

-- | The level the page named, held inside BAND — @(minimum, maximum)@ as whole
-- percentages, divided by 100 to the level a view wears.  Below the floor the
-- key line is unreadable; above the ceiling one row fills the window.
--
-- 'Nothing' is a message no window can wear: the page is the only writer, and
-- one wearing whatever arrived would have no floor to be read back from.
-- @Read Double@ takes @NaN@ and @Infinity@, which the clamp would answer with
-- an edge rather than refuse.
zoomAsked :: (Int, Int) -> String -> Maybe Double
zoomAsked (low, high) said = do
  level <- readMaybe said
  if isNaN level || isInfinite level
    then Nothing
    else Just (max (asLevel low) (min (asLevel high) level))
  where asLevel percent = fromIntegral percent / 100

#ifdef NATIVE_WINDOW

nativeAvailable = True

nativeWindow band title url feed onQuit = do
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
  -- `q' ON THE MAIN PAGE QUITS, which only a window can answer.  The reason the
  -- page gives is echoed to stdout first, so whatever launched the window can
  -- act on it (an empty reason is a plain close).
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just quitName) (quitMessage onQuit win)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm quitName
  -- THE ZOOM IS THE VIEW'S, which only a window has: the page keeps the level
  -- and says it, and a CSS zoom in its place would put the panes' measured
  -- rects out against the styles drawn from them.
  _ <- WK.onUserContentManagerScriptMessageReceived ucm (Just zoomName)
         (zoomMessage band view)
  _ <- WK.userContentManagerRegisterScriptMessageHandler ucm zoomName
  override <- WK.userScriptNew openOverride
                WK.UserContentInjectedFramesTopFrame
                WK.UserScriptInjectionTimeStart Nothing Nothing
  WK.userContentManagerAddScript ucm override
  Gtk.widgetShowAll win
  -- A feed may only push once the page's @__ingest@ exists; gate on load-finished.
  ready <- newIORef False
  _ <- WK.onWebViewLoadChanged view $ \ev ->
         when (ev == WK.LoadEventFinished) (writeIORef ready True)
  WK.webViewLoadUri view (T.pack url)
  startFeed view ready feed
  previous <- installHandler sigINT (Catch quitLoop) Nothing
  Gtk.main
  void (installHandler sigINT previous Nothing)

-- | Install the streaming feed's GLib timer, if a feed was given.  The timer
-- runs on the main thread, so its @webViewRunJavascript@ calls are safe.
startFeed :: WK.WebView -> IORef Bool -> Maybe (Int, IO (Maybe Text)) -> IO ()
startFeed _ _ Nothing = pure ()
startFeed view ready (Just (ms, next)) = do
  _ <- GLib.timeoutAdd GLib.PRIORITY_DEFAULT (fromIntegral ms) (tick view ready next)
  pure ()

-- | One feed tick, kept alive by returning 'True'.  Once the page has loaded,
-- polls the feed source and injects any payload it yields.
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

-- | The feed file's contents once its mtime has advanced past SEEN (which it
-- then updates), else 'Nothing'.  A missing file or a torn read (producer
-- mid-write) is swallowed as 'Nothing' and retried next tick.
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

-- | TWO DOORS, because WebKit has two: a @target="_blank"@ anchor arrives here
-- as a @NewWindowAction@; a scripted @window.open@ fires @create@ instead, and
-- connecting that aborts the web process, so 'openOverride' takes it first.
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

-- | Its PRESENCE is the page's test for "is there a window to quit".
quitName :: Text
quitName = T.pack "quit"

-- | And ITS presence is the page's test for "is there a window to zoom", which
-- is what leaves @C-+@ to the browser where there is none.
zoomName :: Text
zoomName = T.pack "zoom"

-- | Hand the page's quit reason to the callback, then close the window.  The
-- caller decides what a close should trigger.
quitMessage :: (Text -> IO ()) -> Gtk.Window -> WK.JavascriptResult -> IO ()
quitMessage onQuit win result = do
  said <- WK.javascriptResultGetJsValue result >>= JSC.valueToString
  onQuit said
  Gtk.widgetDestroy win

-- | A level that will not read is DROPPED: nothing on this side can put a
-- broken message right, and a window left where it was is readable.
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

-- | The page's own @followable@ rule, spelled again — this layer cannot see it.
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

-- | The cast is CHECKED: a null would crash where dropping the link is honest.
navigationUri :: WK.PolicyDecision -> IO (Maybe Text)
navigationUri decision = do
  navigation <- castTo WK.NavigationPolicyDecision decision
  case navigation of
    Nothing  -> pure Nothing
    Just nav -> do
      action <- WK.navigationPolicyDecisionGetNavigationAction nav
      request <- WK.navigationActionGetRequest action
      Just <$> WK.uRIRequestGetUri request

-- | @gtk_show_uri_on_window@ fails by THROWING; no window failure ever takes
-- this daemon down.
systemOpen :: Gtk.Window -> Text -> IO ()
systemOpen win uri = do
  outcome <- try (Gtk.showUriOnWindow (Just win) uri (fromIntegral Gdk.CURRENT_TIME))
  case outcome of
    Right () -> pure ()
    Left err -> putStrLn ("  window:  could not open " <> T.unpack uri
                            <> ": " <> show (err :: SomeException))

-- | @g_idle_add@ is the thread-safe door into a running loop, and a signal
-- handler runs on a thread of the RTS's choosing.
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

-- Unreachable while 'nativeAvailable' is consulted; saying so beats failing.
nativeWindow _band _title url _feed _onQuit =
  putStrLn ("  window:  no native window in this build (cabal -f native-window); open "
              <> url <> " yourself")

fileFeed _ = pure (pure Nothing)

#endif
