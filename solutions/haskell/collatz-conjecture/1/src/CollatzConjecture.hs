module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | otherwise = Just $ collatz' n 0
  where
    collatz' 1 c = c
    collatz' n' c
      | even n' = collatz' (n' `div` 2) (c + 1)
      | otherwise = collatz' (n' * 3 + 1) (c + 1)
