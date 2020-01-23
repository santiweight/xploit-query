{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_megaparsec (
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
version = Version [7,0,5] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/mgprsc-7.0.5-d192e961/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/mgprsc-7.0.5-d192e961/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/mgprsc-7.0.5-d192e961/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/mgprsc-7.0.5-d192e961/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/mgprsc-7.0.5-d192e961/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "megaparsec_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "megaparsec_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "megaparsec_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "megaparsec_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "megaparsec_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "megaparsec_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)