module Temperature (tempToC, tempToF) where

{- Implement the function `tempToC` to convert
`  Fahrenheit to Celsius                    -}

tempToC :: Integer -> Float
-- T(°C) = (T(°F) - 32) / 1.8.
tempToC temp = fromInteger (temp - 32) /1.8


{- Implement the function `tempToF` to convert
`  Celsius to Fahrenheit                    -}

tempToF :: Float -> Integer

--  T(°F) = T(°C) × 1.8 + 32.
tempToF temp = round $ temp * 1.8 + 32.5 -- The 0.5 is to round up
