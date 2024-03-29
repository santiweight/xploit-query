{-# LANGUAGE OverloadedStrings, OverloadedLabels, RecordWildCards #-}
{-# LANGUAGE LambdaCase #-}

-- TODO potentially may need to add destructors for everything??

module Base
    ( Components(..)
    , genLabels
    , seqLabels
    , generateComboLabel
    , cssPriority
    , newPositionSelector
    , PositionSelector(..)
    , ParserSelector(..)
    , GUIError(..)
    , getPositions
    , getActionIndex
    , getNamedParser
    , newActionIndexSelector
    , newParserSelector
    , ActionIndexSelector(..)
    , showErrorDialog
    , displayDialog
    )
    where

import Poker.Base (ShapedHand, allShapedHands, Position(..))
import Data.Map (Map)
import qualified GI.Gtk as Gtk
import Data.GI.Base
import Data.GI.CodeGen.Util
import qualified Data.Text as T
import System.IO.Unsafe
import Data.Word
import Data.IORef
import Poker.HandFilterTree
import Debug.Trace
import Poker.ADTParser
import Data.GI.Base
import Poker.Base
import Poker.HandFilter

cssPriority :: Word32
cssPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER :: Word32

data Components = Components
    { _application :: Gtk.Application
    , _window :: Gtk.ApplicationWindow
    , _rangeLabels :: [(Gtk.Label, Gtk.CssProvider)]
    , _handsToUseEntry :: Gtk.Entry
    , _parserSelector :: ParserSelector
    , _rangeViewFilterSelector :: ActionIndexSelector
    , _rangeGrid :: Gtk.Grid
    , _mainPane :: Gtk.Paned
    , _rangePane :: Gtk.Paned
    , _treeBuilder :: IORef Gtk.Grid
    , _currentTree :: IORef FilterTree
    , _toggledButton :: IORef (Maybe (Gtk.ToggleButton, (TreeAction -> IO ())))
    , _treeBuilderActionBar :: Gtk.ActionBar
    , _treeBuilderBox :: Gtk.Box
    }


generateComboLabel freqInv hand = let freq = 100-freqInv in
        "label#" ++ show hand ++ " { background : linear-gradient( lightgrey 0%, lightgrey " ++ show freq ++ "%, green " ++ show freq ++ "%, green 100% ); }" :: String

data HandBox = HandBox
                    { _handNameLabel :: Gtk.Label
                    , _handCountLabel :: Gtk.Label
                    }

genLabels :: IO [(Gtk.Label, Gtk.CssProvider)]
genLabels = seqLabels allShapedHands

seqLabels :: [ShapedHand] -> IO [(Gtk.Label, Gtk.CssProvider)]
seqLabels [] = return []
seqLabels (hand:hs) = do
    rest <- seqLabels hs
    prov <- new Gtk.CssProvider []
    label <- new Gtk.Label [ #label := tshow hand
                              , #name := tshow hand
                              , #xalign := 1
                              , #yalign := 1
                              , #heightRequest := 50
                              , #widthRequest := 50
                              ]
    styleContext <- Gtk.widgetGetStyleContext label
    Gtk.styleContextAddProvider
                            styleContext
                            prov
                            cssPriority
    return $ (label, prov) : rest

data FilterSelector = FilterSelector
                      { _filterSelectorBox :: Gtk.Box
                      , _filterPositionSelector :: PositionSelector
                      , _filterIndexSelector :: ActionIndexSelector
                      }

data ParserSelector = ParserSelector
                      { _parserSelectorBox :: Gtk.Box
                      , _parserChoice :: ActionIndexSelector
                      , _positionSelector :: PositionSelector
                      }

data ActionIndexSelector = ActionIndexSelector
                      { _actionIndexSelectorBox :: Gtk.Box
                      , _actionComboSelector :: Gtk.ComboBoxText
                      , _indexTypeSelector :: Gtk.ComboBoxText
                      , _fromEntry :: Gtk.Entry
                      , _toEntry :: Gtk.Entry
                      }

data PositionSelector = PositionSelector
                           { _positionSelectorListBox :: Gtk.ListBox
                           , _utgCheck :: Gtk.CheckButton
                           , _utg1Check :: Gtk.CheckButton
                           , _coCheck :: Gtk.CheckButton
                           , _buCheck :: Gtk.CheckButton
                           , _sbCheck :: Gtk.CheckButton
                           , _bbCheck :: Gtk.CheckButton
                           }

-- data NamedParserSelector = NamedParserSelector
--                            { _namedParserSelectorBox :: Gtk.Box
--                            , _typeParserChoice :: Gtk.ComboBoxText
--                            , _customCheckBox :: Gtk.CheckButton
--                            }

-- -- TODO add a string to carry with the error?
-- data GUIError = EmptyEntry (Maybe String)
--               | LeftEntryEmpty (Maybe String)
--               | RightEntryEmpty (Maybe String)
--               | NoActiveAction (Maybe String)
--               | NoActiveIndexType (Maybe String)

data GUIError = EmptyEntry
              | LeftEntryEmpty
              | RightEntryEmpty
              | NoActiveAction
              | NoActiveIndexType

-- TODO Informative errors
showErrorDialog :: GUIError -> IO ()
showErrorDialog err = do
  case err of
    EmptyEntry -> displayDialog "Empty entry box"
    LeftEntryEmpty -> displayDialog "Empty left entry box" 
    RightEntryEmpty -> displayDialog "Empty right entry box" 
    NoActiveAction -> displayDialog "No active action"
    NoActiveIndexType -> displayDialog "No active index"
    otherwise -> displayDialog "Some other error"

displayDialog str = do
    dlg <- new Gtk.MessageDialog [ #text := T.pack str ]
    #show dlg

-- newNamedParserSelector :: IO NamedParserSelector
-- newNamedParserSelector = do
--   box <- new Gtk.Box []
--   typeParserChoice <- new Gtk.ComboBoxText []
--   customCheckBox <- new Gtk.CheckButton []
--   return NamedParserSelector
--     { _namedParserSelectorBox=box
--     , _typeParserChoice=typeParserChoice
--     , _customCheckBox=customCheckBox
--     }

newActionIndexSelector :: IO ActionIndexSelector
newActionIndexSelector = do
  box <- new Gtk.Box [ #orientation := Gtk.OrientationHorizontal ]
  actionChoiceCombo <- new Gtk.ComboBoxText []
  -- TODO pull these choices globally
  sequence_ $ Gtk.comboBoxTextAppendText actionChoiceCombo . T.pack <$> [ "Fold"
                                                                        , "Raise"
                                                                        , "Bet"
                                                                        , "AllInRaise"
                                                                        , "Call"
                                                                        , "Any Action" ]
  indexChoiceCombo <- new Gtk.ComboBoxText []
  sequence_ $ Gtk.comboBoxTextAppendText indexChoiceCombo . T.pack <$> [ "Between"
                                                                       , "Exactly"
                                                                       , "Greater Than"
                                                                       , "Less Than"
                                                                       , "Any" ]
  fromEntry <- new Gtk.Entry [ #placeholderText := "0" ]
  toEntry <- new Gtk.Entry [ #placeholderText := "0" ]
  #add box actionChoiceCombo
  #add box indexChoiceCombo
  #add box fromEntry
  #add box toEntry
  return ActionIndexSelector
    { _actionIndexSelectorBox=box
    , _actionComboSelector=actionChoiceCombo
    , _indexTypeSelector=indexChoiceCombo
    , _toEntry=toEntry
    , _fromEntry=fromEntry
    }

newParserSelector :: IO ParserSelector
newParserSelector = do
  box <- new Gtk.Box [ #orientation := Gtk.OrientationHorizontal ]
  positionSelector <- newPositionSelector
  actionIndexSelector <- newActionIndexSelector
  Gtk.containerAdd box (_positionSelectorListBox positionSelector)
  Gtk.containerAdd box (_actionIndexSelectorBox actionIndexSelector)
  return ParserSelector
    { _parserSelectorBox=box
    , _parserChoice=actionIndexSelector
    , _positionSelector=positionSelector
    }

newFilterSelector :: IO FilterSelector
newFilterSelector = do
  box <- new Gtk.Box [ #orientation := Gtk.OrientationHorizontal ]
  positionSelector <- newPositionSelector
  actionIndexSelector <- newActionIndexSelector
  Gtk.containerAdd box (_positionSelectorListBox positionSelector)
  Gtk.containerAdd box (_actionIndexSelectorBox actionIndexSelector)
  return FilterSelector
    { _filterSelectorBox=box
    , _filterIndexSelector=actionIndexSelector
    , _filterPositionSelector=positionSelector
    }

-- Custom interface to request positions from 6-max
newPositionSelector :: IO PositionSelector
newPositionSelector = do
  positionChecksListBox <- new Gtk.ListBox []
  utgCheck <- new Gtk.CheckButton [ #label := "UTG" ]
  utg1Check <- new Gtk.CheckButton [ #label := "UTG+1" ]
  coCheck <- new Gtk.CheckButton [ #label := "Cut Off" ]
  buCheck <- new Gtk.CheckButton [ #label := "Button" ]
  sbCheck <- new Gtk.CheckButton [ #label := "Small Blind" ]
  bbCheck <- new Gtk.CheckButton [ #label := "Big Blind" ]
  sequence_ $ #add positionChecksListBox <$> [ utgCheck
                                             , utg1Check
                                             , coCheck
                                             , buCheck
                                             , sbCheck
                                             , bbCheck ]
  return $ PositionSelector
                           { _positionSelectorListBox=positionChecksListBox
                           , _utgCheck=utgCheck
                           , _utg1Check=utg1Check
                           , _coCheck=coCheck
                           , _buCheck=buCheck
                           , _sbCheck=sbCheck
                           , _bbCheck=bbCheck
                           }

getPositions :: PositionSelector -> IO [Position]
getPositions PositionSelector{..} = do
        utg <- Gtk.toggleButtonGetActive _utgCheck
        utg1 <- Gtk.toggleButtonGetActive _utg1Check
        co <- Gtk.toggleButtonGetActive _coCheck
        bu <- Gtk.toggleButtonGetActive _buCheck
        sb <- Gtk.toggleButtonGetActive _sbCheck
        bb <- Gtk.toggleButtonGetActive _bbCheck
        return $ filterByList [utg,utg1,co,bu,sb,bb] listPosition
  where
    filterByList [] [] = []
    filterByList (b:bs) (x:xs) = if b
                             then x : filterByList bs xs
                             else filterByList bs xs


getEntryNumber :: Gtk.Entry -> IO (Either Double GUIError)
getEntryNumber entryBox = do
  Gtk.getEntryText entryBox >>= \case
    "" -> return $ Right EmptyEntry
    str -> return . Left . read . T.unpack $ str

getBothEntries :: Gtk.Entry -> Gtk.Entry -> IO (Either (Double, Double) GUIError)
getBothEntries leftEntry rightEntry = do
  getEntryNumber leftEntry >>= \case
    Right EmptyEntry -> return . Right $ LeftEntryEmpty
    Left fromNum -> getEntryNumber rightEntry >>= \case
      Right EmptyEntry -> return . Right $ RightEntryEmpty
      Left toNum -> return . Left $ (fromNum, toNum)

getActionIndex :: ActionIndexSelector -> IO (Either ActionIndex GUIError)
getActionIndex selector@ActionIndexSelector{..} = do
  Gtk.comboBoxTextGetActiveText _actionComboSelector >>= \actionStr ->
    case actionStr of
      "Any Action" -> return $ Left AnyIndex
      "Fold" -> return $ Left FoldIndex
      "AllInRaise" -> return $ Left AnyAllInRaiseIndex
      complexActionStr -> Gtk.comboBoxTextGetActiveText _indexTypeSelector >>= \typeStr ->
         case typeStr of
          "Between" -> processBetweenIndex complexActionStr
          "Exactly" -> processExactlyIndex complexActionStr
          "Greater Than" -> processGreaterThanIndex complexActionStr
          "Less Than" -> processLessThanIndex complexActionStr
          "Any" -> processAnyIndex complexActionStr
          err -> error $ T.unpack err
    -- This is old code to use more safely with Maybe strings as opposed to
    -- non-maybe strings. Relevant issue raised @haskell-gi:
    -- https://github.com/haskell-gi/haskell-gi/issues/264
    -- Nothing -> return $ Right NoActiveAction
    -- Just str -> case str of
    --   "Fold" -> return $ Left FoldIndex
    --   "AllInRaise" -> return $ Left AnyAllInRaiseIndex
    --   complexActionStr -> Gtk.comboBoxTextGetActiveText _indexTypeSelector >>= \case
    --     Nothing -> return $ Right NoActiveIndexType
    --     Just str -> case str of
    --       "Between" -> processBetweenIndex complexActionStr
    --       "Exactly" -> processExactlyIndex complexActionStr
    --       "Greater Than" -> processGreaterThanIndex complexActionStr
    --       "Less Than" -> processLessThanIndex complexActionStr
    --       "Any" -> processAnyIndex complexActionStr
    --       err -> error $ T.unpack err
  where
    processBetweenIndex str = do
      getBothEntries _fromEntry _toEntry >>= \case
        Right err -> return $ Right err
        Left (fromNum, toNum) ->
          return . Left $ case str of
            "Call" -> CallBetween fromNum toNum
            "Raise" -> RaiseBetween fromNum toNum
            "Bet" -> BetBetween fromNum toNum
            -- TODO find other possible plays? Maybe it really is this simple
    processExactlyIndex str = do
      getEntryNumber _fromEntry >>= \case
        Right err -> return $ Right err
        Left num ->
          return . Left $
            case str of
              "Call" -> CallIndex num
              "Raise" -> RaiseIndex num
              "Bet" -> BetIndex num
              -- TODO find other possible plays? Maybe it really is this simple
    processGreaterThanIndex str = do
      getEntryNumber _fromEntry >>= \case
        Right err -> return $ Right err
        Left num -> return . Left $
            case str of
              "Call" -> CallGreater num
              "Raise" -> RaiseGreater num
              "Bet" -> BetGreater num
              -- TODO find other possible plays? Maybe it really is this simple
    processLessThanIndex str = do
      getEntryNumber _fromEntry >>= \case
        Right err -> return $ Right err
        Left num -> return . Left $
          case str of
            "Call" -> CallLess num
            "Raise" -> RaiseLess num
            "Bet" -> BetLess num
            -- TODO find other possible plays? Maybe it really is this simple
    processAnyIndex str = do
      return . Left $
        case str of
          "Call" -> AnyCallIndex
          "Raise" -> AnyRaiseIndex
          "Bet" -> AnyBetIndex
          -- TODO find other possible plays? Maybe it really is this simple

getFilter :: FilterSelector -> IO (Either Filter GUIError)
getFilter FilterSelector{..} = do
  Left index <- (getActionIndex _filterIndexSelector)
  positions <- (getPositions _filterPositionSelector)
  return . Left $ Filter positions [index]

-- data ParserSelector = ParserSelector
--                       { _parserSelectorBox :: Gtk.Box
--                       , _parserChoice :: ActionIndexSelector
--                       , _positionSelector :: PositionSelector
--                       }
--   --delete me

getNamedParser :: ParserSelector -> IO (Either NamedParser GUIError)
getNamedParser ParserSelector{..} = do
  Left index <- (getActionIndex _parserChoice)
  return . Left $ NamedParser (toName index) (Satisfy index)
  where
    -- TODO Change this show to something nicer in the future
    toName = show
