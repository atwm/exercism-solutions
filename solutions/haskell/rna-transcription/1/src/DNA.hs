module DNA (toRNA) where

nucMapper :: Char -> Either Char Char
nucMapper c
  | c == 'G' = Right 'C'
  | c == 'C' = Right 'G'
  | c == 'T' = Right 'A'
  | c == 'A' = Right 'U'
  | otherwise = Left c

toRNA :: String -> Either Char String
toRNA = mapM nucMapper
