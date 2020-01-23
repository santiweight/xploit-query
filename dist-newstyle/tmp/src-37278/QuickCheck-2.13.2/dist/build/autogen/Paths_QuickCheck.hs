{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_QuickCheck (
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
version = Version [2,13,2] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/QckChck-2.13.2-9de45d7d/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/QckChck-2.13.2-9de45d7d/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/QckChck-2.13.2-9de45d7d/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/QckChck-2.13.2-9de45d7d/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/QckChck-2.13.2-9de45d7d/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "QuickCheck_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "QuickCheck_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "QuickCheck_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "QuickCheck_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "QuickCheck_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "QuickCheck_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)