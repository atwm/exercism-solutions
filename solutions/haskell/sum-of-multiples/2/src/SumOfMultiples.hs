module SumOfMultiples (sumOfMultiples) where

import Data.Set as Set

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum $ mkUniqueList $ concat [thefactors x limit | x <- factors, x /= 0]
 where
  thefactors :: Integer -> Integer -> [Integer]
  thefactors x y = [n | n <- [1 .. y - 1], n `mod` x == 0]
  mkUniqueList = Set.toList . Set.fromList
