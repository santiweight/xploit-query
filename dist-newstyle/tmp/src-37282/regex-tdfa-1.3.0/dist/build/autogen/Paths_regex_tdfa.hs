{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_regex_tdfa (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,3,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/rgx-tdf-1.3.0-7258d9fe/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/rgx-tdf-1.3.0-7258d9fe/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/rgx-tdf-1.3.0-7258d9fe/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/rgx-tdf-1.3.0-7258d9fe/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/rgx-tdf-1.3.0-7258d9fe/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "regex_tdfa_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "regex_tdfa_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "regex_tdfa_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "regex_tdfa_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "regex_tdfa_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "regex_tdfa_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)