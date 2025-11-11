{-# LANGUAGE OverloadedStrings #-}
module Bob (responseFor) where
import Data.Char

isQuestion :: [Char] -> Bool
isQuestion ch = last (filter (not . isSpace) ch) == '?'

isYelling :: [Char] -> Bool
isYelling ch = any isAlpha ch  && all isUpper (filter isAlpha ch)

responseFor :: String -> String
responseFor xs
  | all isSpace xs                  = "Fine. Be that way!"
  | isQuestion xs && isYelling xs     = "Calm down, I know what I'm doing!"
  | isQuestion xs  = "Sure."
  | isYelling xs       = "Whoa, chill out!"
  | otherwise = "Whatever."
