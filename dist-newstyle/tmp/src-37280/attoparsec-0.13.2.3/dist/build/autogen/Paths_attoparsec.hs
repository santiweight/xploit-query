{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_attoparsec (
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
version = Version [0,13,2,3] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/ttprsc-0.13.2.3-9ff12108/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/ttprsc-0.13.2.3-9ff12108/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/ttprsc-0.13.2.3-9ff12108/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/ttprsc-0.13.2.3-9ff12108/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/ttprsc-0.13.2.3-9ff12108/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "attoparsec_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "attoparsec_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "attoparsec_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "attoparsec_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "attoparsec_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "attoparsec_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)