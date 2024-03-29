{-# LANGUAGE CPP #-}

module TH where
import           Control.Applicative            ( many )
import           Control.Arrow
import           Control.Lens                   ( (^.) )
import           Control.Lens.Extras            ( is )
import           Control.Monad
import           Data.Either                    ( rights )
import           Data.Either.Combinators        ( fromRight
                                                , rightToMaybe
                                                )
import  Language.Haskell.TH hiding (Range)
import           Data.Functor
import qualified Data.Map.Strict               as Map
import           Data.Map.Strict                ( Map )
import           Data.Maybe                     ( catMaybes
                                                , fromMaybe
                                                , listToMaybe
                                                , mapMaybe
                                                )
import           Data.Text                      ( Text )
import qualified Data.Text.IO                  as T
import           Data.Void
import           Debug.Trace                    ( traceShowM )
import           Money                          ( discrete
                                                , toSomeDiscrete
                                                )
import           Poker
import           Poker.Game.Emulate             ( prettyString )
import           Poker.Game.Types
import           Poker.History.Bovada.Parser
import           Poker.History.Types
import           Poker.Query.ActionIx
import           Poker.Query.Eval.Base
import           Poker.Query.Eval.Internal
import           Poker.Query.Eval.Query
import           Poker.Query.Eval.Types
import           Poker.Range
import           Polysemy
import qualified Polysemy.State                as Poly
#if MIN_VERSION_prettyprinter(1,7,0)
import           Prettyprinter                  ( Pretty )
#else
import           Data.Text.Prettyprint.Doc                  ( Pretty )
#endif
import           System.Directory
import           System.FilePath
import           Text.Megaparsec                ( ParseErrorBundle
                                                , parse
                                                )
import qualified System.IO as S
import Data.List (nubBy, isPrefixOf)
import Data.Char (isAlphaNum, isUpper, isSpace)


allProperties :: Q Exp
allProperties = do
  Loc { loc_filename = filename } <- location
  when (filename == "<interactive>") $ error "don't run this interactively"
  ls <- runIO (fmap lines (readUTF8File filename))
  let prefixes = map (takeWhile (\c -> isAlphaNum c || c == '_' || c == '\'') . dropWhile (\c -> isSpace c || c == '>')) ls
      idents = nubBy (\x y -> snd x == snd y) (filter (("query_" `isPrefixOf`) . snd) (zip [1..] prefixes))
      warning x = report False ("Name " ++ x ++ " found in source file but was not in scope")
      quickCheckOne :: (Int, String) -> Q [Exp]
      quickCheckOne (l, x) = do
        exists <- (warning x >> return False) `recover` (reify (mkName x) >> return True)
        -- if exists then sequence [ [| ($(stringE $ x ++ " from " ++ filename ++ ":" ++ show l),
        if exists then sequence [ [| ($(stringE $ drop 6 x),
                                     $(monomorphic (mkName x))) |] ]
         else return []
  [| $(fmap (ListE . concat) (mapM quickCheckOne idents)) :: [(String, TreeQuery (Amount "USD") ())] |]

readUTF8File name = S.openFile name S.ReadMode >>=
                  set_utf8_io_enc >>=
                  S.hGetContents

set_utf8_io_enc h = do S.hSetEncoding h S.utf8; return h

infoType :: Info -> Type
infoType (ClassOpI _ ty _) = ty
infoType (DataConI _ ty _) = ty
infoType (VarI _ ty _) = ty

type Error = forall a. String -> a

deconstructType :: Error -> Type -> Q ([Name], Cxt, Type)
deconstructType err (ForallT xs ctx ty) = do
  let plain (PlainTV nm)        = return nm
      plain (KindedTV nm StarT) = return nm
      plain _                     = err "Higher-kinded type variables in type"
  xs' <- mapM plain xs
  return (xs', ctx, ty)
deconstructType _ ty = return ([], [], ty)

monomorphic :: Name -> ExpQ
monomorphic t = do
  ty0 <- fmap infoType (reify t)
  let err :: String -> a
      err msg = error $ msg ++ ": " ++ pprint ty0
  (polys, ctx, ty) <- deconstructType err ty0
  case polys of
    [] -> return (expName t)
    _ -> do
      integer <- [t| Integer |]
      ty' <- monomorphiseType err integer ty
      return (SigE (expName t) ty')

monomorphiseType :: Error -> Type -> Type -> TypeQ
monomorphiseType err mono ty@(VarT n) = return mono
monomorphiseType err mono (AppT t1 t2) = liftM2 AppT (monomorphiseType err mono t1) (monomorphiseType err mono t2)
monomorphiseType err mono ty@(ForallT _ _ _) = err $ "Higher-ranked type"
monomorphiseType err mono ty = return ty

expName :: Name -> Exp
expName n = if isVar n then VarE n else ConE n

isVar :: Name -> Bool
isVar = let isVar' (c:_) = not (isUpper c || c `elem` ":[")
            isVar' _     = True
        in isVar' . nameBase

