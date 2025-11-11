module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven :: Int
expectedMinutesInOven = 40

-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes :: Int -> Int
preparationTimeInMinutes layers = 2*layers

-- TODO: define the elapsedTimeInMinutes function
--
elapsedTimeInMinutes :: Int -> Int -> Int
elapsedTimeInMinutes layers minutesInOven = minutesInOven + preparationTimeInMinutes layers
