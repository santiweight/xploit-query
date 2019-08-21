
data ActionIndex = CheckIndex
                 | FoldIndex
                 | AnyRaiseIndex
                 | RaiseIndex Double
                 | RaiseBetween Double Double
                 | RaiseGreater Double
                 | RaiseLess Double
                 | AnyAllInRaiseIndex
                 | AllInRaiseIndex Double
                 | AllInRaiseBetween Double Double
                 | AllInRaiseGreater Double
                 | AllInRaiseLess Double
                 | BetIndex Double
                 | BetGreater Double
                 | BetLess Double
                 | BetBetween Double Double
                 | AnyCallIndex
                 | CallIndex Double
                 | CallGreater Double
                 | CallLess Double
                 | CallBetween Double Double

isActionInIndex (Call bet) (AnyCallIndex) = True
isActionInIndex (Call bet) (CallIndex i) = bet== i
isActionInIndex (Call bet) (CallGreater i) = bet >= i
isActionInIndex (Call bet) (CallLess i) = bet <= i
isActionInIndex (Call bet) (CallBetween iMin iMax) = bet >= iMin && bet <= iMax
isActionInIndex (Bet bet) (BetIndex i) = bet== i
isActionInIndex (Bet bet) (BetGreater i) = bet >= i
isActionInIndex (Bet bet) (BetLess i) = bet <= i
isActionInIndex (Bet bet) (BetBetween iMin iMax) = bet >= iMin && bet <= iMax
isActionInIndex (Raise _ bet) (AnyRaiseIndex) = True
isActionInIndex (Raise _ bet) (RaiseIndex i) = bet== i
isActionInIndex (Raise _ bet) (RaiseGreater i) = bet >= i
isActionInIndex (Raise _ bet) (RaiseLess i) = bet <= i
isActionInIndex (Raise _ bet) (RaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
isActionInIndex (AllInRaise _ bet) (RaiseIndex i) = bet== i
isActionInIndex (AllInRaise _ bet) (RaiseGreater i) = bet >= i
isActionInIndex (AllInRaise _ bet) (RaiseLess i) = bet <= i
isActionInIndex (AllInRaise _ bet) (RaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
isActionInIndex (AllInRaise _ bet) (AnyAllInRaiseIndex) = True
isActionInIndex (AllInRaise _ bet) (AllInRaiseIndex i) = bet== i
isActionInIndex (AllInRaise _ bet) (AllInRaiseGreater i) = bet >= i
isActionInIndex (AllInRaise _ bet) (AllInRaiseLess i) = bet <= i
isActionInIndex (AllInRaise _ bet) (AllInRaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
isActionInIndex Fold FoldIndex = True
isActionInIndex FoldTimeout FoldIndex = True
isActionInIndex Check CheckIndex = True
isActionInIndex CheckTimeOut CheckIndex = True
isActionInIndex _ _ = False
