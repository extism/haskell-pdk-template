module Greet where

import Data.Int
import Data.Maybe
import Extism.PDK

mkGreeting :: String -> String -> IO ()
mkGreeting g n =
  output $ g ++ ", " ++ n

greet :: IO Int32
greet = do
  -- Get a name from the Extism runtime
  name <- inputString
  -- Get  configured greeting
  greeting <- getConfig "greeting"
  -- Greet the user, if no greeting is configured then "Hello" is used
  mkGreeting (fromMaybe "Hello" greeting) name
  -- Return 0 to signal success
  pure 0

foreign export ccall "greet" greet :: IO Int32
