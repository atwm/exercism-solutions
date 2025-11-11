module SumOfMultiples (sumOfMultiples) where

import Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum $ nub $ concat [thefactors x limit | x <- factors, x /= 0]
 where
  thefactors :: Integer -> Integer -> [Integer]
  thefactors x y = [n | n <- [1 .. y - 1], n `mod` x == 0]
