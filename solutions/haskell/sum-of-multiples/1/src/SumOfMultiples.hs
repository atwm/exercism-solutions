module SumOfMultiples (sumOfMultiples) where

import Data.Set as Set

thefactors :: Integer -> Integer -> [Integer]
thefactors x y = [n | n <- [1 .. y - 1], n `mod` x == 0]

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum $ Set.toList . Set.fromList $ concat [thefactors x limit | x <- factors, x /= 0]
