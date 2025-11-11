module Darts (score) where

score :: Float -> Float -> Int
score x y = 
  let distance = sqrt(x^2 + y^2)
  in case distance of 
    d | d <=  1.0 -> 10
    d | d <=  5.0 ->  5
    d | d <= 10.0 ->  1
    _ -> 0
