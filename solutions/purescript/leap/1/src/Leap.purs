module Leap where
import Prelude
import Data.Int(rem)
isLeapYear :: Int -> Boolean

isLeapYear year 
          | (year `rem` 400) == 0  = true
          | (year `rem` 100) == 0  = false
          | (year `rem` 4)   == 0  = true
          | otherwise              = false
