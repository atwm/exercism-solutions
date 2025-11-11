{-# LANGUAGE OverloadedStrings #-}
module Acronym (abbreviate) where
import           Data.Char


abbreviate :: String -> String
abbreviate   =  filter isUpper .  map (toUpper . head) . words . acronymify

acronymify :: String -> String
acronymify (c1:c2:cs)
  | isLower c1 && isUpper c2 = c1 : ' ' : c2 : acronymify cs

-- special cases
acronymify ('-':cs) = ' ': acronymify cs
acronymify ('_':cs) = ' ': acronymify cs
-- needed for the special cases
acronymify (c1:cs) = c1: acronymify cs
-- empty case
acronymify [] = []

