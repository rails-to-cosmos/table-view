-- | @table-view-window URL [TITLE] [--feed PATH] [--poll MS]@ — open a native
-- WebKitGTK window on URL and block until it closes.  The URL is a producer's
-- page: it mounts @web/table-view.js@, owns the rows, and posts @quit@ to close
-- the window.
--
-- With @--feed PATH@ the window streams: it polls PATH (every @--poll@ ms,
-- default 250) and injects @window.__ingest(<contents>)@ whenever the file
-- changes, so a producer can push rows after load.  The producer must write the
-- file atomically (temp + rename).
module Main (main) where

import           Data.Maybe         (fromMaybe)
import qualified Data.Text          as T
import           System.Environment (getArgs, getProgName)
import           System.Exit        (exitFailure)
import           System.IO          (hPutStrLn, stderr)
import           TableView.Window   (fileFeed, nativeWindow)

data Opts = Opts
  { oUrl   :: Maybe String
  , oTitle :: Maybe String
  , oFeed  :: Maybe FilePath
  , oPoll  :: Int
  }

main :: IO ()
main = do
  args <- getArgs
  case parse args (Opts Nothing Nothing Nothing 250) of
    Just o | Just url <- oUrl o -> do
      feed <- case oFeed o of
        Just p  -> (\src -> Just (oPoll o, src)) <$> fileFeed p
        Nothing -> pure Nothing
      nativeWindow band (fromMaybe "table-view" (oTitle o)) url feed onQuit (const (pure ()))
    _ -> usage
  where
    -- Zoom clamp (min,max) percent.  A page that names a level (via the `zoom'
    -- handler) is held inside this band; see TableView.Window.zoomAsked.
    band = (50, 300)
    -- Preserve the launcher's contract: echo the quit reason to stdout.
    onQuit reason = putStrLn ("quit " <> T.unpack reason)
    usage = do
      p <- getProgName
      hPutStrLn stderr ("usage: " <> p <> " URL [TITLE] [--feed PATH] [--poll MS]")
      exitFailure

-- | Hand-rolled: four options do not earn a parser dependency.  Bare args are
-- URL then TITLE; flags may come in any position.
parse :: [String] -> Opts -> Maybe Opts
parse [] o = Just o
parse ("--feed" : p : rest) o = parse rest o { oFeed = Just p }
parse ("--poll" : n : rest) o = case reads n of
  [(ms, "")] -> parse rest o { oPoll = ms }
  _          -> Nothing
parse (x : rest) o
  | Nothing <- oUrl o   = parse rest o { oUrl = Just x }
  | Nothing <- oTitle o = parse rest o { oTitle = Just x }
  | otherwise           = parse rest o
