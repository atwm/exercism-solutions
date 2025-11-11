module Pangram
  ( isPangram
  ) where

import Prelude

import Data.String (toLower, length)
import Data.String.CodeUnits (toCharArray)
import Data.Set(subset, fromFoldable)

isPangram :: String -> Boolean


isPangram s = subset (fromFoldable (toCharArray "abcdefghijklmnopqrstuvwxyz"))(fromFoldable (toCharArray (toLower s)))
