module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map, fromList)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs
  | any (`notElem` "ACGT") xs = Left "Invalid nucleotide"
  | otherwise = Right $ fromList [(n, length $ filter (== (head $ show n)) xs) | n <- [A, C, G, T]]
