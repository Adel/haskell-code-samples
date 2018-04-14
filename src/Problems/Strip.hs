module Data.String.Strip (strip)  where

import Data.Char
import Problems.Lists
strip :: String -> String
strip = dropWhile isSpace . reverse . dropWhile isSpace . reverse
