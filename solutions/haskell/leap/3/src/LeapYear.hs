module LeapYear (isLeapYear) where

-- Resubmitting second solution as final
isLeapYear :: Integer -> Bool
isLeapYear year
    | year `mod` 4 /= 0 = False
    | year `mod` 400 == 0 = True
    | year `mod` 100 == 0 = False
    | year `mod`   4 == 0 = True
    | otherwise = False
    