{-# LANGUAGE
    OverloadedStrings
#-}

import qualified Graphics.UI.Webviewhs as WHS

main :: IO ()
main = do
  WHS.createWindowAndBlock
    WHS.WindowParams
      { WHS.windowParamsTitle      = "Test"
      , WHS.windowParamsUri        = "https://lettier.github.io"
      , WHS.windowParamsWidth      = 800
      , WHS.windowParamsHeight     = 600
      , WHS.windowParamsResizable  = True
      , WHS.windowParamsDebuggable = True
      }