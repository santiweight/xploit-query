{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_bifunctors (
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
version = Version [5,5,5] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/bfnctrs-5.5.5-8451e23b/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/bfnctrs-5.5.5-8451e23b/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/bfnctrs-5.5.5-8451e23b/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/bfnctrs-5.5.5-8451e23b/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/bfnctrs-5.5.5-8451e23b/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "bifunctors_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "bifunctors_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "bifunctors_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "bifunctors_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "bifunctors_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "bifunctors_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)