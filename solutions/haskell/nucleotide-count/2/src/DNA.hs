module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map, fromList)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show, Read)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs
  | any (`notElem` "ACGT") xs = Left "Invalid nucleotide"
  | otherwise = Right $ fromList [(n, length $ filter (== n) nxs) | n <- [A, C, G, T]]
 where
  nxs = [read [x] :: Nucleotide | x <- xs]
