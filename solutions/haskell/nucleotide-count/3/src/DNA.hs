module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map, fromList)
import Text.Read (readMaybe)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show, Read)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs
  | Nothing `elem` nxs = Left "Invalid nucleotide"
  | otherwise = Right $ fromList [(n, length $ filter (== Just n) nxs) | n <- [A, C, G, T]]
 where
  nxs = [readMaybe [x] :: Maybe Nucleotide | x <- xs]
