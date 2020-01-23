{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_optparse_applicative (
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
version = Version [0,15,1,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/santi/.cabal/store/ghc-8.8.1/ptprs-pplctv-0.15.1.0-7b1ac0e0/bin"
libdir     = "/Users/santi/.cabal/store/ghc-8.8.1/ptprs-pplctv-0.15.1.0-7b1ac0e0/lib"
dynlibdir  = "/Users/santi/.cabal/store/ghc-8.8.1/lib"
datadir    = "/Users/santi/.cabal/store/ghc-8.8.1/ptprs-pplctv-0.15.1.0-7b1ac0e0/share"
libexecdir = "/Users/santi/.cabal/store/ghc-8.8.1/ptprs-pplctv-0.15.1.0-7b1ac0e0/libexec"
sysconfdir = "/Users/santi/.cabal/store/ghc-8.8.1/ptprs-pplctv-0.15.1.0-7b1ac0e0/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "optparse_applicative_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "optparse_applicative_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "optparse_applicative_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "optparse_applicative_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "optparse_applicative_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "optparse_applicative_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)