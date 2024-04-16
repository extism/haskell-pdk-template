module Plugin (mkGreeting) where

import Extism.PDK

mkGreeting :: String -> String -> IO ()
mkGreeting g n =
  output $ g ++ ", " ++ n
